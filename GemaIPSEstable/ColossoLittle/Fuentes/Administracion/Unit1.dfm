object frmparametros: Tfrmparametros
  Left = 263
  Top = 283
  BorderStyle = bsSingle
  Caption = 'Parametros de Administraci'#243'n'
  ClientHeight = 275
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 560
    Height = 275
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet2: TTabSheet
      Caption = 'Versi'#243'n'
      ImageIndex = 1
      object Label3: TLabel
        Left = 8
        Top = 16
        Width = 38
        Height = 13
        Caption = 'Versi'#243'n:'
      end
      object DBEdit3: TDBEdit
        Left = 64
        Top = 13
        Width = 153
        Height = 21
        DataField = 'Version'
        DataSource = DataSource1
        TabOrder = 0
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Seguridad y Privilegios'
      ImageIndex = 2
      object Label5: TLabel
        Left = 8
        Top = 16
        Width = 261
        Height = 13
        Caption = 'Por defecto deja ingresar por primera vez a una Forma?'
      end
      object DBComboBox1: TDBComboBox
        Left = 280
        Top = 12
        Width = 73
        Height = 21
        DataField = 'Acceso_Programas'
        DataSource = DataSource1
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 0
      end
    end
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOComunes
    TableName = 'SEParametros'
    Left = 524
    Top = 216
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 492
    Top = 216
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Left = 462
    Top = 220
  end
  object OpenDialog1: TOpenDialog
    Left = 428
    Top = 224
  end
end
