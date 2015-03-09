object ImpFormato: TImpFormato
  Left = 0
  Top = 165
  BorderStyle = bsDialog
  Caption = 'Impresi'#243'n de Formatos'
  ClientHeight = 559
  ClientWidth = 762
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 762
    Height = 478
    ActivePage = TabSheet5
    Align = alClient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Formato'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 447
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object Label3: TLabel
          Left = 8
          Top = 11
          Width = 52
          Height = 13
          Caption = 'Empresa:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TLabel
          Left = 8
          Top = 40
          Width = 51
          Height = 13
          Caption = 'Formato:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TLabel
          Left = 436
          Top = 218
          Width = 105
          Height = 13
          Caption = 'Tama'#241'o de Hoja X:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 436
          Top = 257
          Width = 105
          Height = 13
          Caption = 'Tama'#241'o de Hoja Y:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label7: TLabel
          Left = 10
          Top = 186
          Width = 63
          Height = 13
          Caption = 'Impresora:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label6: TLabel
          Left = 10
          Top = 154
          Width = 32
          Height = 13
          Caption = 'Filtro:'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object DBMemo1: TDBMemo
          Left = 8
          Top = 63
          Width = 662
          Height = 75
          DataField = 'SQL'
          DataSource = DSEncFormato
          TabOrder = 0
          OnExit = DBMemo1Exit
        end
        object DBNavigator2: TDBNavigator
          Left = 470
          Top = 8
          Width = 200
          Height = 50
          DataSource = DSEncFormato
          TabOrder = 1
        end
        object DBEdit1: TDBEdit
          Left = 65
          Top = 36
          Width = 375
          Height = 21
          DataField = 'Formato'
          DataSource = DSEncFormato
          TabOrder = 2
        end
        object Memo1: TMemo
          Left = 8
          Top = 141
          Width = 661
          Height = 4
          TabOrder = 3
        end
        object Edit1: TEdit
          Left = 547
          Top = 215
          Width = 121
          Height = 21
          Color = clInactiveBorder
          ReadOnly = True
          TabOrder = 4
        end
        object Edit2: TEdit
          Left = 547
          Top = 251
          Width = 121
          Height = 21
          Color = clInactiveBorder
          ReadOnly = True
          TabOrder = 5
        end
        object DBEdit2: TDBEdit
          Left = 66
          Top = 9
          Width = 62
          Height = 21
          Color = clInactiveBorder
          DataField = 'Ide'
          DataSource = DSEncFormato
          Enabled = False
          TabOrder = 6
        end
        object Edit5: TEdit
          Left = 79
          Top = 183
          Width = 590
          Height = 21
          Color = clInactiveBorder
          Enabled = False
          TabOrder = 7
        end
        object Edit4: TEdit
          Left = 79
          Top = 151
          Width = 589
          Height = 21
          Color = clInactiveBorder
          Enabled = False
          TabOrder = 8
        end
      end
    end
    object TabSheet5: TTabSheet
      Caption = 'Imagen de Fondo'
      ImageIndex = 4
      object Label5: TLabel
        Left = 3
        Top = 10
        Width = 111
        Height = 13
        Caption = 'Archivo de Plantilla:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Edit3: TEdit
        Left = 120
        Top = 7
        Width = 515
        Height = 24
        Color = clInactiveBorder
        Enabled = False
        TabOrder = 0
        Text = 'Al imprimir se cargar'#225' la imagen.......'
      end
      object BitBtn2: TBitBtn
        Left = 641
        Top = 3
        Width = 25
        Height = 30
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
        TabOrder = 1
        TabStop = False
        OnClick = BitBtn2Click
      end
      object Panel4: TPanel
        Left = 0
        Top = 29
        Width = 754
        Height = 418
        Align = alBottom
        TabOrder = 2
        object Image1: TImage
          Left = 1
          Top = 1
          Width = 752
          Height = 416
          Align = alClient
          Stretch = True
          Transparent = True
          ExplicitTop = 24
          ExplicitHeight = 393
        end
      end
      object BitBtn1: TBitBtn
        Left = 672
        Top = 2
        Width = 25
        Height = 30
        Caption = 'X'
        NumGlyphs = 2
        TabOrder = 3
        TabStop = False
        OnClick = BitBtn1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Configuraci'#243'n de Campos'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 1
      ParentFont = False
      object SpeedButton2: TSpeedButton
        Left = 3
        Top = 413
        Width = 122
        Height = 31
        Caption = 'Elimina los Campos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton2Click
      end
      object SpeedButton1: TSpeedButton
        Left = 131
        Top = 413
        Width = 113
        Height = 31
        Caption = 'Cargar Campos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        OnClick = SpeedButton1Click
      end
      object DBGrid1: TJvDBGrid
        Left = 0
        Top = 0
        Width = 754
        Height = 265
        Align = alTop
        DataSource = DSFormato
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        OnDrawColumnCell = DBGrid1DrawColumnCell
        SelectColumnsDialogStrings.Caption = 'Select columns'
        SelectColumnsDialogStrings.OK = '&OK'
        SelectColumnsDialogStrings.NoSelectionWarning = 'At least one column must be visible!'
        EditControls = <>
        RowsHeight = 17
        TitleRowHeight = 17
      end
      object Button1: TButton
        Left = 250
        Top = 413
        Width = 137
        Height = 31
        Caption = 'Plantilla de Impresi'#243'n'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnClick = Button1Click
      end
      object DBNavigator1: TDBNavigator
        Left = 393
        Top = 413
        Width = 270
        Height = 31
        DataSource = DSFormato
        TabOrder = 2
      end
      object Memo2: TMemo
        Left = 3
        Top = 271
        Width = 214
        Height = 136
        Lines.Strings = (
          '0: Label'
          '1: Campo Normal'
          '2: Codigo de Barras del Numero'
          '3: Imagen del Campo'
          '4: Imagen de Archivo'
          '5: Numero con Comas'
          '6: Monto Escrito'
          '7: SQL en el campo'
          '8: SQl Invertido'
          '9: Plantilla Standard')
        TabOrder = 3
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 2
      ParentFont = False
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 754
        Height = 447
        Align = alClient
        TabOrder = 0
        object ScrollBox1: TScrollBox
          Left = 1
          Top = 1
          Width = 752
          Height = 410
          Align = alClient
          TabOrder = 0
          object ImagePrint: TImage
            Left = 3
            Top = 3
            Width = 110
            Height = 102
            Stretch = True
            Transparent = True
          end
        end
        object JvTracker1: TJvTracker
          Left = 1
          Top = 411
          Width = 752
          Height = 35
          OnChangedValue = JvTracker1ChangedValue
          Align = alBottom
          TabOrder = 1
        end
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Tabla en Columnas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ImageIndex = 3
      ParentFont = False
      inline ListaCol1: TListaCol
        Left = 0
        Top = 0
        Width = 754
        Height = 447
        Align = alClient
        TabOrder = 0
        ExplicitWidth = 754
        ExplicitHeight = 447
        inherited Panel1: TPanel
          Width = 754
          Height = 426
          ExplicitWidth = 754
          ExplicitHeight = 426
          inherited Panel2: TPanel
            Width = 752
            ExplicitWidth = 752
          end
          inherited StringGrid1: TStringGrid
            Width = 752
            Height = 352
            ExplicitWidth = 752
            ExplicitHeight = 352
          end
        end
        inherited Panel3: TPanel
          Top = 426
          Width = 754
          ExplicitTop = 426
          ExplicitWidth = 754
          inherited ProgressBar1: TProgressBar
            Width = 752
            ExplicitWidth = 752
          end
        end
        inherited ImageList1: TImageList
          Bitmap = {
            494C0101020004006C0010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
            0000000000003600000028000000400000001000000001002000000000000010
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF00FFFF
            FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000000000000000000000000000000
            0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000FF000000FF000000
            FF000000FF000000FF000000FF00000000000000000000000000000000000000
            000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
            7B007B7B7B007B7B7B007B7B7B00FFFFFF000000000000000000000000000000
            0000000000000000000000000000FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000FF000000FF000000
            FF000000FF000000FF000000FF00000000000000000000000000000000000000
            000000000000000000000000000000000000000000007B7B7B007B7B7B007B7B
            7B007B7B7B007B7B7B007B7B7B00000000000000000000000000000000000000
            000000000000000000007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FFFFFF0000000000000000000000000000000000000000000000
            000000000000000000007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
            000000000000000000007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000FFFFFF007B7B
            7B007B7B7B00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
            FF0000000000FFFFFF00FFFFFF00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
            00000000FF000000FF000000000000000000000000007B7B7B007B7B7B007B7B
            7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B00FFFF
            FF007B7B7B007B7B7B00FFFFFF00000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00000000000000000000000000000000000000000000FF000000FF000000FF00
            0000FF000000FF000000FF000000FF000000FF000000FF000000FF0000000000
            00000000FF000000FF000000000000000000000000007B7B7B007B7B7B007B7B
            7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B007B7B7B000000
            00007B7B7B007B7B7B0000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000000000000000000000000000FF00
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000007B7B
            7B007B7B7B00FFFFFF0000000000000000000000000000000000000000000000
            00000000000000000000FFFFFF00FFFFFF000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000FF0000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            00007B7B7B000000000000000000000000000000000000000000000000000000
            0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000007B7B7B007B7B7B007B7B7B000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000000000000000000424D3E000000000000003E000000
            2800000040000000100000000100010000000000800000000000000000000000
            000000000000000000000000FFFFFF00FFFFFFFC00000000FFF8FFF800000000
            FFF8C0F80000000081FF80FE0000000081FC81FC00000000FFFCFFFC00000000
            FFFFFFFE00000000FFFCFBFC00000000F7FCF3FC00000000E7FFC00900000000
            80138001000000008013801300000000E7FFE3FC00000000F7F8F7F800000000
            FFF8FFF800000000FFFFFFFF0000000000000000000000000000000000000000
            000000000000}
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 478
    Width = 762
    Height = 81
    Align = alBottom
    TabOrder = 1
    object Button3: TButton
      Left = 8
      Top = 11
      Width = 145
      Height = 57
      Caption = 'Setup Impresora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 159
      Top = 11
      Width = 145
      Height = 57
      Caption = 'Escoger Impresora'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button4Click
    end
    object Button2: TButton
      Left = 519
      Top = 11
      Width = 161
      Height = 57
      Caption = 'Imprimir Formato'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button2Click
    end
    object Button5: TButton
      Left = 355
      Top = 11
      Width = 161
      Height = 57
      Caption = 'Preview'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button5Click
    end
  end
  object ADOQFormato: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'empre'
        Size = -1
        Value = Null
      end
      item
        Name = 'forma'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM SECoordImpresion'
      'WHERE IdE = :empre AND Formato = :forma'
      'ORDER BY Y,X')
    Left = 32
    Top = 216
  end
  object DSFormato: TDataSource
    DataSet = ADOQFormato
    OnUpdateData = DSFormatoUpdateData
    Left = 112
    Top = 216
  end
  object ADOQImpresion: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT DISTINCT Formato '
      'FROM SECoordImpresion')
    Left = 576
    Top = 73
  end
  object ADOQEncFormato: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM SECoordEncImpresion')
    Left = 352
    Top = 224
  end
  object DSEncFormato: TDataSource
    DataSet = ADOQEncFormato
    OnDataChange = DSEncFormatoDataChange
    Left = 256
    Top = 232
  end
  object OpenDialog1: TOpenDialog
    Left = 416
    Top = 376
  end
  object PrinterSetupDialog1: TPrinterSetupDialog
    Left = 640
    Top = 496
  end
  object PrintDialog1: TPrintDialog
    Left = 640
    Top = 544
  end
  object ADOQTmp: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 192
    Top = 224
  end
end
