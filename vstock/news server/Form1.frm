VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form Form1 
   Appearance      =   0  'Flat
   BackColor       =   &H80000005&
   Caption         =   "Form1"
   ClientHeight    =   8490
   ClientLeft      =   165
   ClientTop       =   555
   ClientWidth     =   11880
   BeginProperty Font 
      Name            =   "Constantia"
      Size            =   15.75
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
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Select NEWS"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   21.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   9975
      Left            =   8880
      TabIndex        =   1
      Top             =   1200
      Width           =   9015
      Begin VB.Timer blink 
         Enabled         =   0   'False
         Left            =   8280
         Top             =   4680
      End
      Begin VB.Timer stimer 
         Enabled         =   0   'False
         Interval        =   1000
         Left            =   7680
         Top             =   4680
      End
      Begin VB.CommandButton shownews 
         BackColor       =   &H00004080&
         Caption         =   "Show the News"
         Height          =   855
         Left            =   6240
         Style           =   1  'Graphical
         TabIndex        =   6
         Top             =   6600
         Width           =   2655
      End
      Begin VB.TextBox sno 
         Height          =   510
         Left            =   3720
         TabIndex        =   4
         Top             =   6360
         Visible         =   0   'False
         Width           =   1575
      End
      Begin MSAdodcLib.Adodc Adodc2 
         Height          =   495
         Left            =   960
         Top             =   6360
         Visible         =   0   'False
         Width           =   2655
         _ExtentX        =   4683
         _ExtentY        =   873
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
         Caption         =   "Adodc2"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         _Version        =   393216
      End
      Begin MSDataGridLib.DataGrid dg2 
         Bindings        =   "Form1.frx":0000
         Height          =   4455
         Left            =   240
         TabIndex        =   3
         Top             =   5280
         Width           =   5775
         _ExtentX        =   10186
         _ExtentY        =   7858
         _Version        =   393216
         BackColor       =   -2147483638
         HeadLines       =   1
         RowHeight       =   27
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ColumnCount     =   2
         BeginProperty Column00 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         BeginProperty Column01 
            DataField       =   ""
            Caption         =   ""
            BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
               Type            =   0
               Format          =   ""
               HaveTrueFalseNull=   0
               FirstDayOfWeek  =   0
               FirstWeekOfYear =   0
               LCID            =   1033
               SubFormatType   =   0
            EndProperty
         EndProperty
         SplitCount      =   1
         BeginProperty Split0 
            BeginProperty Column00 
            EndProperty
            BeginProperty Column01 
            EndProperty
         EndProperty
      End
      Begin RichTextLib.RichTextBox news 
         Height          =   3135
         Left            =   240
         TabIndex        =   2
         Top             =   1320
         Width           =   8535
         _ExtentX        =   15055
         _ExtentY        =   5530
         _Version        =   393217
         ScrollBars      =   3
         Appearance      =   0
         TextRTF         =   $"Form1.frx":0015
      End
      Begin MSAdodcLib.Adodc Adodc1 
         Height          =   495
         Left            =   240
         Top             =   720
         Width           =   2520
         _ExtentX        =   4445
         _ExtentY        =   873
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
         RecordSource    =   "select * from newstable"
         Caption         =   "NEWS"
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   15.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         _Version        =   393216
      End
      Begin VB.Label timerlable 
         Alignment       =   2  'Center
         BackColor       =   &H00808080&
         Caption         =   "00:00"
         BeginProperty Font 
            Name            =   "Comic Sans MS"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000FFFF&
         Height          =   615
         Left            =   6360
         TabIndex        =   11
         Top             =   5280
         Width           =   1935
      End
      Begin VB.Label status 
         Caption         =   "Status:"
         ForeColor       =   &H000000C0&
         Height          =   1575
         Left            =   6120
         TabIndex        =   10
         Top             =   8040
         Width           =   2775
      End
      Begin VB.Label Label1 
         BackColor       =   &H00E0E0E0&
         Caption         =   "Changes in the companies shares in percentage."
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   15.75
            Charset         =   0
            Weight          =   700
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00C00000&
         Height          =   495
         Left            =   360
         TabIndex        =   5
         Top             =   4680
         Width           =   6615
      End
   End
   Begin VB.Timer refreshadodc 
      Interval        =   100
      Left            =   0
      Top             =   0
   End
   Begin VB.Timer chkdisplay 
      Enabled         =   0   'False
      Interval        =   222
      Left            =   16320
      Top             =   5880
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   375
      Left            =   5280
      Top             =   6360
      Visible         =   0   'False
      Width           =   2775
      _ExtentX        =   4895
      _ExtentY        =   661
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
      RecordSource    =   "select company,shares,price  from mockstock"
      Caption         =   "Adodc3"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSDataGridLib.DataGrid DataGrid1 
      Bindings        =   "Form1.frx":009D
      Height          =   4455
      Left            =   360
      TabIndex        =   7
      Top             =   6600
      Width           =   7815
      _ExtentX        =   13785
      _ExtentY        =   7858
      _Version        =   393216
      AllowUpdate     =   0   'False
      BackColor       =   12632256
      HeadLines       =   1
      RowHeight       =   27
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin MSDataGridLib.DataGrid dg1 
      Bindings        =   "Form1.frx":00B2
      Height          =   4455
      Left            =   480
      TabIndex        =   0
      Top             =   1440
      Width           =   7695
      _ExtentX        =   13573
      _ExtentY        =   7858
      _Version        =   393216
      AllowUpdate     =   0   'False
      BackColor       =   -2147483638
      HeadLines       =   1
      RowHeight       =   27
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ColumnCount     =   2
      BeginProperty Column00 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      BeginProperty Column01 
         DataField       =   ""
         Caption         =   ""
         BeginProperty DataFormat {6D835690-900B-11D0-9484-00A0C91110ED} 
            Type            =   0
            Format          =   ""
            HaveTrueFalseNull=   0
            FirstDayOfWeek  =   0
            FirstWeekOfYear =   0
            LCID            =   1033
            SubFormatType   =   0
         EndProperty
      EndProperty
      SplitCount      =   1
      BeginProperty Split0 
         BeginProperty Column00 
         EndProperty
         BeginProperty Column01 
         EndProperty
      EndProperty
   End
   Begin VB.Label Label3 
      BackColor       =   &H00404040&
      Caption         =   "NEWS"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FFFF&
      Height          =   495
      Left            =   480
      TabIndex        =   9
      Top             =   960
      Width           =   1455
   End
   Begin VB.Label Label2 
      BackColor       =   &H00404040&
      Caption         =   "Company Shares"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000080FF&
      Height          =   615
      Left            =   360
      TabIndex        =   8
      Top             =   6000
      Width           =   3495
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
Dim rs1 As New Recordset
Dim min, sec

