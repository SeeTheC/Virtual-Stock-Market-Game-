VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000009&
   Caption         =   "Form1"
   ClientHeight    =   11490
   ClientLeft      =   60
   ClientTop       =   450
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
   ScaleHeight     =   11490
   ScaleWidth      =   19080
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Frame server 
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
Private Sub exquery(query As String)

cmd.CommandText = query
'MsgBox query
Set rs = cmd.Execute
End Sub

Private Sub insert(tname As String)
Dim query

query = "INSERT INTO `" + Trim(Str(tname)) + "` (`company`, `shares`) VALUES ('TATA Consultancy Services LTD(TCS)', '0'), ('Infosys', '0'), ('DLF', '0'), ('Tata Steel Ltd. (TISCO)', '0'), ('ONGC Ltd.', '0'), ('Reliance Industries Ltd. (RIL)', '0'), ('Larsen & Toubro Limited (L&T)', '0'), ('Bharat Heavy Electricals Ltd. (BHEL)', '0'), ('Bharti Airtel', '0'), ('Reliance Communications (REL Comm.)', '0'), ('NTPC', '0'), ('TATA Power', '0'), ('ITC', '0'), ('TATA Motors', '0'), ('Maruti Suzuki', '0'), ('Hero Motor Corp', '0'), ('HDFC  ', '0'), ('HDFC Bank', '0'), ('ICICI Bank', '0'), ('SBI', '0');"
exquery (query)

End Sub
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
    MsgBox rs(0) & "--->" & tname
    If (rs(0) = 0) Then
            ' create table
            On Error GoTo l1
            query = " insert into  studtable  values ( '" + Trim(Str(tname)) + "')"
            exquery (query)
l1:
                
            
            query = " create table  `" + Trim(Str(tname)) + "`  ( company text,shares int)"
            exquery (query)
            insert (tname)
    End If
    tablelist.RemoveItem tablelist.ListCount - 1
    i = i + 1
Wend
connect.Close
End Sub

Private Sub ok_Click()
tablelist.AddItem tbnm.Text
End Sub


Private Sub tbnm_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    Call ok_Click
    tbnm.Text = ""
End If

End Sub
