VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form Form1 
   BackColor       =   &H80000009&
   Caption         =   "Form1"
   ClientHeight    =   11010
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   19080
   BeginProperty Font 
      Name            =   "Constantia"
      Size            =   18
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   ScaleHeight     =   11010
   ScaleWidth      =   19080
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.CommandButton stop 
      Caption         =   "Stop the Server"
      Height          =   615
      Left            =   6480
      TabIndex        =   6
      Top             =   1680
      Width           =   4215
   End
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   11160
      Top             =   960
   End
   Begin MSAdodcLib.Adodc queue 
      Height          =   450
      Left            =   6480
      Top             =   2760
      Visible         =   0   'False
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   794
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
      OLEDBString     =   "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from queue"
      Caption         =   "queue"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   570
      Left            =   6480
      Top             =   3480
      Visible         =   0   'False
      Width           =   4215
      _ExtentX        =   7435
      _ExtentY        =   1005
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   1
      CursorOptions   =   0
      CacheSize       =   50
      MaxRecords      =   0
      BOFAction       =   0
      EOFAction       =   0
      ConnectStringType=   1
      Appearance      =   1
      BackColor       =   -2147483643
      ForeColor       =   -2147483640
      Orientation     =   0
      Enabled         =   -1
      Connect         =   "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
      OLEDBString     =   "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   "select * from mockstock"
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.CommandButton start 
      Caption         =   "Start The SERVER"
      Height          =   615
      Left            =   6480
      TabIndex        =   5
      Top             =   840
      Width           =   4095
   End
   Begin VB.Frame server 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Initial Table"
      Height          =   6855
      Left            =   240
      TabIndex        =   0
      Top             =   720
      Width           =   5895
      Begin VB.CommandButton create 
         Caption         =   "Create Table"
         Height          =   495
         Left            =   600
         TabIndex        =   4
         Top             =   5640
         Width           =   4455
      End
      Begin VB.CommandButton ok 
         Caption         =   "ok"
         Height          =   495
         Left            =   3480
         TabIndex        =   3
         Top             =   4800
         Width           =   735
      End
      Begin VB.TextBox tbnm 
         Alignment       =   2  'Center
         Height          =   495
         Left            =   960
         TabIndex        =   2
         Top             =   4800
         Width           =   2055
      End
      Begin VB.ListBox tablelist 
         Height          =   3975
         Left            =   720
         TabIndex        =   1
         Top             =   600
         Width           =   4095
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim connect As New Connection
Dim cmd As New Command
Dim rs As New Recordset
Dim rsms As New Recordset
Private Sub exquery(query As String)

cmd.CommandText = query
'MsgBox query
Set rs = cmd.Execute
End Sub

Private Sub insert(tname As String)
Dim query

query = "INSERT INTO `" + Trim(Str(tname)) + "` (`company`, `shares`) VALUES ('TCS', '0'), ('Infosys', '0'), ('DLF', '0'), ('TISCO', '0'), ('ONGC Ltd.', '0'), ('RIL', '0'), ('L&T', '0'), ('BHEL', '0'), ('Bharti Airtel', '0'), ('REL Comm.', '0'), ('NTPC', '0'), ('TATA Power', '0'), ('ITC', '0'), ('TATA Motors', '0'), ('Maruti Suzuki', '0'), ('Hero Motor Corp', '0'), ('HDFC  ', '0'), ('HDFC Bank', '0'), ('ICICI Bank', '0'), ('SBI', '0');"
exquery (query)

query = "insert into money values ('" + Trim(Str(tname)) + "','10000')"
'MsgBox query
exquery (query)

query = "commit"
exquery (query)

End Sub

Private Function cdecimal(a As Double) As Double

a = a * 100
a = a + 0.5
a = Int(a)
a = a / 100
'Dim str1() As String
'Dim str2 As String, str3
'
'If InStr(1, a, ".") <> 0 Then
'        str2 = Str(a)
'        str1 = Split(str2, ".")
'        str2 = Right(str1(1), 2)
'        str2 = Trim((str1(0)) + "." + (str2))
'        a = str2
'End If
cdecimal = a
End Function