Private Sub Adodc1_WillMove(ByVal adReason As ADODB.EventReasonEnum, adStatus As ADODB.EventStatusEnum, ByVal pRecordset As ADODB.Recordset)
If Adodc1.Recordset.EOF = False Then
    sno.Text = Adodc1.Recordset(0)
    news.Text = Adodc1.Recordset(1)
End If
End Sub
Private Sub exquery(query As String)
cmd.CommandText = query
Set rs = cmd.Execute

End Sub

Private Sub chkdisplay_Timer()
Dim increment As Double
Dim query
Dim company
connect.Open "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
cmd.ActiveConnection = connect
cmd.CommandType = adCmdText
rs.LockType = adLockOptimistic
rs.CursorType = adOpenDynamic
rs.Source = connect
rs.ActiveConnection = connect


rs1.LockType = adLockOptimistic
rs1.CursorType = adOpenDynamic
rs1.Source = connect
rs1.ActiveConnection = connect

query = "select * from displaynews where done='1'"
exquery (query)

If (rs.EOF = False) Then
    
    query = "select b.company,a.change from newsaffect a, mockstock b where a.nsno='" + sno.Text + "' and a.csno=b.csno"
    cmd.CommandText = query
    Set rs1 = cmd.Execute
    
    While rs1.EOF = False
            company = rs1(0)
'            MsgBox company
            increment = rs1(1) / 100
            query = "update mockstock set price=price + ( " + Trim(Str(increment)) + " * price ) where company='" + company + "'"
'            MsgBox query
            exquery (query)
            rs1.MoveNext
    Wend
    
    query = "commit"
    exquery (query)
    
    query = "delete from displaynews where sno='1'"
    exquery (query)
    
    query = "commit"
    exquery (query)
    
    stimer.Enabled = False
    status.Caption = ""
    shownews.Enabled = True
    chkdisplay.Enabled = False
    

End If


connect.Close
End Sub

Private Sub stimer_Timer()

If (sec = 0) Then
    min = min - 1
    sec = 60
End If
sec = sec - 1
If sec = 30 Then
    blink.Enabled = True
    blink.Interval = 500
End If
timerlable.Caption = Str(min) + " : " + Str(sec)
If (sec = 0 And min = 0) Then
        blink.Enabled = False
        stimer.Enabled = False
        
        timerlable.Caption = "00:00"
End If
End Sub
Private Sub blink_Timer()
If min = 0 And sec <= 30 Then
        If timerlable.ForeColor = &HFF& Then
            timerlable.ForeColor = &H808080
        Else
            timerlable.ForeColor = &HFF&

        End If
End If
End Sub
Private Sub refreshadodc_Timer()
Dim query
query = "select * from mockstock "
Adodc3.RecordSource = query
Adodc3.Refresh
DataGrid1.Refresh
End Sub

Private Sub shownews_Click()
Dim query

connect.Open "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
cmd.ActiveConnection = connect
cmd.CommandType = adCmdText
rs.LockType = adLockOptimistic
rs.CursorType = adOpenDynamic
rs.Source = connect
rs.ActiveConnection = connect

query = "select * from displaynews "
exquery (query)
 
If rs.EOF = False Then
    If rs(2) = "0" Then
         MsgBox "One NEWS is ALREADY in Process . Till then Wait.", vbOKOnly, "Info"
         connect.Close
         Exit Sub
    Else
        connect.Close
        Call chkdisplay_Timer
        connect.Open "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
        cmd.ActiveConnection = connect
        cmd.CommandType = adCmdText
        rs.LockType = adLockOptimistic
        rs.CursorType = adOpenDynamic
        rs.Source = connect
        rs.ActiveConnection = connect
    End If
    
End If
shownews.Enabled = False
status.Caption = "WAIT UNTILL TIME IS FINISHED."
min = 0
sec = 31
timerlable.Caption = Str(min) + " : " + Str(sec)
stimer.Enabled = True

query = "insert into displaynews values('1','" + news.Text + "','0')"
exquery (query)

query = "commit"
exquery (query)

chkdisplay.Enabled = True
connect.Close

End Sub

Private Sub dg1_Click()
news.Text = dg1.Columns(1)
sno.Text = dg1.Columns(0)
End Sub

Private Sub news_Change()
Dim query
query = "select b.company,a.change from newsaffect a, mockstock b where a.nsno='" + sno.Text + "' and a.csno=b.csno"
Adodc2.RecordSource = query
Adodc2.Refresh
dg2.Refresh

End Sub

Private Sub Timer1_Timer()

End Sub

