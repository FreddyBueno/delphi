object FrmPrivilegios: TFrmPrivilegios
  Left = 266
  Top = 114
  BorderStyle = bsSingle
  Caption = 'Privilegios'
  ClientHeight = 590
  ClientWidth = 908
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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Image2: TImage
    Left = 32
    Top = 6
    Width = 17
    Height = 17
    Picture.Data = {
      07544269746D61700E060000424D0E0600000000000036000000280000001600
      0000160000000100180000000000D8050000C40E0000C40E0000000000000000
      0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF005B00005B00005B00
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF005B00006D
      00006D00005B00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF00
      5B00009A0000B900006E00005B00005B00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
      FFFFFF005C0000BB0000C80000C100007700005C00005D00FFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFF
      FFFFFFFF00620000760000D10000D10000D10000D100008B00006200006400FF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      0000FFFFFFFFFFFF00680000A10000DA0000DA0000DA0000DA0000DA00009A00
      006800006900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF0000FFFFFFFFFFFF006E0000CD0000E30000E30000E30000E30000E3
      0000E30000B800006E00007000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFF0000FFFFFF007600007C0000EC0000EC0000EC0000D60000
      E50000EC0000EC0000EC0000C000007C00007600FFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF007B0000A90000F60000F60000C700
      007B0000820000B80000EE0000F60000F60000DF00008300007C00FFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFF00820003D70305FE0501CF
      01008100008000007F0000800000890000C00004F60405FE0505E60501890100
      8200FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008A000088002BF72B18
      D318008800008600FFFFFFFFFFFFFFFFFF008500008700028F0211C41128F828
      2BF72B0B9E0B008900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000008F0017AA17
      36D536008E00008C00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF008C00008D
      0005950529C72950F15014A314008F00009100FFFFFFFFFFFFFFFFFF00000095
      0017A917009500009300FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFF009200009400089C0840CB402EB62E009500009700FFFFFFFFFFFF
      0000009B00009B00009900FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009900009A000AA20A009B00009C00009D
      00FFFFFF000000A10100A000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF009F0000A10000
      A20300A20300A5060000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFF00AA0E00AC1300AF180000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
    Stretch = True
    Visible = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 575
    Width = 908
    Height = 15
    Align = alBottom
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 908
    Height = 23
    Align = alTop
    TabOrder = 1
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 23
    Width = 908
    Height = 552
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 2
    object TabSheet1: TTabSheet
      Caption = 'Modulos por usuarios'
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 900
        Height = 124
        Align = alTop
        TabOrder = 0
        object Splitter1: TSplitter
          Left = 329
          Top = 1
          Width = 5
          Height = 122
        end
        object PageControl2: TPageControl
          Left = 1
          Top = 1
          Width = 328
          Height = 122
          ActivePage = TabSheet3
          Align = alLeft
          TabOrder = 0
          OnChange = PageControl2Change
          object TabSheet3: TTabSheet
            Caption = 'Por usuario'
            object Label1: TLabel
              Left = 16
              Top = 36
              Width = 39
              Height = 13
              Caption = 'Usuario:'
            end
            object Edit1: TEdit
              Left = 64
              Top = 32
              Width = 121
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
              OnKeyPress = Edit1KeyPress
            end
            object BitBtn1: TBitBtn
              Left = 200
              Top = 25
              Width = 81
              Height = 35
              Caption = 'Buscar'
              TabOrder = 1
              OnClick = BitBtn1Click
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000120B0000120B00000000000000000000FF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFABA7A68C8888C09596FF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFACA8A786868A2A669A4B7BA0C09494FF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF9B9D9D5492C22E99FF1B7C
                CB557A97C19595FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF3DADFF
                57C1FF4DB1FF3196FA197CC9537997C19495FF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FF41ABFF5DBFFE4DAFFF3196FA197BC85A7A97C29594FF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42ABFE5CC0FE4DAFFF3096FA19
                7AC8587A96C19494FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF42AC
                FE5CC0FE4DAFFF2E94FA187AC75F7C97BB9396FF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FF44ADFE5CBFFE4DB0FF2D94F81979C6437397FF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46AEFE5CBFFE4CB0FF3F97ED
                577B94FF00FFFF00FFFF00FFAE837EAE837EAE837EAE837EAE837EFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF46
                AFFE66C5FFA3CCF1BEB3AB867170A9807AAE837EE5D8BDFFFFE2FFFFE2FFFFE0
                EEDFC6AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFDCBFB8C69E8ED8BDA3FFFFDDFFFFDDFF
                FFDBFFFFDAFFFFDBFFFFDDFFFFE9DEC9B7AE837EFF00FFFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE857FDEC0A5FFF3
                C1FCF1C8FFFFDAFFFFD9FFFFDAFFFFE0FFFFE4FFFFEFFFFFFFDDCAC8AE837EFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                AE837EFFEFB9F5D4A5FBF0C6FFFFDBFFFFDAFFFFDDFFFFEBFFFFF5FFFFFBFFFF
                FDFFFFFEAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFAE837EECD5B4F8D6A2F2C997FCEDC4FFFFDBFFFFDAFFFFE0FFFFF0
                FFFFFEFFFFFDFFFFF5FFFFEBE1D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFAE837EFFF3BFF4CB95F0C18EF9E5BAFEFDD7FF
                FFDCFFFFDFFFFFECFFFFF8FFFFF8FFFFECFFFFE0FFFFE3AE837EFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFF4C0F3C994EEB8
                84F5D5A5FDF3CBFFFFDCFFFFDDFFFFE2FFFFE8FFFFE9FFFFE2FFFFDDFFFFE3AE
                837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837E
                FFF5C3F6D19CEEB27DF1C593F7E0B3FDF7D0FFFFDCFFFFDDFFFFDDFFFFDDFFFF
                DBFFFFDAFFFFE1AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFAE837EECD5B4FDE6B2F3C996F2C792F3D09CF8E3B5FCF5CDFFFFDA
                FFFFDCFFFFDBFFFFDBFFFFDCE2D3B8AE837EFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EFFFED0FCF0D6F8E0BEF4CF9DF3
                CD9AF6D8AAFBEABFFDF4CBFCF7CFFEF8D1FFFFDEAE837EFF00FFFF00FFFF00FF
                FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EE0CAB2FFFF
                FFFEF9F2F8E1BEF1C48DEEBA85F1C491F4D1A1F8DEB0FFF7C6DDC7AEAE837EFF
                00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
                FF00FFAE837ED9C6C0FFFFFFFFF7D7F8DAA6F4CB95F5CD99F9D9A6FFF1BBDEC2
                A9AE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
                00FFFF00FFFF00FFFF00FFFF00FFAE837EAE837EE8D5B4FFF9C5FFF5C0FFF5C2
                EED8B7AE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
                FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFAE837EAE
                837EAE837EAE837EAE837EFF00FFFF00FFFF00FFFF00FFFF00FF}
            end
          end
          object TabSheet4: TTabSheet
            Caption = 'Por nombre'
            ImageIndex = 1
            object Label2: TLabel
              Left = 0
              Top = 13
              Width = 71
              Height = 13
              Caption = 'Primer apellido:'
            end
            object Label3: TLabel
              Left = 0
              Top = 45
              Width = 70
              Height = 13
              Caption = 'Primer nombre:'
            end
            object EditPrimerApellido: TEdit
              Left = 86
              Top = 9
              Width = 233
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 0
            end
            object EditPrimerNombre: TEdit
              Left = 86
              Top = 41
              Width = 233
              Height = 21
              CharCase = ecUpperCase
              TabOrder = 1
            end
            object BitBtn2: TBitBtn
              Left = 192
              Top = 67
              Width = 125
              Height = 25
              Caption = 'Buscar'
              TabOrder = 2
              OnClick = BitBtn2Click
            end
          end
        end
        object Panel5: TPanel
          Left = 334
          Top = 1
          Width = 565
          Height = 122
          Align = alClient
          BevelOuter = bvNone
          TabOrder = 1
          object PageControl4: TPageControl
            Left = 0
            Top = 0
            Width = 565
            Height = 122
            ActivePage = TabSheet7
            Align = alClient
            TabOrder = 0
            object TabSheet7: TTabSheet
              Caption = 'TabSheet7'
              TabVisible = False
              object Label4: TLabel
                Left = 24
                Top = 20
                Width = 45
                Height = 13
                Caption = 'Nombres:'
              end
              object Label5: TLabel
                Left = 24
                Top = 52
                Width = 58
                Height = 13
                Caption = 'Documento:'
              end
              object Label6: TLabel
                Left = 352
                Top = 52
                Width = 39
                Height = 13
                Caption = 'Usuario:'
              end
              object EditNombre: TEdit
                Left = 104
                Top = 16
                Width = 401
                Height = 21
                TabStop = False
                CharCase = ecUpperCase
                ReadOnly = True
                TabOrder = 0
              end
              object EditDocumento: TEdit
                Left = 104
                Top = 48
                Width = 241
                Height = 21
                TabStop = False
                CharCase = ecUpperCase
                ReadOnly = True
                TabOrder = 1
              end
              object EditUsuario: TEdit
                Left = 400
                Top = 48
                Width = 85
                Height = 21
                TabStop = False
                CharCase = ecUpperCase
                ReadOnly = True
                TabOrder = 2
              end
            end
            object TabSheet8: TTabSheet
              Caption = 'TabSheet8'
              ImageIndex = 1
              TabVisible = False
              object SGUsuario: TStringGrid
                Left = 0
                Top = 0
                Width = 557
                Height = 112
                Align = alClient
                ColCount = 3
                DefaultRowHeight = 17
                FixedCols = 0
                RowCount = 2
                Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
                TabOrder = 0
                OnDblClick = SGUsuarioDblClick
                ColWidths = (
                  59
                  138
                  337)
              end
            end
          end
        end
      end
      object SG1: TStringGrid
        Left = 0
        Top = 177
        Width = 900
        Height = 347
        Align = alClient
        ColCount = 7
        DefaultRowHeight = 22
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine]
        TabOrder = 1
        OnDblClick = SG1DblClick
        OnDrawCell = SG1DrawCell
        ColWidths = (
          22
          163
          280
          117
          107
          83
          74)
      end
      object Panel7: TPanel
        Left = 0
        Top = 124
        Width = 900
        Height = 53
        Align = alTop
        TabOrder = 2
        object BitBtn5: TBitBtn
          Left = 22
          Top = 7
          Width = 267
          Height = 38
          Caption = 'Cargar datos'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnClick = BitBtn5Click
          Glyph.Data = {
            360C0000424D360C000000000000360000002800000020000000200000000100
            180000000000000C0000120B0000120B00000000000000000000FF00FF0B7FBA
            0B7FBA0B7FBA0B7FBA0B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA1F8EC2
            A9DCEF43B2E335A9DD2398CF0B7FBA0B7FBA0B7FBA0B7FBA0B7FBAFF00FFFF00
            FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D07FF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA0B7FBA
            CCE9F357C7F657C7F657C7F657C7F651C1F04BBAEE35A9DD279CD30B7FBA0B7F
            BA0B7FBA0B7FBA0B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF035D0703
            5D07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA35ACD9
            81C2DE91DCF757C7F657C7F657C7F657C7F657C7F657C7F657C7F657C7F651C1
            F045B7E935A9DD2398CF0B7FBA0B7FBA0B7FBA0B7FBA0B7FBAFF00FF035D0707
            8A0E035D07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA3DB2DC
            319ACAC4EBFA57C7F657C7F657C7F657C7F657C7F657C7F657C7F657C7F657C7
            F657C7F657C7F657C7F657C7F651C1F045B7E931A4DA2398CF0B7FBA035D073A
            AC43078A0E035D07FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA37ACD8
            29A0D1C5E5EF60CBF657C7F657C7F657C7F657C7F657C7F657C7F657C7F6035D
            07035D07035D07035D07035D07035D07035D07035D07035D07035D07035D0740
            B04940B049078A0E035D07FF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA37ACD8
            3DB2DC62B4D791DCF75ACBF65ACBF65ACBF65ACBF65ACBF65ACBF65ACBF6035D
            0773E296ACEBBFACE9BBA7E5B5A7E5B59DE1AB8BD99A78D08768C97655BD6255
            BD6244B44E30AA3C078A0E035D07FF00FFFF00FFFF00FFFF00FF0B7FBA37ACD8
            3EAFD92A99CAD1F0FB5ECFF65ECFF65ECFF65ECFF65ECFF65ECFF65ECFF6035D
            0788E7A7DDF8E6DCF7E5DCF6E3DAF6E2D4F3DCBFEDC9A7E5B58FD99C78D0875F
            C66F49B75530AA3C22A02B078A0E035D07FF00FFFF00FFFF00FF0B7FBA39ADDA
            3EAFD929A0D1C5E5EF73D7F662D1F362D0F362D0F362D0F362D0F362D0F3035D
            0788E7A7DEF8E7DDF8E6DCF7E5DAF6E2D4F3DCBFEDC9A7E5B592DCA078D08768
            C9764EBC5C38AF4422A02B13981D078E0F035D07FF00FFFF00FF0B7FBA39ADDA
            40B1DD40B1DD53ABD3A1E5F663CFED62CCEA60CCE960CCE960CCE960CCE9035D
            0788E7A7DEF8E7DEF8E7DDF8E6DCF7E5D7F4E0C5F0D0ACE9BB96DEA580DA9568
            C97653C0633DB44C28A73513981D078A0E035D07FF00FFFF00FF0B7FBA3BAFDD
            41B0DE41B0DE2396C7DDF3F863CAE65FC4DD5EC2DA5EC2DA5EC2DA5EC2DA035D
            0788E7A7DEF8E7DEF8E7DEF8E7DDF8E6DAF6E2C5F0D0B0EABF9AE2AB80DA956E
            CF8058C46A42B85330AA3C078A0E026005FF00FFFF00FFFF00FF0B7FBA3DB0E0
            43B2E343B2E332A6D49FD5E790CCE280CBDA80CBDA80CBDA80CBDA80CBDA035D
            0773E296B2F0C7B2F0C7B2F0C7B2F0C7ADEEC29FE9B58FE2A580DA9570D38470
            D3845FC66F47BD5A078A0E0363070B7FBAFF00FFFF00FFFF00FF0B7FBA3DB0E0
            46B4E646B4E641B0DE53ABD3D4F6FA96EBF896EBF896EBF896EBF896EBF8035D
            07035D07035D07035D07035D07035D07035D07035D07035D07035D07035D077B
            D48C63CC78078A0E05660A76E5F60B7FBAFF00FFFF00FFFF00FF0B7FBA3FB1E1
            48B5E948B4E744ABDD2B83AFB4DCEBBCF3FA9AF0F89AF0F89AF0F89AF0F89AF0
            F89AF0F89AF0F89AF0F89AF0F89AF0F89AF0F89AF0F887D4DD6ACFDC035D0780
            DA95078A0E05660A7DEDF77DEDF742B8DC0B7FBAFF00FFFF00FF0B7FBA48B4E3
            4BB6ED4BB6ED47ADE28B8C961486BD9FD5E7DDF3F8E7FAFADDF8FBCEF7FACEF7
            FABBF6F8A6F3F7A1F3F8A1F3F8A1F3F8A1F3F89FF3F895D7DD72D1DC035D0707
            8A0E07690E62D1E786EFF786EFF786EFF70F83BCFF00FFFF00FF0B7FBA53B8E5
            4BBAEE4BB6ED47ADE2B1908EB5D9E245A3CC389CC91486BD1F8EC2379DCA379D
            CA72BCDCD3EBF3CEF7FAB6F4F7B6F4F7B6F4F7B6F4F7A9D9DD87D4DD035D0707
            690E89EBF773D4E99FF3F89FF3F89FF3F838A7D00B7FBAFF00FF0B7FBA5FBBE6
            51BDF051BDF04DB4E3B1908EFEF8F2FEF8F2FEF8F2FEF8F2FEF8F2C7E0E3B5D9
            E281C0D81F8EC19FD5E7E7FAFACEF7FAC9F7F8C9F7F8B5D9E295D7DD035D07A4
            EDF69DE9F484D3EDBBF6F8BBF6F8BBF6F899E1EE0B7FBAFF00FF0B7FBA84D3ED
            56C4F256C4F253B8E5B1908EFEF6EEFEF6EEFEF6EEFEF6EEFEF6EEFEF6EEFEF6
            EEFEF6EEEBEEEA45A1CA62B4D7E6F3F7E7FAFAE6F3F7C7E0E3A9D9DDB4E6EDB8
            EFF7B2EDF79FD5E7D8F8FAD8F8FAD8F8FAD8F8FA0B7FBAFF00FF0B7FBAAAE5F8
            5CCAF35CCAF357C0E6B1908EFEF4EBFEF4EBFEF4EBFEF4EBFEF4EBFEF4EBFEF4
            EBFEF4EBFEF4EBFEF4EB81C0D82996C690CCE2F7FBFCE5EBEBC7E0E3C5E5EFBD
            EFF8BDEFF89FD5E7E0F8FAE0F8FAE0F8FAE0F8FA72BCDC0B7FBA0B7FBAAAE5F8
            62D0F362CEF25CC4E6B1908EFEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2E7FEF2
            E7FEF2E7FEF2E7FEF2E7FEF2E7DDE0DE54A7CB1F8EC262B4D772BCDC90CCE2B4
            DCEBB4DCEBC5E5EFF7FBFCF7FBFCF7FBFCEFFBFBEFFBFB0B7FBA0B7FBAAFE9F8
            68D5F468D5F463CAE6B1908EFEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0
            E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3FEF0E3EBE9E17F8B98217EA42B96C032
            A6D435ACD90B7FBA0B7FBA0B7FBA0B7FBA0B7FBA0B7FBA0B7FBA0B7FBAB2EDF7
            6DDCF46CDAF368D0E7B1908EFFEEE0FFEEE0FFEEE0FFEEE0FFEEE0FFEEE0FFEE
            E0FFEEE0FFEEE0FFEEE0FFEEE0FFEEE0FFEEE0FFEEE0B1908E6DDCF46DDCF468
            D0E76CDAF30B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBAB5EFFA
            74E2F673E1F470DAE9B1908EFFEDDCFFEDDCFFEDDCFFEDDCFFEDDCFFEDDCFFED
            DCFFEDDCFFEDDCFFEDDCFFEDDCFFEDDCFFEDDCFFEDDCB1908E74E2F674E2F670
            DAE974E2F60B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBAC0F3FA
            79E9F679E9F670DAE9B1908EFFEAD8FFEAD8FFEAD8FFEAD8FFEAD8FFEAD8FFEA
            D8FFEAD8FFEAD8FFE9D4F8E3D3F2DECEF2DECEF2DECEB1908E79E9F679E9F670
            DAE979E9F60B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBAA9DCEF
            86EFF77DEDF779E2EAB1908EFFE9D4FFE9D4FFE9D4FFE9D4FFE9D4FFE9D4FFE9
            D4FFE9D4FAE3D0E0D0C2D3BFB0CBB4A7BCA99DBCA99DB89D9789EBF783EDF878
            E1ED78E9F80B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA2B95C6
            C9F7F87DEDF779E2EAB1908EFFE6D0FFE6D0FFE6D0FFE6D0FFE6D0FFE6D0FFE6
            D0FFE6D0F8E1CBCBB4A7AB9A8C96877B887A70A39388BCA99D4AADD74CB2DA40
            AAD332A6D40B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0B7FBA
            62B4D79AF0F879E2EAB1908EFFE5CEFFE5CEFFE5CEFFE5CEFFE5CEFFE5CEFFE5
            CEFFE5CEFFE5CEF6EDE3DDE0DEE0D0C2F3E6DAB89D9792878B1080B70B7FBA0B
            7EB80B7FBAFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            0B7FBA62B2D56CB1CFB1908EFFE3CAFFE3CAFFE3CAFFE3CAFFE3CAFFE3CAFFE3
            CAFFE3CAFFE3CAFFEEE0FEFCFCFEF3EAC5A6A0B1908EFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FF0B7EB80A79B2B1908EFFE1C6FFE1C6FFE1C6FFE1C6FFE1C6FFE1C6FFE1
            C6FFE1C6FFE1C6E0D0C2FEF4EBC5A6A0B1908EFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB1908EFFE0C2FFE0C2FFE0C2FFE0C2FFE0C2FFE0C2FFE0
            C2FFE0C2FFE0C2E0D0C2CBB4A7B1908EFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB1908EFFDEC1FFDEC1FFDEC1FFDEC1FFDEC1FFDEC1FFDE
            C1FFDEC1FAD9BCCBB4A7B2918FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
            FF00FFFF00FFFF00FFB1908EB1908EB1908EB1908EB1908EB1908EB1908EB190
            8EB1908EB1908EB2918FFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
            00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF}
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Usuarios por modulos'
      ImageIndex = 1
      object Image1: TImage
        Left = 24
        Top = 8
        Width = 17
        Height = 17
        Picture.Data = {
          07544269746D61700E060000424D0E0600000000000036000000280000001600
          0000160000000100180000000000D8050000C40E0000C40E0000000000000000
          0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF000FCA000FCAFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C40000C4FFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0014CC0011CC000FCA000ECAFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000C40000C40000C4
          0000C4FFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF0018CF0017CD154CEC1247EB
          000FCA000ECAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0003C50000C40000
          E90000E90000C40000C4FFFFFFFFFFFF0000FFFFFF001ED1001BD11D5AED3472
          FE2C69FE1247EB000FCA000ECAFFFFFFFFFFFFFFFFFFFFFFFF0005C60003C500
          00E90000FE0000FE0000E90000C40000C4FFFFFF0000FFFFFF001FD2001ED11F
          5FEE3C7BFE3472FE2C69FE1247EB000FCA000ECAFFFFFFFFFFFF0007C60007C6
          0009E90000FE0000FE0000FE0000E90000C40000C4FFFFFF0000FFFFFFFFFFFF
          001FD2001ED11F5FEE3C7BFE3472FE2C69FE1247EB000FCA000ECA000CC80009
          C7031DEA021AFE000AFE0000FE0000E90000C40000C4FFFFFFFFFFFF0000FFFF
          FFFFFFFFFFFFFF001FD2001ED11F5FEE3C7BFE3472FE2C69FE1247EB000FCA00
          0EC9082FEA0B35FE0629FE021AFE0009E90003C50003C5FFFFFFFFFFFFFFFFFF
          0000FFFFFFFFFFFFFFFFFFFFFFFF001FD2001ED11F5FEE3C7BFE3472FE2C69FE
          154BEE1043EE164BFE1040FE0B35FE031DEA0007C60005C6FFFFFFFFFFFFFFFF
          FFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FD2001ED11F5FEE3C7B
          FE3472FE2C69FE2560FE1D56FE164BFE082FEA0009C70007C6FFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FD200
          1ED12565F13C7BFE3472FE2C69FE2560FE1043EE000EC9000CC8FFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          0023D50021D32A6CF14584FE3C7BFE3472FE2C69FE154BEE000FCA000ECAFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FF0029D80026D62D72EF5693FE4D8BFE4584FE3C7BFE3472FE2C69FE1247EB00
          0FCA000ECAFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFF002FDB002CDA357DF066A1FE5F9BFE5693FE2A6CF12565F13C7BFE3472FE
          2C69FE1247EB000FCA000ECAFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
          FFFFFF0035E00032DE3D87F278AEFE70A8FE66A1FE2D72EF0021D3001ED11F5F
          EE3C7BFE3472FE2C69FE1247EB000FCA000ECAFFFFFFFFFFFFFFFFFF0000FFFF
          FFFFFFFF003CE40038E24590F389BAFE80B4FE78AEFE357DF00026D60023D500
          1FD2001ED11F5FEE3C7BFE3472FE2C69FE1247EB000FCA000ECAFFFFFFFFFFFF
          0000FFFFFF0043E9003FE64D9AF59AC6FE91C0FE89BAFE3D87F2002CDA0029D8
          FFFFFFFFFFFF001FD2001ED11F5FEE3C7BFE3472FE2C69FE1247EB000FCA000F
          CAFFFFFF0000FFFFFF0044E90043E8509DF6A2CBFE9AC6FE4590F30032DE002F
          DBFFFFFFFFFFFFFFFFFFFFFFFF001FD2001ED11F5FEE3C7BFE3472FE154CEC00
          11CC000FCAFFFFFF0000FFFFFFFFFFFF0044E90043E8509DF64D9AF50038E200
          35E0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FD2001ED11F5FEE1D5AED
          0017CD0014CCFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFF0044E90043E8003FE6
          003CE4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF001FD2001E
          D1001BD10018CFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFF0044
          E90043E9FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFF001FD2001ED1FFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
        Stretch = True
        Visible = False
      end
      object Splitter2: TSplitter
        Left = 449
        Top = 0
        Width = 5
        Height = 524
      end
      object JvRollout1: TJvRollout
        Left = 0
        Top = 0
        Width = 449
        Height = 524
        Caption = 'Listado de modulos'
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        Placement = plLeft
        TabOrder = 0
        FAWidth = 449
        FAHeight = 170
        FCWidth = 22
        FCHeight = 22
        object SGModulos: TStringGrid
          Left = 21
          Top = 1
          Width = 427
          Height = 522
          Align = alClient
          ColCount = 3
          DefaultRowHeight = 17
          FixedCols = 0
          RowCount = 2
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
          ParentFont = False
          TabOrder = 0
          OnClick = SGModulosClick
          ColWidths = (
            17
            143
            246)
        end
      end
      object Panel4: TPanel
        Left = 454
        Top = 0
        Width = 446
        Height = 524
        Align = alClient
        TabOrder = 1
        object Label7: TLabel
          Left = 1
          Top = 1
          Width = 444
          Height = 16
          Align = alTop
          Alignment = taCenter
          Caption = 'Usuarios por modulo'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clNavy
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object SGUser: TStringGrid
          Left = 1
          Top = 17
          Width = 444
          Height = 506
          Align = alClient
          ColCount = 6
          DefaultRowHeight = 22
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goColSizing]
          TabOrder = 0
          OnDblClick = SGUserDblClick
          OnDrawCell = SGUserDrawCell
          ColWidths = (
            22
            71
            450
            159
            69
            64)
        end
      end
    end
  end
  object QryComunes: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    Left = 384
    Top = 8
  end
end
