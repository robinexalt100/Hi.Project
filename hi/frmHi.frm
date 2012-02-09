VERSION 5.00
Begin VB.Form frmHi 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Hi"
   ClientHeight    =   4605
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6060
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4605
   ScaleWidth      =   6060
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   100
      Left            =   1200
      Top             =   2640
   End
   Begin VB.Label lblMessage 
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C00000&
      Height          =   225
      Left            =   2160
      TabIndex        =   0
      Top             =   3360
      Width           =   555
   End
   Begin VB.Image Image1 
      Height          =   4290
      Left            =   0
      Picture         =   "frmHi.frx":0000
      Stretch         =   -1  'True
      Top             =   6720
      Width           =   6015
   End
End
Attribute VB_Name = "frmHi"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Form_KeyPress(KeyAscii As Integer)
'MsgBox KeyAscii
If KeyAscii = 81 Then
    MsgBox "Hey.. " & strName & " Its Just for fun.Don't take it serious.."
    End
End If
End Sub

Private Sub Form_Load()
If Len(strName) > 0 Then
    
Else
    strName = InputBox("Enter your Name", "Hi-Enter your Name")
End If

Me.Caption = "Hi " & strName
lblMessage.Caption = "Hi " & strName & ",ur school photo looks exatly like this.."
Timer1.Enabled = True
Image1.Top = 0
Image1.Left = 0
Image1.Width = Me.Width
Image1.Height = Me.Height
End Sub

Private Sub Form_Unload(Cancel As Integer)
    Dim frm As New frmHi
    frm.Show (vbModal)
    Dim frm2 As New frmHi
    frm2.Show (vbModal)
    
End Sub

Private Sub Timer1_Timer()
lblMessage.Left = lblMessage.Left - 100

If lblMessage.Left <= -lblMessage.Width Then lblMessage.Left = Me.Width

End Sub
