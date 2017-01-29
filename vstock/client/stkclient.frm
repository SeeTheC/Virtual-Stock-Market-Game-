VERSION 5.00
Object = "{67397AA1-7FB1-11D0-B148-00A0C922E820}#6.0#0"; "MSADODC.OCX"
Object = "{CDE57A40-8B86-11D0-B3C6-00A0C90AEA82}#1.0#0"; "MSDATGRD.OCX"
Begin VB.Form stkclient 
   BackColor       =   &H80000009&
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   11010
   ClientLeft      =   105
   ClientTop       =   105
   ClientWidth     =   19080
   BeginProperty Font 
      Name            =   "Consolas"
      Size            =   14.25
      Charset         =   0
      Weight          =   400
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   Picture         =   "stkclient.frx":0000
   ScaleHeight     =   11010
   ScaleWidth      =   19080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin MSAdodcLib.Adodc Adodc4 
      Height          =   375
      Left            =   5400
      Top             =   5760
      Visible         =   0   'False
      Width           =   2655
      _ExtentX        =   4683
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
      Connect         =   "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock;Mode=ReadWrite"
      OLEDBString     =   "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock;Mode=ReadWrite"
      OLEDBFile       =   ""
      DataSourceName  =   ""
      OtherAttributes =   ""
      UserName        =   ""
      Password        =   ""
      RecordSource    =   ""
      Caption         =   "netassest"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Timer Timer1 
      Interval        =   250
      Left            =   10920
      Top             =   10200
   End
   Begin VB.CommandButton assets 
      BackColor       =   &H008A8D49&
      Caption         =   "My Portfolio"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   495
      Left            =   5160
      Style           =   1  'Graphical
      TabIndex        =   69
      ToolTipText     =   "Will show yours total assets up till now."
      Top             =   6840
      Width           =   3135
   End
   Begin VB.CommandButton logout 
      BackColor       =   &H00808080&
      Caption         =   "Log Out"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   555
      Left            =   5040
      Style           =   1  'Graphical
      TabIndex        =   68
      Top             =   7920
      Width           =   3255
   End
   Begin MSDataGridLib.DataGrid dg1 
      Bindings        =   "stkclient.frx":9A32CA
      Height          =   7695
      Left            =   360
      TabIndex        =   65
      Top             =   1200
      Width           =   4575
      _ExtentX        =   8070
      _ExtentY        =   13573
      _Version        =   393216
      AllowUpdate     =   0   'False
      BackColor       =   11315867
      Enabled         =   0   'False
      HeadLines       =   1
      RowHeight       =   22
      BeginProperty HeadFont {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   11.25
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
   Begin VB.CommandButton go 
      BackColor       =   &H000080FF&
      Caption         =   "Go"
      Height          =   495
      Left            =   14160
      Style           =   1  'Graphical
      TabIndex        =   61
      ToolTipText     =   "Will Process the Buy or Sell request"
      Top             =   10320
      Width           =   2535
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   19
      Left            =   16200
      TabIndex        =   60
      Top             =   9840
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   18
      Left            =   16200
      TabIndex        =   59
      Top             =   9360
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   17
      Left            =   16200
      TabIndex        =   58
      Top             =   8880
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   16
      Left            =   16200
      TabIndex        =   57
      Top             =   8400
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   15
      Left            =   16200
      TabIndex        =   56
      Top             =   7920
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   14
      Left            =   16200
      TabIndex        =   55
      Top             =   7440
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   13
      Left            =   16200
      TabIndex        =   54
      Top             =   6960
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   12
      Left            =   16200
      TabIndex        =   53
      Top             =   6480
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   11
      Left            =   16200
      TabIndex        =   52
      Top             =   6000
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   10
      Left            =   16200
      TabIndex        =   51
      Top             =   5520
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   9
      Left            =   16200
      TabIndex        =   50
      Top             =   5040
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   8
      Left            =   16200
      TabIndex        =   49
      Top             =   4560
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   7
      Left            =   16200
      TabIndex        =   48
      Top             =   4080
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   6
      Left            =   16200
      TabIndex        =   47
      Top             =   3600
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   5
      Left            =   16200
      TabIndex        =   46
      Top             =   3120
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   4
      Left            =   16200
      TabIndex        =   45
      Top             =   2640
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   3
      Left            =   16200
      TabIndex        =   44
      Top             =   2160
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   2
      Left            =   16200
      TabIndex        =   43
      Top             =   1680
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      Height          =   360
      Index           =   1
      Left            =   16200
      TabIndex        =   42
      Top             =   1200
      Width           =   1935
   End
   Begin VB.TextBox sell 
      Alignment       =   2  'Center
      BackColor       =   &H00B7D8DD&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   0
      Left            =   16200
      TabIndex        =   41
      Top             =   720
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   19
      Left            =   13320
      TabIndex        =   40
      Top             =   9840
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   18
      Left            =   13320
      TabIndex        =   39
      Top             =   9360
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   17
      Left            =   13320
      TabIndex        =   38
      Top             =   8880
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   16
      Left            =   13320
      TabIndex        =   37
      Top             =   8400
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   15
      Left            =   13320
      TabIndex        =   36
      Top             =   7920
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   14
      Left            =   13320
      TabIndex        =   35
      Top             =   7440
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   13
      Left            =   13320
      TabIndex        =   34
      Top             =   6960
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   12
      Left            =   13320
      TabIndex        =   33
      Top             =   6480
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   11
      Left            =   13320
      TabIndex        =   32
      Top             =   6000
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   10
      Left            =   13320
      TabIndex        =   31
      Top             =   5520
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   9
      Left            =   13320
      TabIndex        =   30
      Top             =   5040
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   8
      Left            =   13320
      TabIndex        =   29
      Top             =   4560
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   7
      Left            =   13320
      TabIndex        =   28
      Top             =   4080
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   6
      Left            =   13320
      TabIndex        =   27
      Top             =   3600
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   5
      Left            =   13320
      TabIndex        =   26
      Top             =   3120
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   4
      Left            =   13320
      TabIndex        =   25
      Top             =   2640
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   3
      Left            =   13320
      TabIndex        =   24
      Top             =   2160
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   2
      Left            =   13320
      TabIndex        =   23
      Top             =   1680
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   1
      Left            =   13320
      TabIndex        =   22
      Top             =   1200
      Width           =   1935
   End
   Begin VB.TextBox buy 
      Alignment       =   2  'Center
      BackColor       =   &H80000018&
      ForeColor       =   &H00000000&
      Height          =   360
      Index           =   0
      Left            =   13320
      TabIndex        =   21
      Top             =   720
      Width           =   1935
   End
   Begin MSAdodcLib.Adodc Adodc1 
      Height          =   330
      Left            =   960
      Top             =   3240
      Visible         =   0   'False
      Width           =   3255
      _ExtentX        =   5741
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
      RecordSource    =   ""
      Caption         =   "Adodc1"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc2 
      Height          =   375
      Left            =   2040
      Top             =   5640
      Visible         =   0   'False
      Width           =   2535
      _ExtentX        =   4471
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
      RecordSource    =   "select * from money where tname='0'"
      Caption         =   "balance"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin MSAdodcLib.Adodc Adodc3 
      Height          =   330
      Left            =   1200
      Top             =   5160
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
      RecordSource    =   "select company COMPANY,price PRICE from mockstock"
      Caption         =   "Adodc3"
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      _Version        =   393216
   End
   Begin VB.Label netassets 
      Alignment       =   2  'Center
      Caption         =   "00.00"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   5520
      TabIndex        =   96
      Top             =   4080
      Width           =   2655
   End
   Begin VB.Label Label9 
      BackStyle       =   0  'Transparent
      Caption         =   "Your Net Assets:"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4920
      TabIndex        =   95
      Top             =   3600
      Width           =   3135
   End
   Begin VB.Label status 
      Alignment       =   2  'Center
      BackColor       =   &H00E0E0E0&
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1095
      Left            =   360
      TabIndex        =   93
      Top             =   9840
      Width           =   8175
   End
   Begin VB.Label Label8 
      Alignment       =   2  'Center
      BackColor       =   &H00AAAAAA&
      Caption         =   "00:00"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   6000
      TabIndex        =   92
      Top             =   360
      Width           =   1935
   End
   Begin VB.Label Label7 
      Alignment       =   2  'Center
      BackColor       =   &H8000000B&
      Caption         =   "Companies Information"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000C0&
      Height          =   495
      Left            =   360
      TabIndex        =   91
      Top             =   720
      Width           =   4575
   End
   Begin VB.Label Label6 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Your Shares"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0080FF80&
      Height          =   375
      Left            =   11400
      TabIndex        =   90
      Top             =   240
      Width           =   1815
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   19
      Left            =   11640
      TabIndex        =   89
      Top             =   9840
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   18
      Left            =   11640
      TabIndex        =   88
      Top             =   9360
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   17
      Left            =   11640
      TabIndex        =   87
      Top             =   8880
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   16
      Left            =   11640
      TabIndex        =   86
      Top             =   8400
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   15
      Left            =   11640
      TabIndex        =   85
      Top             =   7920
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   14
      Left            =   11640
      TabIndex        =   84
      Top             =   7440
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   13
      Left            =   11640
      TabIndex        =   83
      Top             =   6960
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   12
      Left            =   11640
      TabIndex        =   82
      Top             =   6480
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   11
      Left            =   11640
      TabIndex        =   81
      Top             =   6000
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   10
      Left            =   11640
      TabIndex        =   80
      Top             =   5520
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   9
      Left            =   11640
      TabIndex        =   79
      Top             =   5040
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   8
      Left            =   11640
      TabIndex        =   78
      Top             =   4560
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   7
      Left            =   11640
      TabIndex        =   77
      Top             =   4080
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   6
      Left            =   11640
      TabIndex        =   76
      Top             =   3600
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   5
      Left            =   11640
      TabIndex        =   75
      Top             =   3120
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   4
      Left            =   11640
      TabIndex        =   74
      Top             =   2640
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   3
      Left            =   11640
      TabIndex        =   73
      Top             =   2160
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   2
      Left            =   11640
      TabIndex        =   72
      Top             =   1680
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   1
      Left            =   11640
      TabIndex        =   71
      Top             =   1200
      Width           =   1455
   End
   Begin VB.Label sharescap 
      Alignment       =   2  'Center
      Appearance      =   0  'Flat
      BackColor       =   &H0080FFFF&
      BorderStyle     =   1  'Fixed Single
      Caption         =   "0"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   15.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FF00FF&
      Height          =   375
      Index           =   0
      Left            =   11640
      TabIndex        =   70
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label balcap 
      Alignment       =   2  'Center
      Caption         =   "00.00"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   20.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   495
      Left            =   5520
      TabIndex        =   67
      Top             =   2880
      Width           =   2655
   End
   Begin VB.Label Label5 
      BackStyle       =   0  'Transparent
      Caption         =   "Your Balance:"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4920
      TabIndex        =   66
      Top             =   2400
      Width           =   2415
   End
   Begin VB.Label recieptno 
      BackStyle       =   0  'Transparent
      Caption         =   "3350"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   20.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   375
      Left            =   2880
      TabIndex        =   64
      Top             =   240
      Width           =   1095
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Sell"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000080&
      Height          =   495
      Left            =   16200
      TabIndex        =   63
      Top             =   240
      Width           =   1935
   End
   Begin VB.Label Label3 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Buy"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   -1  'True
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   13440
      TabIndex        =   62
      Top             =   240
      Width           =   1695
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "TCS"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   0
      Left            =   9120
      TabIndex        =   20
      Top             =   720
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "HDFC Bank"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   360
      Index           =   17
      Left            =   9120
      TabIndex        =   19
      Top             =   8880
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "ICICI Bank"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   18
      Left            =   9120
      TabIndex        =   18
      Top             =   9345
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "HDFC  "
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   16
      Left            =   9120
      TabIndex        =   17
      Top             =   8400
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Hero Motor Corp"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   15
      Left            =   9120
      TabIndex        =   16
      Top             =   7920
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Maruti Suzuki"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   14
      Left            =   9120
      TabIndex        =   15
      Top             =   7440
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "TATA Motors"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   13
      Left            =   9120
      TabIndex        =   14
      Top             =   6960
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "ITC"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   12
      Left            =   9120
      TabIndex        =   13
      Top             =   6480
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "TATA Power"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   11
      Left            =   9120
      TabIndex        =   12
      Top             =   6000
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "NTPC"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   10
      Left            =   9120
      TabIndex        =   11
      Top             =   5520
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "REL Comm."
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   9
      Left            =   9120
      TabIndex        =   10
      Top             =   5040
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Bharti Airtel"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   8
      Left            =   9120
      TabIndex        =   9
      Top             =   4560
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "BHEL"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   7
      Left            =   9120
      TabIndex        =   8
      Top             =   4080
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "L&T"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   6
      Left            =   9120
      TabIndex        =   7
      Top             =   3600
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "RIL"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   255
      Index           =   5
      Left            =   9120
      TabIndex        =   6
      Top             =   3180
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "ONGC Ltd."
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   4
      Left            =   9120
      TabIndex        =   5
      Top             =   2685
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "TISCO"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   420
      Index           =   3
      Left            =   9120
      TabIndex        =   4
      Top             =   2160
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "DLF"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   255
      Index           =   2
      Left            =   9120
      TabIndex        =   3
      Top             =   1680
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Infosys"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   360
      Index           =   1
      Left            =   9120
      TabIndex        =   2
      Top             =   1215
      Width           =   2775
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "SBI"
      BeginProperty Font 
         Name            =   "Consolas"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   375
      Index           =   19
      Left            =   9240
      TabIndex        =   1
      Top             =   9720
      Width           =   2775
   End
   Begin VB.Shape Shape2 
      BorderWidth     =   5
      Height          =   10815
      Left            =   8640
      Shape           =   4  'Rounded Rectangle
      Top             =   120
      Width           =   10575
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Reciept No. :"
      BeginProperty Font 
         Name            =   "Constantia"
         Size            =   18
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   495
      Left            =   240
      TabIndex        =   0
      Top             =   240
      Width           =   2535
   End
   Begin VB.Shape Shape1 
      BorderColor     =   &H00E0E0E0&
      BorderWidth     =   5
      Height          =   8775
      Left            =   120
      Top             =   240
      Width           =   8295
   End
   Begin VB.Label Label10 
      BackColor       =   &H00E0E0E0&
      Caption         =   "STATUS:"
      Height          =   375
      Left            =   360
      TabIndex        =   94
      Top             =   9480
      Width           =   1455
   End
End
Attribute VB_Name = "stkclient"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit
Dim connect As New Connection
Dim cmd As New Command
Dim rs As New Recordset
Dim increment As Double

'-----------------------------
Dim balance As Double
Const comp As Integer = 20
'-------------------------------
' hor create_tranctable
Dim tname As String
Dim t1, t2, bcost, total, price, shares
Dim createdflag As Boolean
Dim tcount, tcreated As Boolean
'----------------------------
    
Private Sub exquery(query As String)

cmd.CommandText = query
'MsgBox query
Set rs = cmd.Execute
End Sub


Private Sub cal_inc(cd As Integer, cs As Integer)
increment = (cd / cs)
End Sub

Private Sub refbal()

Adodc2.RecordSource = "select balance from money where tname='" + Trim(recieptno.Caption) + "'"
Adodc2.Refresh
balcap.Caption = Adodc2.Recordset(0)

End Sub

Private Sub assets_Click()
portfolio.Show
portfolio.tname = Str(recieptno.Caption)
End Sub

Private Sub buy_KeyPress(Index As Integer, KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii >= 58) And KeyAscii <> 8 Then
    KeyAscii = 0
End If
End Sub

Private Sub Form_Load()
recieptno.Caption = Trim(Str(clientform.receipt.Text))
Call refbal
Call lshares
End Sub
Private Sub lshares()
    Dim i
    Dim query
    query = "select * from `" + Trim(recieptno.Caption) + "`"
    Adodc1.RecordSource = query
    Adodc1.Refresh
    
    
    While i < 20
    
        sharescap(i).Caption = Adodc1.Recordset(1)
         If Trim(Adodc1.Recordset(1)) <> 0 Then
            sharescap(i).ForeColor = &H0&
         End If
        Adodc1.Recordset.MoveNext
         i = i + 1
    Wend

End Sub
'Private Sub process()
'Dim query
''                        balance = balance - bcost
''                        'update balance table
'
''                        'Update Table
''                        MsgBox Int(buy(i).Text)
''                        cal_inc Int(buy(i).Text), Int(rs(1))
''                        increment = Int(buy(i).Text) / Int(rs(1))
''                        'increment = 0.5
''                        MsgBox increment
''                        price = rs(2) + (rs(2) * increment)
''                        shares = rs(1) - Int(buy(i).Text)
''                        query = " UPDATE `mockstock` SET `Shares`='" + Trim(Str(shares)) + "',`Price`='" + Trim(Str(price)) + "' WHERE `Company`='" + Label2(i).Caption + "'"
''                        exquery (query)
''                        query = "commit"
''                        exquery (query)
'
'                        query = " select * from queue where tname='" + tname + "'"
'                        exquery (query)
'
'                        If (rs.EOF = False) Then
'                                '  previous transaction is there
'                                query = " select max(tcount) from queue where tname='" + tname + "'"
'                                exquery (query)
'                                tcount = rs(0) + 1
'                                t1 = tname + Trim(Str(tcount))
'
'                        Else
'                                ' no previous transaction is there
'                                t1 = tname + Trim(Str(0))
'                                tcount = 0
'                        End If
'
'                        'creating the table
'                        If createdflag = False Then
'                             query = " create table `" + t1 + "` ( companey varchar(200),buy int(20),sell int(20) ) "
'                             MsgBox query
'                             exquery (query)
'                             query = " insert into queue values('" + tname + "','" + Trim(Str(tcount)) + "' )"
'                             exquery (query)
'                             createdflag = True
'                        End If
'
'                        ' insert into table
'                        query = " insert into `" + t1 + "` values ('" + Label2(i).Caption + "','" + buy(i).Text + "','0' ) "
'                        exquery (query)
'
'End Sub
Private Sub create_transtable()
Dim query

If createdflag = False Then
                       
                                 query = " select * from queue where tname='" + tname + "'"
                                 exquery (query)
                        
                                 If (rs.EOF = False) Then
                                     '  previous transaction is there
                                        query = " select count(tcount) from queue where tname='" + tname + "'"
                                        exquery (query)
                                        'MsgBox "max" & rs(0)
                                        tcount = rs(0) ' + 1
                                        t1 = tname + Trim(Str(tcount))
                                
                                Else
                                        ' no previous transaction is there
                                        t1 = tname + Trim(Str(0))
                                        tcount = 0
                                End If
                     
                                'creating the table
                                query = " create table `" + t1 + "` (sno int(20),companey varchar(200),buy int(20),sell int(20),correct int(2) ) "
                                exquery (query)
                                query = "commit"
                                exquery (query)
                                    
                                    
'                                query = " insert into queue values('" + tname + "','" + Trim(Str(tcount)) + "','0' )"
'                                exquery (query)
'
'
'                                query = "commit"
'                                exquery (query)
                
                                tcreated = True
                                createdflag = True
                            '    MsgBox "create table"
                            
End If

            

End Sub
Private Sub init()
Dim i

While i < 20
    buy(i).BackColor = &H80000018
    sell(i).BackColor = &HB7D8DD

    i = i + 1
Wend


End Sub
Private Sub go_Click()
    Dim i, k As Integer
    Dim query
    Dim errflag As Boolean
    Call init
    connect.Open "Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Data Source=mockstock"
    cmd.ActiveConnection = connect
    cmd.CommandType = adCmdText
    
    rs.LockType = adLockOptimistic
    rs.CursorType = adOpenDynamic
    rs.Source = connect
    rs.ActiveConnection = connect
    
    createdflag = False
    tcreated = False
    tname = Trim(recieptno.Caption)
    tcount = 0
    i = 0
    k = 1
    errflag = False
    While i < 20
        If (Len(sell(i).Text) <> 0) Then
                query = "select shares from `" + tname + "` where company='" + Label2(i).Caption + "'"
                exquery (query)
                If rs(0) < Int(sell(i).Text) Then
                    sell(i).BackColor = &H8080FF
                    status.Caption = " Entries in ' RED ' Block   are Invalid. Correct it and Try Again."
                    errflag = True
                Else
                            Call create_transtable
                            ' insert into table
                            status.Caption = ""
                            query = " insert into `" + t1 + "` values ('" + Trim(Str(k)) + "','" + Label2(i).Caption + "','0','" + sell(i).Text + "','1' ) "
                            exquery (query)
                            
                            query = "commit"
                            exquery (query)
                            
                            k = k + 1
                            sell(i).Text = ""
                End If
        End If

        If (Len(buy(i).Text) <> 0) Then
                query = "select * from mockstock where company='" + Label2(i).Caption + "'"
                exquery (query)
                If rs(1) < Int(buy(i).Text) Then
                   ' wrong entry
                    buy(i).BackColor = &H8080FF
                    status.Caption = " Entries in ' RED ' Block   are Invalid. Correct it and Try Again."
                    errflag = True
                Else
                   
                      
                            Call create_transtable
                            ' insert into table
                             status.Caption = ""
                            query = " insert into `" + t1 + "` values ('" + Trim(Str(k)) + "','" + Label2(i).Caption + "','" + buy(i).Text + "','0','1' ) "
                            exquery (query)
                            k = k + 1
                            buy(i).Text = ""
                   
                End If
        End If
                
        i = i + 1
    Wend
    

     ' inserting into the queue
     If tcreated = True Then
        
        query = " insert into queue values('" + tname + "','" + Trim(Str(tcount)) + "','0' )"
        exquery (query)
                                         
        query = "commit"
        exquery (query)
        
        Call lckall
        starttransaction.Show
        Unload starttransaction
        Call unlckall
        
        tcreated = False
    Else
        If errflag = False Then
            status.Caption = " All the Enteris are 'Blank'. Fill at 'Least ONE' ."
        End If
    End If
                

    
    connect.Close
    
    ' refreshing
    Call refbal
    Call lshares
End Sub
Private Sub lckall()
    go.Enabled = False
    assets.Enabled = False
    logout.Enabled = False
    status.Caption = "Plz Wait..."
End Sub

Private Sub unlckall()
    go.Enabled = True
    assets.Enabled = True
    logout.Enabled = True
    status.Caption = ""
End Sub

Private Sub logout_Click()
clientform.Visible = True
clientform.receipt.Text = ""
clientform.password.Text = ""
Unload Me
End Sub

Private Sub sell_KeyPress(Index As Integer, KeyAscii As Integer)
If (KeyAscii < 48 Or KeyAscii >= 58) And KeyAscii <> 8 Then
    KeyAscii = 0
End If
End Sub
Private Function cdecimal(ByVal a As Double) As Double

a = a * 100
a = a + 0.5
a = Int(a)
a = a / 100
cdecimal = a
End Function
Private Sub Timer1_Timer()
Dim i, total
Dim query
Adodc3.RecordSource = "select company COMPANY,price PRICE from mockstock"
Adodc3.Refresh
dg1.Refresh

query = "select  * from `" + Trim(recieptno.Caption) + "`"
'MsgBox query
Adodc4.RecordSource = query
Adodc4.Refresh
Adodc3.RecordSource = "select company COMPANY,price PRICE from mockstock"
Adodc3.Refresh
i = 0
While i < 20
    total = total + Adodc4.Recordset(1) * Adodc3.Recordset(1)
   Adodc4.Recordset.MoveNext
   Adodc3.Recordset.MoveNext
   i = i + 1
Wend
total = total + balcap.Caption
total = cdecimal(total)
netassets.Caption = total

End Sub
