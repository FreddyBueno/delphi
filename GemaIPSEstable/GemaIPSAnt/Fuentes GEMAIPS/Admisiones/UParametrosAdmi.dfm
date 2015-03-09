object ParametrosAdm: TParametrosAdm
  Left = 388
  Top = 187
  BorderStyle = bsDialog
  Caption = 'Parametros de Admisiones'
  ClientHeight = 311
  ClientWidth = 573
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
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 573
    Height = 311
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Citas M'#233'dicas'
      object Label1: TLabel
        Left = 16
        Top = 24
        Width = 79
        Height = 13
        Caption = 'Minutos por Cita:'
      end
      object Label3: TLabel
        Left = 112
        Top = 48
        Width = 6
        Height = 13
        Caption = '0'
      end
      object Label4: TLabel
        Left = 208
        Top = 48
        Width = 12
        Height = 13
        Caption = '15'
      end
      object Label5: TLabel
        Left = 296
        Top = 48
        Width = 12
        Height = 13
        Caption = '30'
      end
      object Label6: TLabel
        Left = 392
        Top = 48
        Width = 12
        Height = 13
        Caption = '45'
      end
      object Label7: TLabel
        Left = 488
        Top = 48
        Width = 12
        Height = 13
        Caption = '60'
      end
      object TrackBar1: TTrackBar
        Left = 104
        Top = 16
        Width = 401
        Height = 33
        Max = 4
        Position = 2
        SelEnd = 60
        TabOrder = 0
        OnExit = TrackBar1Exit
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Admisi'#243'n'
      ImageIndex = 1
      object Label2: TLabel
        Left = 8
        Top = 8
        Width = 218
        Height = 13
        Caption = 'Generar Solicitudes de Cargo en la Admision?:'
      end
      object Label8: TLabel
        Left = 8
        Top = 45
        Width = 144
        Height = 13
        Caption = 'Bloquear Fecha de Admisi'#243'n?:'
      end
      object Label9: TLabel
        Left = 8
        Top = 83
        Width = 146
        Height = 13
        Caption = 'Diagnostico en Admisi'#243'n o HC:'
      end
      object Label10: TLabel
        Left = 8
        Top = 120
        Width = 154
        Height = 13
        Caption = 'Pedir Egreso en Consultas o HC:'
      end
      object DBMemo1: TDBMemo
        Left = 0
        Top = 144
        Width = 565
        Height = 139
        Align = alBottom
        DataField = 'Texto_Factura'
        DataSource = DataSource1
        TabOrder = 0
      end
      object DBComboBox1: TDBComboBox
        Left = 248
        Top = 8
        Width = 57
        Height = 21
        DataField = 'Solicitudes'
        DataSource = DataSource1
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 1
      end
      object DBComboBox2: TDBComboBox
        Left = 248
        Top = 40
        Width = 57
        Height = 21
        DataField = 'Bloquea_Fecha_Admi'
        DataSource = DataSource1
        Items.Strings = (
          'Si'
          'No')
        TabOrder = 2
      end
      object DBComboBox3: TDBComboBox
        Left = 248
        Top = 80
        Width = 145
        Height = 21
        DataField = 'DiagnosticoAdmHC'
        DataSource = DataSource1
        Items.Strings = (
          'Admision'
          'Historia Clinica')
        TabOrder = 3
      end
      object DBComboBox4: TDBComboBox
        Left = 248
        Top = 117
        Width = 145
        Height = 21
        DataField = 'EgresoConsHC'
        DataSource = DataSource1
        Items.Strings = (
          'Admision'
          'Historia Clinica')
        TabOrder = 4
      end
    end
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    TableName = 'SAParametros_de_Admisiones'
    Left = 488
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 428
  end
  object ADOTable2: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'SAParametros_de_Citas'
    Left = 344
  end
end
