VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Begin VB.Form clientform 
   BackColor       =   &H00FFFFFF&
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
   Picture         =   "clientform.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   19080
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.TextBox password 
      BeginProperty Font 
         Name            =   "Wingdings"
         Size            =   18
         Charset         =   2
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      IMEMode         =   3  'DISABLE
      Left            =   9000
      PasswordChar    =   "W"
      TabIndex        =   6
      Top             =   7320
      Width           =   3495
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   375
      Left            =   9360
      Top             =   9360
      Visible         =   0   'False
      Width           =   3375
      _ExtentX        =   5953
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
      RecordSource    =   "select * from money"
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
   Begin VB.TextBox receipt 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H80000018&
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   7200
      TabIndex        =   1
      Text            =   "3350"
      Top             =   6360
      Width           =   4815
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C000&
      Caption         =   "ok"
      Height          =   435
      Left            =   9360
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   8520
      Width           =   3375
   End
   Begin VB.Label aS 
      BackStyle       =   0  'Transparent
      Caption         =   "Password:"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   6600
      TabIndex        =   5
      Top             =   7320
      Width           =   2295
   End
   Begin VB.Label status 
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   375
      Left            =   6480
      TabIndex        =   4
      Top             =   7800
      Width           =   6135
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Mock Stock "
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   72
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   1575
      Left            =   5880
      TabIndex        =   3
      Top             =   1560
      Width           =   8175
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Receipt No. :"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   21.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   615
      Left            =   6600
      TabIndex        =   2
      Top             =   5400
      Width           =   2775
   End
   Begin VB.Shape Shape1 
      BorderWidth     =   6
      Height          =   1095
      Left            =   6480
      Shape           =   4  'Rounded Rectangle
      Top             =   6000
      Width           =   6135
   End
End
Attribute VB_Name = "clientform"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim connect As New Connection
Dim cmd As New Command
Dim rs As New Recordset
Private Sub Command1_Click()

Dim query As String
If password.Text <> "Pshares" Then
        Exit Sub
End If
query = "select * from money where tname='" + Trim(Str(receipt.Text)) + "'"
'MsgBox query
Adodc1.RecordSource = query
Adodc1.Refresh

If Adodc1.Recordset.EOF = True Then
        status.Caption = " Invalid Receipt No."
        Exit Sub
End If

Me.Hide
stkclient.Show
End Sub

Private Sub Frame1_DragDrop(Source As Control, X As Single, Y As Single)

End Sub



Private Sub receipt_KeyPress(KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii >= 58) And KeyAscii <> 8 Then
    KeyAscii = 0
End If
End Sub