Private Sub create_Click()
Dim i, count, tname
Dim query
connect.Open "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
cmd.ActiveConnection = connect
cmd.CommandType = adCmdText
rs.Source = connect
rs.ActiveConnection = connect
i = 0
count = tablelist.ListCount
While i < count
    tname = tablelist.List(tablelist.ListCount - 1)
    query = " select count(*) from studtable where tname= '" + Trim(Str(tname)) + "'"
    exquery (query)
    
    If (rs(0) = 0) Then
            ' create table
            On Error GoTo l1
            query = " insert into  studtable  values ( '" + Trim(Str(tname)) + "')"
            exquery (query)
l1:
                
            
            query = " create table  `" + Trim(Str(tname)) + "`  ( company text,shares int)"
'            MsgBox query
            exquery (query)
            query = "create table t" + Trim(Str(tname)) + " (company text,type text,shares int(20), price float,tcount int(10)) "
            exquery (query)
    
            insert (tname)
    End If
    tablelist.RemoveItem tablelist.ListCount - 1
    i = i + 1
Wend
connect.Close
End Sub

Private Sub ok_Click()
If Len(tbnm.Text) <> 0 Then
        tablelist.AddItem tbnm.Text
        tbnm.Text = ""
End If

End Sub


Private Sub start_Click()
Timer1.Enabled = True
End Sub

Private Sub stop_Click()

Timer1.Enabled = False
start.Enabled = True
End Sub

Private Sub tbnm_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii >= 58) And KeyAscii <> 8 And KeyAscii <> 13 Then
    KeyAscii = 0
End If
If KeyAscii = 13 Then
    Call ok_Click
    tbnm.Text = ""
End If

End Sub

Private Sub Timer1_Timer()
Dim i
Dim j, rcount, tno
Dim query
Dim t1 As String, tname As String, tcount As String
Dim price As Double, shares

Dim company As String
Dim increment As Double
Dim balance As Double
Dim rs1 As New Recordset
Dim ms As New Recordset

Dim buy, sell
Dim bcost As Double, scost As Double
Dim sno As Integer

start.Enabled = False

connect.Open "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
cmd.ActiveConnection = connect
cmd.CommandType = adCmdText

rs.LockType = adLockOptimistic
rs.CursorType = adOpenDynamic
rs.Source = connect
rs.ActiveConnection = connect


With rs1
.CursorLocation = adUseClient
.CursorType = adOpenDynamic
.LockType = adLockOptimistic
.Source = connect
.ActiveConnection = connect

End With

'rs2.Source = connect
'rs2.ActiveConnection = connect
rsms.LockType = adLockOptimistic
rsms.CursorType = adOpenDynamic
rsms.Source = connect
rsms.ActiveConnection = connect

ms.LockType = adLockOptimistic
ms.CursorType = adOpenDynamic
ms.Source = connect
ms.ActiveConnection = connect
  

      
'      query = " select * from queue "
'      cmd.CommandText = query
'      Set ms = cmd.Execute
      
   'While 1
            
            query = " select count(*) from queue "
            'exquery (query)
            queue.RecordSource = query
            queue.Refresh
            
'            MsgBox "count" & queue.Recordset(0)
            
            
            query = " select * from queue "
            'exquery (query)
            queue.RecordSource = query
            queue.Refresh
            
            While queue.Recordset.EOF = False
                    If queue.Recordset(2) = 1 Then
                        queue.Recordset.MoveNext
                    Else
                        GoTo b1
                    End If
                    
            Wend
b1:
            
            ' if queue is not empty
            While queue.Recordset.EOF = False
                tname = Trim(queue.Recordset(0))
                tcount = Trim(queue.Recordset(1))

                t1 = tname + tcount

                query = " select balance from money where tname='" + tname + "'"
                exquery (query)
                balance = rs(0)

                query = " select * from  `" + t1 + "`"
                Adodc1.RecordSource = query
                Adodc1.Refresh
                rcount = Adodc1.Recordset.RecordCount
               
                 
                 ' finding the transaction count of that id
                query = " select count(distinct(tcount)) from t" + tname
'                MsgBox query
                exquery (query)
                tno = rs(0) + 1
                ' MsgBox tno
               
                j = 0
                While Adodc1.Recordset.EOF = False
                    sno = Trim(Adodc1.Recordset(0))
                    company = Trim(Adodc1.Recordset(1))
                    buy = Int(Adodc1.Recordset(2))
                    sell = Int(Adodc1.Recordset(3))

                    query = " select * from mockstock where company='" + company + "'"
                    exquery (query)
                    
                  
                    If (buy <> 0) Then
                        ' buying
