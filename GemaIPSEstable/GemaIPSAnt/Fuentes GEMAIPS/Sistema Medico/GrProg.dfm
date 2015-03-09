object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Programaci'#243'n de Gr'#225'ficas Cartesianas'
  ClientHeight = 380
  ClientWidth = 466
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel8: TPanel
    Left = 0
    Top = 0
    Width = 466
    Height = 380
    Align = alClient
    TabOrder = 0
    object lbl2: TLabel
      Left = 6
      Top = 1
      Width = 68
      Height = 20
      Caption = 'Nombre:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object GroupBox3: TGroupBox
      Left = 1
      Top = 156
      Width = 464
      Height = 223
      Align = alBottom
      Caption = 'Programaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label5: TLabel
        Left = 63
        Top = 22
        Width = 14
        Height = 16
        Caption = 'X:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label6: TLabel
        Left = 102
        Top = 22
        Width = 15
        Height = 16
        Caption = 'Y:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 3
        Top = 22
        Width = 54
        Height = 16
        Caption = 'Minimo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 3
        Top = 44
        Width = 58
        Height = 16
        Caption = 'M'#225'ximo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 63
        Top = 44
        Width = 14
        Height = 16
        Caption = 'X:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 102
        Top = 44
        Width = 15
        Height = 16
        Caption = 'Y:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 3
        Top = 138
        Width = 61
        Height = 16
        Caption = 'Plantilla:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 3
        Top = 71
        Width = 74
        Height = 16
        Caption = 'Margenes:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 4
        Top = 88
        Width = 10
        Height = 16
        Caption = #27
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label17: TLabel
        Left = 83
        Top = 88
        Width = 10
        Height = 16
        Caption = #26
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 4
        Top = 109
        Width = 10
        Height = 16
        Caption = #24
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 83
        Top = 109
        Width = 9
        Height = 16
        Caption = 'v'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Image1: TImage
        Left = 160
        Top = 24
        Width = 281
        Height = 153
      end
      object DBEdit4: TDBEdit
        Left = 119
        Top = 21
        Width = 30
        Height = 21
        DataField = 'Pl_MinY'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit3: TDBEdit
        Left = 74
        Top = 21
        Width = 27
        Height = 21
        DataField = 'Pl_MinX'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object DBEdit5: TDBEdit
        Left = 74
        Top = 44
        Width = 27
        Height = 21
        DataField = 'Pl_MaxX'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object DBEdit6: TDBEdit
        Left = 119
        Top = 44
        Width = 30
        Height = 21
        DataField = 'Pl_MaxY'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object DBEdit7: TDBEdit
        Left = 24
        Top = 87
        Width = 41
        Height = 21
        DataField = 'Margen_Izquierda'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBEdit8: TDBEdit
        Left = 101
        Top = 87
        Width = 41
        Height = 21
        DataField = 'Margen_Derecha'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object DBEdit9: TDBEdit
        Left = 101
        Top = 110
        Width = 41
        Height = 21
        DataField = 'Margen_Abajo'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 6
      end
      object DBEdit10: TDBEdit
        Left = 24
        Top = 111
        Width = 41
        Height = 21
        DataField = 'Margen_Arriba'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object BitBtn2: TBitBtn
        Left = 71
        Top = 136
        Width = 74
        Height = 18
        Caption = 'Buscar Img.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 8
        TabStop = False
        OnClick = BitBtn2Click
      end
      object Edit16: TEdit
        Left = 3
        Top = 155
        Width = 142
        Height = 21
        Color = clMenuBar
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        MaxLength = 100
        ParentFont = False
        TabOrder = 9
      end
      object DBNavigator1: TDBNavigator
        Left = 3
        Top = 195
        Width = 240
        Height = 25
        DataSource = DSProg
        TabOrder = 10
      end
    end
    object GroupBox4: TGroupBox
      Left = 1
      Top = 48
      Width = 464
      Height = 108
      Align = alBottom
      Caption = 'Condicion:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Label8: TLabel
        Left = 16
        Top = 22
        Width = 99
        Height = 16
        Caption = 'C'#243'd Campo X:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 16
        Top = 63
        Width = 100
        Height = 16
        Caption = 'C'#243'd Campo Y:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBEdit1: TDBEdit
        Left = 16
        Top = 38
        Width = 136
        Height = 24
        DataField = 'Cond_CampoX'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object DBEdit2: TDBEdit
        Left = 16
        Top = 80
        Width = 136
        Height = 24
        DataField = 'Cond_CampoY'
        DataSource = DSProg
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 6
      Top = 19
      Width = 451
      Height = 24
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      KeyField = 'Nombre'
      ListField = 'Nombre'
      ListSource = DSProg
      ParentFont = False
      TabOrder = 2
    end
  end
  object DSProg: TDataSource
    DataSet = ADOGrProg
    Left = 326
    Top = 11
  end
  object ADOGrProg: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM FDGRProg')
    Left = 390
    Top = 11
  end
  object OpenPictureDialog2: TOpenPictureDialog
    Left = 438
    Top = 288
  end
end
