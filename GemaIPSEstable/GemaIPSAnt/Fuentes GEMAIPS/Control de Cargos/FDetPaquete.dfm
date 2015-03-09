object FrmDetPaquete: TFrmDetPaquete
  Left = 320
  Top = 223
  BorderStyle = bsSingle
  Caption = 'Detalle de Paquetes'
  ClientHeight = 438
  ClientWidth = 765
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -10
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDefault
  Visible = True
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 765
    Height = 438
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 763
      Height = 48
      Align = alTop
      TabOrder = 0
      object Label6: TLabel
        Left = 8
        Top = 15
        Width = 52
        Height = 13
        Caption = 'Paquete:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 400
        Top = 176
        Width = 302
        Height = 13
        Caption = 
          'Al cambiar el tipo de admisi'#243'n del cargo se reflejar'#225' en los RIP' +
          'S.'
      end
      object DBLookupComboBox5: TDBLookupComboBox
        Left = 88
        Top = 12
        Width = 664
        Height = 21
        KeyField = 'Codigo'
        ListField = 'Descripcion'
        ListSource = DataSource5
        TabOrder = 0
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 49
      Width = 763
      Height = 388
      Align = alClient
      Caption = 'Detalle del Paquete:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object GroupBox3: TGroupBox
        Left = 2
        Top = 217
        Width = 759
        Height = 169
        Align = alBottom
        Caption = 'Items:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        object Label8: TLabel
          Left = 8
          Top = 20
          Width = 52
          Height = 13
          Caption = 'Prod/Serv:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 264
          Top = 68
          Width = 45
          Height = 13
          Caption = 'Cantidad:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label10: TLabel
          Left = 368
          Top = 68
          Width = 66
          Height = 13
          Caption = 'Valor Unitario:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label11: TLabel
          Left = 592
          Top = 68
          Width = 54
          Height = 13
          Caption = 'Valor Total:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 68
          Top = 44
          Width = 30
          Height = 13
          Caption = 'Tarifa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label15: TLabel
          Left = 52
          Top = 44
          Width = 5
          Height = 13
          Visible = False
        end
        object Label16: TLabel
          Left = 47
          Top = 44
          Width = 3
          Height = 13
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Visible = False
        end
        object Label20: TLabel
          Left = 144
          Top = 117
          Width = 5
          Height = 16
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 115
          Top = 16
          Width = 113
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'CODIGO'
          ListSource = DataSource6
          TabOrder = 11
          OnExit = DBLookupComboBox7Exit
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 115
          Top = 16
          Width = 113
          Height = 21
          KeyField = 'CD_PRODUCTO'
          ListField = 'CD_PRODUCTO'
          ListSource = DataSource3
          TabOrder = 1
        end
        object DBLookupComboBox2: TDBLookupComboBox
          Left = 115
          Top = 16
          Width = 113
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'CODIGO'
          ListSource = DataSource4
          ParentFont = False
          TabOrder = 9
          OnExit = DBLookupComboBox2Exit
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 232
          Top = 16
          Width = 441
          Height = 21
          KeyField = 'CODIGO'
          ListField = 'DESCRIPCION'
          ListSource = DataSource6
          TabOrder = 12
          OnExit = DBLookupComboBox8Exit
        end
        object MaskEdit1: TMaskEdit
          Left = 312
          Top = 65
          Width = 49
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          Text = ''
          OnChange = MaskEdit2Change
          OnClick = MaskEdit1Click
          OnKeyPress = MaskEdit1KeyPress
        end
        object MaskEdit2: TMaskEdit
          Left = 440
          Top = 65
          Width = 113
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          Text = ''
          OnChange = MaskEdit2Change
          OnKeyPress = MaskEdit2KeyPress
        end
        object MaskEdit3: TMaskEdit
          Left = 648
          Top = 65
          Width = 105
          Height = 21
          Enabled = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          Text = ''
          OnExit = MaskEdit3Exit
          OnKeyPress = MaskEdit3KeyPress
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 232
          Top = 16
          Width = 441
          Height = 21
          KeyField = 'CD_PRODUCTO'
          ListField = 'DESCRIPCION'
          ListSource = DataSource3
          TabOrder = 3
          OnExit = DBLookupComboBox4Exit
        end
        object BitBtn1: TBitBtn
          Left = 725
          Top = 14
          Width = 25
          Height = 22
          Hint = 'Listado de Porductos, Servicios o Tarifas'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          TabOrder = 8
          TabStop = False
          OnClick = BitBtn1Click
        end
        object ComboBox1: TComboBox
          Left = 64
          Top = 16
          Width = 49
          Height = 21
          Style = csDropDownList
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          OnChange = ComboBox1Change
          OnExit = ComboBox1Exit
          Items.Strings = (
            'P'
            'S')
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 232
          Top = 16
          Width = 441
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'CODIGO'
          ListField = 'DESCRIPCION'
          ListSource = DataSource4
          ParentFont = False
          TabOrder = 10
          OnExit = DBLookupComboBox6Exit
        end
        object DBLookupComboBox9: TDBLookupComboBox
          Left = 115
          Top = 40
          Width = 638
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Cod'
          ListField = 'Descr'
          ListSource = DataSource2
          ParentFont = False
          TabOrder = 2
          Visible = False
          OnExit = DBLookupComboBox9Exit
        end
        object BitBtn3: TBitBtn
          Left = 600
          Top = 96
          Width = 153
          Height = 65
          Caption = 'Adicionar al Paquete'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000C40E0000C40E00000000000000000000FFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEDAB356A55F2A82351A6E241A6E242A
            823557A760AEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFAFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF70B778247C2D24933128AF362BBF3C2BBF3C28
            AF36249C31247C2D70B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFCFAFAF9FAF4F3F3E3E5E4DEDEDDE3E5E4E3E5E4E3E5E4E5DF
            E0E3E5E4EAEAEAEFEFF170B7782493312BBF3C3BC24A36C24531C1412BBF3C2B
            BF3C31C1412BBD3B24933170B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFF5FBFAD3D3D3A6A5A59595959595958989899595958989899595
            958989899595957BA580247C2D2EC03E41C44F41C44F3BC24AFFFFFFFFFFFF2B
            BF3C2BBD3B31C1412BBD3B247C2DAEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFD3D3D35D75A433477415196D15196D15196D15196D15196D1519
            6D33477436475B2A8235249C3141C44F41C44F43C55143C551FFFFFFFFFFFF36
            C2452BBF3C2BBF3C36C245249C3157A760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFAFFFFFFFF1A23B70E11941A23B71A23B70931EC0033FF0033FF0033FF0033
            FF0E11941A23B71E77302AB93A47C65551C85E51C85E51C85EFFFFFFFFFFFF3B
            C24A36C24531C14131C14128AF362A8235FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF5FBFA0E11941A23B7112CD50835F60E3EFB1546FF345EF74B78FF0033
            FF423BDB292DBD1A6E243BC24A5ACA66FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF36C24531C1411A6E24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF0E11941A23B70931EC1546FF4B78FF6F90FF6F90FF4B78FF1A23
            B72662AD292DBD1A6E243BC24A86D48FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFF3BC24A36C2451A6E24FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF0E11940033FF0535FD4B78FF91ABFF91ABFF4B78FF292DBD2662
            AD2662AD2662AD1E77302AB93A97D89E7BD1846CCE775ACA66FFFFFFFFFFFF41
            C44F41C44F41C44F41C44F2AB93A2A8235FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF6459CE0033FF0033FF6F90FF91ABFF5883FF4B78FF292DBD2662
            AD3185D342B2F61F714E249C314DC75A97D89E6CCE775ACA66FFFFFFFFFFFF47
            C65543C55141C44F41C44F249C3157A760FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF292DBD0033FF6F90FF5883FF4B78FF1A23B72662AD3185
            D342B2F642B2F6325D8B1E773031C141AEDAB386D48F6CCE77FFFFFFFFFFFF5A
            CA664FC85C41C44F2EC03E247C2DAEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEFEFF1292DBD4B78FF4B78FF1A23B72662AD3185D33185
            D342B2F642B2F6345EF731807524933131C141AEDAB397D89E86D48F6CCE775A
            CA6647C6552EC03E24933170B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFEAEAEABDBEC12A29810E11942C38161625701625701625
            701625707F606C1A23B7292DBD275E41247C2D26A2343BC24A4DC75A47C65531
            C14126A234247C2D70B778FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFEAEAEAA6A5A5353535204190214694224C99224C992146942146
            941D3E8E16257036475B36475B6B6A6A9AA58557A7602A82351A6E241A6E242A
            823557A760AEDAB3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFF4F3F3959595070707204190214694234E97265CA82662AD265CA8265C
            A8265CA82662AD20419036475B6B6A6ABDBEC1FAF9FAFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FCFAFFDEDEDD0D0D0D0707072662AD265CA8265CA8265CA82969B52969B52969
            B52969B52763AE2662AD162570555556BDBEC1FDFDFDFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF7777770707070D0D0D0D0D0D2662AD2B71BD2B71BD2B71BD2D7AC72D7A
            C72D7AC72B71BD2969B52041905C6970A6A5A5FAF9FAFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF31342F0D0D0D1111111111112526343082CE2D7AC72D7AC73185D33185
            D32F85D33082CE2D7AC72662AD555556A6A5A5F5F4EFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF2929291111111C1C1C1C1C1C2929293185D33285D33690DB3895DF3690
            DB399AE33690DB2F85D32662AD3D6D79A6A5A5FAFAF6FFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF3535351C1C1C1C1C1C1D1D2A2D2D2D3185D3338AD5399AE33EA4EA3EA4
            EA3EA4EA3EA4EA399AE33185D336475BBDBEC1FEFDFCFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFF605F5F1C1C1C1D1D2A29292948484836475B42B0F33EAAF042B1F542B2
            F642B2F642B0F33EAAF03185D33D6D79D3D3D3FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFD3D3D30D0D0D29292931342F3535353B3B3B36475B2662AD3185D33185
            D342B2F642B2F642B1F52764AF555556E3E5E4FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFF2929292929293535353535356B6A6A7777775555562D2D2D1625
            702041902041903B3B3B3B3B3B292929F4F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFD3D3D31C1C1C3939393939394E4E50898989A6A5A5A6A5A57777
            775555563B3B3B3B3B3B292929292929FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF8989891111114848485555566B6A6A959595A6A5A5A6A5
            A58989895555560D0D0D3B3B3BEAEAEAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFA6A5A51C1C1C4848487777777777776B6A6A5555
            5631342F1C1C1C959595EFEFF1FFFFFFFFFCFAFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEAEAEA7777773535354848483939394848
            48777777EAEAEAFAFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFDFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
          ParentFont = False
          TabOrder = 7
          OnClick = BitBtn3Click
        end
        object BitBtn5: TBitBtn
          Left = 557
          Top = 65
          Width = 25
          Height = 21
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000000
            000033333377777777773333330FFFFFFFF03FF3FF7FF33F3FF700300000FF0F
            00F077F777773F737737E00BFBFB0FFFFFF07773333F7F3333F7E0BFBF000FFF
            F0F077F3337773F3F737E0FBFBFBF0F00FF077F3333FF7F77F37E0BFBF00000B
            0FF077F3337777737337E0FBFBFBFBF0FFF077F33FFFFFF73337E0BF0000000F
            FFF077FF777777733FF7000BFB00B0FF00F07773FF77373377373330000B0FFF
            FFF03337777373333FF7333330B0FFFF00003333373733FF777733330B0FF00F
            0FF03333737F37737F373330B00FFFFF0F033337F77F33337F733309030FFFFF
            00333377737FFFFF773333303300000003333337337777777333}
          NumGlyphs = 2
          TabOrder = 13
          TabStop = False
          OnClick = BitBtn5Click
        end
        object BitBtn6: TBitBtn
          Left = 675
          Top = 14
          Width = 25
          Height = 22
          Hint = 'KARDEX DE INVENTARIO'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            33333FFFFFFFFFFFFFFF000000000000000077777777777777770FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07F3FF3FF3FF3FFF70F00F00F00F000F07F773773773777370FFFFFFFFFFF
            FFF07FFFFFFFFFFFFFF70CCCCCCCCCCCCCC07777777777777777088CCCCCCCCC
            C8807FF7777777777FF700000000000000007777777777777777333333333333
            3333333333333333333333333333333333333333333333333333}
          NumGlyphs = 2
          TabOrder = 14
          TabStop = False
          OnClick = BitBtn6Click
        end
        object BitBtn7: TBitBtn
          Left = 700
          Top = 14
          Width = 25
          Height = 22
          Hint = 'CREAR UN NUEVO PRODUCTO'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000130B0000130B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
            333333333333333333FF33333333333330003FF3FFFFF3333777003000003333
            300077F777773F333777E00BFBFB033333337773333F7F33333FE0BFBF000333
            330077F3337773F33377E0FBFBFBF033330077F3333FF7FFF377E0BFBF000000
            333377F3337777773F3FE0FBFBFBFBFB039977F33FFFFFFF7377E0BF00000000
            339977FF777777773377000BFB03333333337773FF733333333F333000333333
            3300333777333333337733333333333333003333333333333377333333333333
            333333333333333333FF33333333333330003333333333333777333333333333
            3000333333333333377733333333333333333333333333333333}
          NumGlyphs = 2
          TabOrder = 15
          TabStop = False
          OnClick = BitBtn7Click
        end
      end
      object DBGrid1: TDBGrid
        Left = 2
        Top = 15
        Width = 759
        Height = 202
        Align = alClient
        DataSource = DataSource1
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -10
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = [fsBold]
        Columns = <
          item
            Expanded = False
            FieldName = 'TP_PST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_PST'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DESCRIPCION'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'UNIDADES'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'PRECIO'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'CD_TARIFA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'TB_TARIFA'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'A'#209'O_TARIFA'
            Visible = True
          end>
      end
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery10
    OnDataChange = DataSource3DataChange
    Left = 681
    Top = 81
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery4
    OnDataChange = DataSource5DataChange
    Left = 697
    Top = 9
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 9
        Value = ''
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM CRAgrupacion'
      'WHERE Estado = '#39'A'#39)
    Left = 729
    Top = 9
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery11
    OnDataChange = DataSource4DataChange
    Left = 681
    Top = 113
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery12
    OnDataChange = DataSource6DataChange
    Left = 681
    Top = 145
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery7
    Left = 120
    Top = 328
  end
  object ADOQuery7: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Tbl'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'Cod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 15
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT SAServicios.Tabla+'#39'-'#39'+SAServicios.Codigo+'#39'-'#39'+SATarifarios' +
        '.Tabla+'#39'-'#39'+SATarifarios.Codigo+'#39'-'#39'+a'#241'o AS cod,*,SATarifasDetalle' +
        '.Codigo AS cc,SATarifasDetalle.Tabla AS tb,SATarifasDetalle.A'#241'o ' +
        'AS tba'#241'o,SATarifarios.Tabla+'#39'-'#39'+SATarifarios.Codigo+'#39'-'#39'+a'#241'o+'#39' '#39'+' +
        'left(SATarifarios.Descripcion,70) AS Descr ,'
      
        '               dsala,msala,medesp,anest,medico_aux,SATarifasDeta' +
        'lle.puntaje as truvr, SATarifasDetalle.Valor as trvalor'
      'FROM SAServicios,SAHomologacion,SATarifarios,SATarifasDetalle '
      'WHERE SAServicios.Tabla = SAHomologacion.Tabla1'
      '      AND SAServicios.Codigo = SAHomologacion.Codigo1'
      '      AND SAHomologacion.Tabla2 = SATarifarios.Tabla'
      '      AND SAHomologacion.Codigo2 = SATarifarios.Codigo'
      '      AND SATarifarios.Tabla = SATarifasDetalle.Tabla'
      '      AND SATarifarios.Codigo = SATarifasDetalle.Codigo'
      '      AND SAServicios.Tabla = :Tbl'
      '      AND SAServicios.Codigo = :Cod'
      '')
    Left = 152
    Top = 328
  end
  object ADOQuery10: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'Area'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM INProductos,SACargosxArea'
      'WHERE Tp_PST = '#39'P'#39' AND CD_PST = CD_Producto'
      '  AND Empresa = :Emp'
      '  AND Area = :Area AND INPRODUCTOS.ESTADO = '#39'A'#39
      'ORDER BY Cd_Producto')
    Left = 713
    Top = 80
  end
  object ADOQuery11: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'Area'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM SAServicios,SACargosxArea'
      'WHERE Tp_PST = '#39'S'#39' AND CD_PST = Codigo'
      '  AND Empresa = :Emp'
      '  AND Area = :Area'
      'ORDER BY Codigo')
    Left = 713
    Top = 111
  end
  object ADOQuery12: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end
      item
        Name = 'Area'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM SATarifarios,SACargosxArea'
      'WHERE Tp_PST = '#39'T'#39' AND CD_PST = Codigo'
      '  AND Empresa = :Emp'
      '  AND Area = :Area'
      'ORDER BY Codigo')
    Left = 713
    Top = 143
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    OnDataChange = DataSource6DataChange
    Left = 17
    Top = 97
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'cod'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 250
        Value = Null
      end>
    SQL.Strings = (
      'SELECT * '
      'FROM crdetagrupacion'
      'WHERE codigo = :cod')
    Left = 49
    Top = 95
  end
  object PopupMenu1: TPopupMenu
    Left = 11
    Top = 346
    object MenuItem1: TMenuItem
      Caption = 'Eliminar Registro'
      OnClick = EliminarRegistro1Click
    end
  end
end
