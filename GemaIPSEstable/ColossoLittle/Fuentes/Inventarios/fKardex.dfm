object Kardex: TKardex
  Left = 20
  Top = 59
  BiDiMode = bdLeftToRight
  BorderStyle = bsNone
  Caption = 'Kardex de Productos'
  ClientHeight = 635
  ClientWidth = 982
  Color = clBtnFace
  DefaultMonitor = dmMainForm
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  ParentBiDiMode = False
  Position = poDefault
  Visible = True
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox3: TGroupBox
    Left = 0
    Top = 0
    Width = 225
    Height = 635
    Align = alLeft
    Caption = 'Grupos:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object DBLookupListBox1: TDBLookupListBox
      Left = 2
      Top = 15
      Width = 221
      Height = 612
      Cursor = crHandPoint
      Align = alClient
      BevelKind = bkFlat
      BevelWidth = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Arial Special G1'
      Font.Style = [fsBold]
      KeyField = 'Codigo_Grupo'
      ListField = 'Nombre'
      ListSource = DataSource7
      ParentFont = False
      TabOrder = 0
      ExplicitHeight = 596
    end
  end
  object Panel1: TPanel
    Left = 225
    Top = 0
    Width = 757
    Height = 635
    Align = alClient
    TabOrder = 1
    object GroupBox1: TGroupBox
      Left = 1
      Top = 1
      Width = 755
      Height = 106
      Align = alTop
      Caption = 'Almacen/Producto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      object Label1: TLabel
        Left = 12
        Top = 26
        Width = 53
        Height = 13
        Caption = 'Almacen:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 12
        Top = 50
        Width = 56
        Height = 13
        Caption = 'Producto:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBText1: TDBText
        Left = 613
        Top = 22
        Width = 139
        Height = 17
        DataField = 'CD_ALMACEN'
        DataSource = DataSource1
      end
      object DBText2: TDBText
        Left = 613
        Top = 46
        Width = 139
        Height = 17
        DataField = 'CD_PRODUCTO'
        DataSource = DataSource2
      end
      object Label22: TLabel
        Left = 12
        Top = 76
        Width = 80
        Height = 13
        Caption = 'Fecha Desde:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label31: TLabel
        Left = 293
        Top = 76
        Width = 77
        Height = 13
        Caption = 'Fecha Hasta:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 72
        Top = 21
        Width = 537
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CD_ALMACEN'
        ListField = 'DESCRIPCION'
        ListSource = DataSource1
        ParentFont = False
        TabOrder = 0
        TabStop = False
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 72
        Top = 46
        Width = 537
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        KeyField = 'CD_PRODUCTO'
        ListField = 'DESCRIPCION'
        ListSource = DataSource2
        ParentFont = False
        TabOrder = 1
        TabStop = False
      end
      object Button1: TButton
        Left = 584
        Top = 72
        Width = 96
        Height = 25
        Caption = 'Generar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        TabStop = False
        OnClick = Button1Click
      end
      object DateTimePicker1: TDateTimePicker
        Left = 98
        Top = 73
        Width = 186
        Height = 21
        Date = 40926.412754490740000000
        Time = 40926.412754490740000000
        TabOrder = 3
      end
      object DateTimePicker2: TDateTimePicker
        Left = 379
        Top = 73
        Width = 186
        Height = 21
        Date = 40926.412754490740000000
        Time = 40926.412754490740000000
        TabOrder = 4
      end
    end
    object GroupBox2: TGroupBox
      Left = 1
      Top = 107
      Width = 755
      Height = 527
      Align = alClient
      Caption = 'Kardex del Producto:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object Panel2: TPanel
        Left = 2
        Top = 15
        Width = 751
        Height = 510
        Align = alClient
        TabOrder = 0
        object PageControl1: TPageControl
          Left = 1
          Top = 49
          Width = 749
          Height = 460
          ActivePage = TabSheet7
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          TabStop = False
          object TabSheet6: TTabSheet
            Caption = 'Informacion del Producto:'
            ImageIndex = 5
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object Panel5: TPanel
              Left = 0
              Top = 0
              Width = 741
              Height = 432
              Align = alClient
              Color = cl3DLight
              TabOrder = 0
              object Label5: TLabel
                Left = 8
                Top = 34
                Width = 140
                Height = 13
                Caption = 'C'#243'd Sec (Barras/CUPS):'
              end
              object Label6: TLabel
                Left = 8
                Top = 63
                Width = 45
                Height = 13
                Caption = 'Detalle:'
              end
              object Label7: TLabel
                Left = 8
                Top = 93
                Width = 106
                Height = 13
                Caption = 'Fecha Ult Compra:'
              end
              object Label8: TLabel
                Left = 392
                Top = 90
                Width = 97
                Height = 13
                Caption = 'Fecha Ult Venta:'
              end
              object Label9: TLabel
                Left = 8
                Top = 122
                Width = 81
                Height = 13
                Caption = 'Stock Minimo:'
              end
              object Label10: TLabel
                Left = 392
                Top = 120
                Width = 84
                Height = 13
                Caption = 'Stock Maximo:'
              end
              object Label11: TLabel
                Left = 8
                Top = 152
                Width = 121
                Height = 13
                Caption = 'Costo Promed Pesos:'
              end
              object Label12: TLabel
                Left = 392
                Top = 150
                Width = 109
                Height = 13
                Caption = 'Costo Promed Extr:'
              end
              object Label13: TLabel
                Left = 8
                Top = 181
                Width = 120
                Height = 13
                Caption = 'Ult Cost Prom Pesos:'
              end
              object Label14: TLabel
                Left = 392
                Top = 180
                Width = 108
                Height = 13
                Caption = 'Ult Cost Prom Extr:'
              end
              object Label17: TLabel
                Left = 8
                Top = 240
                Width = 73
                Height = 13
                Caption = 'Reg. Invima:'
              end
              object Label18: TLabel
                Left = 392
                Top = 241
                Width = 82
                Height = 13
                Caption = 'Reg. Sanidad:'
              end
              object Label19: TLabel
                Left = 8
                Top = 270
                Width = 103
                Height = 13
                Caption = 'Nombre Generico:'
              end
              object Label23: TLabel
                Left = 8
                Top = 294
                Width = 119
                Height = 13
                Caption = 'Fomra Farmaceutica:'
              end
              object Label24: TLabel
                Left = 8
                Top = 318
                Width = 90
                Height = 13
                Caption = 'Unidad Medida:'
              end
              object Label25: TLabel
                Left = 368
                Top = 294
                Width = 83
                Height = 13
                Caption = 'Concentraci'#243'n'
              end
              object Label26: TLabel
                Left = 368
                Top = 318
                Width = 101
                Height = 13
                Caption = 'Unidad Empaque:'
              end
              object Label27: TLabel
                Left = 8
                Top = 342
                Width = 40
                Height = 13
                Caption = 'Marca:'
              end
              object Label28: TLabel
                Left = 368
                Top = 366
                Width = 64
                Height = 13
                Caption = 'Tipo Prod.:'
              end
              object Label29: TLabel
                Left = 8
                Top = 368
                Width = 99
                Height = 13
                Caption = 'Estado Producto:'
              end
              object Label4: TLabel
                Left = 368
                Top = 342
                Width = 103
                Height = 13
                Caption = 'Clasific. x Riesgo:'
              end
              object Label20: TLabel
                Left = 9
                Top = 393
                Width = 97
                Height = 13
                Caption = 'Principio  activo:'
              end
              object Label21: TLabel
                Left = 496
                Top = 393
                Width = 51
                Height = 13
                Caption = 'Vida '#250'til:'
              end
              object Label30: TLabel
                Left = 8
                Top = 422
                Width = 137
                Height = 13
                Caption = 'Presentaci'#243'n comercial:'
              end
              object DBEdit4: TDBEdit
                Left = 160
                Top = 31
                Width = 185
                Height = 21
                Color = cl3DLight
                DataField = 'Cd_ProductoSecundario'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 0
              end
              object DBEdit5: TDBEdit
                Left = 136
                Top = 60
                Width = 545
                Height = 21
                Color = cl3DLight
                DataField = 'DETALLE'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 1
              end
              object DBEdit6: TDBEdit
                Left = 136
                Top = 89
                Width = 129
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'FEC_ULT_COMPRA'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 7
              end
              object DBEdit7: TDBEdit
                Left = 528
                Top = 86
                Width = 153
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'FEC_ULT_VENTA'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 8
              end
              object DBEdit8: TDBEdit
                Left = 136
                Top = 119
                Width = 129
                Height = 21
                Color = cl3DLight
                DataField = 'STOCK_MIN'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 2
              end
              object DBEdit9: TDBEdit
                Left = 528
                Top = 116
                Width = 153
                Height = 21
                Color = cl3DLight
                DataField = 'STOCK_MAX'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 3
              end
              object DBEdit10: TDBEdit
                Left = 136
                Top = 148
                Width = 129
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'COSTO_PROM_PESOS'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 9
              end
              object DBEdit11: TDBEdit
                Left = 528
                Top = 146
                Width = 153
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'COSTO_PROM_EXTR'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 10
              end
              object DBEdit12: TDBEdit
                Left = 136
                Top = 177
                Width = 129
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'ULT_COSTO_PESOS'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 11
              end
              object DBEdit13: TDBEdit
                Left = 528
                Top = 176
                Width = 153
                Height = 21
                TabStop = False
                Color = cl3DLight
                DataField = 'ULT_COSTO_EXTR'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 12
              end
              object DBEdit16: TDBEdit
                Left = 136
                Top = 236
                Width = 129
                Height = 21
                Color = cl3DLight
                DataField = 'Reg_Sanidad'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 4
              end
              object DBEdit17: TDBEdit
                Left = 528
                Top = 236
                Width = 153
                Height = 21
                Color = cl3DLight
                DataField = 'REG_SANIDAD'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 5
              end
              object DBEdit18: TDBEdit
                Left = 136
                Top = 266
                Width = 545
                Height = 21
                Color = cl3DLight
                DataField = 'NOM_GENERICO'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 6
              end
              object DBCheckBox1: TDBCheckBox
                Left = 352
                Top = 32
                Width = 57
                Height = 17
                Caption = 'POSC'
                Color = cl3DLight
                DataField = 'POSC'
                DataSource = DataSource9
                ParentColor = False
                ReadOnly = True
                TabOrder = 13
              end
              object DBCheckBox2: TDBCheckBox
                Left = 424
                Top = 32
                Width = 65
                Height = 17
                Caption = 'POSS'
                Color = cl3DLight
                DataField = 'POSS'
                DataSource = DataSource9
                ParentColor = False
                ReadOnly = True
                TabOrder = 14
              end
              object DBCheckBox3: TDBCheckBox
                Left = 488
                Top = 32
                Width = 89
                Height = 17
                Caption = 'PARTICULAR'
                Color = cl3DLight
                DataField = 'PARTICULAR'
                DataSource = DataSource9
                ParentColor = False
                ReadOnly = True
                TabOrder = 15
              end
              object DBCheckBox4: TDBCheckBox
                Left = 584
                Top = 32
                Width = 105
                Height = 17
                Caption = 'INVENTARIO'
                Color = cl3DLight
                DataField = 'INVENTARIO'
                DataSource = DataSource9
                ParentColor = False
                ReadOnly = True
                TabOrder = 16
              end
              object DBEdit19: TDBEdit
                Left = 136
                Top = 290
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'FormaFarmaceutica'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 17
              end
              object DBEdit20: TDBEdit
                Left = 136
                Top = 314
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'UnidadMedida'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 18
              end
              object DBEdit21: TDBEdit
                Left = 472
                Top = 290
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'Concentracion'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 19
              end
              object DBEdit22: TDBEdit
                Left = 472
                Top = 314
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'UnidadEmpaque'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 20
              end
              object DBEdit23: TDBEdit
                Left = 136
                Top = 338
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'Marca'
                DataSource = DataSource9
                ReadOnly = True
                TabOrder = 21
              end
              object DBComboBox1: TDBComboBox
                Left = 472
                Top = 360
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'TIPO'
                DataSource = DataSource9
                Items.Strings = (
                  '1-Material (No Genera C'#243'digo RIPS)'
                  '2-Medicamento'
                  '3-Servicios (Si Genera C'#243'digo RIPS)')
                ReadOnly = True
                TabOrder = 22
              end
              object DBComboBox2: TDBComboBox
                Left = 136
                Top = 362
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'ESTADO'
                DataSource = DataSource9
                Items.Strings = (
                  'Activo'
                  'Inactivo')
                ReadOnly = True
                TabOrder = 23
              end
              object DBComboBox3: TDBComboBox
                Left = 472
                Top = 336
                Width = 209
                Height = 21
                Color = cl3DLight
                DataField = 'TIPO_RIESGO'
                DataSource = DataSource9
                Items.Strings = (
                  'I'
                  'IIA'
                  'IIB'
                  'III'
                  'IV'
                  'NINGUNO')
                TabOrder = 24
              end
              object DBEdit2: TDBEdit
                Left = 136
                Top = 389
                Width = 337
                Height = 21
                Color = cl3DLight
                DataField = 'Principio_Activo'
                DataSource = DataSource9
                TabOrder = 25
              end
              object DBEdit25: TDBEdit
                Left = 152
                Top = 418
                Width = 529
                Height = 21
                Color = cl3DLight
                DataField = 'Presentacion_Comencial'
                DataSource = DataSource9
                TabOrder = 26
              end
              object DBEdit24: TDBEdit
                Left = 560
                Top = 389
                Width = 121
                Height = 21
                Color = cl3DLight
                DataField = 'Vida_Util'
                DataSource = DataSource9
                TabOrder = 27
              end
            end
          end
          object TabSheet1: TTabSheet
            Caption = 'Movimientos del Producto:'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid1: TDBGrid
              Left = 0
              Top = 0
              Width = 741
              Height = 357
              TabStop = False
              Align = alClient
              DataSource = DataSource3
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDblClick = DBGrid1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Fch_Hora_Transac'
                  Title.Caption = 'Fch_Hora'
                  Width = 135
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Estado'
                  Title.Caption = 'Est'
                  Width = 25
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cd_Documento'
                  Title.Caption = 'Cod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Descripcion'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Consec_Dcto'
                  Title.Caption = 'Numero Doc'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EntradaSalida'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cant_Producto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Caption = 'Cantidad'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Saldo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor_Unitario'
                  Title.Caption = 'Valor'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Costo_Promedio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Lote'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Fecha_Vence'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Desc_Concepto'
                  Title.Caption = 'Concepto'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cambio_del_Dia'
                  Title.Caption = 'Cambio del Dia'
                  Visible = True
                end>
            end
            object Panel4: TPanel
              Left = 0
              Top = 357
              Width = 741
              Height = 75
              Align = alBottom
              TabOrder = 1
              object SpeedButton1: TSpeedButton
                Left = 8
                Top = 8
                Width = 105
                Height = 57
                Caption = 'Excel'
                Glyph.Data = {
                  361B0000424D361B000000000000360000002800000030000000300000000100
                  180000000000001B0000120B0000120B00000000000000000000FFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBF8F8F8F4F4F4F0F0F0EBEBEBE6E6E6E0
                  E0E0DBDBDBD7D7D7D5D5D5D4D4D4D4D4D4D5D5D5D8D8D8DCDCDCE1E1E1E6E6E6
                  EAEAEAEEEEEEF3F3F3F7F7F7FAFAFAFDFDFDFEFEFEFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFDFDFDFBFBFBF7F7F7F1F1F1
                  EAEAEAE2E2E2D9D9D9D1D1D1C9C9C9C1C1C1BABABAB5B5B5B2B2B2B0B0B0B1B1
                  B1B3B3B3B7B7B7BDBDBDC4C4C4CBCBCBD2D2D2D8D8D8DFDFDFE8E8E8F0F0F0F6
                  F6F6FBFBFBFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFEFDFD
                  FDFBFBFBF7F7F7F1F1F1E7E7E7DCDCDCD0D0D0C4C4C4B9B9B98B8B8B56565645
                  45453232321B1B1B2525252323232323231A1A1A323232515151707070919191
                  9E9E9EBABABAC3C3C3CFCFCFDCDCDCE8E8E8F3F3F3F9F9F9FDFDFDFEFEFEFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFDFDFDFCFCFCFAFAFAF9F9F9F9F9F9F9F9F9F9
                  F9F9F9F9F9F9F9F9F9F9F9F8F8F8F6F6F6F1F1F1E8E8E8DCDCDCCDCDCDB6B6B6
                  7676764D4D4F1E1E23272A33354952497E7C478282458184438081FF00FFFF00
                  FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                  00FFFF00FFFF00FFFF00FFFCFCFCFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7
                  F2F2F2EDEDEDEBEBEBEAEAEAEAEAEAE9E9E9E9E9E9E9E9E9E9E9E9E8E8E8E4E4
                  E4DCDCDCCECECEB7B7B751515234363B2A2F47404A745865A55563A65590A855
                  ABA752A5A24F9F9C4D9896FF00FF008400848484848484008400848484008400
                  848484008400848484008400008400848484008400848484FF00FFF6F6F6FCFC
                  FCFEFEFEFFFFFFFFFFFFFFFFFFECECECDFDFDFD4D4D4CECECECCCCCCCCCCCCCC
                  CCCCCCCCCCCCCCCCCCCCCCCACACAC5C5C5B5B5B568686A313239454D706777B5
                  6471B2616DAE5D6BAC5967AA5794AB57ADAA59A8AA59A6A758A2A3FF00FF8484
                  8400840000840084848400840084848400840084848400840084848484848400
                  8400848484008400FF00FFEAEAEAF6F6F6FDFDFDFFFFFFFFFFFFFFFFFFDFDFDF
                  C7C7C7B4B4B4AAAAAAA7A7A7A7A7A7A6A6A6A6A6A6A6A6A6A6A6A6A3A3A38181
                  81393A404147657381BF6F7DBB6C7CB96978BB616FB55261AA4A59A4558EB66B
                  D1CE6BCECD6DCDCC6ECBCCFF00FF008400848484FFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008400848484FF00FFDADADAEEEE
                  EEFAFAFAFEFEFEFFFFFFFFFFFF00000000000000000000000000000000000000
                  00000000000000000000000101022327356B75A87C8AC67A8AC67989D06478C8
                  4D5EB34354A84151A44051A34669AB68D4CF67D3CF65CECB63CCC7FF00FF0084
                  00848484008400848484008400848484008400848484008400FFFFFF84848400
                  8400008400848484FF00FFC9C9C9E4E4E4F5F5F5FCFCFCFEFEFEFFFFFF000000
                  ECECECCDCDCDCCCCCCCCCCCCCCCCCCCBCBCBCBCBCBC4C4C4777778393E538A97
                  D08592CE8C9BE07589DF4D5FB94557AF4355AD4354AB4253A74252A54154A460
                  BCC868D6D366D1CC65CEC9FF00FF848484008400848484008400848484008400
                  848484008400FFFFFF008400008400FFFFFF848484008400FF00FFB9B9B9D8D8
                  D8EEEEEEF9F9F9FEFEFEFFFFFF000000FFFFFFEAEAEAEAEAEAE9E9E9E9E9E9E9
                  E9E9E1E1E18A8A8A4B506A919ED8909EDC94AAEE6073D44659B84659B64558B3
                  4559B24456AE4354AB4253AA4152A65490BC69DAD569D5D166D1CCFF00FF0084
                  00848484008400848484008400848484008400FFFFFF008400848484848484FF
                  FFFF008400848484FF00FFA9A9A9CACACAE6E6E6F6F6F6FDFDFDFFFFFF000000
                  FFFFFFEAEAEAEAEAEAEAEAEAEAEAEAE9E9E9CFCFCF2D2F3A9AA4DD98A6E697AD
                  EE5669CE495CBE495CBC475AB9475AB74658B44559B24456AE4355AD4354AB48
                  67AF6BDAD569DAD569D5CFFF00FF848484008400FFFFFF008400848484008400
                  FFFFFF008400848484008400008400FFFFFF848484008400FF00FF757575BCBC
                  BCDCDCDCF2F2F2FCFCFCFFFFFF000000FFFFFFEBEBEB00000000000000000000
                  00000000008189B39DAEEC9EB3F0586CD34C60C44A5EC1495DC0485BBD485BBB
                  4659B84659B64558B34558AF4456AE4458AC62BCCD6BDCD769D7D3FF00FF0084
                  00848484FFFFFFFFFFFF008400FFFFFF008400848484008400848484FFFFFFFF
                  FFFF008400848484FF00FF454545B2B2B2D5D5D5EEEEEEFBFBFBFFFFFF000000
                  FFFFFFEBEBEB000000C5B09DAE9075AE9075221D1CA1ADE4A6BBF16378DF4E63
                  CB4E62C84C60C64B5EC34B5EC0495CBE495CBC475AB94658B64658B44559B244
                  56AE558FC16BDFDB6BDCD5FF00FF848484008400FFFFFF008400FFFFFF008400
                  848484008400848484008400FFFFFFFFFFFF848484008400FF00FF0F1012ADAD
                  ADD1D1D1EDEDEDFAFAFAFFFFFF000000FFFFFFECECEC000000C5B09DAE9075AE
                  9075201D1DAABBF28297EB5167D14F65CF4E63CD4D61C94D61C74C60C44A5EC1
                  495DC0485BBD485BBB4659B84659B64558B34A66B66BDFDB6BDFDBFF00FF0084
                  00848484008400FFFFFF008400848484008400848484008400848484848484FF
                  FFFF008400848484FF00FF12120EAEAEAED2D2D2EDEDEDFAFAFAFFFFFF000000
                  FFFFFFECECEC000000C5B09DAE9075AE9075211E1EA7BEF25B71E05067D55167
                  D15065D04F64CD4E63CB4C61C84C60C64B5EC34B5EC0485BBD000000475AB946
                  58B6465BB462BDD16DDFDBFF00FF848484008400848484008400848484008400
                  848484FFFFFF848484008400008400FFFFFF848484008400FF00FF272722B0B0
                  B0D4D4D4EEEEEEFBFBFBFFFFFF000000FFFFFFECECEC000000C5B09DAE9075AE
                  907513141894ACEE546BDC5269DA5168D65066D35065D04F65CF4E63CD4D61C9
                  4D61C74C60C44A5EC1495CBE495CBC485BBB4659B85790C685C7A8FF00FF8484
                  84008400FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFF848484008400FF00FF4F4E47B4B4B4D7D7D7F0F0F0FBFBFBFFFFFF000000
                  FFFFFFEDEDED000000C5B09DAE9075AE907511121A8A9FEC566CDE546BDC5269
                  DA5269D75067D55167D14F65CF4F64CD4E63CB4C61C84C60C64B5EC34B5EC048
                  5BBD495CBC4B65BC808979FF00FF008400848484848484008400848484008400
                  848484008400848484008400008400848484008400848484FF00FF595959B9B9
                  B9DBDBDBF1F1F1FCFCFCFFFFFF000000FFFFFFEDEDED000000C5B09DC5B09DC5
                  B09D191B24859DEC566CE0556BDF546BDC546BDC5269DA5167D65066D35065D0
                  4F64CD4E63CD4D61C94D61C74C60C44A5EC1495CBE495CBC475AB9FF00FF8484
                  8400840000840084848400840084848400840084848400840084848484848400
                  8400848484008400FF00FF575A63C1C1C1E0E0E0F4F4F4FCFCFCFFFFFF000000
                  FFFFFFEEEEEE00000000000000000000000007090C91A6ED566CE0566CE0566C
                  E0546BDE546BDC5269DA5269D75067D55167D14F65CF4E63CD4D61C94C61C84C
                  60C64B5EC34B5EC0485BBDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                  FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF666668CACA
                  CAE7E7E7F7F7F7FDFDFDFFFFFF000000FFFFFFEEEEEE000000C3AD99AE9075AE
                  90756050416B78B2647AE6566CE0566CE0566CE0556BDF546BDC546BDC5269DA
                  5168D65066D35065D04F64CD4E63CB4E62C84D61C74C60C44A5EC1495CBE495C
                  BC475AB94659B84659B64457B34557AF4355AD4354AB4253A74252A54051A33E
                  51A13E519E4959A75056799D9D9DD6D6D6EEEEEEFAFAFAFEFEFEFFFFFF000000
                  FFFFFFEEEEEE000000C5B09DAE9075AE9075A2866D2A2A338A9FEC586EE3566C
                  E0566CE0566CE0566CE0546BDE546BDC5269DA5269D75067D55167D14F65CF4E
                  63CD4D61C94C61C84C60C64B5EC34B5EC0485BBD485BBB4659B84659B64658B4
                  4559B24456AE4354AB4253AA4152A64151A44051A3606FAF4C4E54BFBFBFDFDF
                  DFF3F3F3FCFCFCFEFEFEFFFFFF000000FFFFFFEFEFEF000000C5B09DAE9075AE
                  9075AE90757662504046657E94EB566CE0566CE0566CE0566CE0566CE0556BDF
                  546BDC5469DA5269D75167D65066D35065D04F64CD4E63CB4E62C84D61C74C60
                  C44A5EC1495CBE495CBC475AB9475AB74658B44457B34557AF4355AD4354AB42
                  53A75262B0292E40939393C7C7C7E6E6E6F7F7F7FDFDFDFFFFFFFFFFFF000000
                  FFFFFFEFEFEF000000C5B09DAE9075AE9075AE9075AC8F745F4F424851737B91
                  EA566DE3566CE0566CE0566CE0566CE0566CE0546BDE546BDC5269DA5269D750
                  67D54F65D14F65CF4E63CD4D61C94D61C74C60C44B5EC34B5EC0485BBD485BBB
                  4659B84659B64558B34559B24456AE4D5CAC41465D000001A5A5A5CACACAE8E8
                  E8F8F8F8FEFEFEFFFFFFFFFFFF000000FFFFFFF0F0F0000000C5B09DAE9075AE
                  9075AE9075AE9075AC8E73665547363A507C90EB5D75E5566CE0566CE0566CE0
                  566CE0566CE0556BDF546BDC5269DA5269D75067D55066D35065D04F64CD4E63
                  CB4E62C84C60C64B5EC34A5EC1495CBE495CBC475AB94658B64658B446559D40
                  43529F9FA0000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF0F0F0000000CFBEAEC5B09DC5B09DC5B09DC5B09DC5B09DC4AF9C9888
                  7A3633375E69A2718AE95A71E4566CE0566CE0566CE0566CE0566CE0546BDE54
                  6BDC5269DA5168D65066D35167D14F65CF4E63CD4D61C94D61C74C60C44A5EC1
                  495DC0485BBD4253AA2C355F090A10D0D0D0C9C9C9000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF0F0F000000000000000000000
                  00000000000000000000000000000000000101010606061F212D5561927589E7
                  647AE6586EE3566CE0566CE0566CE0556BDF546BDC5469DA5269D75067D55066
                  D35065D04F64CD4E63CB4C61C84A5EC13E519E252E57080A13000000000000E5
                  E5E5C9C9C9000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF1F1F1000000C3AD99AE9075AE9075AE9075AE9075AE9075AE9075AE90
                  75AE9075000000E5E5E5A2A2A256575A3A3E514E58895E70BD6B81E6647AE65A
                  71E4586EE0566CDE546BDC5269D75167D14E63CD4659B637458629325C2B2F40
                  656567B6B6B6E5E5E5E6E6E6000000E6E6E6C9C9C9000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF1F1F1000000C5B09DAE9075AE
                  9075AE9075AE9075AE9075AE9075AE9075AE9075000000EDEDEDEDEDEDEDEDED
                  E4E4E4B0B0B0818181535353474954393C4E2D32462429401F263D252A3E3033
                  4241434B5C5C5C898989BCBCBCE5E5E5E8E8E8E7E7E7E7E7E7E7E7E7000000E6
                  E6E6CACACA000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF2F2F2000000C5B09DAE9075AE9075AE9075AE9075AE9075AE9075AE90
                  75AE9075000000EEEEEEEEEEEEEDEDEDEDEDEDEDEDEDECECECECECECECECECEB
                  EBEBEBEBEBEBEBEB000000EAEAEAEAEAEAE9E9E9E9E9E9E9E9E9E9E9E9E8E8E8
                  E8E8E8E8E8E8E7E7E7E7E7E7000000E6E6E6CACACA000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF2F2F2000000C5B09DAE9075AE
                  9075AE9075AE9075AE9075AE9075AE9075AE9075000000EEEEEEEEEEEEEEEEEE
                  EDEDEDEDEDEDEDEDEDECECECECECECECECECEBEBEBEBEBEB000000EBEBEBEAEA
                  EAEAEAEAEAEAEAE9E9E9E9E9E9E9E9E9E8E8E8E8E8E8E8E8E8E7E7E7000000E7
                  E7E7CACACA000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF2F2F2000000C5B09DAE9075AE9075AE9075AE9075AE9075AE9075AE90
                  75AE9075000000EFEFEFEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDEDECECECEC
                  ECECECECECECECEC000000EBEBEBEBEBEBEAEAEAEAEAEAEAEAEAE9E9E9E9E9E9
                  E9E9E9E8E8E8E8E8E8E8E8E8000000E7E7E7CACACA000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF3F3F3000000CCB9A9C5B09DC5
                  B09DC5B09DC5B09DC5B09DC5B09DC5B09DC0A995000000EFEFEFEFEFEFEEEEEE
                  EEEEEEEEEEEEEDEDEDEDEDEDEDEDEDEDEDEDECECECECECEC000000EBEBEBEBEB
                  EBEBEBEBEAEAEAEAEAEAEAEAEAE9E9E9E9E9E9E9E9E9E9E9E9E8E8E8000000E8
                  E8E8CACACA000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF3F3F30000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000E8E8E8CBCBCB000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF4F4F4000000BFA792AE9075AE
                  9075AE9075AE9075AE9075AE9075AE9075AE9075000000F0F0F0EFEFEFEFEFEF
                  EFEFEFEFEFEFEEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDED000000ECECECECEC
                  ECEBEBEBEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEAEAEAE9E9E9E9E9E9000000E8
                  E8E8CBCBCB000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF4F4F4000000C5B09DAE9075AE9075AE9075AE9075AE9075AE9075AE90
                  75AE9075000000F0F0F0F0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEEEEEEEEEEEEEE
                  EEEEEDEDEDEDEDED000000ECECECECECECECECECECECECEBEBEBEBEBEBEBEBEB
                  EAEAEAEAEAEAEAEAEAE9E9E9000000E9E9E9CBCBCB000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF4F4F4000000C5B09DAE9075AE
                  9075AE9075AE9075AE9075AE9075AE9075AE9075000000F1F1F1F0F0F0F0F0F0
                  F0F0F0EFEFEFEFEFEFEFEFEFEEEEEEEEEEEEEEEEEEEDEDED000000EDEDEDEDED
                  EDECECECECECECECECECEBEBEBEBEBEBEBEBEBEAEAEAEAEAEAEAEAEA000000E9
                  E9E9CCCCCC000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF5F5F5000000C5B09DAE9075AE9075AE9075AE9075AE9075AE9075AE90
                  75AE9075000000F1F1F1F1F1F1F0F0F0F0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEE
                  EEEEEEEEEEEEEEEE000000EDEDEDEDEDEDEDEDEDECECECECECECECECECEBEBEB
                  EBEBEBEBEBEBEAEAEAEAEAEA000000EAEAEACCCCCC000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF5F5F5000000C5B09DAE9075AE
                  9075AE9075AE9075AE9075AE9075AE9075AE9075000000F1F1F1F1F1F1F1F1F1
                  F0F0F0F0F0F0F0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEEEEEE000000EEEEEEEDED
                  EDEDEDEDEDEDEDECECECECECECECECECEBEBEBEBEBEBEBEBEBEBEBEB000000EA
                  EAEACDCDCD000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF5F5F5000000CFBEAEC5B09DC5B09DC5B09DC5B09DC5B09DC5B09DC5B0
                  9DC0A995000000F2F2F2F1F1F1F1F1F1F1F1F1F1F1F1F0F0F0F0F0F0F0F0F0EF
                  EFEFEFEFEFEFEFEF000000EEEEEEEEEEEEEDEDEDEDEDEDEDEDEDECECECECECEC
                  ECECECECECECEBEBEBEBEBEB000000EAEAEACDCDCD000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF6F6F600000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000EB
                  EBEBCDCDCD000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF6F6F6000000C3AD99AE9075AE9075AE9075AE9075AE9075AE9075AE90
                  75AE9075000000BFA792AE9075AE9075AE9075AE9075AE9075AE9075AE9075AE
                  9075AE9075AE9075000000BFA792AE9075AE9075AE9075AE9075AE9075AE9075
                  AE9075AE9075AE9075AE9075000000EBEBEBCECECE000000A6A6A6CCCCCCE9E9
                  E9F9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF7F7F7000000C5B09DAE9075AE
                  9075AE9075AE9075AE9075AE9075AE9075AE9075000000C5B09DAE9075AE9075
                  AE9075AE9075AE9075AE9075AE9075AE9075AE9075AE9075000000C3AD99AE90
                  75AE9075AE9075AE9075AE9075AE9075AE9075AE9075AE9075AE9075000000EC
                  ECECCECECE000000A6A6A6CCCCCCE9E9E9F9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF7F7F7000000CCB9A9C5B09DC5B09DC5B09DC5B09DC5B09DC5B09DC5B0
                  9DC0A995000000D2C3B5C5B09DC5B09DC5B09DC5B09DC5B09DC5B09DC5B09DC5
                  B09DC5B09DBFA792000000C7B19FC5B09DC5B09DC5B09DC5B09DC5B09DC5B09D
                  C5B09DC5B09DC5B09DC3AD99000000ECECECCFCFCF000000A7A7A7CCCCCCEAEA
                  EAF9F9F9FEFEFEFFFFFFFFFFFF000000FFFFFFF7F7F700000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  00000000000000000000000000000000000000000000000000000000000000EC
                  ECECCFCFCF000000AAAAAACECECEEBEBEBF9F9F9FEFEFEFFFFFFFFFFFF000000
                  FFFFFFF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F6F6F6F6F6F6F6F6F6F5F5F5F5F5
                  F5F5F5F5F4F4F4F4F4F4F4F4F4F3F3F3F3F3F3F3F3F3F3F3F3F2F2F2F2F2F2F2
                  F2F2F1F1F1F1F1F1F1F1F1F0F0F0F0F0F0F0F0F0EFEFEFEFEFEFEFEFEFEFEFEF
                  EEEEEEEEEEEEEEEEEEEDEDEDEDEDEDEDEDEDCFCFCF000000B4B4B4D4D4D4EDED
                  EDFAFAFAFEFEFEFFFFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFE9E9E9000000C7C7C7DEDEDEF2F2F2FBFBFBFEFEFEFFFFFFFFFFFF000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  0000000000000000000000000000000000000000000000000000000000000000
                  000000000000000000000000000000000000000000000000DFDFDFECECECF7F7
                  F7FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                  FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
                OnClick = SpeedButton1Click
              end
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Saldos de Vencimientos:'
            ImageIndex = 3
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid4: TDBGrid
              Left = 0
              Top = 0
              Width = 741
              Height = 432
              TabStop = False
              Align = alClient
              DataSource = DataSource6
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
            end
          end
          object TabSheet7: TTabSheet
            Caption = 'Movimientos por Lote'
            ImageIndex = 6
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid6: TDBGrid
              Left = 0
              Top = 0
              Width = 741
              Height = 432
              TabStop = False
              Align = alClient
              DataSource = DataSource10
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
              OnDblClick = DBGrid1DblClick
              Columns = <
                item
                  Expanded = False
                  FieldName = 'Fch_Hora_Transac'
                  Title.Caption = 'Fch_Hora'
                  Width = 135
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Estado'
                  Title.Caption = 'Est'
                  Width = 25
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cd_Documento'
                  Title.Caption = 'Cod'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Descripcion'
                  Width = 150
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Consec_Dcto'
                  Title.Caption = 'Numero Doc'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'EntradaSalida'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cant_Producto'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clBlue
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = []
                  Title.Caption = 'Cantidad'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Saldo'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Valor_Unitario'
                  Title.Caption = 'Valor'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Costo_Promedio'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Lote'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Fecha_Vence'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Desc_Concepto'
                  Title.Caption = 'Concepto'
                  Visible = True
                end
                item
                  Expanded = False
                  FieldName = 'Cambio_del_Dia'
                  Title.Caption = 'Cambio del Dia'
                  Visible = True
                end>
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Saldos en Almacenes:'
            ImageIndex = 1
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid2: TDBGrid
              Left = 0
              Top = 0
              Width = 741
              Height = 432
              TabStop = False
              Align = alClient
              DataSource = DataSource4
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'Saldos por Periodo:'
            ImageIndex = 4
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid5: TDBGrid
              Left = 0
              Top = 0
              Width = 741
              Height = 432
              TabStop = False
              Align = alClient
              DataSource = DataSource8
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
            end
          end
          object TabSheet3: TTabSheet
            Caption = 'Saldos Totales:'
            ImageIndex = 2
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 0
            ExplicitHeight = 0
            object DBGrid3: TDBGrid
              Left = 0
              Top = 0
              Width = 741
              Height = 432
              TabStop = False
              Align = alClient
              DataSource = DataSource5
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'MS Sans Serif'
              Font.Style = []
              ParentFont = False
              ReadOnly = True
              TabOrder = 0
              TitleFont.Charset = DEFAULT_CHARSET
              TitleFont.Color = clWindowText
              TitleFont.Height = -11
              TitleFont.Name = 'MS Sans Serif'
              TitleFont.Style = [fsBold]
            end
          end
        end
        object Panel3: TPanel
          Left = 1
          Top = 1
          Width = 749
          Height = 48
          Align = alTop
          TabOrder = 1
          TabStop = True
          object Label3: TLabel
            Left = 8
            Top = 16
            Width = 182
            Height = 13
            Caption = 'Cantidad Total (Todos los Almacenes):'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
          end
          object DBEdit1: TDBEdit
            Left = 196
            Top = 13
            Width = 114
            Height = 21
            TabStop = False
            DataField = 'CANTIDAD'
            DataSource = DataSource4
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 624
    Top = 8
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    OnDataChange = DataSource2DataChange
    Left = 624
    Top = 56
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INAlmacenes'
    Left = 656
    Top = 8
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'DESCRIPCION'
    TableName = 'INProductos'
    Left = 656
    Top = 56
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Alma1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = ''
      end
      item
        Name = 'Alma2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = ''
      end
      item
        Name = 'Produ'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      '  declare @Fec as datetime'
      '  declare @Est as varchar(1)'
      '  declare @Cod as varchar(3)'
      '  declare @Des as varchar(30)'
      '  declare @NDoc as varchar(20)'
      '  declare @Cant as int'
      '  declare @Vr as float'
      '  declare @Prom as varchar(20)'
      '  declare @Lot as varchar(20)'
      '  declare @FecVence as datetime'
      '  declare @Concepto as varchar(50)'
      '  declare @ES as varchar(1)'
      '  declare @tot as int'
      '  '
      '  set @tot = 0'
      '  '
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[xxkardex]'#39') AND type in (N'#39'U'#39'))'
      'DROP TABLE [dbo].[xxkardex]  '
      'CREATE TABLE [dbo].[xxkardex]('
      #9'[Fch_Hora_Transac] [datetime] NULL,'
      #9'[Estado] [varchar](1) NULL,'
      #9'[Cd_Documento] [varchar](3) NULL,'
      #9'[Descripcion] [varchar](30) NULL,'
      #9'[Consec_Dcto] [varchar](20) NULL,'
      #9'[Cant_Producto] [int] NULL,'
      #9'[Saldo] [int] NULL,'
      #9'[Valor_Unitario] [float] NULL,'
      #9'[Costo_Promedio] [varchar](20) NULL,'
      #9'[Lote] [varchar](20) NULL,'
      #9'[Fecha_Vence] [datetime] NULL,'
      #9'[Desc_Concepto] [varchar](50) NULL,'
      #9'[EntradaSalida] [varchar](1) NULL'
      ') ON [PRIMARY]'
      ' '
      '  declare CURSORITO cursor for'
      
        '  SELECT Fch_Hora_Transac,INTransacciones_Enc.Estado,INTransacci' +
        'ones_Enc.Cd_Documento,INDocumentos.Descripcion,INTransacciones_E' +
        'nc.Consec_Dcto,'
      
        '         Cant_Producto,Valor_Unitario,Costo_Promedio,Lote,Fecha_' +
        'Vence,Desc_Concepto,EntradaSalida'
      
        #9'FROM INTransacciones_Enc,INTransacciones_Det,INProductos,INDocu' +
        'mentos'
      
        #9'WHERE   INTransacciones_Enc.CD_Documento = INTransacciones_Det.' +
        'CD_Documento'
      #9'  AND INTransacciones_Det.Cd_Producto = INProductos.CD_Producto'
      
        #9'  AND  INTransacciones_Enc.consec_dcto = INTransacciones_Det.Co' +
        'nsec_DCTO'
      
        #9'  AND  INTransacciones_Enc.CD_Documento = INDocumentos.CD_Docum' +
        'ento'
      #9'  AND INTransacciones_Enc.Estado is null'
      
        '      AND (INTransacciones_Enc.CD_AlmacenDestino = :Alma1 OR (IN' +
        'Transacciones_Enc.CD_AlmacenOrigen = :Alma2))'
      '      AND INTransacciones_Det.CD_Producto = :Produ'
      #9'ORDER BY  Fch_Hora_Transac'
      ' '
      '  open CURSORITO'
      '  '
      '  fetch next from CURSORITO'
      
        '  into @Fec, @Est, @Cod ,@Des, @NDoc , @Cant , @Vr , @Prom , @Lo' +
        't , @FecVence , @Concepto ,@ES'
      '  '
      '  while @@fetch_status = 0'
      '  begin'
      '    IF (@ES = '#39'E'#39') '
      '       SET @tot = @tot + @cant'
      '    ELSE '
      '      SET @tot = @tot - @cant'
      '     '
      '    INSERT INTO xxkardex '
      
        '         (Fch_Hora_Transac,Estado,Cd_Documento,INDocumentos.Desc' +
        'ripcion,Consec_Dcto,'
      
        '         Cant_Producto,Saldo,Valor_Unitario,Costo_Promedio,Lote,' +
        'Fecha_Vence,Desc_Concepto,EntradaSalida)'
      '    values '
      
        '        (@Fec, @Est, @Cod ,@Des, @NDoc , @Cant,@tot , @Vr , @Pro' +
        'm , @Lot , @FecVence , @Concepto ,@ES); '
      '    '
      '    fetch next from CURSORITO'
      
        '    into @Fec, @Est, @Cod ,@Des, @NDoc , @Cant , @Vr , @Prom , @' +
        'Lot , @FecVence , @Concepto ,@ES'
      '  end'
      ''
      '  close CURSORITO'
      '  deallocate CURSORITO'
      '  '
      '  SELECT * FROM xxkardex')
    Left = 648
    Top = 145
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery1
    Left = 616
    Top = 145
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Produ'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT INSaldosxAlmacen.Cd_Almacen,Descripcion,Cantidad,Costo,Ul' +
        'timo_Costo,Ultima_Compra,Ultima_Venta'
      'FROM INSaldosxAlmacen,INAlmacenes'
      
        'WHERE INSaldosxAlmacen.cd_Almacen = INAlmacenes.CD_Almacen AND I' +
        'NSaldosxAlmacen.CD_Producto = :Produ ')
    Left = 648
    Top = 185
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery2
    Left = 616
    Top = 185
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Produ'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      'SELECT cd_producto AS Producto,sum(cantidad) AS Total_Almacenes'
      'FROM INSaldosxAlmacen'
      'WHERE INSaldosxAlmacen.CD_Producto = :Produ'
      'GROUP BY cd_producto'
      '')
    Left = 648
    Top = 217
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery3
    Left = 616
    Top = 217
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Alma'
        Size = -1
        Value = Null
      end
      item
        Name = 'Produ'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      'SELECT Lote,Fecha_Vencim,Sum(CANTIDAD) As Cantidad'
      'FROM INSaldosVencimiento'
      'WHERE Cd_Almacen = :Alma AND CD_Producto = :Produ '
      'GROUP BY Lote,Fecha_Vencim'
      ''
      ''
      ''
      '')
    Left = 648
    Top = 249
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery4
    OnDataChange = DataSource6DataChange
    Left = 616
    Top = 249
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery5
    OnDataChange = DataSource7DataChange
    Left = 80
    Top = 25
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM INGrupo')
    Left = 136
    Top = 25
  end
  object DataSource8: TDataSource
    DataSet = ADOQuery6
    Left = 616
    Top = 281
  end
  object ADOQuery6: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Alma'
        Size = -1
        Value = Null
      end
      item
        Name = 'Produ'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT Periodo,Cantidad,Costo,Ultimo_Costo,Ultima_Compra,Ultima_' +
        'Venta'
      'FROM INSaldosxPeriodo'
      'WHERE Cd_Almacen = :Alma AND CD_Producto = :Produ '
      'ORDER BY cd_producto,Periodo'
      ''
      ''
      '')
    Left = 648
    Top = 281
  end
  object DataSource9: TDataSource
    DataSet = ADOQuery7
    Left = 616
    Top = 321
  end
  object ADOQuery7: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Produ'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM INProductos'
      'WHERE CD_Producto = :Produ '
      ''
      ''
      ''
      '')
    Left = 648
    Top = 321
  end
  object DataSource10: TDataSource
    DataSet = ADOQuery8
    Left = 624
    Top = 385
  end
  object ADOQuery8: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Alma1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = ''
      end
      item
        Name = 'Alma2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = ''
      end
      item
        Name = 'Produ'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 20
        Value = ''
      end
      item
        Name = 'lote'
        Size = -1
        Value = Null
      end
      item
        Name = 'fecha_vencim'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      '  declare @Fec as datetime'
      '  declare @Est as varchar(1)'
      '  declare @Cod as varchar(3)'
      '  declare @Des as varchar(30)'
      '  declare @NDoc as varchar(20)'
      '  declare @Cant as int'
      '  declare @Vr as float'
      '  declare @Prom as varchar(20)'
      '  declare @Lot as varchar(20)'
      '  declare @FecVence as datetime'
      '  declare @Concepto as varchar(50)'
      '  declare @ES as varchar(1)'
      '  declare @tot as int'
      '  '
      '  set @tot = 0'
      '  '
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[xxkardex]'#39') AND type in (N'#39'U'#39'))'
      'DROP TABLE [dbo].[xxkardex]  '
      'CREATE TABLE [dbo].[xxkardex]('
      #9'[Fch_Hora_Transac] [datetime] NULL,'
      #9'[Estado] [varchar](1) NULL,'
      #9'[Cd_Documento] [varchar](3) NULL,'
      #9'[Descripcion] [varchar](30) NULL,'
      #9'[Consec_Dcto] [varchar](20) NULL,'
      #9'[Cant_Producto] [int] NULL,'
      #9'[Saldo] [int] NULL,'
      #9'[Valor_Unitario] [float] NULL,'
      #9'[Costo_Promedio] [varchar](20) NULL,'
      #9'[Lote] [varchar](20) NULL,'
      #9'[Fecha_Vence] [datetime] NULL,'
      #9'[Desc_Concepto] [varchar](50) NULL,'
      #9'[EntradaSalida] [varchar](1) NULL'
      ') ON [PRIMARY]'
      ' '
      '  declare CURSORITO cursor for'
      
        '  SELECT Fch_Hora_Transac,INTransacciones_Enc.Estado,INTransacci' +
        'ones_Enc.Cd_Documento,INDocumentos.Descripcion,INTransacciones_E' +
        'nc.Consec_Dcto,'
      
        '         Cant_Producto,Valor_Unitario,Costo_Promedio,Lote,Fecha_' +
        'Vence,Desc_Concepto,EntradaSalida'
      
        #9'FROM INTransacciones_Enc,INTransacciones_Det,INProductos,INDocu' +
        'mentos'
      
        #9'WHERE   INTransacciones_Enc.CD_Documento = INTransacciones_Det.' +
        'CD_Documento'
      #9'  AND INTransacciones_Det.Cd_Producto = INProductos.CD_Producto'
      
        #9'  AND  INTransacciones_Enc.consec_dcto = INTransacciones_Det.Co' +
        'nsec_DCTO'
      
        #9'  AND  INTransacciones_Enc.CD_Documento = INDocumentos.CD_Docum' +
        'ento'
      #9'  AND INTransacciones_Enc.Estado is null'
      
        '      AND (INTransacciones_Enc.CD_AlmacenDestino = :Alma1 OR (IN' +
        'Transacciones_Enc.CD_AlmacenOrigen = :Alma2 AND INTransacciones_' +
        'Enc.CD_AlmacenTransito = '#39#39'))'
      '  AND INTransacciones_Det.CD_Producto = :Produ'
      '  AND INTransacciones_Det.Lote =:lote'
      ' AND INTransacciones_Det.Fecha_Vence =:Fecha_Vencim'
      ''
      #9'ORDER BY  Fch_Hora_Transac'
      ' '
      '  open CURSORITO'
      '  '
      '  fetch next from CURSORITO'
      
        '  into @Fec, @Est, @Cod ,@Des, @NDoc , @Cant , @Vr , @Prom , @Lo' +
        't , @FecVence , @Concepto ,@ES'
      '  '
      '  while @@fetch_status = 0'
      '  begin'
      '    IF (@ES = '#39'E'#39') '
      '       SET @tot = @tot + @cant'
      '    ELSE '
      '      SET @tot = @tot - @cant'
      '     '
      '    INSERT INTO xxkardex '
      
        '         (Fch_Hora_Transac,Estado,Cd_Documento,INDocumentos.Desc' +
        'ripcion,Consec_Dcto,'
      
        '         Cant_Producto,Saldo,Valor_Unitario,Costo_Promedio,Lote,' +
        'Fecha_Vence,Desc_Concepto,EntradaSalida)'
      '    values '
      
        '        (@Fec, @Est, @Cod ,@Des, @NDoc , @Cant,@tot , @Vr , @Pro' +
        'm , @Lot , @FecVence , @Concepto ,@ES); '
      '    '
      '    fetch next from CURSORITO'
      
        '    into @Fec, @Est, @Cod ,@Des, @NDoc , @Cant , @Vr , @Prom , @' +
        'Lot , @FecVence , @Concepto ,@ES'
      '  end'
      ''
      '  close CURSORITO'
      '  deallocate CURSORITO'
      '  '
      '  SELECT * FROM xxkardex'
      '')
    Left = 656
    Top = 385
  end
end
