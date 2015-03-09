object FormCapturaComp: TFormCapturaComp
  Left = 357
  Top = 68
  BorderStyle = bsSingle
  Caption = 'Captura de Comprobantes Contables'
  ClientHeight = 632
  ClientWidth = 873
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
  WindowState = wsMaximized
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 655
    Top = 0
    Width = 6
    Height = 632
    Align = alRight
    Beveled = True
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 655
    Height = 632
    Align = alClient
    TabOrder = 0
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 653
      Height = 144
      Align = alTop
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 11
        Width = 30
        Height = 13
        Caption = 'Tipo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 516
        Top = 11
        Width = 48
        Height = 13
        Caption = 'Numero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label3: TLabel
        Left = 516
        Top = 38
        Width = 40
        Height = 13
        Caption = 'Fecha:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label4: TLabel
        Left = 8
        Top = 38
        Width = 48
        Height = 13
        Caption = 'Periodo:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label5: TLabel
        Left = 8
        Top = 67
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Campo 1 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label6: TLabel
        Left = 240
        Top = 67
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Campo 2 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label7: TLabel
        Left = 496
        Top = 67
        Width = 73
        Height = 13
        AutoSize = False
        Caption = 'Campo 3 :'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object DateTimePicker1: TDateTimePicker
        Left = 568
        Top = 35
        Width = 185
        Height = 21
        Date = 38547.518292789350000000
        Time = 38547.518292789350000000
        TabOrder = 3
      end
      object Edit1: TEdit
        Left = 568
        Top = 8
        Width = 185
        Height = 21
        TabStop = False
        Color = cl3DLight
        Enabled = False
        TabOrder = 1
      end
      object GroupBox2: TGroupBox
        Left = 8
        Top = 88
        Width = 745
        Height = 49
        Caption = 'Observaciones:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        object Edit2: TEdit
          Left = 8
          Top = 16
          Width = 729
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
      end
      object Edit3: TEdit
        Left = 88
        Top = 64
        Width = 145
        Height = 21
        TabOrder = 4
        Visible = False
      end
      object Edit4: TEdit
        Left = 344
        Top = 64
        Width = 145
        Height = 21
        TabOrder = 5
        Visible = False
      end
      object Edit5: TEdit
        Left = 608
        Top = 64
        Width = 145
        Height = 21
        TabOrder = 6
        Visible = False
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 88
        Top = 8
        Width = 425
        Height = 21
        KeyField = 'Tipo_Comprobante'
        ListField = 'Descripcion'
        ListSource = DataSource1
        TabOrder = 0
        OnExit = DBLookupComboBox1Exit
      end
      object DBLookupComboBox2: TDBLookupComboBox
        Left = 88
        Top = 35
        Width = 145
        Height = 21
        KeyField = 'Periodo_Proceso'
        ListField = 'Periodo_Proceso'
        ListSource = DataSource2
        TabOrder = 2
      end
    end
    object GroupBox1: TGroupBox
      Left = 1
      Top = 145
      Width = 653
      Height = 486
      Align = alClient
      Caption = 
        'Detalle del Comprobante (Esta grilla no se limpiar'#225' si se cierra' +
        ' involuntariamente):'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -10
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      object StringGrid1: TStringGrid
        Left = 2
        Top = 15
        Width = 649
        Height = 277
        Cursor = crCross
        TabStop = False
        Align = alClient
        BiDiMode = bdLeftToRight
        Color = clInactiveBorder
        ColCount = 8
        Ctl3D = True
        RowCount = 2
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
        ParentBiDiMode = False
        ParentCtl3D = False
        ParentFont = False
        PopupMenu = PopupMenu1
        TabOrder = 0
        OnClick = StringGrid1Click
        RowHeights = (
          24
          24)
      end
      object GroupBox3: TGroupBox
        Left = 2
        Top = 292
        Width = 649
        Height = 192
        Align = alBottom
        Caption = 'Detalle del Comprobante:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        object Label8: TLabel
          Left = 8
          Top = 19
          Width = 37
          Height = 13
          Caption = 'Cuenta:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label9: TLabel
          Left = 8
          Top = 123
          Width = 75
          Height = 13
          Caption = 'Valor D'#233'bito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 264
          Top = 123
          Width = 78
          Height = 13
          Caption = 'Valor Cr'#233'dito:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label11: TLabel
          Left = 520
          Top = 123
          Width = 51
          Height = 13
          Caption = 'Balance:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label12: TLabel
          Left = 8
          Top = 43
          Width = 40
          Height = 13
          Caption = 'Tercero:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label13: TLabel
          Left = 8
          Top = 67
          Width = 64
          Height = 13
          Caption = 'Centro Costo:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Label14: TLabel
          Left = 8
          Top = 91
          Width = 58
          Height = 13
          Caption = 'Documento:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
        end
        object Shape1: TShape
          Left = 8
          Top = 112
          Width = 737
          Height = 1
        end
        object Button1: TButton
          Left = 448
          Top = 146
          Width = 145
          Height = 41
          Caption = 'Adicionar Cuenta'
          TabOrder = 10
          OnClick = Button1Click
        end
        object MaskEdit1: TMaskEdit
          Left = 88
          Top = 120
          Width = 160
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 8
          OnKeyPress = MaskEdit1KeyPress
        end
        object MaskEdit2: TMaskEdit
          Left = 344
          Top = 120
          Width = 161
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 9
          OnKeyPress = MaskEdit2KeyPress
        end
        object DBLookupComboBox3: TDBLookupComboBox
          Left = 56
          Top = 16
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Cuenta'
          ListField = 'Cuenta'
          ListSource = DataSource3
          ParentFont = False
          TabOrder = 0
        end
        object DBLookupComboBox4: TDBLookupComboBox
          Left = 184
          Top = 16
          Width = 537
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Cuenta'
          ListField = 'Descripcion'
          ListSource = DataSource3
          ParentFont = False
          TabOrder = 1
        end
        object DBLookupComboBox5: TDBLookupComboBox
          Left = 80
          Top = 40
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'codterc'
          ListField = 'codterc'
          ListSource = DataSource4
          ParentFont = False
          TabOrder = 3
          OnExit = DBLookupComboBox5Exit
        end
        object DBLookupComboBox6: TDBLookupComboBox
          Left = 208
          Top = 40
          Width = 513
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'codterc'
          ListField = 'Nombre_Completo'
          ListSource = DataSource4
          ParentFont = False
          TabOrder = 4
          OnExit = DBLookupComboBox5Exit
        end
        object DBLookupComboBox7: TDBLookupComboBox
          Left = 80
          Top = 64
          Width = 121
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Centro_Costo'
          ListField = 'Centro_Costo'
          ListSource = DataSource5
          ParentFont = False
          TabOrder = 5
        end
        object DBLookupComboBox8: TDBLookupComboBox
          Left = 208
          Top = 64
          Width = 513
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          KeyField = 'Centro_Costo'
          ListField = 'Descripcion'
          ListSource = DataSource5
          ParentFont = False
          TabOrder = 6
        end
        object Button2: TButton
          Left = 296
          Top = 146
          Width = 145
          Height = 41
          Caption = 'Limpiar Grilla'
          TabOrder = 2
          TabStop = False
          OnClick = Button2Click
        end
        object Button3: TButton
          Left = 600
          Top = 146
          Width = 145
          Height = 41
          Caption = 'Grabar el Comprobante'
          TabOrder = 11
          OnClick = Button3Click
        end
        object BitBtn1: TBitBtn
          Left = 724
          Top = 16
          Width = 25
          Height = 20
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          TabOrder = 12
          TabStop = False
          OnClick = BitBtn1Click
        end
        object BitBtn2: TBitBtn
          Left = 724
          Top = 40
          Width = 25
          Height = 20
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          TabOrder = 13
          TabStop = False
          Visible = False
          OnClick = BitBtn2Click
        end
        object BitBtn3: TBitBtn
          Left = 724
          Top = 64
          Width = 25
          Height = 20
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          TabOrder = 14
          TabStop = False
          Visible = False
          OnClick = BitBtn3Click
        end
        object Edit6: TEdit
          Left = 80
          Top = 88
          Width = 137
          Height = 21
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -10
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          OnEnter = Edit6Enter
          OnExit = Edit6Exit
        end
        object BitBtn8: TBitBtn
          Left = 3
          Top = 144
          Width = 129
          Height = 41
          Caption = 'Reconectar'
          Glyph.Data = {
            D6140000424DD61400000000000036000000280000002C000000280000000100
            180000000000A01400000000000000000000000000000000000099FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FAE899
            FBE997F9E790E7D899EFDD69969312060A789795A2FFF598FCEA98FBE899FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FAE8
            99FBE999FEEC90E6D790D7CA67827F3534621A2B51130F2D88B7BE9EFFF398FA
            E899FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FAE899FBE999FB
            E99AFDEB97FAE792F3E39CECD7A4CDBB22211D8795E31234820C1D5597A0AEA7
            FFFA97F8E699FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FDEB97
            FBE997F8E593F4DF9FF5E0A8DECE3C4E4F13123234478A7296FF0E2E8E062B94
            444E6EACFFF398FFEF97F9E799FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FAE899FBE998FBE999FBE997F8E7
            95F5E398F0DE96D7C98AB1AE5261680F11383244976291F55094FF4887F81230
            73084AF3001E8C403B4AAFFFF899FFEE98FAE899FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FCEA98F9E794F7
            E59CF5E19DDBC97D9F8D4747632B34702F4E9B5380E14995FF4884EF3681F53A
            8BFF1A32680F42CE185DF8001562697579B1FFF796FEEC98FAE899FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FCEA97FBE799FFEC98FDE994F2E199
            F7E0A0DFCD5B72732D384F273B664E6FC75180EC5388FF427BF9337CFE4381EE
            3077F83E85FF28367D1736B20950F60953F2021768767F84B6FFFA97FCE999FA
            E899FAE899FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FCEA94F4E396F4E39AE4D497DECD
            A0DACB6D838D15143525387B416FD64B89FD3F83FA3F81F83F7FF7427DFC4277
            FF3F76FD437EFF77A6FF263566253D9C1F59F5014CFE0C51E30E155877A5ABA9
            FFFC92FFEA96FFEC99F9E799FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FAE999FCEA93F0DF8EDBCC90BCB53323
            2F1809252B2D511A326B5B8EE05C96FF4278FF4276FF367DEC387CF13980F940
            80FE3E7AFD518BFF517BDA25314B04172700043218419E1656D70350FD0F4EE8
            020A6C71A3A0BCF6E9A9EBDF9CFFF498FAE799FAE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999F9E898FDEA8FE3D490D0C466
            706A464F7B4C75C6467ADD598FFA4786FF3C79F84279FC467EF94180F7377EF6
            347CFE4786FF5885E0294B90081C673B5CAB547BC5192A640A308A082D911354
            E30656FF194DD01A27742F274732344D92CDCD9EFFF098F9E899FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999F9E798FDEA8FE0D2
            8AC5B96D88831F35685C95FB407AFF4375FF4076FB457CF5427FF83A7FFC357D
            FF3982FF578AFF5071CA141B522E43795D86E36093FF4E7EEC1D34871656EA04
            2EA50B2071124FD2155AF10A4ADD0932AE0C2B9253607C9FFBEC93FBE698F9E7
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999F9E898FC
            E992EBDB82C5B79DC3B81E2544547ED34980FF4177FF457DFB4E81F7457DF740
            7FFF599AFF5782DA1E326805114F507DEB5F8CE629458F557DDE4A87FE243279
            1041BA0D5DFF1138B305135E1345C90453FF0053FF1B56CF4F5F82D1FFFFBDFF
            FF98FFFB96FBE899FAE899FBE999FBE999FBE999FBE999FAE899FCEA99FCEA9A
            FFEC9AFFEF96EFDF86CEC393CEB93D47644364BF4087FF2A7DFF2B82FF3C84FF
            4883FF417AE722356A131C4246619D5C8BD5374F7B27304148485900001B7BA0
            F93A4E870D369B014DF5115AFF1B4BCD0016661445B12D5BE228437B0E101426
            1A182A2A289DB7B5A7FFF897FEEB99FBE998FAE999FBE995F8E59BFFED9AFDEB
            98F4E392EADA8CE0D18AD1C48FB3AE82847F353540344F8B669CFD4E89FC4980
            E83664B425437C0D1B4F3852A13D6AC72F4C8D262C347772643A372F4E4A4549
            46453D4A785167A40D2C86034DF3024EF30C56FD2554CE09194D070C2D0A0B1F
            17181C18171700020A0400006F8685A3FFF499FBE997F8E692EFDF9FF5E688C1
            B64F70685F6969685F645A5D5D505A5958555564756E4A585D2A3F6F6788D030
            4690242E6A2C34643953976893EE385DA44A52636A6866635F6161626A212326
            3734337C7E783F424A3D538B1D28740950E9084EE40E52EB1E44C40F132D0C0F
            0011192E212E6B2F3F713C5B933552861E173D93CBC999FBE995F1E092E8D882
            B2A845373D69817B759A9495BAB390C5BB84CDBF8ACFC289C7BA85A2A10D1132
            1A2B6A2F499A4A71CF5182F83685FF5490EF2A201FFFFFFFAAABAB212630161C
            2093979A2F3A42212832989BA03F518520306E103AAF0D54F01253E208186300
            00003A455C5373C94D82F8528AF9528FFD528BFF3D62B548566E98FBE992EBDA
            95E1D44B7169343132B2ECE18DDFD28DE3D493EEE098F5E595EEDD8BD4C78CC3
            B86B736D303A586A90EB4A84FF287FFF3A89FF1747A969656734332F2129309F
            ACB4D8DEDEFFFFFFC3C4C0000A16C1C0BB4C60814663AA09185D095EFF1554E1
            091335445776689DFF4283FF307EFF3C7DFF3573FF347FFF568CFB09103999FB
            E994F0E088D6C7A7E5DA738D89303031433F3D6A525662636249625D5A716D7D
            8E906C90899BC4B97F92862731462F4C96417BE96297FF3051A62E303C4D504A
            404545CDCFCEFFFFFFFFFFFFC7C4C2121318322E28323C55597CCE1C2A5E024D
            E61550DA1221767094F0457FFD2B81FF317EFA467EFC3F7CFD4181FF5E95FA16
            234299FBE996F7E594ECDD8ADED099ECDD98E5D78DD6C98CC8BE75AEA26A9A91
            6891886F82815A6C685A57567DA9A296BCB0495A61252F583863CB7CA1FF151B
            26B0B3B382817D5053538E8D8BCACBCA5354566D6B72B9BAB23C49635885E339
            569E00208E135AF305299B4A71CC3D7FFF3478FA467CEE3A7BFC367FFB447CFE
            6088EB19243F99FBE999FBE997FCE996F8E694F2E093F0DF90E7D892E9D995EC
            DC94E8D991DFD189D2C493DBCC778985496A648FDDCD86B7AA778E880B213941
            4D79637198667190817F805D5A5800000040444B8284835C5658EEEAE6132157
            5B84F96889E50009521E5DE92949AC283252669DFF3879FF4A84EF3470FD277D
            FE5587FF3F68C64F415F99FBE999FBE999FBE999FBE999FCE999FDEB99FFED99
            FFEC99FFEC9AFFF095F4E48EDECE8FDECF6EA79F5F61649DF5E586CCC08DBDB3
            C0CFBA211A0F242C413B4063404043434040FFFFFF989A930C0604756C5F2F3D
            563672D52C84FF5696FF2C40690C2C931E62E30008372327385576BC5683E54B
            85F93482FF5C8FE82A285884D6C999FBE999FBE999FBE999FBE999FBE999FAE8
            99F9E799F9E899F9E799FBE998FAE78FDED08EE0D2606F6D65878393EFDE82B2
            A55751501E1F2A1B1C1E120E071110141C27403E517B6C6C8258627C31375926
            3D600D25483E8DFF328AFF4184FE506CB70825761B50C51C3193486AAA2C3562
            3E4F7C2E57BA5393FF3E5B9C3E4658A0F6E699FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE998FBE994F0DF8DDFD087A6A1464C4AA3F1E38B
            C7BD1E1913140E1400000D00000D313E4A364B651B35660F18605E7FCF3D60C1
            376ADB417DFB4262AB67A1FF3256A0081A645465983F4E81112B771629785BA4
            FF5F8ADB141B424968B4557BD519183B8DB8B59EFFF299FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE998FAE891E7D88BDACB7A9D982C1C20
            9E99985D5756000312030834425D936C91DF467CF64E84F66F9AF6314A8D172A
            72649AFF4C93FF5C91F131509B050520160F00150D0A0C0C260C0B1500010F53
            80E93E7EF501115E5A6FB8406BC108002BB2D0D3A4FFF497FCE899FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FCEA96F3E18BD8CA8ED5
            C888BAAF58655F14191A090F2E739AEF5F94FF407CFF3775FF4378FF457DF776
            A8FF0A1C4D4161B1476DB0111728000001172244354D7C6290E0487BD83565C2
            5E8FE45F6FAA15193C435E9B3E4A8E2A2939A7EFDCA0FFF294FBE799F9E999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE998FAE794
            F0DF8EE2D38AD5C890CCC0748985162E6977A7FF3B7AF73F80FE4178FF3976FF
            3979FF457DFC5472CC1C2F72131A333D3F411A34616793F95593FF3C8BFF4189
            FC3C69C1283E823036513A405E3A4469607D83A6F2DF9BFFF396F9E799FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE997F9E791E6D782BDB398C1B11C20434776DA518CFF4181F93A7B
            FB377AF53B7FF93F7AF0538DF038558D161E371E35665E86DA7096FF5678DC2E
            53982338542C3550292946252A456F7E899AD4C79DFEE999FFEB98FAE899FAE8
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FCEA97F7E48CD6C87AB5A9A4AEAB050E4A4981EB4C
            94FF4E94FF4A92FF4A8EFF508EFF5E93FF6B91F6708DDF6182C13E517D213050
            0910233B2E273E2E292323306D7E8390D1C59DF8E59AFFEB98FCEA99FAE999FA
            E999FAE899FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE998FBE992EDDD89D0C37DB5A7839499
            191D301B1F3523324D202E491E2A410E162F0D0F2300001400000B0000000603
            0025212369635F5A70697FB6ACADFDEF9DFFF197FDEA99FEEC98FCEA99FAE899
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FCE995F6E499FDEB99F2E195E5D788D0
            C38BC8BC92B5A95F716548514C4648454347424247424E514B505C52556E637E
            948B94C1BB82C8B994E0D39CF7E69CFFED94F7E498FAE899FBE999FAE899FAE8
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE994EDDC94EBDB87C4BC5D5356A9
            E3DA8FF4E28FE1D28DDCCE8ADDCF9CE7DAA5E3D7A2E2D6A2E1D6ABF0E3A4F9EA
            99F3E196F4E496F3E299FAE897FAE798FBE997FBE999FCEA99FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FAE999FCEA97F7E688DACB9EE1D64F3E40
            68807CA1FFF698FEEB96F8E58EEBDBA1EDE2A3EEDE90F2E08FE8D68EE5D689DA
            CD82B0AA99F4E798FEEB98FBE999FBE998FBE999FBE999FBE999FAE899FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FAE999FCE996F6E58DDDCF9DECDE5C5B
            584C5753A9FFFF98FBE999FBE993EBDB92F1DF87A49F503F42ADFFFF95F6E396
            E7D977BAAF2C363795E5E49AFFEE99F9E799FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FAE999FBE792E8D991E0D286
            ACA52B2023A3EBE59AFFF299FAE798FBE888D8CAACF2E53B35376E9490A7FFFF
            93EEDC8EDCCF7EBCB0454A499BDED79BFFEF98FBE899FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE998FBEA95F1E08FDFD1
            83BBB12916198BC1BA9FFFFA98F9E699FDEA95F3E18BD7C994D8CA0E0001B7F9
            F196FFF194F0DE8BD6C98AC7BC4C4C5086C3BD9CFFF198FAE899FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE998FCE993E8
            DA93E5D66377746F6E70A7FFFE97FBE999F9E799FEEB94F2E08ED9CC8BBBB213
            0002B9FFFF96FCE794EFDF89D8C997D2C55B5A5970A9A59EFFF398FAE899FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FCEA94F3E28EDFD396F2E09FFFF598FCEA97F9E799FBE998FBE98FE7D791D9CC
            5D837B62454AA4FFFF97FCE898F6E58CD8CB8FDBCD3E5F56609494A0FFF598FA
            E899FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE998FBE997F9E799FCEA99FCEA98FAE799FBE999FBE998FAE98DDD
            CE94D7C9596663708D85A1FFFE98FBE898F8E58FE5D690DECF667D7B79A29D9C
            FFF199F9E899FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9
            99FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FAE899FBE999FBE999FAE899FBE999FAE899FCEA97
            F4E38CDED08BD0C1584B4D78AEA49FFFF798FAE799FBE995EFDF90E4D495DFD3
            99EFDF99FDEA99FAE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FB
            E999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FAE899FBE999FBE999FBE999FAE8
            99FBE997F8E68FE0D286CEC1454E4B91D2CA9AFFF098F9E799FBE999FBE996F5
            E498FCEA99FDEA98FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999
            FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE999FBE9}
          TabOrder = 15
          TabStop = False
          OnClick = BitBtn8Click
        end
        object Button5: TButton
          Left = 576
          Top = 117
          Width = 169
          Height = 25
          Caption = '0'
          TabOrder = 16
          OnClick = Button5Click
        end
        object BtnModificar: TJvBitBtn
          Left = 3
          Top = 144
          Width = 129
          Height = 41
          Caption = 'Modificar documento'
          TabOrder = 17
          OnClick = BtnModificarClick
          HotTrackFont.Charset = DEFAULT_CHARSET
          HotTrackFont.Color = clWindowText
          HotTrackFont.Height = -11
          HotTrackFont.Name = 'MS Sans Serif'
          HotTrackFont.Style = []
        end
        object BitBtn4: TBitBtn
          Left = 219
          Top = 88
          Width = 134
          Height = 20
          Caption = 'Revisar Causacion'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          TabOrder = 18
          TabStop = False
          Visible = False
          OnClick = BitBtn4Click
        end
        object BitBtn5: TBitBtn
          Left = 363
          Top = 88
          Width = 134
          Height = 20
          Caption = 'Revisar Egresos'
          Glyph.Data = {
            76010000424D7601000000000000760000002800000020000000100000000100
            04000000000000010000120B0000120B00001000000000000000000000000000
            800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333300000000
            0000333377777777777733330FFFFFFFFFF033337F3FFF3F3FF733330F000F0F
            00F033337F777373773733330FFFFFFFFFF033337F3FF3FF3FF733330F00F00F
            00F033337F773773773733330FFFFFFFFFF033337FF3333FF3F7333300FFFF00
            F0F03333773FF377F7373330FB00F0F0FFF0333733773737F3F7330FB0BF0FB0
            F0F0337337337337373730FBFBF0FB0FFFF037F333373373333730BFBF0FB0FF
            FFF037F3337337333FF700FBFBFB0FFF000077F333337FF37777E0BFBFB000FF
            0FF077FF3337773F7F37EE0BFB0BFB0F0F03777FF3733F737F73EEE0BFBF00FF
            00337777FFFF77FF7733EEEE0000000003337777777777777333}
          NumGlyphs = 2
          TabOrder = 19
          TabStop = False
          Visible = False
          OnClick = BitBtn5Click
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 661
    Top = 0
    Width = 212
    Height = 632
    Align = alRight
    TabOrder = 1
    object ImageHolder: TImage
      Left = 1
      Top = 1
      Width = 210
      Height = 580
      Align = alClient
      Stretch = True
    end
    object Panel4: TPanel
      Left = 1
      Top = 581
      Width = 210
      Height = 50
      Align = alBottom
      TabOrder = 0
      object Button4: TButton
        Left = 56
        Top = 6
        Width = 121
        Height = 38
        Caption = 'Escanear Soporte'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -10
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = Button4Click
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    OnDataChange = DataSource1DataChange
    Left = 457
    Top = 201
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Filter = 'cargue = '#39'2'#39' AND Estado = '#39'A'#39
    Filtered = True
    TableName = 'CONTTIPOCOMP'
    Left = 577
    Top = 217
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery1
    Left = 625
    Top = 217
  end
  object DataSource3: TDataSource
    DataSet = ADOQueryCuenta
    OnDataChange = DataSource3DataChange
    Left = 697
    Top = 217
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM contcierres'
      'WHERE estado='#39'A'#39)
    Left = 657
    Top = 217
  end
  object DataSource4: TDataSource
    DataSet = ADOQueryTercero
    OnDataChange = DataSource4DataChange
    Left = 497
    Top = 257
  end
  object DataSource5: TDataSource
    DataSet = ADOTable4
    OnDataChange = DataSource5DataChange
    Left = 625
    Top = 257
  end
  object ADOTable4: TADOTable
    Connection = DataModule1.ADOConnection1
    Filter = 'Estado = '#39'A'#39
    Filtered = True
    TableName = 'CONTCENTROS'
    Left = 657
    Top = 257
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contenccomp')
    Left = 657
    Top = 305
  end
  object ADOQuery3: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM contdetcomp')
    Left = 689
    Top = 305
  end
  object PopupMenu1: TPopupMenu
    Left = 11
    Top = 218
    object EliminarRegistro1: TMenuItem
      Caption = 'Eliminar Registro'
      OnClick = EliminarRegistro1Click
    end
    object Modificar1: TMenuItem
      Caption = 'Modificar'
      OnClick = Modificar1Click
    end
  end
  object ADOQuery4: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTDigitaliza')
    Left = 809
    Top = 9
  end
  object QryG: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'TCom'
        Size = -1
        Value = Null
      end
      item
        Name = 'NCom'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select *  from CONTEncComp'
      '  where Tipo_Comprobante = :TCom '
      '   and Numero_Comprobante = :NCom')
    Left = 369
    Top = 297
  end
  object QryA: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 401
    Top = 297
  end
  object QryG1: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'TCom'
        Size = -1
        Value = Null
      end
      item
        Name = 'NCom'
        Size = -1
        Value = Null
      end
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete from CONTEncComp'
      '   where Tipo_Comprobante = :TCom '
      '  and Numero_Comprobante = :NCom'
      ' and empresa = :Emp')
    Left = 385
    Top = 337
  end
  object QryG2: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'Tcom'
        Size = -1
        Value = Null
      end
      item
        Name = 'Ncom'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select * from CONTDetComp'
      '  where Tipo_Comprobante =:TCom '
      '   and Numero_Comprobante =:NCom')
    Left = 353
    Top = 337
  end
  object QryG3: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'TCom'
        Size = -1
        Value = Null
      end
      item
        Name = 'Ncom'
        Size = -1
        Value = Null
      end
      item
        Name = 'Emp'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete from CONTDetComp '
      '  where Tipo_Comprobante = :TCom'
      '   and Numero_Comprobante = :NCom'
      ' and empresa = :Emp')
    Left = 417
    Top = 337
  end
  object ADOQueryCuenta: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'tc'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM CONTCuenta,CONTTCxCta'
      'WHERE CONTCuenta.Cuenta = CONTTCxCta.Cuenta AND'
      '      CONTCuenta.estado = '#39'A'#39' AND'
      '      Tipo_comprobante = :tc  ')
    Left = 729
    Top = 217
  end
  object ADOQueryTercero: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TIPComp'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT distinct *,CASE WHEN Primer_Apellido  IS null THEN '#39#39' ELS' +
        'E rtrim(Primer_Apellido) END+'#39' '#39'+'
      
        '       CASE WHEN Segundo_Apellido IS null THEN '#39#39' ELSE rtrim(Seg' +
        'undo_Apellido) END+'#39' '#39'+'
      
        '       CASE WHEN Primer_Nombre IS null THEN '#39#39' ELSE rtrim(Primer' +
        '_Nombre) END+'#39' '#39'+'
      
        '       CASE WHEN Segundo_Nombre IS null THEN '#39#39' ELSE rtrim(Segun' +
        'do_Nombre) END as Nombre_Completo,Numero_Documento+CONTTerce.Suc' +
        'ursal as codterc'
      'FROM  CONTTerce,CONTTipTercexTerce,CONTTipCompxTipTerce'
      
        'WHERE CONTTerce.Numero_Documento = CONTTipTercexTerce.Tercero AN' +
        'D'
      
        '      CONTTipTercexTerce.Tipo_Tercero = CONTTipCompxTipTerce.Tip' +
        'o_Tercero AND CONTTerce.Estado = '#39'A'#39' AND'
      '      CONTTipCompxTipTerce.Tipo_Comprobante = :TIPComp')
    Left = 577
    Top = 257
  end
  object ADOQuery5: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'TIPComp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 2
        Value = Null
      end
      item
        Name = 'TIPTerce'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 3
        Value = Null
      end
      item
        Name = 'Cta'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 10
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM  CONTTipTercexCta'
      'WHERE Tipo_Comprobante = :TIPComp AND'
      '      Tipo_Tercero = :TIPTerce AND'
      '      Cuenta           = :Cta ')
    Left = 577
    Top = 297
  end
  object ADOQueryTemp: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'TCom'
        Size = -1
        Value = Null
      end
      item
        Name = 'Ncom'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Delete from CONTDetComp '
      '  where Tipo_Comprobante = :TCom'
      '   and Numero_Comprobante = :NCom')
    Left = 457
    Top = 337
  end
end
