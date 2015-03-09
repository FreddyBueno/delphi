object PrateincoMsgWait: TPrateincoMsgWait
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Realizando Proceso......'
  ClientHeight = 208
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 64
    Width = 333
    Height = 33
    Caption = 'Ejecutando el Proceso.........'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 384
    Top = 16
  end
end
