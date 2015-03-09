object FrmBusquedas: TFrmBusquedas
  Left = 385
  Top = 121
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'B'#250'squedas'
  ClientHeight = 171
  ClientWidth = 479
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 479
    Height = 133
    ActivePage = TabSheet2
    Align = alClient
    Style = tsFlatButtons
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      TabVisible = False
      OnShow = TabSheet1Show
      object Label1: TLabel
        Left = 66
        Top = 9
        Width = 243
        Height = 16
        Caption = 'B'#250'squeda por n'#250'mero de Admisi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel1: TBevel
        Left = 312
        Top = 18
        Width = 105
        Height = 5
        Shape = bsTopLine
      end
      object Label2: TLabel
        Left = 69
        Top = 48
        Width = 84
        Height = 13
        Caption = 'N'#250'mero admisi'#243'n:'
      end
      object EditNumAdmision: TEdit
        Left = 165
        Top = 44
        Width = 253
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = EditNumAdmisionKeyPress
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
      TabVisible = False
      OnShow = TabSheet2Show
      object Label3: TLabel
        Left = 67
        Top = 9
        Width = 255
        Height = 16
        Caption = 'B'#250'squeda por n'#250'mero de documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel2: TBevel
        Left = 324
        Top = 18
        Width = 96
        Height = 5
        Shape = bsTopLine
      end
      object Label4: TLabel
        Left = 70
        Top = 48
        Width = 96
        Height = 13
        Caption = 'N'#250'mero documento:'
      end
      object EditNumDoc: TEdit
        Left = 170
        Top = 44
        Width = 251
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = EditNumDocKeyPress
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'TabSheet3'
      ImageIndex = 2
      TabVisible = False
      OnShow = TabSheet3Show
      object Label5: TLabel
        Left = 16
        Top = 38
        Width = 68
        Height = 13
        Caption = 'Primer apellido'
      end
      object Label6: TLabel
        Left = 248
        Top = 38
        Width = 82
        Height = 13
        Caption = 'Segundo apellido'
      end
      object Label7: TLabel
        Left = 16
        Top = 86
        Width = 67
        Height = 13
        Caption = 'Primer nombre'
      end
      object Label8: TLabel
        Left = 248
        Top = 86
        Width = 81
        Height = 13
        Caption = 'Segundo nombre'
      end
      object Label9: TLabel
        Left = 15
        Top = 9
        Width = 244
        Height = 16
        Caption = 'B'#250'squeda por nombre del paciente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGray
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Bevel3: TBevel
        Left = 261
        Top = 18
        Width = 201
        Height = 5
        Shape = bsTopLine
      end
      object EditPriApellido: TEdit
        Left = 16
        Top = 52
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 0
        OnKeyPress = EditPriApellidoKeyPress
      end
      object EditSegApellido: TEdit
        Left = 248
        Top = 52
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 1
        OnKeyPress = EditSegApellidoKeyPress
      end
      object EditPriNombre: TEdit
        Left = 16
        Top = 101
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 2
        OnKeyPress = EditPriNombreKeyPress
      end
      object EditSegNombre: TEdit
        Left = 248
        Top = 101
        Width = 217
        Height = 21
        CharCase = ecUpperCase
        TabOrder = 3
        OnKeyPress = EditSegNombreKeyPress
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 133
    Width = 479
    Height = 38
    Align = alBottom
    TabOrder = 1
    object BtnBuscar: TBitBtn
      Left = 112
      Top = 5
      Width = 137
      Height = 29
      Caption = '&Buscar'
      ModalResult = 1
      TabOrder = 0
    end
    object BtnCancelar: TBitBtn
      Left = 260
      Top = 5
      Width = 137
      Height = 29
      Caption = '&Cancelar'
      ModalResult = 2
      TabOrder = 1
    end
  end
end
