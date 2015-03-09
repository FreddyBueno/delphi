object ActualizacionCompras: TActualizacionCompras
  Left = 425
  Top = 120
  BorderStyle = bsSingle
  Caption = 'Actualizaci'#243'n en Lote de Inventarios de Compras'
  ClientHeight = 162
  ClientWidth = 665
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
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 171
    Height = 13
    Caption = 'Numero Compras Pendientes :'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 136
    Height = 13
    Caption = 'Transacci'#243'n Inventario:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 82
    Height = 13
    Caption = 'Compra Leida:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 16
    Top = 144
    Width = 648
    Height = 13
    Caption = 
      'Este programa crea las transacciones de Inventario desde los car' +
      'gos solo para aquellos que ya estan Facturados.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 440
    Top = 32
    Width = 209
    Height = 57
    Caption = 'Realizar Ajuste'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object ProgressBar1: TProgressBar
    Left = 16
    Top = 112
    Width = 641
    Height = 25
    TabOrder = 1
  end
  object Edit1: TEdit
    Left = 192
    Top = 12
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 2
  end
  object Edit2: TEdit
    Left = 192
    Top = 44
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object Edit3: TEdit
    Left = 192
    Top = 76
    Width = 89
    Height = 21
    ReadOnly = True
    TabOrder = 4
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM INEncCompras'
      'WHERE (Numero_Transaccion_Inventario is null) OR '
      '      (Numero_Transaccion_Inventario = '#39'0'#39')')
    Left = 544
    Top = 112
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INConsecCompras'
    Left = 593
    Top = 113
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'carg'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM INDetCompras'
      'WHERE Numero_Compra = :carg  '
      '   ')
    Left = 624
    Top = 112
  end
end
