VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form portfolio 
   BackColor       =   &H00FFFFFF&
   Caption         =   "Portfolio"
   ClientHeight    =   9915
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   12435
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
   ScaleHeight     =   9915
   ScaleWidth      =   12435
   StartUpPosition =   3  'Windows Default
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   330
      Left            =   5040
      Top             =   2880
      Visible         =   0   'False
      Width           =   2655
      _ExtentX        =   4683
      _ExtentY        =   582
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
      RecordSource    =   "select * from mockstock where csno='0'"
      Caption         =   "Adodc2"
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
   Begin VB.Frame Frame2 
      BackColor       =   &H00FFFFFF&
      Caption         =   "All Transaction"
      Height          =   3735
      Left            =   360
      TabIndex        =   4
      Top             =   5760
      Width           =   11775
      Begin MSAdodcLib.Adodc Adodc3 
         Height          =   330
         Left            =   5160
         Top             =   1080
         Visible         =   0   'False
         Width           =   2895
         _ExtentX        =   5106
         _ExtentY        =   582
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
         RecordSource    =   "select * from mockstock where csno='0'"
         Caption         =   "Adodc3"
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
      Begin MSDataGridLib.DataGrid allt 
         Bindings        =   "portfolio.frx":0000
         Height          =   2895
         Left            =   240
         TabIndex        =   5
         Top             =   720
         Width           =   11415
         _ExtentX        =   20135
         _ExtentY        =   5106
         _Version        =   393216
         BackColor       =   12632256
         HeadLines       =   1
         RowHeight       =   27
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   18
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
   End
   Begin VB.Frame f 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Current Transaction"
      Height          =   3375
      Left            =   240
      TabIndex        =   2
      Top             =   2160
      Width           =   11895
      Begin MSDataGridLib.DataGrid currt 
         Bindings        =   "portfolio.frx":0015
         Height          =   2655
         Left            =   120
         TabIndex        =   3
         Top             =   480
         Width           =   11535
         _ExtentX        =   20346
         _ExtentY        =   4683
         _Version        =   393216
         BackColor       =   12632256
         HeadLines       =   1
         RowHeight       =   27
         BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   18
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
            Name            =   "Constantia"
            Size            =   18
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
   End
   Begin VB.Frame Frame1 
      BackColor       =   &H00FFFFFF&
      Caption         =   "Company"
      Height          =   2175
      Left            =   240
      TabIndex        =   0
      Top             =   0
      Width           =   10455
      Begin VB.CommandButton scompany 
         BackColor       =   &H008080FF&
         Caption         =   "Select Company"
         Height          =   735
         Left            =   3960
         Style           =   1  'Graphical
         TabIndex        =   8
         Top             =   360
         Width           =   3015
      End
      Begin VB.CommandButton Command1 
         BackColor       =   &H00808000&
         Caption         =   "See All         Companies Transaction"
         Height          =   1455
         Left            =   7080
         Style           =   1  'Graphical
         TabIndex        =   7
         Top             =   360
         Width           =   2775
      End
      Begin VB.ComboBox company 
         Height          =   555
         Left            =   120
         Style           =   2  'Dropdown List
         TabIndex        =   1
         Top             =   480
         Width           =   3255
      End
      Begin VB.Label status 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Constantia"
            Size            =   27.75
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H0000C000&
         Height          =   735
         Left            =   120
         TabIndex        =   9
         Top             =   1320
         Width           =   2055
      End
      Begin VB.Label Label1 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   20.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   2040
         TabIndex        =   10
         Top             =   1440
         Width           =   4335
      End
   End
   Begin VB.TextBox tname 
      Height          =   555
      Left            =   8280
      TabIndex        =   6
      Text            =   "3351"
      Top             =   3720
      Width           =   2295
   End
   Begin MSAdodcLib.Adodc Adodc4 
      Height          =   375
      Left            =   7560
      Top             =   3000
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
      RecordSource    =   ""
      Caption         =   "Adodc4"
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
      Height          =   330
      Left            =   3960
      Top             =   480
      Visible         =   0   'False
      Width           =   1200
      _ExtentX        =   2117
      _ExtentY        =   582
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
   Begin MSAdodcLib.Adodc cal 
      Height          =   495
      Left            =   960
      Top             =   1320
      Visible         =   0   'False
      Width           =   3135
      _ExtentX        =   5530
      _ExtentY        =   873
      ConnectMode     =   0
      CursorLocation  =   3
      IsolationLevel  =   -1
      ConnectionTimeout=   15
      CommandTimeout  =   30
      CursorType      =   3
      LockType        =   3
      CommandType     =   8
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
      RecordSource    =   ""
      Caption         =   "calculation"
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
End
Attribute VB_Name = "portfolio"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
company.Enabled = False
Dim query
query = "select count(distinct(tcount)) from t" + Trim(tname.Text)
Adodc4.RecordSource = query
Adodc4.Refresh

