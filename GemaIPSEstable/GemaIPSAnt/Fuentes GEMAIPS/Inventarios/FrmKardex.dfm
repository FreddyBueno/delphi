object Kardex2: TKardex2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Informe de Movimientos Por Lotes de Mercancias'
  ClientHeight = 435
  ClientWidth = 952
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 952
    Height = 73
    Align = alTop
    TabOrder = 0
    ExplicitLeft = 112
    ExplicitTop = 8
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 25
      Height = 13
      Caption = 'Lote:'
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 47
      Top = 14
      Width = 329
      Height = 21
      KeyField = 'L2'
      ListField = 'Lote'
      ListSource = DSLote
      TabOrder = 0
    end
    object Button1: TButton
      Left = 424
      Top = 11
      Width = 161
      Height = 46
      Caption = 'Informe de Cierre'
      TabOrder = 1
      OnClick = Button1Click
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 73
    Width = 952
    Height = 362
    Align = alClient
    TabOrder = 1
    ExplicitTop = 8
    ExplicitWidth = 736
    ExplicitHeight = 121
    object PageControl1: TPageControl
      Left = 1
      Top = 1
      Width = 950
      Height = 360
      ActivePage = TabSheet1
      Align = alClient
      TabOrder = 0
      ExplicitWidth = 865
      object TabSheet1: TTabSheet
        Caption = 'Saldos'
        ExplicitWidth = 161
        ExplicitHeight = 61
        object DBGrid1: TDBGrid
          Left = 0
          Top = 0
          Width = 942
          Height = 332
          Align = alClient
          DataSource = DSProd
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Movimientos'
        ImageIndex = 1
        ExplicitWidth = 161
        ExplicitHeight = 61
        object DBGrid2: TDBGrid
          Left = 0
          Top = 0
          Width = 942
          Height = 332
          Align = alClient
          DataSource = DSMov
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
      end
    end
  end
  object ADOQLote: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 536
    Top = 112
  end
  object DSLote: TDataSource
    DataSet = ADOQLote
    OnDataChange = DSLoteDataChange
    Left = 488
    Top = 112
  end
  object ADOTable5: TADOTable
    Connection = DataModule1.ADOConnection1
    TableName = 'INParametros'
    Left = 1
    Top = 1
  end
  object DSProd: TDataSource
    DataSet = ADOQProd
    Left = 488
    Top = 168
  end
  object ADOQProd: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <>
    Left = 536
    Top = 168
  end
  object DSMov: TDataSource
    DataSet = ADOQMov
    Left = 488
    Top = 248
  end
  object ADOQMov: TADOQuery
    Connection = DataModule1.ADOConnection1
    Parameters = <
      item
        Name = 'lot'
        Size = -1
        Value = Null
      end
      item
        Name = 'prod'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'declare @Fec as datetime'
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
      '  declare @Prod as varchar(30)'
      '  declare @ProdAnt as varchar(30)'
      '  '
      '  set @tot = 0'
      '  '
      
        'IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_I' +
        'D(N'#39'[dbo].[xxkardex]'#39') AND type in (N'#39'U'#39'))'
      'DROP TABLE [dbo].[xxkardex]  '
      'CREATE TABLE [dbo].[xxkardex]('
      '    [Producto] [varchar](30) NULL,'
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
      
        '  SELECT INProductos.CD_Producto,Fch_Hora_Transac,INTransaccione' +
        's_Enc.Estado,INTransacciones_Enc.Cd_Documento,INDocumentos.Descr' +
        'ipcion,INTransacciones_Enc.Consec_Dcto,'
      
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
      '      AND INTransacciones_Det.Lote =:Lot'
      '      AND INTransacciones_Det.cd_producto =:prod'
      ''
      #9'ORDER BY  INProductos.CD_Producto,Fch_Hora_Transac'
      ' '
      '  open CURSORITO'
      '  '
      '  Set @ProdAnt = '#39#39
      '  fetch next from CURSORITO'
      
        '  into @Prod,@Fec, @Est, @Cod ,@Des, @NDoc , @Cant , @Vr , @Prom' +
        ' , @Lot , @FecVence , @Concepto ,@ES  '
      '  while @@fetch_status = 0'
      '  begin'
      '    IF @Prod <> @ProdAnt SET @tot = 0'
      '    '
      '    IF (@ES = '#39'E'#39') '
      '       SET @tot = @tot + @cant'
      '    ELSE '
      '      SET @tot = @tot - @cant'
      '     '
      '    INSERT INTO xxkardex '
      
        '         (Producto,Fch_Hora_Transac,Estado,Cd_Documento,INDocume' +
        'ntos.Descripcion,Consec_Dcto,'
      
        '         Cant_Producto,Saldo,Valor_Unitario,Costo_Promedio,Lote,' +
        'Fecha_Vence,Desc_Concepto,EntradaSalida)'
      '    values '
      
        '        (@Prod,@Fec, @Est, @Cod ,@Des, @NDoc , @Cant,@tot , @Vr ' +
        ', @Prom , @Lot , @FecVence , @Concepto ,@ES); '
      '  '
      '    Set @ProdAnt = @Prod'
      '    fetch next from CURSORITO'
      
        '    into @Prod,@Fec, @Est, @Cod ,@Des, @NDoc , @Cant , @Vr , @Pr' +
        'om , @Lot , @FecVence , @Concepto ,@ES'
      '  end'
      ''
      '  close CURSORITO'
      '  deallocate CURSORITO'
      '  '
      '  SELECT * FROM xxkardex'
      '')
    Left = 536
    Top = 248
  end
end
