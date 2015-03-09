object FrmInformePresupuestoM: TFrmInformePresupuestoM
  Left = 129
  Top = 148
  BorderStyle = bsSingle
  Caption = 'Informe presupuesto'
  ClientHeight = 634
  ClientWidth = 1125
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
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1125
    Height = 81
    Align = alTop
    TabOrder = 0
    object JvLabel1: TJvLabel
      Left = 184
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Mes:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object JvLabel2: TJvLabel
      Left = 24
      Top = 13
      Width = 24
      Height = 13
      Caption = 'A'#241'o:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Lbl1: TJvLabel
      Left = 357
      Top = 41
      Width = 50
      Height = 13
      Caption = 'Semana 1'
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Lbl2: TJvLabel
      Left = 474
      Top = 41
      Width = 50
      Height = 13
      Caption = 'Semana 2'
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Lbl3: TJvLabel
      Left = 598
      Top = 41
      Width = 50
      Height = 13
      Caption = 'Semana 3'
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Lbl4: TJvLabel
      Left = 721
      Top = 41
      Width = 50
      Height = 13
      Caption = 'Semana 4'
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Lbl5: TJvLabel
      Left = 844
      Top = 41
      Width = 50
      Height = 13
      Caption = 'Semana 5'
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Bevel1: TJvBevel
      Left = 408
      Top = 48
      Width = 29
      Height = 2
      Shape = bsTopLine
      Visible = False
      Edges = [beTop]
      Inner = bvRaised
    end
    object Bevel2: TJvBevel
      Left = 528
      Top = 47
      Width = 30
      Height = 2
      Shape = bsTopLine
      Visible = False
      Edges = [beTop]
      Inner = bvRaised
    end
    object Bevel3: TJvBevel
      Left = 649
      Top = 48
      Width = 34
      Height = 2
      Shape = bsTopLine
      Visible = False
      Edges = [beTop]
      Inner = bvRaised
    end
    object Bevel4: TJvBevel
      Left = 773
      Top = 48
      Width = 35
      Height = 2
      Shape = bsTopLine
      Visible = False
      Edges = [beTop]
      Inner = bvRaised
    end
    object Bevel5: TJvBevel
      Left = 896
      Top = 47
      Width = 34
      Height = 2
      Shape = bsTopLine
      Visible = False
      Edges = [beTop]
      Inner = bvRaised
    end
    object T5: TJvLabel
      Left = 1125
      Top = 54
      Width = 39
      Height = 16
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
      Visible = False
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object CBMes: TJvComboBox
      Left = 213
      Top = 12
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object EditAno: TJvEdit
      Left = 53
      Top = 9
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
    object BtnCargar: TJvBitBtn
      Left = 24
      Top = 42
      Width = 153
      Height = 25
      Caption = 'Cargar informaci'#243'n'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = BtnCargarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object Edit1: TJvEdit
      Left = 357
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 3
      Visible = False
    end
    object Edit2: TJvEdit
      Left = 402
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 4
      Visible = False
    end
    object Edit3: TJvEdit
      Left = 476
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 5
      Visible = False
    end
    object Edit4: TJvEdit
      Left = 523
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 6
      Visible = False
    end
    object Edit5: TJvEdit
      Left = 600
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 7
      Visible = False
    end
    object Edit6: TJvEdit
      Left = 648
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 8
      Visible = False
    end
    object Edit7: TJvEdit
      Left = 723
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 9
      Visible = False
    end
    object Edit8: TJvEdit
      Left = 772
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 10
      Visible = False
    end
    object Edit9: TJvEdit
      Left = 846
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 11
      Visible = False
    end
    object Edit10: TJvEdit
      Left = 895
      Top = 57
      Width = 37
      Height = 21
      Enabled = False
      TabOrder = 12
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 584
    Width = 1125
    Height = 50
    Align = alBottom
    TabOrder = 1
    object JvBitBtn1: TJvBitBtn
      Left = 920
      Top = 8
      Width = 177
      Height = 33
      Caption = 'Enviar a excel'
      TabOrder = 0
      OnClick = JvBitBtn1Click
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object SGDatos: TJvStringGrid
    Left = 0
    Top = 81
    Width = 1125
    Height = 503
    Align = alClient
    ColCount = 3
    DefaultColWidth = 141
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goTabs]
    TabOrder = 2
    OnDrawCell = SGDatosDrawCell
    Alignment = taLeftJustify
    FixedFont.Charset = DEFAULT_CHARSET
    FixedFont.Color = clWindowText
    FixedFont.Height = -11
    FixedFont.Name = 'Tahoma'
    FixedFont.Style = []
    ColWidths = (
      20
      314
      118)
  end
  object QryG: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 1072
    Top = 8
  end
  object QryA1: TADOQuery
    Parameters = <>
    Left = 1072
    Top = 40
  end
end
