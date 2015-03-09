object ImpSolicitud: TImpSolicitud
  Left = 313
  Top = 110
  BorderStyle = bsSingle
  Caption = 'Impresi'#243'n de la Solicitud'
  ClientHeight = 249
  ClientWidth = 340
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
    Width = 340
    Height = 249
    Align = alClient
    TabOrder = 0
    object Button1: TButton
      Left = 10
      Top = 186
      Width = 318
      Height = 49
      Caption = 'Reimprimir Solicitud'
      TabOrder = 1
      OnClick = Button1Click
    end
    object lkpcmbbxBuscar: TcxLookupComboBox
      Left = 10
      Top = 143
      Properties.CharCase = ecUpperCase
      Properties.DropDownAutoSize = True
      Properties.KeyFieldNames = 'No_Solicitud'
      Properties.ListColumns = <
        item
          FieldName = 'Identificacion'
        end
        item
          FieldName = 'Paciente'
        end
        item
          FieldName = 'No_Solicitud'
        end
        item
          FieldName = 'Fecha'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListOptions.CaseInsensitive = True
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = dsBuscar
      TabOrder = 0
      Width = 318
    end
    object rdgrpBuscar: TcxRadioGroup
      Left = 10
      Top = 16
      Caption = 'Buscar por'
      Properties.DefaultValue = '1'
      Properties.Items = <
        item
          Caption = 'Por N'#176' Solicitud'
          Value = 0
        end
        item
          Caption = 'Por Documento de Identidad del Paciente'
          Value = 2
        end
        item
          Caption = 'Por Nombre del Paciente'
          Value = 3
        end>
      Properties.OnEditValueChanged = rdgrpBuscarPropertiesEditValueChanged
      ItemIndex = 1
      TabOrder = 2
      Height = 106
      Width = 318
    end
  end
  object dsBuscar: TDataSource
    DataSet = qryBuscar
    Left = 64
    Top = 160
  end
  object qryBuscar: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select cs.No_Solicitud, cs.Fecha,sa.TP_IDENT_USUAR+ sa.NR_IDENT_' +
        'USUAR as Identificacion,sp.PRIMER_NOMBRE+rtrim('#39' '#39'+ isnull(sp.se' +
        'gundo_nombre,'#39#39'))+'#39' '#39'+sp.PRIMER_APELLIDO+rtrim('#39' '#39'+ isnull(sp.SE' +
        'GUNDO_APELLIDO,'#39#39')) as Paciente from CREncSolicitudes cs inner j' +
        'oin saadmisiones sa  on cs.No_Admision= sa.NO_ADMISION'
      
        'inner join sapacientes sp on sa.NR_IDENT_USUAR = sp.NR_IDENT_USU' +
        'AR and sa.tp_ident_usuar =sp.TP_IDENT_USUAR'
      ''
      'ORDER BY convert(integer,no_Solicitud ) desc')
    Left = 128
    Top = 160
  end
  object ADOTable1: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INConsecFacturas'
    Left = 232
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Connection = DataModule1.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'nofact'
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 8
        Value = '580'
      end>
    SQL.Strings = (
      
        'SELECT SE.No_Solicitud, Fecha,SE.No_Admision,AD.TP_IDENT_USUAR,A' +
        'D.NR_IDENT_USUAR, PAC.PRIMER_APELLIDO,PAC.SEGUNDO_APELLIDO,PAC.P' +
        'RIMER_NOMBRE,'
      
        #9#9'PAC.SEGUNDO_NOMBRE, B.Descripcion_Area  AS DESCRIPCION_1, A.De' +
        'scripcion_Area  AS DESCRIPCION_2, SD.OBSERVACION as Observacion_' +
        '1,'
      
        #9#9' SD.SEC_SOLICITUD,SD.TP_PST,SD.CD_PST,SD.DESCRIPCION,SD.UNIDAD' +
        'ES_SOLICITADAS,ISNULL((COALESCE(AD.DIAGNOSTICO, AD.DIAGN_P_EGRES' +
        'O) + '#39' - '#39'+DG.NOM_DIAGNSOTICO),'#39'N/D'#39') AS DIAGNOSTICO,'
      
        #9#9' ISNULL((COALESCE(AD.DIAGN_E_REL1, AD.DIAGN_I_REL1)+ '#39' - '#39'+DG1' +
        '.NOM_DIAGNSOTICO),'#39#39') AS DIAG_REL1,'
      
        #9#9' ISNULL((COALESCE(AD.DIAGN_E_REL2, AD.DIAGN_I_REL2)+ '#39' - '#39'+DG2' +
        '.NOM_DIAGNSOTICO),'#39#39') AS DIAG_REL2,'
      
        #9#9' ISNULL((COALESCE(AD.DIAGN_E_REL3, AD.DIAGN_I_REL3)+ '#39' - '#39'+DG3' +
        '.NOM_DIAGNSOTICO),'#39#39') AS DIAG_REL3,'
      #9#9' MED.PRIMER_NOMBRE+'#39' '#39'+ MED.PRIMER_APELLIDO AS PROFESIONAL'
      'FROM'#9'CREncSolicitudes SE INNER JOIN  '
      
        #9#9'CRDetSolicitudes SD ON SE.No_Solicitud=SD.No_Solicitud INNER J' +
        'OIN'
      #9#9'SAAdmisiones AD ON  SE.No_Admision = AD.No_Admision INNER JOIN'
      
        #9#9'SAPacientes PAC ON AD.tp_ident_usuar = PAC.tp_ident_usuar  AND' +
        ' AD.nr_ident_usuar = PAC.nr_ident_usuar INNER JOIN'
      
        #9#9'SAMEDICOS MED ON AD.TP_IDENT_MEDICO=MED.TP_IDENT_MEDICO AND AD' +
        '.NR_IDENT_MEDICO=MED.NR_IDENT_MEDICO  LEFT OUTER JOIN'
      
        '        Comunes..SEAreas AS A  ON SE.Empresa_Solicita = A.Empres' +
        'a  AND SE.Area_Solicita = A.Codigo LEFT OUTER JOIN'
      
        '        Comunes..SEAreas AS B  ON SE.Empresa_Producto = B.Empres' +
        'a  AND SE.Area_Producto = B.Codigo LEFT OUTER JOIN'
      
        #9#9'Comunes..GEDiagnosticos as DG  ON COALESCE(AD.DIAGNOSTICO, AD.' +
        'DIAGN_P_EGRESO) = DG.COD_DIAGNOSTICO  LEFT OUTER JOIN'
      
        #9#9'Comunes..GEDiagnosticos as DG1  ON COALESCE(AD.DIAGN_E_REL1, A' +
        'D.DIAGN_I_REL1) = DG1.COD_DIAGNOSTICO  LEFT OUTER JOIN'
      
        #9#9'Comunes..GEDiagnosticos as DG2  ON COALESCE(AD.DIAGN_E_REL2, A' +
        'D.DIAGN_I_REL2) = DG2.COD_DIAGNOSTICO  LEFT OUTER JOIN'
      
        #9#9'Comunes..GEDiagnosticos as DG3  ON COALESCE(AD.DIAGN_E_REL3, A' +
        'D.DIAGN_I_REL3) = DG3.COD_DIAGNOSTICO'
      ''
      'WHERE   SE.No_Solicitud  = :nofact'
      'ORDER BY SE.No_Solicitud'
      ''
      '')
    Left = 296
    Top = 8
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    BCDToCurrency = False
    Left = 216
    Top = 64
  end
  object frxReport1: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 41876.693295381940000000
    ReportOptions.LastChange = 41876.693295381940000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 288
    Top = 64
    Datasets = <>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 216.000000000000000000
      PaperHeight = 279.000000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
end
