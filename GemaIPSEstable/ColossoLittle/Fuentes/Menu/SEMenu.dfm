object Form2: TForm2
  Left = 288
  Top = 154
  ActiveControl = TreeView1
  Align = alClient
  Caption = 'Menu de Ingreso'
  ClientHeight = 505
  ClientWidth = 793
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnActivate = FormActivate
  OnClose = FormClose
  ExplicitWidth = 320
  ExplicitHeight = 240
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 793
    Height = 505
    Align = alClient
    TabOrder = 0
    object StatusBar1: TStatusBar
      Left = 1
      Top = 473
      Width = 791
      Height = 31
      Panels = <
        item
          Alignment = taCenter
          Width = 300
        end
        item
          Alignment = taCenter
          Width = 400
        end
        item
          Alignment = taCenter
          Width = 200
        end
        item
          Alignment = taCenter
          Width = 250
        end>
    end
    object Panel3: TPanel
      Left = 1
      Top = 1
      Width = 791
      Height = 472
      Align = alClient
      TabOrder = 1
      ExplicitTop = 2
      object TreeView1: TTreeView
        Left = 1
        Top = 161
        Width = 789
        Height = 254
        Align = alClient
        AutoExpand = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clHotLight
        Font.Height = -16
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Indent = 20
        ParentFont = False
        ReadOnly = True
        TabOrder = 0
        OnDblClick = TreeView1DblClick
        OnKeyPress = TreeView1KeyPress
        ExplicitTop = 160
        ExplicitHeight = 253
      end
      object Panel4: TPanel
        Left = 1
        Top = 1
        Width = 789
        Height = 40
        Align = alTop
        Caption = 'MENU PRINCIPAL'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold, fsItalic]
        ParentFont = False
        TabOrder = 1
        ExplicitWidth = 413
      end
      object Panel5: TPanel
        Left = 1
        Top = 415
        Width = 789
        Height = 56
        Align = alBottom
        TabOrder = 2
        object Panel6: TPanel
          Left = 1
          Top = 20
          Width = 787
          Height = 35
          Align = alBottom
          TabOrder = 0
          ExplicitTop = 21
          ExplicitWidth = 411
          object DTPaCTUAL: TDateTimePicker
            Left = 320
            Top = 7
            Width = 186
            Height = 21
            Date = 40020.539516597220000000
            Time = 40020.539516597220000000
            TabOrder = 0
            Visible = False
          end
          object chk: TCheckBox
            Left = 4
            Top = 6
            Width = 162
            Height = 17
            Caption = 'Trabajar en Prueba'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -16
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
        end
        object Panel10: TPanel
          Left = 1
          Top = 1
          Width = 787
          Height = 19
          Align = alTop
          Caption = 'Mensajes (Click aqui para abrir...)'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          OnClick = Panel10Click
        end
        object PageControl1: TPageControl
          Left = 1
          Top = 20
          Width = 787
          Height = 0
          ActivePage = TabSheet1
          Align = alClient
          TabOrder = 2
          ExplicitTop = 12
          ExplicitHeight = 10
          object TabSheet1: TTabSheet
            Caption = 'Mensajes recibidos'
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 403
            object SGRecibidos: TStringGrid
              Left = 0
              Top = 0
              Width = 779
              Height = 0
              Align = alClient
              ColCount = 3
              DefaultRowHeight = 17
              FixedCols = 0
              RowCount = 2
              Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
              PopupMenu = PopupMenu1
              TabOrder = 0
              OnDblClick = SGRecibidosDblClick
              OnDrawCell = SGRecibidosDrawCell
              ExplicitHeight = 56
              ColWidths = (
                317
                110
                406)
            end
            object Panel12: TPanel
              Left = 0
              Top = -32
              Width = 779
              Height = 35
              Align = alBottom
              TabOrder = 1
              ExplicitTop = -35
              ExplicitWidth = 403
              object RB1: TRadioButton
                Left = 40
                Top = 11
                Width = 154
                Height = 17
                Caption = 'Actualizar automaticamente'
                Checked = True
                TabOrder = 0
                TabStop = True
                OnClick = RB1Click
              end
              object RB2: TRadioButton
                Left = 233
                Top = 11
                Width = 134
                Height = 17
                Caption = 'Actualizar manualmente'
                TabOrder = 1
                OnClick = RB2Click
              end
              object BtnActualizar: TBitBtn
                Left = 408
                Top = 4
                Width = 158
                Height = 30
                Caption = 'Actualizar'
                Enabled = False
                TabOrder = 2
                OnClick = BtnActualizarClick
              end
              object BitBtn3: TBitBtn
                Left = 576
                Top = 4
                Width = 158
                Height = 30
                Caption = 'Borrar Mensaje'
                TabOrder = 3
                OnClick = BitBtn3Click
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'Enviar mensajes'
            ImageIndex = 1
            OnHide = TabSheet2Hide
            OnShow = TabSheet2Show
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 403
            object PnlEnvioMensajes: TPanel
              Left = 0
              Top = 0
              Width = 779
              Height = 0
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 403
              object Splitter1: TSplitter
                Left = 438
                Top = 1
                Width = 4
                Height = 1
                ExplicitHeight = 313
              end
              object Panel13: TPanel
                Left = 1
                Top = 1
                Width = 437
                Height = 1
                Align = alLeft
                TabOrder = 0
                ExplicitHeight = 213
                object Label3: TLabel
                  Left = 1
                  Top = 1
                  Width = 435
                  Height = 13
                  Align = alTop
                  Alignment = taCenter
                  Caption = 'Para'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                  ExplicitWidth = 27
                end
                object SGPara: TStringGrid
                  Left = 1
                  Top = 75
                  Width = 435
                  Height = 7
                  Align = alClient
                  DefaultRowHeight = 17
                  FixedCols = 0
                  RowCount = 2
                  Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRowSelect]
                  TabOrder = 0
                  OnDblClick = SGParaDblClick
                  OnDrawCell = SGParaDrawCell
                  ExplicitHeight = 137
                  ColWidths = (
                    18
                    53
                    133
                    128
                    249)
                end
                object PCPara: TPageControl
                  Left = 1
                  Top = 14
                  Width = 435
                  Height = 61
                  ActivePage = TabSheet3
                  Align = alTop
                  Style = tsFlatButtons
                  TabOrder = 1
                  object TabSheet3: TTabSheet
                    Caption = 'Por ID'
                    ExplicitLeft = 0
                    ExplicitTop = 0
                    ExplicitWidth = 0
                    ExplicitHeight = 0
                    object Label6: TLabel
                      Left = 8
                      Top = 8
                      Width = 68
                      Height = 13
                      Caption = 'ID del usuario:'
                    end
                    object ImgBono: TImage
                      Left = 301
                      Top = 8
                      Width = 18
                      Height = 17
                      AutoSize = True
                      Picture.Data = {
                        07544269746D6170EE030000424DEE0300000000000036000000280000001200
                        0000110000000100180000000000B80300000000000000000000000000000000
                        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FF00
                        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                        0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000F1F3F3F3F5F5F3F5F5F8
                        F9F9F3F5F5F3F5F5F3F5F5F3F5F5F3F5F5F3F5F5F3F5F5FF0000FFFFFFFFFFFF
                        0000FFFFFFFFFFFFFFFFFFFF0000EFF1F1F3F5F5F9FAFAF6F7F7F3F5F5F3F5F5
                        F3F5F5F3F5F5F3F5F5F3F5F5F3F5F5FF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                        FFFFFFFF0000DDE2E2EFF1F1F3F5F5F3F5F558B000F8F9F9F3F5F5F3F5F5F3F5
                        F5F3F5F5F3F5F5FF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000E9EC
                        ECDDE2E2EFF1F158B00058B00058B000F8F9F9F3F5F5F3F5F5F3F5F5F3F5F5FF
                        0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000DDE2E2E9ECEC58B00058
                        B00058B00058B00058B000F8F9F9F3F5F5F3F5F5F3F5F5FF0000FFFFFFFFFFFF
                        0000FFFFFFFFFFFFFFFFFFFF0000E3E7E7DDE2E258B00058B000EFF1F158B000
                        58B00058B000F8F9F9F9FAFAF3F5F5FF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                        FFFFFFFF0000E1E5E5DDE2E258B000DDE2E2ECEFEFEFF1F158B00058B00058B0
                        00F8F9F9F9FAFAFF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000DFE3
                        E3E1E5E5E3E7E7DDE2E2DDE2E2DDE2E2EFF1F158B00058B000F6F7F7F8F9F9FF
                        0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000DDE2E2DFE3E3DDE2E2DD
                        E2E2E6EAEAE9ECECDDE2E2EFF1F158B000F3F5F5F6F7F7FF0000FFFFFFFFFFFF
                        0000FFFFFFFFFFFFFFFFFFFF0000DDE2E2DDE2E2DFE3E3E1E5E5E3E7E7E6EAEA
                        DDE2E2F3F5F5EFF1F1F1F3F3F3F5F5FF0000FFFFFFFFFFFF0000FFFFFFFFFFFF
                        FFFFFFFF0000DDE2E2DDE2E2DDE2E2DFE3E3E1E5E5E3E7E7E6EAEAE9ECECECEF
                        EFEFF1F1F1F3F3FF0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFF0000FF00
                        00FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF
                        0000FFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        0000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000}
                      Transparent = True
                      Visible = False
                    end
                    object EditID: TEdit
                      Left = 80
                      Top = 4
                      Width = 121
                      Height = 21
                      CharCase = ecUpperCase
                      TabOrder = 0
                    end
                    object BtnBuscar1: TBitBtn
                      Left = 215
                      Top = 4
                      Width = 78
                      Height = 23
                      Caption = 'Buscar'
                      TabOrder = 1
                      OnClick = BtnBuscar1Click
                    end
                    object CheckBox1: TCheckBox
                      Left = 323
                      Top = 8
                      Width = 145
                      Height = 17
                      Caption = 'Enviar mensaje a todos.'
                      TabOrder = 2
                    end
                  end
                  object TabSheet4: TTabSheet
                    Caption = 'Por primer apellido'
                    ImageIndex = 1
                    ExplicitLeft = 0
                    ExplicitTop = 0
                    ExplicitWidth = 0
                    ExplicitHeight = 0
                    object Label7: TLabel
                      Left = 0
                      Top = 11
                      Width = 71
                      Height = 13
                      Caption = 'Primer apellido:'
                    end
                    object EditPriA: TEdit
                      Left = 75
                      Top = 7
                      Width = 254
                      Height = 21
                      CharCase = ecUpperCase
                      TabOrder = 0
                    end
                    object BtnBuscar2: TBitBtn
                      Left = 335
                      Top = 5
                      Width = 60
                      Height = 25
                      Caption = 'Buscar'
                      TabOrder = 1
                      OnClick = BtnBuscar2Click
                    end
                  end
                  object TabSheet6: TTabSheet
                    Caption = 'Por Segundo apellido'
                    ImageIndex = 2
                    ExplicitLeft = 0
                    ExplicitTop = 0
                    ExplicitWidth = 0
                    ExplicitHeight = 0
                    object Label9: TLabel
                      Left = 0
                      Top = 11
                      Width = 85
                      Height = 13
                      Caption = 'Segundo apellido:'
                    end
                    object EditSegA: TEdit
                      Left = 89
                      Top = 7
                      Width = 254
                      Height = 21
                      CharCase = ecUpperCase
                      TabOrder = 0
                    end
                    object BitBtn1: TBitBtn
                      Left = 347
                      Top = 5
                      Width = 60
                      Height = 25
                      Caption = 'Buscar'
                      TabOrder = 1
                      OnClick = BitBtn1Click
                    end
                  end
                  object TabSheet7: TTabSheet
                    Caption = 'Por nombres'
                    ImageIndex = 3
                    ExplicitLeft = 0
                    ExplicitTop = 0
                    ExplicitWidth = 0
                    ExplicitHeight = 0
                    object Label10: TLabel
                      Left = 6
                      Top = 11
                      Width = 45
                      Height = 13
                      Caption = 'Nombres:'
                    end
                    object EditNombres: TEdit
                      Left = 57
                      Top = 7
                      Width = 272
                      Height = 21
                      CharCase = ecUpperCase
                      TabOrder = 0
                    end
                    object BitBtn2: TBitBtn
                      Left = 335
                      Top = 5
                      Width = 60
                      Height = 25
                      Caption = 'Buscar'
                      TabOrder = 1
                      OnClick = BitBtn2Click
                    end
                  end
                end
              end
              object PnlMensaje: TPanel
                Left = 442
                Top = 1
                Width = 336
                Height = 1
                Align = alClient
                TabOrder = 1
                ExplicitWidth = 14
                ExplicitHeight = 213
                object Label5: TLabel
                  Left = 4
                  Top = 9
                  Width = 31
                  Height = 13
                  Caption = 'Para:'
                  Font.Charset = DEFAULT_CHARSET
                  Font.Color = clWindowText
                  Font.Height = -11
                  Font.Name = 'MS Sans Serif'
                  Font.Style = [fsBold]
                  ParentFont = False
                end
                object EditPara: TEdit
                  Left = 80
                  Top = 5
                  Width = 326
                  Height = 21
                  CharCase = ecUpperCase
                  ReadOnly = True
                  TabOrder = 0
                end
                object Panel11: TPanel
                  Left = 1
                  Top = -38
                  Width = 334
                  Height = 38
                  Align = alBottom
                  TabOrder = 1
                  ExplicitTop = 174
                  ExplicitWidth = 12
                  object Label8: TLabel
                    Left = 8
                    Top = 12
                    Width = 71
                    Height = 13
                    Caption = 'Importancia:'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clWindowText
                    Font.Height = -11
                    Font.Name = 'MS Sans Serif'
                    Font.Style = [fsBold]
                    ParentFont = False
                  end
                  object BtnEnviar: TBitBtn
                    Left = 189
                    Top = 4
                    Width = 102
                    Height = 29
                    Caption = 'Enviar'
                    TabOrder = 0
                    OnClick = BtnEnviarClick
                  end
                  object BtnCancelar: TBitBtn
                    Left = 296
                    Top = 4
                    Width = 102
                    Height = 29
                    Caption = 'Cancelar'
                    TabOrder = 1
                    OnClick = BtnCancelarClick
                  end
                  object CBImportancia: TComboBox
                    Left = 80
                    Top = 8
                    Width = 89
                    Height = 21
                    Style = csDropDownList
                    ItemIndex = 2
                    TabOrder = 2
                    Text = 'Baja'
                    Items.Strings = (
                      'Alta'
                      'Media'
                      'Baja')
                  end
                end
                object MmMensje: TMemo
                  Left = 1
                  Top = -217
                  Width = 334
                  Height = 179
                  Align = alBottom
                  TabOrder = 2
                  ExplicitTop = -5
                  ExplicitWidth = 12
                end
                object EditIDPara: TEdit
                  Left = 34
                  Top = 5
                  Width = 43
                  Height = 21
                  CharCase = ecUpperCase
                  ReadOnly = True
                  TabOrder = 3
                end
              end
            end
          end
          object TabSheet5: TTabSheet
            Caption = 'TabSheet5'
            ImageIndex = 2
            TabVisible = False
            ExplicitLeft = 0
            ExplicitTop = 0
            ExplicitWidth = 403
            object MmVerMensajes: TMemo
              Left = 0
              Top = 0
              Width = 779
              Height = 3
              Align = alClient
              TabOrder = 0
              ExplicitWidth = 403
              ExplicitHeight = 0
            end
          end
        end
      end
      object DBImage1: TDBImage
        Left = 1
        Top = 41
        Width = 789
        Height = 120
        Align = alTop
        DataField = 'Logo'
        DataSource = DataModule1.DataSource1
        TabOrder = 3
        ExplicitWidth = 413
      end
    end
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'emp'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 20
        Size = 20
        Value = ''
      end
      item
        Name = 'ares'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 20
        Size = 20
        Value = ''
      end
      item
        Name = 'carg'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 20
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      
        'SELECT SEProgramas.Descripcion_Programa, SEProgramas.Programa, S' +
        'EProgramas.Submenu, SEProgramas.Camino'
      'FROM   SEProgramas'
      'WHERE  SEProgramas.Empresa = :emp AND'
      #9'SEProgramas.Area    = :ares AND'
      #9'SEProgramas.Cargo  = :carg'
      'ORDER BY SEProgramas.Submenu , SEProgramas.Programa')
    Left = 41
    Top = 72
  end
  object MainMenu1: TMainMenu
    Left = 596
    Top = 4
    object Archivo1: TMenuItem
      Caption = 'Inicio'
      object CambiarPassword1: TMenuItem
        Caption = 'Cambiar Password'
        OnClick = CambiarPassword1Click
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object Salir1: TMenuItem
        Caption = 'Salir'
        OnClick = Salir1Click
      end
    end
    object Salir2: TMenuItem
      Caption = 'Ayuda'
      object AyudaMenu1: TMenuItem
        Caption = 'Manual del Sistema'
        OnClick = AyudaMenu1Click
      end
      object N2: TMenuItem
        Caption = '-'
      end
      object VideodelSistema1: TMenuItem
        Caption = 'Video del Sistema'
      end
      object CatalogodePrateinco1: TMenuItem
        Caption = 'Catalogo de Prateinco'
      end
    end
  end
  object ADOQuery2: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'Prg'
        Attributes = [paNullable]
        DataType = ftString
        Precision = 20
        Size = 20
        Value = ''
      end>
    SQL.Strings = (
      'SELECT Descripcion, Programa, Submenu, Camino'
      'FROM   SEProgramasTemp'
      'WHERE  Submenu='#39'0'#39' '
      'ORDER BY Submenu, Programa')
    Left = 41
    Top = 17
  end
  object ADOQueryMensajes: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <
      item
        Name = 'emp'
        DataType = ftString
        NumericScale = 255
        Precision = 255
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      
        'SELECT id_de,left(rtrim(nombres)+'#39' '#39'+rtrim(primer_apellido),30) ' +
        'as nom,fecha,mensaje,left(Ciudad,10) as Ciudad'
      
        'FROM  SEMensajes_a_Usuarios,SEPersonas,SEEmpleados,SEEmpresas,SE' +
        'Areas'
      'WHERE SEMensajes_a_Usuarios.id_de = SEPersonas.Id AND'
      '      SEPersonas.Id = SEEmpleados.Id AND '
      '      SEEmpleados.Empresa_Trabaja = SEEmpresas.Codigo AND '
      '      (SEEmpleados.Empresa_Trabaja = SEAreas.Empresa AND'
      '      SEEmpleados.Area_TRabaja = SEAreas.Codigo) AND'
      '      month(fecha) = month(getdate()) AND'
      #9'  year(fecha)  = year (getdate())  AND SEEmpresas.Codigo = :emp'
      '    '
      'ORDER BY fecha DESC')
    Left = 265
    Top = 257
  end
  object DataSource2: TDataSource
    DataSet = ADOQueryMensajes
    Left = 363
    Top = 258
  end
  object Timer1: TTimer
    Enabled = False
    Interval = 100000
    OnTimer = Timer1Timer
    Left = 400
    Top = 90
  end
  object QryGeneralComunes: TADOQuery
    Connection = DataModule1.ADOComunes
    Parameters = <>
    Left = 153
    Top = 73
  end
  object PopupMenu1: TPopupMenu
    Left = 321
    Top = 97
    object Marcarcomoledo1: TMenuItem
      Caption = 'Marcar como le'#237'do'
      OnClick = Marcarcomoledo1Click
    end
  end
  object Timer2: TTimer
    Enabled = False
    Interval = 0
    OnTimer = Timer2Timer
    Left = 249
    Top = 89
  end
  object ADOQTmp: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'SELECT SEEmpresas.Descripcion as D_1,SEAreas.Descripcion as D_2,' +
        'SECargos.Descripcion as D_3,*'
      'FROM SEEmpleados,SEPersonas,SEEmpresas,SEAreas,SECargos'
      'WHERE SEEmpleados.Id = SEPersonas.Id AND'
      
        '               SEEmpleados.Empresa_Trabaja = SEEmpresas.Codigo A' +
        'ND'
      '               SEEmpleados.Area_Trabaja = SEAreas.Codigo AND'
      '               SEEmpleados.Empresa_Trabaja = SEAreas.Empresa AND'
      '               SEEmpleados.Cargo_Trabaja = SECargos.Codigo AND'
      '               SEEmpleados.Area_Trabaja = SECargos.Area AND'
      '               SEEmpleados.Empresa_Trabaja = SECargos.Empresa '
      '')
    Left = 264
    Top = 198
  end
end