'current
query = "select company,type,shares,price from t" + Trim(tname.Text) + " where tcount='" + Trim(Str(Adodc4.Recordset(0))) + "' "
Adodc2.RecordSource = query
Adodc2.Refresh

' all company
query = "select tcount 'Transaction no',company,type,shares,price from t" + Trim(tname.Text)
Adodc3.RecordSource = query
Adodc3.Refresh
status.Caption = ""
Label1.Caption = ""
End Sub

Private Sub company_Click()
Dim query
Dim cost
Dim shares, price, topic, tshares, cp, total
If Len(company.Text) <> 0 Then
    query = "select count(distinct(tcount)) from t" + Trim(tname.Text)
    Adodc4.RecordSource = query
    Adodc4.Refresh
    
    query = "select company,type,shares,price from t" + Trim(tname.Text) + " where tcount='" + Trim(Str(Adodc4.Recordset(0))) + "' and company='" + Trim(company.Text) + "'"
    Adodc2.RecordSource = query
    Adodc2.Refresh
    
    query = "select tcount 'Transaction no',company,type,shares,price from t" + Trim(tname.Text) + " where company='" + Trim(company.Text) + "'"
    Adodc3.RecordSource = query
    Adodc3.Refresh
    
    query = "select tcount 'Transaction no',company,type,shares,price from t" + Trim(tname.Text) + " where company='" + Trim(company.Text) + "'"
    cal.RecordSource = query
    cal.Refresh
    
    cost = 0
    tshares = 0
    While cal.Recordset.EOF = False
            
            topic = cal.Recordset(2)
            shares = cal.Recordset(3)
            price = cal.Recordset(4)
            'MsgBox cost
            If topic = "buy" Then
                    tshares = tshares + shares
                    cost = cost + (shares * price)
            ElseIf topic = "sell" Then
                    tshares = tshares - shares
                    cost = cost - (shares * price)
            End If
            cal.Recordset.MoveNext
    Wend
    
    If cost <> 0 Then
        cal.RecordSource = "select price from mockstock where company='" + Trim(company.Text) + "'"
        cal.Refresh
        
        cp = (cal.Recordset(0) * tshares)
        total = cp - cost
        total = cdecimal(total)
'        MsgBox total
        If total >= 0 Then
            status.Caption = "PROFIT :"
            Label1.Caption = "Rs." & Str(total)
            status.ForeColor = &HC000&
        Else
            status.Caption = "LOSS :" '
             Label1.Caption = "Rs." & Str(total)
            status.ForeColor = &HFF&
        End If
    Else
        status.Caption = ""
        Label1.Caption = ""
    End If
    
End If
End Sub
Private Function cdecimal(ByVal a As Double) As Double

a = a * 100
a = a + 0.5
a = Int(a)
a = a / 100
cdecimal = a
End Function
Private Sub Form_Load()
Adodc1.RecordSource = "select * from mockstock"
Adodc1.Refresh
company.Clear
While Adodc1.Recordset.EOF = False
    company.AddItem (Adodc1.Recordset(0))
    Adodc1.Recordset.MoveNext
Wend


End Sub

Private Sub scompany_Click()
company.Enabled = True
Call company_Click
End Sub
