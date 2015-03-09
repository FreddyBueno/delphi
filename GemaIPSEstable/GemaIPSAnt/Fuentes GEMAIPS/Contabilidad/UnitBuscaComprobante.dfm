object FrmBuscarComprobante: TFrmBuscarComprobante
  Left = 293
  Top = 163
  Caption = 'B'#250'squeda de comprobantes'
  ClientHeight = 201
  ClientWidth = 548
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 548
    Height = 145
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 94
      Width = 86
      Height = 13
      Caption = 'Tipo comprobante'
    end
    object Label2: TLabel
      Left = 392
      Top = 94
      Width = 102
      Height = 13
      Caption = 'Numero comprobante'
    end
    object Label3: TLabel
      Left = 16
      Top = 22
      Width = 280
      Height = 16
      Caption = 'B'#250'squeda de documentos para modifica'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Bevel1: TBevel
      Left = 300
      Top = 34
      Width = 236
      Height = 4
      Shape = bsTopLine
    end
    object Label4: TLabel
      Left = 16
      Top = 50
      Width = 41
      Height = 13
      Caption = 'Empresa'
    end
    object CBTipo: TComboBox
      Left = 16
      Top = 110
      Width = 361
      Height = 21
      Style = csDropDownList
      Enabled = False
      TabOrder = 0
    end
    object Edit1: TEdit
      Left = 392
      Top = 110
      Width = 145
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object CBEmpresas: TComboBox
      Left = 16
      Top = 64
      Width = 523
      Height = 21
      Style = csDropDownList
      TabOrder = 2
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 145
    Width = 548
    Height = 56
    Align = alClient
    TabOrder = 1
    object BtnAceptar: TBitBtn
      Left = 105
      Top = 9
      Width = 169
      Height = 41
      Caption = 'Aceptar'
      TabOrder = 0
      OnClick = BtnAceptarClick
    end
    object BtnCancelar: TBitBtn
      Left = 281
      Top = 9
      Width = 169
      Height = 41
      Caption = 'Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
    end
  end
  object QryG: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 345
    Top = 1
  end
  object QryA: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 385
    Top = 1
  end
  object QryC: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    Left = 304
  end
end
