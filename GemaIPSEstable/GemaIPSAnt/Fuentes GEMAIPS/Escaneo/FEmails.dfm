object FormEmails: TFormEmails
  Left = 0
  Top = 0
  Caption = 'Lectura de Email:'
  ClientHeight = 593
  ClientWidth = 1047
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 449
    Top = 81
    Width = 8
    Height = 471
    Beveled = True
    ExplicitHeight = 316
  end
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 449
    Height = 471
    Align = alLeft
    TabOrder = 0
    object SG: TStringGrid
      Left = 1
      Top = 1
      Width = 447
      Height = 469
      Align = alClient
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
      TabOrder = 0
      OnClick = SGClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 1047
    Height = 81
    Align = alTop
    TabOrder = 1
    ExplicitLeft = -224
    ExplicitTop = 200
    object Button1: TButton
      Left = 8
      Top = 8
      Width = 201
      Height = 67
      Caption = 'Recuperar Email'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object Panel3: TPanel
    Left = 457
    Top = 81
    Width = 590
    Height = 471
    Align = alClient
    TabOrder = 2
    object TPanel
      Left = 1
      Top = 1
      Width = 588
      Height = 369
      Align = alClient
      TabOrder = 0
      object Memo1: TMemo
        Left = 1
        Top = 1
        Width = 586
        Height = 367
        Align = alClient
        ReadOnly = True
        ScrollBars = ssBoth
        TabOrder = 0
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 370
      Width = 588
      Height = 100
      Align = alBottom
      TabOrder = 1
      object GroupBox1: TGroupBox
        Left = 1
        Top = 1
        Width = 586
        Height = 98
        Align = alClient
        Caption = 'Adjuntos:'
        TabOrder = 0
        object Memo2: TMemo
          Left = 2
          Top = 15
          Width = 582
          Height = 81
          Align = alClient
          ReadOnly = True
          ScrollBars = ssBoth
          TabOrder = 0
        end
      end
    end
  end
  object Panel5: TPanel
    Left = 0
    Top = 552
    Width = 1047
    Height = 41
    Align = alBottom
    TabOrder = 3
    object ProgressBar1: TProgressBar
      Left = 1
      Top = 1
      Width = 1045
      Height = 39
      Align = alClient
      TabOrder = 0
    end
  end
  object IdPOP31: TIdPOP3
    AuthType = patSASL
    AutoLogin = True
    Host = 'mail.prateinco.com'
    Username = 'freddybueno@prateinco.com'
    Password = 'central2137'
    SASLMechanisms = <>
    Left = 248
    Top = 8
  end
  object Mail: TIdMessage
    AttachmentEncoding = 'UUE'
    BccList = <>
    CCList = <>
    Encoding = meDefault
    FromList = <
      item
      end>
    Recipients = <>
    ReplyTo = <>
    ConvertPreamble = True
    Left = 312
    Top = 8
  end
end
