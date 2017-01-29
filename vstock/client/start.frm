VERSION 5.00
Begin VB.Form starttransaction 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   10950
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   10950
   StartUpPosition =   3  'Windows Default
End
Attribute VB_Name = "starttransaction"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim connect As New Connection
Dim cmd As New Command
Dim rs As New Recordset
Dim rs1 As New Recordset

Dim increment As Double
Dim company, buy, sell
Dim query
Private Sub exquery(query As String)

cmd.CommandText = query
'MsgBox query
Set rs = cmd.Execute
End Sub

Private Sub Form_Load()
    Dim tname, tcount
    Dim t1 As String
    Dim i
    i = 0
   ' connect.Close
    connect.Open "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
    cmd.ActiveConnection = connect
    cmd.CommandType = adCmdText
    rs.LockType = adLockOptimistic
    rs.Source = connect
    rs.ActiveConnection = connect
    
    rs1.LockType = adLockOptimistic
    rs1.Source = connect
    rs1.ActiveConnection = connect
    
    tname = Trim(stkclient.recieptno.Caption)
     query = "select count(*) from queue where tname='" + tname + "'"
    exquery (query)
'    MsgBox rs(0)
    query = "select * from queue where tname='" + tname + "'"
    exquery (query)
    While rs.EOF = False
        
        If rs(2) = 1 Then
                rs.MoveNext
        Else
          GoTo b2
        End If
            
    Wend
b2:
    If rs.EOF = False Then
        tcount = Trim(rs(1))
        t1 = tname + Trim(tcount)
 '       MsgBox "hhh"
    Else
    ' !!!!!!!!!!!!! error
         query = "select count(*) from queue where tname='" + tname + "'"
         exquery (query)
         If Trim(rs(0)) <> "0" Then
            tcount = Str(rs(0) - 1)
         Else
            tcount = "0"
         End If
         t1 = tname + Trim(tcount)
       ' MsgBox "Error : Temp table cannot be created . Try AGAIN", vbOKOnly, "Error"
        'End
    End If
    
    With stkclient

         query = "select * from queue where tname='" + tname + "' and tcount='" + Trim(tcount) + "'"
         exquery (query)
         ' while processing is not done
         While rs(2) <> 1
          
          query = "select * from queue where tname='" + tname + "' and tcount='" + tcount + "'"
          exquery (query)
         
         Wend
        
        query = "select * from `" + t1 + "` where correct='0'"
        exquery (query)
        i = 0
        If rs.EOF = False Then
                 stkclient.status.Caption = " Entries in ' RED ' Block   are Invalid. Correct it and Try Again."
        Else
                 stkclient.status.Caption = ""
        End If
        
        While rs.EOF = False
'            MsgBox rs(1) & "=" & rs(2)
            While i < 20
                If (.Label2(i).Caption = rs(1)) Then
                    'buy
                    If (Trim(rs(2)) <> "0") Then
                            .buy(i).BackColor = &H8080FF
                            .buy(i).Text = rs(2)
                    End If
                    'sell
                    If (Trim(rs(3)) <> "0") Then
                            .sell(i).BackColor = &H8080FF
                            .sell(i).Text = rs(2)
                    End If
                    GoTo b1
                End If
                i = i + 1
            Wend
b1:
        rs.MoveNext
        Wend
             
    
    End With
    
    ' update the table person shares table
      
        
        query = "select * from `" + t1 + "` where correct='1'"
        exquery (query)
        i = 0
        
        While rs.EOF = False
            company = rs(1)
            buy = rs(2)
            sell = rs(3)
            
            If buy <> 0 Then
                    query = "update `" + tname + "` set shares=shares + " + Trim(Str(buy)) + " where company= '" + company + "'"
                    cmd.CommandText = query
                    cmd.Execute
                    
                     
            End If
            
            If sell <> 0 Then
            
                    query = "update `" + tname + "` set shares=shares - " + Trim(Str(sell)) + " where company= '" + company + "'"
                    cmd.CommandText = query
                    cmd.Execute
            
            End If
            
            cmd.CommandText = "commit"
            cmd.Execute
            rs.MoveNext
         
        Wend
        
    
    
    query = "drop table `" + t1 + "`"
    exquery (query)
    
    query = "delete from queue where tname='" + tname + "' and tcount='" + Trim(tcount) + "'"
'    MsgBox query
    exquery (query)
    
    query = "commit"
    exquery (query)
    
    
MsgBox "Transaction Completed", vbOKOnly, "Info"
connect.Close
End Sub
