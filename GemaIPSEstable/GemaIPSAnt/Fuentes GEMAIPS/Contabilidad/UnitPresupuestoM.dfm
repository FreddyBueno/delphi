object FrmPresupuestoM: TFrmPresupuestoM
  Left = 103
  Top = 175
  BorderStyle = bsSingle
  Caption = 'Presupuesto mensual'
  ClientHeight = 636
  ClientWidth = 1128
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
    Width = 1128
    Height = 63
    Align = alTop
    TabOrder = 0
    object JvLabel3: TJvLabel
      Left = 354
      Top = 14
      Width = 354
      Height = 13
      Caption = 'Describa en cada casilla el d'#237'a que inicia y finaliza la semana'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -11
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
    object JvBevel1: TJvBevel
      Left = 712
      Top = 22
      Width = 320
      Height = 6
      Shape = bsTopLine
      Visible = False
      Edges = [beTop]
      Inner = bvRaised
    end
    object JvLabel1: TJvLabel
      Left = 24
      Top = 40
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
    object JvLabel4: TJvLabel
      Left = 207
      Top = 41
      Width = 49
      Height = 13
      Caption = 'Semanas:'
      Transparent = True
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object CBMes: TJvComboBox
      Left = 53
      Top = 36
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      OnClick = CBMesClick
    end
    object EditAno: TJvEdit
      Left = 53
      Top = 9
      Width = 121
      Height = 21
      CharCase = ecUpperCase
      Enabled = False
      TabOrder = 0
      OnKeyPress = EditAnoKeyPress
    end
    object SEditSemanas: TJvSpinEdit
      Left = 258
      Top = 37
      Width = 49
      Height = 21
      Decimal = 0
      MaxValue = 5.000000000000000000
      MinValue = 1.000000000000000000
      Value = 1.000000000000000000
      OnBottomClick = SEditSemanasChange
      OnTopClick = SEditSemanasChange
      TabOrder = 2
      OnChange = SEditSemanasChange
    end
    object DTP1: TJvDateTimePicker
      Left = 355
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 3
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP2: TJvDateTimePicker
      Left = 403
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 4
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP3: TJvDateTimePicker
      Left = 467
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 5
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP4: TJvDateTimePicker
      Left = 517
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 6
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP6: TJvDateTimePicker
      Left = 647
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 8
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP5: TJvDateTimePicker
      Left = 595
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 7
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP8: TJvDateTimePicker
      Left = 774
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 10
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP7: TJvDateTimePicker
      Left = 722
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 9
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP10: TJvDateTimePicker
      Left = 907
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 12
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
    object DTP9: TJvDateTimePicker
      Left = 858
      Top = 40
      Width = 42
      Height = 21
      Date = 40092.507089479160000000
      Format = 'dd'
      Time = 40092.507089479160000000
      TabOrder = 11
      Visible = False
      DropDownDate = 40092.000000000000000000
      NullText = '(none)'
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 586
    Width = 1128
    Height = 50
    Align = alBottom
    TabOrder = 1
    object BtnGrabar: TJvBitBtn
      Left = 472
      Top = 8
      Width = 153
      Height = 33
      Caption = '&Grabar'
      TabOrder = 0
      OnClick = BtnGrabarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BtnCancelar: TJvBitBtn
      Left = 632
      Top = 8
      Width = 153
      Height = 33
      Caption = '&Cancelar'
      TabOrder = 1
      OnClick = BtnCancelarClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BtnSalir: TJvBitBtn
      Left = 896
      Top = 8
      Width = 153
      Height = 33
      Caption = '&Salir'
      TabOrder = 2
      OnClick = BtnSalirClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
    object BtnExcel: TJvBitBtn
      Left = 32
      Top = 8
      Width = 153
      Height = 33
      Caption = 'Exportar a excel'
      Enabled = False
      TabOrder = 3
      OnClick = BtnExcelClick
      HotTrackFont.Charset = DEFAULT_CHARSET
      HotTrackFont.Color = clWindowText
      HotTrackFont.Height = -11
      HotTrackFont.Name = 'MS Sans Serif'
      HotTrackFont.Style = []
    end
  end
  object SGDatos: TJvStringGrid
    Left = 0
    Top = 63
    Width = 1128
    Height = 523
    Align = alClient
    ColCount = 3
    DefaultColWidth = 141
    DefaultRowHeight = 18
    FixedCols = 0
    RowCount = 1
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs]
    TabOrder = 2
    OnDrawCell = SGDatosDrawCell
    OnKeyPress = SGDatosKeyPress
    OnSetEditText = SGDatosSetEditText
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
    Left = 976
    Top = 8
  end
end
