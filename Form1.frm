VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   0  'None
   Caption         =   "Form1"
   ClientHeight    =   1380
   ClientLeft      =   2640
   ClientTop       =   0
   ClientWidth     =   4440
   LinkTopic       =   "Form1"
   ScaleHeight     =   1380
   ScaleWidth      =   4440
   ShowInTaskbar   =   0   'False
   Begin VB.Timer Timer1 
      Left            =   4320
      Top             =   1800
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function SetWindowRgn Lib "user32" (ByVal hWnd As Long, ByVal hRgn As Long, ByVal bRedraw As Long) As Long
Private Declare Function DeleteObject Lib "gdi32" (ByVal hObject As Long) As Long
Private Declare Function CreateEllipticRgn Lib "gdi32" (ByVal X1 As Long, ByVal Y1 As Long, ByVal X2 As Long, ByVal Y2 As Long) As Long
Private Sub Form_Load()
    Timer1.Interval = 5

            rondje = CreateEllipticRgn(0, 0, 0, 0)
            SetWindowRgn hWnd, rondje, True
            DeleteObject rondje
                
            End Sub


Private Sub timer1_Timer()
            rondje = CreateEllipticRgn(0, 0, Form1.Width / 15, Form1.Height / 15)
            SetWindowRgn hWnd, rondje, True
            DeleteObject rondje
            End Sub