'                         MsgBox buy & "" & (rs(1))
                            If (buy > Int(rs(1))) Then
                                'error
                                  query = "update `" + t1 + "` set correct='0' where sno='" + Trim(Str(sno)) + "'"
                                  'MsgBox query
                                  cmd.CommandText = query
                                  cmd.Execute
                                  
                                  cmd.CommandText = "commit"
                                  cmd.Execute
                                
                            Else
                                bcost = Int(buy) * rs(2)
                                If (bcost > balance) Then
                                    'money is less
                                 
                                   query = "update `" + t1 + "` set correct='0' where sno='" + Trim(Str(sno)) + "'"
                                   cmd.CommandText = query
                                   cmd.Execute
                                  
                                   cmd.CommandText = "commit"
                                   cmd.Execute
                                 
                                 Else
                                      balance = balance - bcost
                                      balance = cdecimal(balance)
                                     'update balance table
                                      query = " UPDATE money set balance='" + Trim(Str(balance)) + "' where tname='" + Trim(tname) + "'"
                                      cmd.CommandText = query
                                      cmd.Execute
                                      cmd.CommandText = "commit"
                                      cmd.Execute
                                      
                                      ' insert into portfolio
                                       
                                       query = "insert into t" + Trim(tname) + " values ('" + company + "','buy','" + Trim(Str(buy)) + "','" + Trim(Str(rs(2))) + "','" + Trim(Str(tno)) + "')"
                                       cmd.CommandText = query
                                       cmd.Execute
                    
                                      cmd.CommandText = "commit"
                                       cmd.Execute
                    
                                    'Updating Table
                                     
                                    increment = Int(buy) / Int(rs(1))
                                    'increment = 0.5
                                    price = rs(2) + (rs(2) * increment)
                                    price = cdecimal(price)
                                    shares = rs(1) - Int(buy)
     
                                    query = " UPDATE `mockstock` SET `Shares`='" + Trim(Str(shares)) + "',`Price`='" + Trim(Str(price)) + "' WHERE `Company`='" + company + "'"
                                    exquery (query)
    
                                    'saving
                                    query = "commit"
                                    exquery (query)
                                End If
                        End If

                   ElseIf (sell <> 0) Then
                           '***********<selling>*****************************
                           
                           
                            scost = Int(sell) * rs(2)
                            balance = balance + scost
                            balance = cdecimal(balance)
                            'update balance table
                             query = " UPDATE money set balance='" + Trim(Str(balance)) + "' where tname='" + Trim(tname) + "'"
                             cmd.CommandText = query
                             cmd.Execute
                             cmd.CommandText = "commit"
                             cmd.Execute
                             ' insert into portfolio
                                     
                             query = "insert into t" + Trim(tname) + " values ('" + company + "','sell','" + Trim(Str(sell)) + "','" + Trim(Str(rs(2))) + "','" + Trim(Str(tno)) + "')"
                             cmd.CommandText = query
                             cmd.Execute
                    
                             cmd.CommandText = "commit"
                             cmd.Execute
                             
                            'Updating Table
                            If rs(1) <> 0 Then
                                increment = (-1 * Int(sell)) / Int(rs(1))
                            Else
                                     increment = -0.01
                
                            End If
'                            MsgBox increment
                             'increment = 0.5
                             price = rs(2) + (rs(2) * increment)
                             price = cdecimal(price)
                             shares = rs(1) + Int(sell)
                                                      
                             If price < 0 Then
                                        price = 0
                             End If
     
                             query = " UPDATE `mockstock` SET `Shares`='" + Trim(Str(shares)) + "',`Price`='" + Trim(Str(price)) + "' WHERE `Company`='" + company + "'"
                             exquery (query)
    
                             'saving
                             query = "commit"
                             exquery (query)
                    
                    End If
                    
                    Adodc1.Recordset.MoveNext
                    j = j + 1
                Wend
                
                 query = "update queue set done='1' where tname='" + tname + "' and tcount='" + tcount + "'"
                 'MsgBox query
                 cmd.CommandText = query
                 cmd.Execute
                 
                 cmd.CommandText = "commit"
                 cmd.Execute
                  
                  
                 queue.Recordset.MoveNext
                 
         Wend
         
            
    'Wend

connect.Close
End Sub
