unit FrmAsignaHomo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, DBCtrls, StdCtrls, ExtCtrls, Grids, DBGrids, ComCtrls,
  Buttons, Menus, Mask,Libreria_Prateinco,FImpSolicitud;

type
  TfrmAsignaHomologa = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    MainMenu1: TMainMenu;
    Consultas1: TMenuItem;
    PorDescripcindelServicio1: TMenuItem;
    PorDescripcindelTarifario1: TMenuItem;
    PorCdigodelServicio1: TMenuItem;
    PorCdigodelTarifario1: TMenuItem;
    Reportes1: TMenuItem;
    arifas1: TMenuItem;
    Label2: TLabel;
    Panel2: TPanel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    DBGrid1: TDBGrid;
    TabSheet2: TTabSheet;
    DBGrid2: TDBGrid;
    TabSheet3: TTabSheet;
    DBGrid3: TDBGrid;
    Panel3: TPanel;
    Edit1: TEdit;
    SpeedButton1: TSpeedButton;
    ComboBox3: TComboBox;
    Label4: TLabel;
    MaskEdit1: TMaskEdit;
    Label5: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label7: TLabel;
    Label8: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label9: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    Label10: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    Label11: TLabel;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    DataSource7: TDataSource;
    DataSource8: TDataSource;
    DataSource9: TDataSource;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    ADOQuery8: TADOQuery;
    ADOQuery9: TADOQuery;
    DBLookupComboBox8: TDBLookupComboBox;
    DataSource10: TDataSource;
    ADOQuery10: TADOQuery;
    DataSource11: TDataSource;
    ADOQuery11: TADOQuery;
    Edit2: TEdit;
    ADOQuery12: TADOQuery;
    ADOQuery13: TADOQuery;
    Button3: TButton;
    Label12: TLabel;
    Label3: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Panel4: TPanel;
    Button2: TButton;
    Button1: TButton;
    Panel5: TPanel;
    MaskEdit3: TMaskEdit;
    MaskEdit4: TMaskEdit;
    MaskEdit5: TMaskEdit;
    MaskEdit6: TMaskEdit;
    MaskEdit7: TMaskEdit;
    Label15: TLabel;
    CBDSalas: TComboBox;
    CBDMateriales: TComboBox;
    CBDEspecialista: TComboBox;
    CBDAnestesiologo: TComboBox;
    CBDMedAux: TComboBox;
    ADOQryG: TADOQuery;
    Label6: TLabel;
    MaskEdit2: TMaskEdit;
    DBEdit1: TDBEdit;
    Label16: TLabel;
    BitBtn1: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormActivate(Sender: TObject);
    procedure DBLookupComboBox1Exit(Sender: TObject);
    procedure DBLookupComboBox2Exit(Sender: TObject);
    procedure DBGrid1Exit(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure PorDescripcindelServicio1Click(Sender: TObject);
    procedure PorDescripcindelTarifario1Click(Sender: TObject);
    procedure PorCdigodelTarifario1Click(Sender: TObject);
    procedure PorCdigodelServicio1Click(Sender: TObject);
    procedure arifas1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure DBGrid3CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ComboBox3Click(Sender: TObject);
    function BuscaValor(cod : string; Tarifa : string; ano:string):Real;
    procedure CBDMaterialesClick(Sender: TObject);
    procedure CBDEspecialistaClick(Sender: TObject);
    procedure CBDAnestesiologoClick(Sender: TObject);
    procedure MaskEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure CBDMedAuxClick(Sender: TObject);
    procedure CBDSalasClick(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
   Cap     : Integer;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAsignaHomologa: TfrmAsignaHomologa;

implementation



{$R *.dfm}

uses Reporteador, MAIN, UDataModule1, Libreria_PrateincoForm;

procedure TfrmAsignaHomologa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TfrmAsignaHomologa.FormActivate(Sender: TObject);
begin
  ADOQuery1.Open;
  ADOQuery11.Open;
end;

procedure TfrmAsignaHomologa.DBLookupComboBox1Exit(Sender: TObject);
Var Ind1,ind2:Integer;
begin
  IF DBLookupComboBox1.Text <> '' Then
  Begin
    DBLookupComboBox2.KeyValue:=DBLookupComboBox1.KeyValue;
    if ADOQuery1.Fields.FieldByName('Capitulo').AsInteger <> null then Cap  := ADOQuery1.Fields.FieldByName('Capitulo').AsInteger
    else Cap  := 0;
    ADOQuery2.Close;
    ADOquery2.Parameters.ParamValues['xx']:=DBlookupComboBox1.KeyValue;
    ADOQuery2.Open;
    IF ADOquery2.FieldValues['Codigo2'] <> null then
    Begin
      ADOQuery3.Close;
      ADOquery3.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
      ADOquery3.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
      ADOQuery3.Open;
      ADOQuery4.Close;
      ADOquery4.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
      ADOquery4.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
      ADOQuery4.Open;

      DBLookupComboBox8.KeyValue := ADOquery3.FieldValues['Tabla'];
      IF ADOquery3.FieldValues['Codigo'] <> NULL THEN Edit2.Text := ADOquery3.FieldValues['Codigo'];
      Edit1.Text                 := campotoedit(ADOQuery3.FieldValues['Descripcion']);
      DBLookupComboBox3.KeyValue := campotoedit(ADOQuery3.FieldValues['DSALA']);
      DBLookupComboBox4.KeyValue := campotoedit(ADOQuery3.FieldValues['MSALA']);
      DBLookupComboBox5.KeyValue := campotoedit(ADOQuery3.FieldValues['MEDESP']);
      DBLookupComboBox6.KeyValue := campotoedit(ADOQuery3.FieldValues['ANEST']);
      DBLookupComboBox7.KeyValue := campotoedit(ADOQuery3.FieldValues['MEDICO_AUX']);
    End;

    //Verificando Homologación
    Ind1:=0;
    Ind2:=0;
    ADOQuery2.First;
    While NOT ADOQuery2.Eof Do
    Begin
      ADOQuery3.First;
      While NOT ADOQuery3.Eof Do
      Begin
        IF (ADOQuery2.FieldValues['Tabla2'] = ADOQuery3.FieldValues['Tabla']) AND
           (ADOQuery2.FieldValues['Codigo2'] = ADOQuery3.FieldValues['Codigo']) Then
              Ind1:=1;

        ADOQuery4.First;
        While NOT ADOQuery4.Eof Do
        Begin
          IF (ADOQuery3.FieldValues['Tabla'] = ADOQuery4.FieldValues['Tabla']) AND
           (ADOQuery3.FieldValues['Codigo'] = ADOQuery4.FieldValues['Codigo']) Then
              Ind2:=1;

          ADOQuery4.Next;
        End;

        ADOQuery3.Next;
      End;

      ADOQuery2.Next;
    End;
    IF ind1=0 Then label2.Caption:='Homologación entre Servicios y Tarifas no Existe.'
    ELSE IF ind2=0 Then label2.Caption:='Homologación entre Tarifas y Detalle no Existe.'
    ELSE label2.Caption:='Homologación creada en todos los niveles.';
  end;

  if Cap = 1 then
    begin
      MaskEdit1.Enabled          := True;
      MaskEdit2.Enabled          := True;
      CBDSalas.Enabled           := True;
      CBDMateriales.Enabled      := True;
      CBDEspecialista.Enabled    := True;
      CBDAnestesiologo.Enabled   := True;
      CBDMedAux.Enabled          := True;
    end
  else
    begin
      MaskEdit1.Enabled          := True;
      MaskEdit2.Enabled          := True;
      CBDSalas.Enabled           := False;
      CBDMateriales.Enabled      := False;
      CBDEspecialista.Enabled    := False;
      CBDAnestesiologo.Enabled   := False;
      CBDMedAux.Enabled          := False;
      MaskEdit1.Text             := '0';
    end;
    ADOQuery1.Edit;
end;

procedure TfrmAsignaHomologa.DBLookupComboBox2Exit(Sender: TObject);
Var Ind1,ind2:Integer;
begin
  IF DBLookupComboBox2.Text <> '' Then
  Begin
    DBLookupComboBox1.KeyValue:=DBLookupComboBox2.KeyValue;
    ADOQuery2.Close;
    ADOquery2.Parameters.ParamValues['xx']:=DBlookupComboBox1.KeyValue;
    ADOQuery2.Open;
    IF ADOquery2.FieldValues['Codigo2'] <> null then
    Begin
      ADOQuery3.Close;
      ADOquery3.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
      ADOquery3.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
      ADOQuery3.Open;
      ADOQuery4.Close;
      ADOquery4.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
      ADOquery4.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
      ADOQuery4.Open;
    End;
     //Verificando Homologación
    Ind1:=0;
    Ind2:=0;
    ADOQuery2.First;
    While NOT ADOQuery2.Eof Do
    Begin
      ADOQuery3.First;
      While NOT ADOQuery3.Eof Do
      Begin
        IF (ADOQuery2.FieldValues['Tabla2'] = ADOQuery3.FieldValues['Tabla']) AND
           (ADOQuery2.FieldValues['Codigo2'] = ADOQuery3.FieldValues['Codigo']) Then
              Ind1:=1;

        ADOQuery4.First;
        While NOT ADOQuery4.Eof Do
        Begin
          IF (ADOQuery3.FieldValues['Tabla'] = ADOQuery4.FieldValues['Tabla']) AND
           (ADOQuery3.FieldValues['Codigo'] = ADOQuery4.FieldValues['Codigo']) Then
              Ind2:=1;

          ADOQuery4.Next;
        End;

        ADOQuery3.Next;
      End;

      ADOQuery2.Next;
    End;
    IF ind1=0 Then label2.Caption:='Homologación entre Servicios y Tarifas no Existe.'
    ELSE IF ind2=0 Then label2.Caption:='Homologación entre Tarifas y Detalle no Existe.'
    ELSE label2.Caption:='Homologación creada en todos los niveles.';
  end;
  ADOQuery1.Edit;
end;

procedure TfrmAsignaHomologa.DBGrid1Exit(Sender: TObject);
begin
  IF DBLookupComboBox1.Text <> '' Then Begin
    IF ADOQuery2.RecordCount > 0 Then
    Begin
      ADOQuery3.Close;
      ADOquery3.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
      ADOquery3.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
      ADOQuery3.Open;
      ADOQuery4.Close;
      ADOquery4.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
      ADOquery4.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
      ADOQuery4.Open;
      IF ADOquery3.RecordCount <> 0 Then
      Begin
        DBLookupComboBox8.KeyValue := ADOquery3.FieldValues['Tabla'];
        Edit2.Text                 := ADOquery3.FieldValues['Codigo'];
        Edit1.Text                 := ADOQuery3.FieldValues['Descripcion'];
        DBLookupComboBox3.KeyValue := ADOQuery3.FieldValues['DSALA'];
        DBLookupComboBox4.KeyValue := ADOQuery3.FieldValues['MSALA'];
        DBLookupComboBox5.KeyValue := ADOQuery3.FieldValues['MEDESP'];
        DBLookupComboBox6.KeyValue := ADOQuery3.FieldValues['ANEST'];
        DBLookupComboBox7.KeyValue := ADOQuery3.FieldValues['MEDICO_AUX'];
      End
      Else Begin
        Showmessage('El registro no fue encontrado, por favor creelo.');
      End;
    End;
  End;
end;

procedure TfrmAsignaHomologa.DBGrid2Exit(Sender: TObject);
begin
  ADOQuery4.Close;
  ADOquery4.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
  ADOquery4.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
  ADOQuery4.Open;
end;

procedure TfrmAsignaHomologa.PorDescripcindelServicio1Click(
  Sender: TObject);
Var
  xx:String;
begin
  xx:= InputBox('Buscar por Palabra del Servicio Intermedia', 'Palabra', 'NN');
  IF xx='NN' Then Exit;

  ReporteadorP(MainForm.Caption,'SELECT * FROM SAServicios WHERE Descripcion LIKE '+chr(39)+'%'+xx+'%'+chr(39),'');
end;

procedure TfrmAsignaHomologa.PorDescripcindelTarifario1Click(
  Sender: TObject);
Var
  xx:String;
begin
  xx:= InputBox('Buscar por Palabra de la Tarifa Intermedia', 'Palabra', 'NN');
  IF xx='NN' Then Exit;

  ReporteadorP(MainForm.Caption,'SELECT SATarifarios.Tabla,SATarifarios.Codigo,Año,SATarifarios.Descripcion,Valor,SAHomologacion.Tabla1,SAHomologacion.Codigo1,SAServicios.Descripcion,DSala,MSala,MEDesp,ANEST,Medico_Aux'+
     ' FROM SATarifarios,SAHomologacion,SAServicios,SATarifasDetalle'+
     ' WHERE SATarifarios.Tabla = SAHomologacion.Tabla2 AND SATarifarios.Codigo = SAHomologacion.Codigo2'+
     ' AND SAHomologacion.Tabla1 = SAServicios.Tabla AND SAHomologacion.codigo1 = SAServicios.Codigo'+
     ' AND SATarifarios.Tabla = SATarifasDetalle.Tabla AND SATarifarios.codigo = SATarifasDetalle.Codigo'+
     ' AND SATarifarios.Descripcion LIKE '+chr(39)+'%'+xx+'%'+chr(39),'');
end;

procedure TfrmAsignaHomologa.PorCdigodelTarifario1Click(Sender: TObject);
Var
  xx:String;
begin
  xx:= InputBox('Buscar por Palabra de la Tarifa Intermedia', 'Palabra', 'NN');
  IF xx='NN' Then Exit;

  ReporteadorP(MainForm.Caption,'SELECT SATarifarios.Tabla,SATarifarios.Codigo,Año,SATarifarios.Descripcion,Valor,SAHomologacion.Tabla1,SAHomologacion.Codigo1,SAServicios.Descripcion,DSala,MSala,MEDesp,ANEST,Medico_Aux'+
      ' FROM SATarifarios,SAHomologacion,SAServicios,SATarifasDetalle'+
      ' WHERE SATarifarios.Tabla = SAHomologacion.Tabla2 AND SATarifarios.Codigo = SAHomologacion.Codigo2'+
      ' AND SAHomologacion.Tabla1 = SAServicios.Tabla AND SAHomologacion.codigo1 = SAServicios.Codigo'+
      ' AND SATarifarios.Tabla = SATarifasDetalle.Tabla AND SATarifarios.codigo = SATarifasDetalle.Codigo'+
      ' AND SATarifarios.Codigo LIKE '+chr(39)+'%'+xx+'%'+chr(39),'');
end;

procedure TfrmAsignaHomologa.PorCdigodelServicio1Click(Sender: TObject);
Var
  xx:String;
begin
  xx:= InputBox('Buscar por Palabra del Servicio Intermedia', 'Palabra', 'NN');
  IF xx='NN' Then Exit;

  ReporteadorP(MainForm.Caption,'SELECT * FROM SAServicios WHERE Codigo LIKE '+chr(39)+'%'+xx+'%'+chr(39),'');
end;

procedure TfrmAsignaHomologa.arifas1Click(Sender: TObject);
begin
  ReporteadorP(MainForm.Caption,'SELECT SATarifarios.Tabla,SATarifarios.Codigo,SATarifarios.Descripcion,Año,Valor,SAHomologacion.Tabla1,SAHomologacion.Codigo1,SAServicios.Descripcion,DSala,MSala,MEDesp,ANEST,Medico_Aux'+
      ' FROM SATarifarios,SAHomologacion,SAServicios,SATarifasDetalle'+
      ' WHERE SATarifarios.Tabla = SAHomologacion.Tabla2 AND SATarifarios.Codigo = SAHomologacion.Codigo2'+
      ' AND SAHomologacion.Tabla1 = SAServicios.Tabla AND SAHomologacion.codigo1 = SAServicios.Codigo'+
      ' AND SATarifarios.Tabla = SATarifasDetalle.Tabla AND SATarifarios.codigo = SATarifasDetalle.Codigo','');
end;

procedure TfrmAsignaHomologa.DBEdit1Exit(Sender: TObject);
begin
  if DBEdit1.Text = '0' then Panel3.Visible:=true
  else Panel3.Visible:=false;
  ADOQuery1.Post;
end;

procedure TfrmAsignaHomologa.DBGrid1CellClick(Column: TColumn);
begin
  DBLookupComboBox8.SetFocus;
end;

procedure TfrmAsignaHomologa.DBGrid2CellClick(Column: TColumn);
begin
  DBLookupComboBox8.SetFocus;
end;

procedure TfrmAsignaHomologa.DBGrid3CellClick(Column: TColumn);
begin
  DBLookupComboBox8.SetFocus;
end;

procedure TfrmAsignaHomologa.Button1Click(Sender: TObject);
begin
  if cap <> 1 then
    begin
      IF (ComboBox3.Text = '')  or (MaskEdit2.Text = '') or (Edit1.Text = '')  or (Edit2.Text = '') Then Begin
        Showmessage('Faltan valores.');
        exit;
      End;
    end
  else
    begin
      if (MaskEdit1.Text = '') or (ComboBox3.Text = '')  or (Edit1.Text = '')  or (Edit2.Text = '') then
        begin
          Showmessage('Faltan valores.');
          exit;
        end;
    end;

  IF ADOQuery2.RecordCount > 0 Then
  Begin
    ADOQuery2.Edit;
    ADOQuery2.FieldValues['Tabla1'] :='CUP';
    ADOQuery2.FieldValues['Codigo1']:=DBLookupComboBox1.KeyValue;
    ADOQuery2.FieldValues['Tabla2'] :=DBLookupComboBox8.KeyValue;
    ADOQuery2.FieldValues['Codigo2']:=Edit2.text;
    ADOQuery2.Post;
  End
  Else Begin
    ADOQuery2.Append;
    ADOQuery2.FieldValues['Tabla1'] :='CUP';
    ADOQuery2.FieldValues['Codigo1']:=DBLookupComboBox1.KeyValue;
    ADOQuery2.FieldValues['Tabla2'] :=DBLookupComboBox8.KeyValue;
    ADOQuery2.FieldValues['Codigo2']:=Edit2.text;
    ADOQuery2.Post;
  End;

  ADOQuery3.Close;
  ADOquery3.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
  ADOquery3.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
  ADOQuery3.Open;
  IF ADOQuery3.RecordCount > 0 Then
  Begin
    ADOQuery3.Edit;
    ADOQuery3.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery3.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery3.FieldValues['Descripcion'] :=Edit1.Text;
    ADOQuery3.FieldValues['Dsala']:=DBLookupComboBox3.KeyValue;
    ADOQuery3.FieldValues['Msala']:=DBLookupComboBox4.KeyValue;
    ADOQuery3.FieldValues['MedEsp']:=DBLookupComboBox5.KeyValue;
    ADOQuery3.FieldValues['Anest']:=DBLookupComboBox6.KeyValue;
    ADOQuery3.FieldValues['Medico_Aux']:=DBLookupComboBox7.KeyValue;
    ADOQuery3.Post;
  End
  Else Begin
    ADOQuery3.Append;
    ADOQuery3.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery3.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery3.FieldValues['Descripcion'] :=Edit1.Text;
    ADOQuery3.FieldValues['Dsala']:=DBLookupComboBox3.KeyValue;
    ADOQuery3.FieldValues['Msala']:=DBLookupComboBox4.KeyValue;
    ADOQuery3.FieldValues['MedEsp']:=DBLookupComboBox5.KeyValue;
    ADOQuery3.FieldValues['Anest']:=DBLookupComboBox6.KeyValue;
    ADOQuery3.FieldValues['Medico_Aux']:=DBLookupComboBox7.KeyValue;
    ADOQuery3.Post;
  End;

  ADOQuery12.Close;
  ADOquery12.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
  ADOquery12.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
  ADOquery12.Parameters.ParamValues['tbano']:=ComboBox3.Text;
  ADOQuery12.Open;
  IF ADOQuery12.RecordCount > 0 Then
  Begin
    ADOQuery12.Edit;
    ADOQuery12.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery12.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery12.FieldValues['Año'] :=ComboBox3.Text;
    ADOQuery12.FieldValues['Puntaje']:=MaskEdit1.Text;
    ADOQuery12.FieldValues['Valor']:=MaskEdit2.Text;
    ADOQuery12.Post;
  End
  Else Begin
    ADOQuery12.Append;
    ADOQuery12.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery12.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery12.FieldValues['Año'] :=ComboBox3.Text;
    ADOQuery12.FieldValues['Puntaje']:=MaskEdit1.Text;
    ADOQuery12.FieldValues['Valor']:=MaskEdit2.Text;
    ADOQuery12.Post;
  End;
end;

procedure TfrmAsignaHomologa.Button2Click(Sender: TObject);
begin
  if cap <> 1 then
    begin
      IF (ComboBox3.Text = '')  or (MaskEdit2.Text = '') or (Edit1.Text = '')  or (Edit2.Text = '') Then Begin
        Showmessage('Faltan valores.');
        exit;
      End;
    end
  else
    begin
      if (MaskEdit1.Text = '') or (ComboBox3.Text = '')  or (Edit1.Text = '')  or (Edit2.Text = '') then
        begin
          Showmessage('Faltan valores.');
          exit;
        end;
    end;

  ADOQuery2.Append;
  ADOQuery2.FieldValues['Tabla1'] :='CUP';
  ADOQuery2.FieldValues['Codigo1']:=DBLookupComboBox1.KeyValue;
  ADOQuery2.FieldValues['Tabla2'] :=DBLookupComboBox8.KeyValue;
  ADOQuery2.FieldValues['Codigo2']:=Edit2.text;
  ADOQuery2.Post;

  ADOQuery3.Close;
  ADOquery3.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
  ADOquery3.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
  ADOQuery3.Open;
  IF ADOQuery3.RecordCount > 0 Then
  Begin
    ADOQuery3.Edit;
    ADOQuery3.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery3.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery3.FieldValues['Descripcion'] :=Edit1.Text;
    ADOQuery3.FieldValues['Dsala']:=DBLookupComboBox3.KeyValue;
    ADOQuery3.FieldValues['Msala']:=DBLookupComboBox4.KeyValue;
    ADOQuery3.FieldValues['MedEsp']:=DBLookupComboBox5.KeyValue;
    ADOQuery3.FieldValues['Anest']:=DBLookupComboBox6.KeyValue;
    ADOQuery3.FieldValues['Medico_Aux']:=DBLookupComboBox7.KeyValue;
    ADOQuery3.Post;
  End
  Else Begin
    ADOQuery3.Append;
    ADOQuery3.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery3.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery3.FieldValues['Descripcion'] :=Edit1.Text;
    ADOQuery3.FieldValues['Dsala']:=DBLookupComboBox3.KeyValue;
    ADOQuery3.FieldValues['Msala']:=DBLookupComboBox4.KeyValue;
    ADOQuery3.FieldValues['MedEsp']:=DBLookupComboBox5.KeyValue;
    ADOQuery3.FieldValues['Anest']:=DBLookupComboBox6.KeyValue;
    ADOQuery3.FieldValues['Medico_Aux']:=DBLookupComboBox7.KeyValue;
    ADOQuery3.Post;
  End;

  ADOQuery12.Close;
  ADOquery12.Parameters.ParamValues['xx']:=ADOquery2.FieldValues['Codigo2'];
  ADOquery12.Parameters.ParamValues['tbxx']:=ADOquery2.FieldValues['Tabla2'];
  ADOquery12.Parameters.ParamValues['tbano']:=ComboBox3.Text;
  ADOQuery12.Open;
  IF ADOQuery12.RecordCount > 0 Then
  Begin
    ADOQuery12.Edit;
    ADOQuery12.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery12.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery12.FieldValues['Año'] :=ComboBox3.Text;
    ADOQuery12.FieldValues['Puntaje']:=MaskEdit1.Text;
    ADOQuery12.FieldValues['Valor']:=MaskEdit2.Text;
    ADOQuery12.Post;
  End
  Else Begin
    ADOQuery12.Append;
    ADOQuery12.FieldValues['Tabla'] :=ADOquery2.FieldValues['Tabla2'];
    ADOQuery12.FieldValues['Codigo']:=ADOquery2.FieldValues['Codigo2'];
    ADOQuery12.FieldValues['Año'] :=ComboBox3.Text;
    ADOQuery12.FieldValues['Puntaje']:=MaskEdit1.Text;
    ADOQuery12.FieldValues['Valor']:=MaskEdit2.Text;
    ADOQuery12.Post;
  End;
end;

procedure TfrmAsignaHomologa.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  IF DBLookupComboBox1.Text <> '' Then Panel3.Enabled:=true;
end;

procedure TfrmAsignaHomologa.SpeedButton1Click(Sender: TObject);
var
  InputString: string;
begin
  InputString:= InputBox('Nuevo Tipo de Tarifa', 'Tipo', '0');
  If (InputString <> '') or (InputString <> '0') Then Begin
    ADOQuery13.Open;
    ADOQuery13.Edit;
    ADOQuery13.FieldValues['Tabla']:=InputString;
    ADOQuery13.FieldValues['Codigo']:=InputString;
    ADOQuery13.FieldValues['Descripcion']:=InputString;
    ADOQuery13.Post;
    ADOQuery13.Close;
    ADOQuery11.Close;
    ADOQuery11.Open;
  End;
end;

procedure TfrmAsignaHomologa.Button3Click(Sender: TObject);
begin
  ADOQuery5.Open;
  ADOQuery6.Open;
  ADOQuery7.Open;
  ADOQuery8.Open;
  ADOQuery9.Open;
end;

procedure TfrmAsignaHomologa.FormShow(Sender: TObject);
begin
  ADOQryG.Close;
  ADOQryG.SQL.Clear;
  ADOQryG.SQL.Add('SELECT * FROM SAServicios');
  ADOQryG.SQL.Add('WHERE Estado = ''A''');
  ADOQryG.Open;

  CBDSalas.Clear;
  CBDMateriales.Clear;
  CBDEspecialista.Clear;
  CBDAnestesiologo.Clear;
  CBDMedAux.Clear;

  while not ADOQryG.Eof do
    begin
      CBDSalas.Items.Add(ADOQryG.Fields.FieldByName('Codigo').AsString);
      CBDMateriales.Items.Add(ADOQryG.Fields.FieldByName('Codigo').AsString);
      CBDEspecialista.Items.Add(ADOQryG.Fields.FieldByName('Codigo').AsString);
      CBDAnestesiologo.Items.Add(ADOQryG.Fields.FieldByName('Codigo').AsString);
      CBDMedAux.Items.Add(ADOQryG.Fields.FieldByName('Codigo').AsString);
      ADOQryG.Next;
    end;
end;

procedure TfrmAsignaHomologa.ComboBox3Click(Sender: TObject);
begin
  if cap = 1 then
    begin
      ADOQryG.Close;
      ADOQryG.SQL.Clear;
      ADOQryG.SQL.Add('SELECT * FROM SATarifasDetalle');
      ADOQryG.SQL.Add('WHERE CODIGO IN (SELECT Codigo2 FROM SAHomologacion');
      ADOQryG.SQL.Add('WHERE Tabla1 = ''CUP''');
      ADOQryG.SQL.Add('   AND Codigo1= '''+DBLookupComboBox1.Text+'''');
      ADOQryG.SQL.Add('   AND Tabla2 = '''+DBLookupComboBox8.Text+''')');
      ADOQryG.SQL.Add('   AND Año = '''+ComboBox3.Text+'''');
      ADOQryG.SQL.Add('   AND Tabla = '''+DBLookupComboBox8.Text+'''');
      ADOQryG.Open;

      if not ADOQryG.Eof then
        MaskEdit1.Text  :=  FloatToStr(ADOQryG.Fields.FieldByName('Puntaje').AsFloat);

      MaskEdit2.Text  := '0';
    end
  else
    begin
      MaskEdit1.Text  := '0';
      MaskEdit2.Text  := '';
    end;
end;

procedure TfrmAsignaHomologa.BitBtn1Click(Sender: TObject);
begin
  If ADOQuery1.Filtered  Then ADOQuery1.Filtered := False
  Else Begin
    ADOQuery1.Filter:= 'Descripcion like ' +chr(39)+ '%'+InputBox('Filtro', 'Filtro', '0')+'%' +chr(39);
    ADOQuery1.Filtered := True;
  End;
end;

function TfrmAsignaHomologa.BuscaValor(cod : string; Tarifa : string; ano:string):Real;
begin
  ADOQryG.Close;
  ADOQryG.SQL.Clear;
  ADOQryG.SQL.Add('SELECT * FROM SATarifasDetalle');
  ADOQryG.SQL.Add('WHERE CODIGO IN (SELECT Codigo2 FROM SAHomologacion');
  ADOQryG.SQL.Add('WHERE Tabla1 = ''CUP''');
  ADOQryG.SQL.Add('   AND Codigo1= '''+Cod+'''');
  ADOQryG.SQL.Add('   AND Tabla2 = '''+Tarifa+''')');
  ADOQryG.SQL.Add('   AND Año = '''+ano+'''');
  ADOQryG.SQL.Add('   AND Tabla = '''+Tarifa+'''');
  ADOQryG.Open;

  if not ADOQryG.Eof then
    Result  :=  ADOQryG.Fields.FieldByName('Valor').AsFloat
  else
    Result := 0;
    {begin
      Application.MessageBox('No se encontro la homologacion de este servicio, porfavor creela','Información',MB_OK+MB_ICONINFORMATION);
      exit;
    end; }
end;
procedure TfrmAsignaHomologa.CBDMaterialesClick(Sender: TObject);
begin
  MaskEdit4.Text  := FloatToStr(BuscaValor(CBDMateriales.Text,DBLookupComboBox8.Text, ComboBox3.Text));
    MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit3.Text) + StrToFloat(MaskEdit4.Text) + StrToFloat(MaskEdit5.Text)+StrToFloat(MaskEdit6.Text)+StrToFloat(MaskEdit7.Text));
end;

procedure TfrmAsignaHomologa.CBDEspecialistaClick(Sender: TObject);
begin
  MaskEdit5.Text  := FloatToStr(BuscaValor(CBDEspecialista.Text,DBLookupComboBox8.Text, ComboBox3.Text)*StrToFloat(MaskEdit1.Text));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit3.Text) + StrToFloat(MaskEdit4.Text) + StrToFloat(MaskEdit5.Text)+StrToFloat(MaskEdit6.Text)+StrToFloat(MaskEdit7.Text));
end;

procedure TfrmAsignaHomologa.CBDAnestesiologoClick(Sender: TObject);
begin
  MaskEdit6.Text  := FloatToStr(BuscaValor(CBDAnestesiologo.Text,DBLookupComboBox8.Text, ComboBox3.Text)*StrToFloat(MaskEdit1.Text));
    MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit3.Text) + StrToFloat(MaskEdit4.Text) + StrToFloat(MaskEdit5.Text)+StrToFloat(MaskEdit6.Text)+StrToFloat(MaskEdit7.Text));
end;

procedure TfrmAsignaHomologa.MaskEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
    if Cap = 1 then  Key:=#0;
end;

procedure TfrmAsignaHomologa.CBDMedAuxClick(Sender: TObject);
begin
  MaskEdit7.Text  := FloatToStr(BuscaValor(CBDMedAux.Text,DBLookupComboBox8.Text, ComboBox3.Text)*StrToFloat(MaskEdit1.Text));
  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit3.Text) + StrToFloat(MaskEdit4.Text) + StrToFloat(MaskEdit5.Text)+StrToFloat(MaskEdit6.Text)+StrToFloat(MaskEdit7.Text));
end;

procedure TfrmAsignaHomologa.CBDSalasClick(Sender: TObject);
begin
  MaskEdit3.Text  := FloatToStr(BuscaValor(CBDSalas.Text,DBLookupComboBox8.Text, ComboBox3.Text));

  MaskEdit2.Text  := FloatToStr(StrToFloat(MaskEdit3.Text) + StrToFloat(MaskEdit4.Text) + StrToFloat(MaskEdit5.Text)+StrToFloat(MaskEdit6.Text)+StrToFloat(MaskEdit7.Text));
end;

end.




