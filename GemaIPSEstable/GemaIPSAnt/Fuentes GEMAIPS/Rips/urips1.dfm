object FormRIPS: TFormRIPS
  Left = 290
  Top = 111
  BorderStyle = bsSingle
  Caption = 'Software de Visualizacion de RIPS - Proyecto SOFTEPS'
  ClientHeight = 403
  ClientWidth = 758
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
  object PageControl1: TPageControl
    Left = 0
    Top = 91
    Width = 758
    Height = 312
    ActivePage = Archivo_AF
    Align = alClient
    TabOrder = 2
    object Archivo_AF: TTabSheet
      Caption = 'Archivo_AF'
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 750
        Height = 284
        Align = alClient
        TabOrder = 0
        object StringGrid1: TStringGrid
          Left = 1
          Top = 1
          Width = 748
          Height = 282
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_US: TTabSheet
      Caption = 'Archivo_US'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid2: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_AD: TTabSheet
      Caption = 'Archivo_AD'
      ImageIndex = 2
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid3: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_AC: TTabSheet
      Caption = 'Archivo_AC'
      ImageIndex = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid4: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 258
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
        object StatusBar1: TStatusBar
          Left = 1
          Top = 259
          Width = 942
          Height = 19
          Panels = <
            item
              Width = 300
            end
            item
              Width = 50
            end
            item
              Width = 50
            end
            item
              Width = 50
            end>
        end
      end
    end
    object Archivo_AP: TTabSheet
      Caption = 'Archivo_AP'
      ImageIndex = 4
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid5: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_AH: TTabSheet
      Caption = 'Archivo_AH'
      Enabled = False
      ImageIndex = 5
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid6: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          RowCount = 2
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_AU: TTabSheet
      Caption = 'Archivo_AU'
      ImageIndex = 6
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid7: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_AN: TTabSheet
      Caption = 'Archivo_AN'
      ImageIndex = 7
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid8: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_AM: TTabSheet
      Caption = 'Archivo_AM'
      ImageIndex = 8
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid9: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
    object Archivo_AT: TTabSheet
      Caption = 'Archivo_AT'
      ImageIndex = 9
      object TPanel
        Left = 0
        Top = 0
        Width = 944
        Height = 279
        Align = alClient
        TabOrder = 0
        object StringGrid10: TStringGrid
          Left = 1
          Top = 1
          Width = 942
          Height = 277
          Align = alClient
          DefaultRowHeight = 16
          FixedCols = 0
          Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
          TabOrder = 0
        end
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 758
    Height = 91
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 8
      Top = 52
      Width = 100
      Height = 13
      Caption = 'N'#250'mero Radicaci'#243'n :'
      Visible = False
    end
    object Button3: TButton
      Left = 248
      Top = 8
      Width = 75
      Height = 25
      Caption = '&Salir'
      TabOrder = 0
      OnClick = Button3Click
    end
    object Button4: TButton
      Left = 136
      Top = 8
      Width = 105
      Height = 25
      Caption = '&Grabar Informacion'
      TabOrder = 1
      OnClick = Button4Click
    end
    object Edit1: TEdit
      Left = 112
      Top = 48
      Width = 121
      Height = 21
      TabOrder = 2
      Visible = False
      OnChange = Edit1Change
    end
    object Animate1: TAnimate
      Left = 440
      Top = 8
      Width = 308
      Height = 73
      FileName = '\\Ana_sp_usuar_07\publico\RIPS\FILECOPY.AVI'
      StopFrame = 17
    end
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 123
    Height = 25
    Hint = 'Abrir Archivo de Control de los Archivos a Visualizar'
    Caption = '&Archivo de control'
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
    OnClick = Button1Click
  end
  object OpenDialog1: TOpenDialog
    Filter = 'CT*.txt|ct*.txt'
    Left = 576
    Top = 8
  end
  object Database1: TDatabase
    AliasName = 'datamec'
    DatabaseName = 'datosmec'
    LoginPrompt = False
    Params.Strings = (
      'DATABASE NAME=datamec'
      'SERVER NAME=uni_sinue'
      'USER NAME=o_castellanos'
      'OPEN MODE=READ/WRITE'
      'SCHEMA CACHE SIZE=8'
      'BLOB EDIT LOGGING='
      'LANGDRIVER='
      'SQLQRYMODE='
      'SQLPASSTHRU MODE=SHARED AUTOCOMMIT'
      'DATE MODE=0'
      'SCHEMA CACHE TIME=-1'
      'MAX QUERY TIME=300'
      'MAX ROWS=-1'
      'BATCH COUNT=200'
      'ENABLE SCHEMA CACHE=FALSE'
      'SCHEMA CACHE DIR='
      'HOST NAME='
      'APPLICATION NAME='
      'NATIONAL LANG NAME='
      'ENABLE BCD=FALSE'
      'TDS PACKET SIZE=512'
      'BLOBS TO CACHE=64'
      'BLOB SIZE=32'
      'CS CURSOR ROWS=1'
      'PASSWORD=usuario')
    SessionName = 'Default'
    Left = 24
    Top = 316
  end
  object tableAD: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.decripcion_servicio'
    Left = 24
    Top = 344
    object tableADcod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object tableADcod_concepto: TStringField
      FieldName = 'cod_concepto'
      FixedChar = True
      Size = 4
    end
    object tableADnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 22
    end
    object tableADcantidad: TStringField
      FieldName = 'cantidad'
      FixedChar = True
      Size = 12
    end
    object tableADval_unitario: TStringField
      FieldName = 'val_unitario'
      FixedChar = True
      Size = 16
    end
    object tableADval_concepto: TStringField
      FieldName = 'val_concepto'
      FixedChar = True
      Size = 16
    end
    object tableADnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object tableADcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object DataSource1: TDataSource
    DataSet = tableAD
    Left = 88
    Top = 318
  end
  object TableAF: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.transaccion_servicios'
    Left = 52
    Top = 346
    object TableAFcod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object TableAFcod_entidad: TStringField
      FieldName = 'cod_entidad'
      FixedChar = True
      Size = 7
    end
    object TableAFcod_contrato: TStringField
      FieldName = 'cod_contrato'
      FixedChar = True
      Size = 16
    end
    object TableAFfec_factura: TStringField
      FieldName = 'fec_factura'
      FixedChar = True
      Size = 12
    end
    object TableAFraz_social: TStringField
      FieldName = 'raz_social'
      FixedChar = True
      Size = 61
    end
    object TableAFnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableAFfec_inicio: TStringField
      FieldName = 'fec_inicio'
      FixedChar = True
      Size = 12
    end
    object TableAFnom_entidad: TStringField
      FieldName = 'nom_entidad'
      FixedChar = True
      Size = 31
    end
    object TableAFnum_documento_pres: TStringField
      FieldName = 'num_documento_pres'
      FixedChar = True
      Size = 21
    end
    object TableAFtip_documento_pres: TStringField
      FieldName = 'tip_documento_pres'
      FixedChar = True
      Size = 3
    end
    object TableAFfec_final: TStringField
      FieldName = 'fec_final'
      FixedChar = True
      Size = 12
    end
    object TableAFval_copago: TStringField
      FieldName = 'val_copago'
      FixedChar = True
      Size = 16
    end
    object TableAFval_comision: TStringField
      FieldName = 'val_comision'
      FixedChar = True
      Size = 16
    end
    object TableAFval_descuento: TStringField
      FieldName = 'val_descuento'
      FixedChar = True
      Size = 16
    end
    object TableAFval_pago_enti: TStringField
      FieldName = 'val_pago_enti'
      FixedChar = True
      Size = 16
    end
    object TableAFplan_beneficios: TStringField
      FieldName = 'plan_beneficios'
      FixedChar = True
      Size = 31
    end
    object TableAFnum_poliza: TStringField
      FieldName = 'num_poliza'
      FixedChar = True
      Size = 11
    end
    object TableAFnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableAFcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableUS: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_usuario'
    Left = 80
    Top = 344
    object TableUStip_documento_usu: TStringField
      FieldName = 'tip_documento_usu'
      FixedChar = True
      Size = 3
    end
    object TableUSnum_documento_usu: TStringField
      FieldName = 'num_documento_usu'
      Size = 22
    end
    object TableUScod_entidad: TStringField
      FieldName = 'cod_entidad'
      FixedChar = True
      Size = 8
    end
    object TableUScod_departamento: TStringField
      FieldName = 'cod_departamento'
      FixedChar = True
      Size = 3
    end
    object TableUScod_municipio: TStringField
      FieldName = 'cod_municipio'
      Required = True
      FixedChar = True
      Size = 5
    end
    object TableUSedad: TStringField
      FieldName = 'edad'
      Required = True
      FixedChar = True
      Size = 12
    end
    object TableUSseg_nombre: TStringField
      FieldName = 'seg_nombre'
      FixedChar = True
      Size = 22
    end
    object TableUSpri_apellido: TStringField
      FieldName = 'pri_apellido'
      FixedChar = True
      Size = 32
    end
    object TableUSpri_nombre: TStringField
      FieldName = 'pri_nombre'
      FixedChar = True
      Size = 21
    end
    object TableUSseg_apellido: TStringField
      FieldName = 'seg_apellido'
      FixedChar = True
      Size = 31
    end
    object TableUScod_sexo: TStringField
      FieldName = 'cod_sexo'
      FixedChar = True
      Size = 2
    end
    object TableUStip_usuario: TStringField
      FieldName = 'tip_usuario'
      FixedChar = True
      Size = 11
    end
    object TableUSuni_medida_edad: TStringField
      FieldName = 'uni_medida_edad'
      FixedChar = True
      Size = 12
    end
    object TableUScod_zona: TStringField
      FieldName = 'cod_zona'
      FixedChar = True
      Size = 3
    end
    object TableUSnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableUScod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableAC: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_consulta'
    Left = 112
    Top = 344
    object TableACtipo_documento_usu: TStringField
      FieldName = 'tipo_documento_usu'
      FixedChar = True
      Size = 3
    end
    object TableACnum_documento_usu: TStringField
      FieldName = 'num_documento_usu'
      Size = 22
    end
    object TableACcod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object TableACfin_cons: TStringField
      FieldName = 'fin_cons'
      FixedChar = True
      Size = 12
    end
    object TableACcaus_externa: TStringField
      FieldName = 'caus_externa'
      FixedChar = True
      Size = 3
    end
    object TableACcod_diagnostico_ppal: TStringField
      FieldName = 'cod_diagnostico_ppal'
      FixedChar = True
      Size = 5
    end
    object TableACcod_diagnostico_re1: TStringField
      FieldName = 'cod_diagnostico_re1'
      FixedChar = True
      Size = 5
    end
    object TableACcod_diagnostico_re2: TStringField
      FieldName = 'cod_diagnostico_re2'
      FixedChar = True
      Size = 5
    end
    object TableACcod_diagnostico_re3: TStringField
      FieldName = 'cod_diagnostico_re3'
      FixedChar = True
      Size = 5
    end
    object TableACtipo_diagnostico_ppal: TStringField
      FieldName = 'tipo_diagnostico_ppal'
      FixedChar = True
      Size = 12
    end
    object TableACval_consulta: TStringField
      FieldName = 'val_consulta'
      FixedChar = True
      Size = 12
    end
    object TableACval_cuota_mod: TStringField
      FieldName = 'val_cuota_mod'
      FixedChar = True
      Size = 12
    end
    object TableACval_pagar: TStringField
      FieldName = 'val_pagar'
      FixedChar = True
      Size = 12
    end
    object TableACnum_autorizacion: TStringField
      FieldName = 'num_autorizacion'
      FixedChar = True
      Size = 16
    end
    object TableACnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableACfec_consulta: TStringField
      FieldName = 'fec_consulta'
      FixedChar = True
      Size = 12
    end
    object TableACcod_consulta: TStringField
      FieldName = 'cod_consulta'
      FixedChar = True
      Size = 12
    end
    object TableACnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableACcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableAH: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archiivo_hospitalizacion'
    Left = 176
    Top = 344
    object TableAHtipo_documento_usu: TStringField
      FieldName = 'tipo_documento_usu'
      FixedChar = True
      Size = 3
    end
    object TableAHnum_documento_usu: TStringField
      FieldName = 'num_documento_usu'
      Size = 18
    end
    object TableAHcod_prestador: TStringField
      FieldName = 'cod_prestador'
      Size = 18
    end
    object TableAHnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableAHvia_ingreso: TStringField
      FieldName = 'via_ingreso'
      FixedChar = True
      Size = 10
    end
    object TableAHcaus_externa: TStringField
      FieldName = 'caus_externa'
      FixedChar = True
      Size = 3
    end
    object TableAHcod_diagnostico_ppal_ing: TStringField
      FieldName = 'cod_diagnostico_ppal_ing'
      FixedChar = True
      Size = 5
    end
    object TableAHcod_diagnostico_ppal_egr: TStringField
      FieldName = 'cod_diagnostico_ppal_egr'
      FixedChar = True
      Size = 5
    end
    object TableAHcod_diag_nostico_egr1: TStringField
      FieldName = 'cod_diag_nostico_egr1'
      FixedChar = True
      Size = 5
    end
    object TableAHcod_diagnostico_egr2: TStringField
      FieldName = 'cod_diagnostico_egr2'
      FixedChar = True
      Size = 5
    end
    object TableAHcod_diagnostico_egr3: TStringField
      FieldName = 'cod_diagnostico_egr3'
      FixedChar = True
      Size = 5
    end
    object TableAHcod_diagnostico_comp: TStringField
      FieldName = 'cod_diagnostico_comp'
      FixedChar = True
      Size = 5
    end
    object TableAHestado_salida: TStringField
      FieldName = 'estado_salida'
      FixedChar = True
      Size = 6
    end
    object TableAHcod_diagnostico_muerte: TStringField
      FieldName = 'cod_diagnostico_muerte'
      FixedChar = True
      Size = 5
    end
    object TableAHfec_egreso_inst: TStringField
      FieldName = 'fec_egreso_inst'
      FixedChar = True
      Size = 15
    end
    object TableAHnum_autorizacion: TStringField
      FieldName = 'num_autorizacion'
      FixedChar = True
      Size = 16
    end
    object TableAHfec_ingreso_inst: TStringField
      FieldName = 'fec_ingreso_inst'
      FixedChar = True
      Size = 15
    end
    object TableAHhor_ingreso: TStringField
      FieldName = 'hor_ingreso'
      Size = 6
    end
    object TableAHhor_egreso: TStringField
      FieldName = 'hor_egreso'
      Size = 6
    end
    object TableAHnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableAHcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableAM: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_medicamentos'
    Left = 272
    Top = 344
    object TableAMtip_documento_usu: TStringField
      FieldName = 'tip_documento_usu'
      Required = True
      FixedChar = True
      Size = 3
    end
    object TableAMnum_documento_usu: TStringField
      FieldName = 'num_documento_usu'
      Required = True
      Size = 22
    end
    object TableAMcod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object TableAMcod_medicamento: TStringField
      FieldName = 'cod_medicamento'
      FixedChar = True
      Size = 21
    end
    object TableAMconcen_med: TStringField
      FieldName = 'concen_med'
      FixedChar = True
      Size = 21
    end
    object TableAMform_farma: TStringField
      FieldName = 'form_farma'
      FixedChar = True
      Size = 21
    end
    object TableAMnom_medicamento: TStringField
      FieldName = 'nom_medicamento'
      FixedChar = True
      Size = 31
    end
    object TableAMuni_mededicamento_med: TStringField
      FieldName = 'uni_mededicamento_med'
      FixedChar = True
      Size = 21
    end
    object TableAMval_unidad_med: TStringField
      FieldName = 'val_unidad_med'
      FixedChar = True
      Size = 16
    end
    object TableAMtipo_medicamento: TStringField
      FieldName = 'tipo_medicamento'
      FixedChar = True
      Size = 11
    end
    object TableAMnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableAMnum_unidades: TStringField
      FieldName = 'num_unidades'
      FixedChar = True
      Size = 6
    end
    object TableAMval_total_med: TStringField
      FieldName = 'val_total_med'
      FixedChar = True
      Size = 16
    end
    object TableAMnom_archivo: TStringField
      FieldName = 'nom_archivo'
      Size = 16
    end
    object TableAMnum_autorizacion: TStringField
      FieldName = 'num_autorizacion'
      Size = 16
    end
    object TableAMnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableAMcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableAP: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_procedimientos'
    Left = 144
    Top = 344
    object TableAPtipo_documento_usu: TStringField
      FieldName = 'tipo_documento_usu'
      FixedChar = True
      Size = 3
    end
    object TableAPnum_documento_usu: TStringField
      FieldName = 'num_documento_usu'
      FixedChar = True
      Size = 22
    end
    object TableAPcod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object TableAPambito_relacion: TStringField
      FieldName = 'ambito_relacion'
      FixedChar = True
      Size = 12
    end
    object TableAPfinalidad_proc: TStringField
      FieldName = 'finalidad_proc'
      FixedChar = True
      Size = 12
    end
    object TableAPpersonal_salud: TStringField
      FieldName = 'personal_salud'
      FixedChar = True
      Size = 12
    end
    object TableAPcod_diag_ppal: TStringField
      FieldName = 'cod_diag_ppal'
      FixedChar = True
      Size = 12
    end
    object TableAPcod_diag_rela: TStringField
      FieldName = 'cod_diag_rela'
      FixedChar = True
      Size = 5
    end
    object TableAPform_acto_quir: TStringField
      FieldName = 'form_acto_quir'
      FixedChar = True
      Size = 12
    end
    object TableAPval_procedimieto: TStringField
      FieldName = 'val_procedimieto'
      FixedChar = True
      Size = 16
    end
    object TableAPnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableAPcod_procedimiento: TStringField
      FieldName = 'cod_procedimiento'
      FixedChar = True
      Size = 9
    end
    object TableAPfec_proc: TStringField
      FieldName = 'fec_proc'
      FixedChar = True
      Size = 12
    end
    object TableAPnum_autorizacion: TStringField
      FieldName = 'num_autorizacion'
      FixedChar = True
      Size = 16
    end
    object TableAPcod_complicacion: TStringField
      FieldName = 'cod_complicacion'
      FixedChar = True
      Size = 5
    end
    object TableAPnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableAPcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableAU: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_urgencias'
    Left = 208
    Top = 344
    object TableAUtip_documento_usu: TStringField
      FieldName = 'tip_documento_usu'
      FixedChar = True
      Size = 3
    end
    object TableAUnum_documento_usu: TStringField
      FieldName = 'num_documento_usu'
      Size = 22
    end
    object TableAUcod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object TableAUnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableAUfec_ingreso_observ: TStringField
      FieldName = 'fec_ingreso_observ'
      FixedChar = True
      Size = 12
    end
    object TableAUcaus_externa: TStringField
      FieldName = 'caus_externa'
      FixedChar = True
      Size = 3
    end
    object TableAUcod_diagnostico_sal: TStringField
      FieldName = 'cod_diagnostico_sal'
      FixedChar = True
      Size = 5
    end
    object TableAUdesti_salida: TStringField
      FieldName = 'desti_salida'
      FixedChar = True
      Size = 12
    end
    object TableAUesta_salida: TStringField
      FieldName = 'esta_salida'
      FixedChar = True
      Size = 12
    end
    object TableAUcaus_muerte_urgencia: TStringField
      FieldName = 'caus_muerte_urgencia'
      FixedChar = True
      Size = 5
    end
    object TableAUfec_salida_obs: TStringField
      FieldName = 'fec_salida_obs'
      FixedChar = True
      Size = 12
    end
    object TableAUcod_diagnostico_re1_sal: TStringField
      FieldName = 'cod_diagnostico_re1_sal'
      FixedChar = True
      Size = 5
    end
    object TableAUcod_diagnostico_re2_sal: TStringField
      FieldName = 'cod_diagnostico_re2_sal'
      FixedChar = True
      Size = 5
    end
    object TableAUcod_diagnostico_re3_sal: TStringField
      FieldName = 'cod_diagnostico_re3_sal'
      FixedChar = True
      Size = 5
    end
    object TableAUnum_autorizacion: TStringField
      FieldName = 'num_autorizacion'
      FixedChar = True
      Size = 16
    end
    object TableAUhor_ingreso: TStringField
      FieldName = 'hor_ingreso'
      Size = 6
    end
    object TableAUhor_salida: TStringField
      FieldName = 'hor_salida'
      Size = 6
    end
    object TableAUnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableAUcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableAN: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_nacidos'
    Left = 240
    Top = 344
    object TableANcod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object TableANnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableANedad_gestacion: TStringField
      FieldName = 'edad_gestacion'
      FixedChar = True
      Size = 3
    end
    object TableANcont_prenatal: TStringField
      FieldName = 'cont_prenatal'
      FixedChar = True
      Size = 2
    end
    object TableANsexo: TStringField
      FieldName = 'sexo'
      FixedChar = True
      Size = 2
    end
    object TableANpeso: TStringField
      FieldName = 'peso'
      FixedChar = True
      Size = 5
    end
    object TableANcod_diagnostico_nac: TStringField
      FieldName = 'cod_diagnostico_nac'
      FixedChar = True
      Size = 5
    end
    object TableANcaus_muerte_nac: TStringField
      FieldName = 'caus_muerte_nac'
      FixedChar = True
      Size = 5
    end
    object TableANfec_muerte_nac: TStringField
      FieldName = 'fec_muerte_nac'
      FixedChar = True
      Size = 12
    end
    object TableANfec_nacimiento: TStringField
      FieldName = 'fec_nacimiento'
      FixedChar = True
      Size = 12
    end
    object TableANnum_documento_mad: TStringField
      FieldName = 'num_documento_mad'
      Size = 22
    end
    object TableANtip_documento_mad: TStringField
      FieldName = 'tip_documento_mad'
      FixedChar = True
      Size = 3
    end
    object TableANhor_nacimiento: TStringField
      FieldName = 'hor_nacimiento'
      Size = 6
    end
    object TableANhor_muerte: TStringField
      FieldName = 'hor_muerte'
      Size = 6
    end
    object TableANnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableANcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object TableAS: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_servicios'
    Left = 304
    Top = 344
    object TableAStipo_documento_usu: TStringField
      FieldName = 'tipo_documento_usu'
      FixedChar = True
      Size = 3
    end
    object TableASnum_documento_usu: TStringField
      FieldName = 'num_documento_usu'
      Size = 22
    end
    object TableAScod_prestador: TStringField
      FieldName = 'cod_prestador'
      FixedChar = True
      Size = 11
    end
    object TableASval_unidad_mat: TStringField
      FieldName = 'val_unidad_mat'
      FixedChar = True
      Size = 16
    end
    object TableASnum_factura: TStringField
      FieldName = 'num_factura'
      FixedChar = True
      Size = 21
    end
    object TableAStipo_servicio: TStringField
      FieldName = 'tipo_servicio'
      FixedChar = True
      Size = 12
    end
    object TableAScod_servicio: TStringField
      FieldName = 'cod_servicio'
      FixedChar = True
      Size = 21
    end
    object TableASnom_servicio: TStringField
      FieldName = 'nom_servicio'
      FixedChar = True
      Size = 61
    end
    object TableAScant: TStringField
      FieldName = 'cant'
      FixedChar = True
      Size = 16
    end
    object TableASval_total_mat: TStringField
      FieldName = 'val_total_mat'
      FixedChar = True
      Size = 16
    end
    object TableASnum_autorizacion: TStringField
      FieldName = 'num_autorizacion'
      FixedChar = True
      Size = 16
    end
    object TableASnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object TableAScod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
  object Query1: TQuery
    DatabaseName = 'datosmec'
    SQL.Strings = (
      'select * from archivo_usuario')
    Left = 58
    Top = 315
  end
  object Tablect: TTable
    CachedUpdates = True
    DatabaseName = 'datosmec'
    TableName = 'dbo.archivo_control'
    Left = 336
    Top = 344
    object Tablectcod_prestador: TStringField
      FieldName = 'cod_prestador'
      Size = 18
    end
    object Tablectcod_archivo: TStringField
      FieldName = 'cod_archivo'
      FixedChar = True
      Size = 9
    end
    object Tablectfec_remision: TStringField
      FieldName = 'fec_remision'
      FixedChar = True
      Size = 15
    end
    object Tablecttot_archivos: TStringField
      FieldName = 'tot_archivos'
      FixedChar = True
      Size = 12
    end
    object Tablectnum_radicacion: TStringField
      FieldName = 'num_radicacion'
      FixedChar = True
      Size = 12
    end
    object Tablectcod_anulado: TStringField
      FieldName = 'cod_anulado'
      FixedChar = True
      Size = 1
    end
  end
end
