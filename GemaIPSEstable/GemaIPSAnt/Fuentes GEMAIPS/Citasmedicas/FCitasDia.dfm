object CitasDia: TCitasDia
  Left = 355
  Top = 169
  Width = 696
  Height = 480
  Caption = 'Citas Medicas x Periodo'
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 688
    Height = 89
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 40
      Width = 33
      Height = 13
      Caption = 'Fecha:'
    end
    object DateTimePicker1: TDateTimePicker
      Left = 64
      Top = 39
      Width = 193
      Height = 18
      Date = 38602.588733067130000000
      Time = 38602.588733067130000000
      TabOrder = 0
      OnChange = DateTimePicker1Change
    end
    object RadioGroup1: TRadioGroup
      Left = 272
      Top = 8
      Width = 185
      Height = 73
      Caption = 'Periodo:'
      ItemIndex = 0
      Items.Strings = (
        'Dia'
        'Mes'
        'A'#241'o')
      TabOrder = 1
      OnClick = RadioGroup1Click
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 89
    Width = 688
    Height = 364
    Align = alClient
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 0
    Top = 89
    Width = 688
    Height = 364
    Align = alClient
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'fec'
        DataType = ftDateTime
        Size = -1
        Value = 0d
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CICitas')
    Left = 656
    Top = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 624
    Top = 8
  end
end
