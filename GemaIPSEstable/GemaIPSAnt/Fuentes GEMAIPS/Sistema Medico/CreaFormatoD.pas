unit CreaFormatoD;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, StdCtrls, DBCtrls, ExtCtrls, ComCtrls,StrUtils,
  ExtDlgs, Buttons, JvGradient, Menus, JvExControls, JvComponentBase,
  JvInterpreter,shellapi,JvScrollBox,JvEdit;

type
  TFCreacionFormatosD = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    Panel1: TPanel;
    DBLookupListBox1: TDBLookupListBox;
    Panel2: TPanel;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQueryValida: TADOQuery;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupListBox2: TDBLookupListBox;
    Panel3: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    DataSource2: TDataSource;
    ADOQuery2: TADOQuery;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBLookupListBox3: TDBLookupListBox;
    Panel4: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Edit5: TEdit;
    Edit6: TEdit;
    DataSource3: TDataSource;
    ADOQuery3: TADOQuery;
    Panel5: TPanel;
    Panel6: TPanel;
    Button3: TButton;
    Button4: TButton;
    Panel7: TPanel;
    Button5: TButton;
    Button6: TButton;
    ScrollBar1: TScrollBar;
    Label15: TLabel;
    Edit7: TEdit;
    Label16: TLabel;
    ComboBox1: TComboBox;
    ListBox1: TListBox;
    Button7: TButton;
    Button8: TButton;
    DataSource4: TDataSource;
    ADOQuery4: TADOQuery;
    OpenPictureDialog1: TOpenPictureDialog;
    ADOQueryTablas: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery5: TADOQuery;
    ADOQuery6: TADOQuery;
    ADOQuery7: TADOQuery;
    CheckBox1: TCheckBox;
    CheckBox3: TCheckBox;
    ADOQueryValida2: TADOQuery;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit8: TEdit;
    Label18: TLabel;
    ComboBox2: TComboBox;
    GroupBox2: TGroupBox;
    Button13: TButton;
    DBImage1: TDBImage;
    Image1: TImage;
    BitBtn1: TBitBtn;
    JvGradient1: TJvGradient;
    JvGradient4: TJvGradient;
    JvGradient5: TJvGradient;
    JvGradient6: TJvGradient;
    JvGradient7: TJvGradient;
    JvGradient8: TJvGradient;
    JvGradient9: TJvGradient;
    JvGradient10: TJvGradient;
    ADOQryG: TADOQuery;
    PnlTablas: TPanel;
    JvGradient11: TJvGradient;
    Lbl19: TLabel;
    Lbl20: TLabel;
    Lbl17: TLabel;
    ComboBox8: TComboBox;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ADOConnection1: TADOConnection;
    UpDown1: TUpDown;
    UpDown2: TUpDown;
    UpDown4: TUpDown;
    PopupMenu1: TPopupMenu;
    PopupMenu2: TPopupMenu;
    PopupMenu3: TPopupMenu;
    PopupMenu4: TPopupMenu;
    Incrementar1: TMenuItem;
    Decrementar1: TMenuItem;
    Incrementar2: TMenuItem;
    Decrementar2: TMenuItem;
    Incrementar3: TMenuItem;
    Decrementar3: TMenuItem;
    Incrementar4: TMenuItem;
    Decrementar4: TMenuItem;
    Label17: TLabel;
    ComboBox9: TComboBox;
    CheckBox6: TCheckBox;
    Memo1: TMemo;
    lbl: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    GroupBox3: TGroupBox;
    DBImage2: TDBImage;
    Edit16: TEdit;
    BitBtn2: TBitBtn;
    Image2: TImage;
    Label29: TLabel;
    BitBtn3: TBitBtn;
    CheckBox7: TCheckBox;
    BitBtn4: TBitBtn;
    ADOQTmp: TADOQuery;
    Button14: TButton;
    opguardar: TSaveDialog;
    Label30: TLabel;
    Label31: TLabel;
    ComboBox11: TComboBox;
    JvGradient12: TJvGradient;
    Label32: TLabel;
    Label33: TLabel;
    Edit17: TEdit;
    Edit18: TEdit;
    Label34: TLabel;
    ComboBox10: TComboBox;
    Button15: TButton;
    Edit19: TEdit;
    JvInterpreterProgram1: TJvInterpreterProgram;
    Button16: TButton;
    ADOQuery10: TADOQuery;
    ADOQuery: TADOQuery;
    Button17: TButton;
    Label35: TLabel;
    Label36: TLabel;
    Edit20: TEdit;
    Label37: TLabel;
    Edit21: TEdit;
    Label38: TLabel;
    ComboBox12: TComboBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure DataSource2DataChange(Sender: TObject; Field: TField);
    procedure Button3Click(Sender: TObject);
    procedure DataSource3DataChange(Sender: TObject; Field: TField);
    procedure Button5Click(Sender: TObject);
    procedure ScrollBar1Change(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox3Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit5Exit(Sender: TObject);
    procedure Edit3Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Incrementar1Click(Sender: TObject);
    procedure Decrementar1Click(Sender: TObject);
    procedure Incrementar2Click(Sender: TObject);
    procedure Decrementar2Click(Sender: TObject);
    procedure Incrementar3Click(Sender: TObject);
    procedure Decrementar3Click(Sender: TObject);
    procedure Incrementar4Click(Sender: TObject);
    procedure Decrementar4Click(Sender: TObject);
    Function ValidaFor(Formato:String):Boolean;
    procedure ComboBox8Exit(Sender: TObject);
    procedure DBLookupListBox3Click(Sender: TObject);
    procedure DBLookupListBox2Click(Sender: TObject);
    procedure DBLookupListBox1Click(Sender: TObject);
    procedure CheckBox6Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCreacionFormatosD: TFCreacionFormatosD;

implementation

uses UDataModule1, UbicacionXY,Libreria_Prateinco;

{$R *.dfm}

Function TFCreacionFormatosD.ValidaFor(Formato:String):Boolean;
Begin
  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDInformacion Where Codigo_Formato ='+chr(39)+Formato+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount > 0 Then ValidaFor:=True;
End;

procedure TFCreacionFormatosD.Button1Click(Sender: TObject);
begin
  IF (edit1.Text <> '') and (edit2.text <> '') and (length(edit1.Text) = 3) Then
  Begin
    ADOQueryValida.Close;
    ADOQueryValida.SQL.Clear;
    ADOQueryValida.SQL.Add('SELECT * FROM FDFormatos Where Codigo ='+chr(39)+Edit1.text+chr(39));
    ADOQueryValida.Open;
    IF ADOQueryValida.RecordCount = 0 Then
    Begin
      ADOQueryValida.Append;
    End
    Else Begin
      ADOQueryValida.Edit;
    End;
    ADOQueryValida.FieldValues['Codigo'] := Edit1.Text;
    ADOQueryValida.FieldValues['Descripcion'] := Edit2.Text;
    If Edit8.Text <> null then ADOQueryValida.FieldByName('Icono').Assign(Image1.Picture.Bitmap);
    If ComboBox2.Text <> '' Then ADOQueryValida.FieldValues['Multiline'] := ComboBox2.Text;
    ADOQueryValida.FieldValues['Sexo'] := ComboBox12.Text;
    ADOQueryValida.FieldValues['EdadINI'] := Edit20.Text;
    ADOQueryValida.FieldValues['EdadFIN'] := Edit21.Text;
    ADOQueryValida.Post;
  End
  Else Begin
    Showmessage('Debe diligenciar todos los campos.');
  End;
  ADOQuery1.Close;
  ADOQuery1.Open;
  Edit20.Text:='0';
  Edit21.Text:='0';
  ComboBox12.Text := '';
  Edit1.Text:='';
  Edit2.Text:='';
  Edit8.Text:='';
  Edit1.SetFocus;
end;

procedure TFCreacionFormatosD.FormCreate(Sender: TObject);
begin
  ADOQuery1.Open;
  Edit7.Text:=inttostr(ScrollBar1.Position);
  PageControl1.ActivePageIndex := 0;
end;

procedure TFCreacionFormatosD.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action:=cafree;
end;

procedure TFCreacionFormatosD.DataSource1DataChange(Sender: TObject;
  Field: TField);
begin
  If ADOQuery1.RecordCount > 0 Then
  Begin
    if ADOQuery1.FieldValues['Descripcion'] <> null then label4.caption:=ADOQuery1.FieldValues['Codigo']+' '+ADOQuery1.FieldValues['Descripcion']
    else label4.caption:='';

    Edit1.Text := ADOQuery1.FieldValues['Codigo'];
    Edit2.Text := ADOQuery1.FieldValues['Descripcion'];
    IF ADOQuery1.FieldValues['MultiLine'] <> null then Combobox2.Text := ADOQuery1.FieldValues['MultiLine']
    Else Combobox2.Text := '';
    Image1.Picture.Bitmap.Assign(ADOQuery1.FieldByName('Icono'));
    RedimensionarImagen(Image1.Picture.Bitmap, Image1.Width,Image1.Height);
    //ADOQueryValida.FieldByName('Icono').Assign(Image1.Picture.Bitmap);

    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['CDFmt']:=ADOQuery1.FieldValues['Codigo'];
    ADOQuery2.Open;

  End
  Else Begin
    label4.caption:='';
    label7.caption:='';
    label10.caption:='';
    ADOQuery2.Close;
    ADOQuery3.Close;
    ADOQuery5.Close;
  End;
end;

procedure TFCreacionFormatosD.DataSource2DataChange(Sender: TObject;
  Field: TField);
begin
  If ADOQuery2.Active Then
  Begin
    if ADOQuery2.FieldValues['Descripcion'] <> null then label7.caption:=ADOQuery2.FieldValues['Codigo_Seccion']+' '+ADOQuery2.FieldValues['Descripcion']
    else label7.caption:='';

    If (ADOQuery2.FieldValues['Codigo_Formato'] <> null) AND (ADOQuery2.FieldValues['Codigo_Seccion'] <> null) Then
    Begin
      ADOQuery3.Close;
      ADOQuery3.Parameters.ParamValues['CDFmt'] :=ADOQuery2.FieldValues['Codigo_Formato'];
      ADOQuery3.Parameters.ParamValues['CDSecc']:=ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery3.Open;
    End
    else ADOQuery3.Close;
  End;
end;

procedure TFCreacionFormatosD.Button3Click(Sender: TObject);
begin
  IF (edit3.Text <> '') and (edit4.text <> '') and (length(edit3.Text) = 3) Then
  Begin
    ADOQueryValida.Close;
    ADOQueryValida.SQL.Clear;
    ADOQueryValida.SQL.Add('SELECT * FROM FDSecciones Where Codigo_Formato ='+chr(39)+ADOQuery1.FieldValues['Codigo']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+Edit3.text+chr(39));
    ADOQueryValida.Open;
    IF ADOQueryValida.RecordCount = 0 Then
    Begin
      ADOQueryValida.Append;
    End
    Else Begin
      ADOQueryValida.Edit;
    End;
    ADOQueryValida.FieldValues['Codigo_Formato'] := ADOQuery1.FieldValues['Codigo'];
    ADOQueryValida.FieldValues['Codigo_Seccion'] := Edit3.Text;
    ADOQueryValida.FieldValues['Descripcion'] := Edit4.Text;
    If Edit16.Text <> null then ADOQueryValida.FieldByName('Imagen').Assign(Image2.Picture.Bitmap);
    ADOQueryValida.Post;
  End
  Else Begin
    Showmessage('Debe diligenciar todos los campos.');
  End;
  Edit3.Text:='';
  Edit4.Text:='';
  Edit3.SetFocus;
  ADOQuery2.Close;
  ADOQuery2.Open;
end;

procedure TFCreacionFormatosD.DataSource3DataChange(Sender: TObject;
  Field: TField);
begin
  if ADOQuery3.Active Then
  Begin
    if ADOQuery3.FieldValues['Descripcion'] <> null then label10.caption:=ADOQuery3.FieldValues['Codigo_Campo']+' '+ADOQuery3.FieldValues['Descripcion']
    else label10.caption:='';

    If (ADOQuery3.FieldValues['Codigo_Formato'] <> null) AND (ADOQuery3.FieldValues['Codigo_Seccion'] <> null) AND (ADOQuery3.FieldValues['Codigo_Campo'] <> null) Then
    Begin
      ADOQuery5.Close;
      ADOQuery5.Parameters.ParamValues['CDFmt'] :=ADOQuery3.FieldValues['Codigo_Formato'];
      ADOQuery5.Parameters.ParamValues['CDSecc']:=ADOQuery3.FieldValues['Codigo_Seccion'];
      ADOQuery5.Parameters.ParamValues['CDCampo']:=ADOQuery3.FieldValues['Codigo_Campo'];
      ADOQuery5.Open;
    End
    else ADOQuery5.Close;
  End;
end;

procedure TFCreacionFormatosD.Button5Click(Sender: TObject);
Var i:Integer;
begin
  IF (edit5.Text <> '') and (edit6.text <> '') and (ComboBox1.Text <> '') and (length(edit5.Text) > 1) Then
  Begin
    IF Leftstr(ComboBox1.Text,2) = '07' Then
    Begin
      IF (Combobox3.Text = '') or (Combobox4.Text = '') then
      Begin
         Showmessage('Debe ingresar la tabla y el campo.');
         exit;
       End;
    End;
    ADOQueryValida.Close;
    ADOQueryValida.SQL.Clear;
    ADOQueryValida.SQL.Add('SELECT * FROM FDCampos Where Codigo_Formato ='+chr(39)+ADOQuery2.FieldValues['Codigo_Formato']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+ADOQuery2.FieldValues['Codigo_Seccion']+chr(39)+ ' AND Codigo_Campo ='+chr(39)+Edit5.text+chr(39));
    ADOQueryValida.Open;
    IF ADOQueryValida.RecordCount = 0 Then
    Begin
      ADOQueryValida.Append;
    End
    Else Begin
      ADOQueryValida.Edit;
    End;

    ADOQueryValida.FieldValues['Codigo_Formato'] := ADOQuery2.FieldValues['Codigo_Formato'];
    ADOQueryValida.FieldValues['Codigo_Seccion'] := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQueryValida.FieldValues['Codigo_Campo'] := Edit5.Text;
    ADOQueryValida.FieldValues['Descripcion'] := Edit6.Text;
    If CheckBox1.Checked Then ADOQueryValida.FieldValues['Obligatorio'] := '1'
    Else ADOQueryValida.FieldValues['Obligatorio'] := '0';
    If CheckBox3.Checked Then ADOQueryValida.FieldValues['Advertencia'] := '1'
    Else ADOQueryValida.FieldValues['Advertencia'] := '0';
    If CheckBox6.Checked Then ADOQueryValida.FieldValues['TextoFijo'] := '1'
    Else ADOQueryValida.FieldValues['TextoFijo'] := '0';
    If CheckBox7.Checked Then ADOQueryValida.FieldValues['Label'] := 'S'
    Else ADOQueryValida.FieldValues['Label'] := 'N';
    ADOQueryValida.FieldValues['Tipo'] := strtoint(Leftstr(ComboBox1.Text,2));
    ADOQueryValida.FieldValues['Tamaño'] := strtoint(Edit7.Text);
    IF Leftstr(ComboBox1.Text,2) = '07' Then
    Begin
      ADOQueryValida.FieldValues['Tabla']     := Combobox3.Text;
      ADOQueryValida.FieldValues['Campo']     := Combobox4.Text;
      ADOQueryValida.FieldValues['CampoDesc'] := Combobox9.Text;
      ADOQueryValida.FieldValues['BaseDatos'] := ComboBox8.Text;
    End;
    IF Leftstr(ComboBox1.Text,2) = '12' Then
    Begin
      ADOQueryValida.FieldValues['texto']     := Memo1.Text;
    End;
    ADOQueryValida.FieldValues['texto']     := Memo1.Text;
    ADOQueryValida.FieldValues['X'] := Edit12.Text;
    ADOQueryValida.FieldValues['Y'] := Edit13.Text;
    ADOQueryValida.FieldValues['Sexo'] := ComboBox11.Text;
    ADOQueryValida.FieldValues['EdadINI'] := Edit17.Text;
    ADOQueryValida.FieldValues['EdadFIN'] := Edit18.Text;
    ADOQueryValida.Post;

    IF ListBox1.Count <> 0 Then Begin
      ADOQuery4.Open;
      For i:=0 to ListBox1.Count -1 Do Begin
        ADOQueryValida2.Close;
        ADOQueryValida2.SQL.Clear;
        ADOQueryValida2.SQL.Add('SELECT * FROM FDOpciones Where Codigo_Formato ='+chr(39)+ADOQuery2.FieldValues['Codigo_Formato']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+ADOQuery2.FieldValues['Codigo_Seccion']+chr(39)+ ' AND Codigo_Campo ='+chr(39)+Edit5.text+chr(39)+' AND Valor = '+chr(39)+ListBox1.Items.Strings[i]+chr(39));
        ADOQueryValida2.Open;
        IF ADOQueryValida2.RecordCount = 0 Then
        Begin
          ADOQuery4.Append;
          ADOQuery4.FieldValues['Codigo_Formato']  := ADOQueryValida.FieldValues['Codigo_Formato'];
          ADOQuery4.FieldValues['Codigo_Seccion']  := ADOQueryValida.FieldValues['Codigo_Seccion'];
          ADOQuery4.FieldValues['Codigo_Campo']    := ADOQueryValida.FieldValues['Codigo_Campo'];
          ADOQuery4.FieldValues['Codigo_SubCampo'] := '000';
          ADOQuery4.FieldValues['Valor'] := ListBox1.Items.Strings[i];
          ADOQuery4.Post;
        End;
      End;
      ADOQuery4.Close;
    End;

  End
  Else Begin
    Showmessage('Debe diligenciar todos los campos.');
  End;
  Edit5.Text:='';
  Edit6.Text:='';
  Edit17.Text:='0';
  Edit18.Text:='0';
  ComboBox11.Text := '';
  Memo1.Text :='';
  CheckBox1.Checked := False;
  CheckBox3.Checked := False;
  Listbox1.Clear;
  Edit5.SetFocus;
  ADOQuery3.Close;
  ADOQuery3.Open;
end;

procedure TFCreacionFormatosD.ScrollBar1Change(Sender: TObject);
begin
  Edit7.Text:=inttostr(ScrollBar1.Position);
end;

procedure TFCreacionFormatosD.Button7Click(Sender: TObject);
begin
  Listbox1.Items.Add(InputBox('Lista de Opciones', 'Nueva Opción', ''));
end;

procedure TFCreacionFormatosD.Button8Click(Sender: TObject);
begin
  ListBox1.Clear;

  ADOQuery6.Close;
  ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery3.FieldValues['Codigo_Formato'];
  ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery3.FieldValues['Codigo_Seccion'];
  ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
  ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
  ADOQuery6.Open;

  ADOQuery6.First;
  ListBox1.Clear;
  While NOT ADOQuery6.Eof Do
  Begin
    ListBox1.Items.Add(ADOQuery6.FieldValues['Valor']);
    ADOQuery6.Delete;

    ADOQuery6.First;
  End;
end;

procedure TFCreacionFormatosD.CheckBox6Click(Sender: TObject);
begin
  if Checkbox6.Checked then
  Begin
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
  End
  Else Begin
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
  End;
end;

procedure TFCreacionFormatosD.ComboBox1Change(Sender: TObject);
begin
  IF leftstr(Combobox1.Text,2) = '00' Then
  Begin
    Label15.Caption    := 'Tam Caracter';
    ListBox1.Visible   := False;
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible  := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := False;
    CheckBox1.Visible  := False;
    Memo1.Visible      := True;
    Label35.Visible    := False;
    Edit19.Visible     := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '01' Then
  Begin
    Label15.Caption    := 'Tam Caracter';
    ListBox1.Visible   := False;
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := True;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '02' Then
  Begin
    Label15.Caption    := 'Tam Lineas';
    ListBox1.Visible   := False;
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '03' Then
  Begin
    Label15.Caption    := 'Tam Largo';
    ListBox1.Visible   := False;
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '04' Then
  Begin
    ListBox1.Visible   := True;
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
    Button8.Visible    := True;
    Button7.Visible    := True;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := True;
    Label35.Visible    := True;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '05' Then
  Begin
    Label15.Caption    := 'Tam Texto F';
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := True;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '06' Then   // Formula
  Begin
    Showmessage('Por Ejemplo: 10 + 8 * |100201101| En este ejemplo suma 10 a 8 y lo multiplica por el contenido de la celda 100201101 (Formato,Seccion,Campo) (Este debe ser Numerica osea campo 10). Lo que hay entre {} Es una condicion de seleccion');
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible  := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := True;
    Label35.Visible    := True;
    Edit19.Visible      := True;
    Button15.Visible   := True;
    Button16.Visible   := True;
  End
  Else IF leftstr(Combobox1.Text,2) = '07' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
    Button8.Visible    := False;
    Button7.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    ADOQryG.Connection := DataModule1.ADOComunes;

    ADOQryG.Close;
    ADOQryG.SQL.Clear;
    ADOQryG.SQL.Add('SELECT Distinct BaseDatos');
    ADOQryG.SQL.Add('FROM SEEmpresas');
    ADOQryG.Open;

    ComboBox8.Clear;
    ComboBox8.Items.Add(Datamodule1.ADOComunes.DefaultDatabase);
    while not ADOQryG.Eof do
      begin
        ComboBox8.Items.Add(ADOQryG.Fields.FieldByName('BaseDatos').AsString);
        ADOQryG.Next;
      end;
    ComboBox8.ItemIndex  := 0;
    PnlTablas.Visible    := True;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '08' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '09' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '10' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '11' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '12' Then
  Begin
    Label15.Caption    := 'Tam Lineas';
    ListBox1.Visible   := False;
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := True;
    Label35.Visible    := True;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '13' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := False;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '14' Then
  Begin
    ListBox1.Visible   := True;
    Label15.Visible    := False;
    ScrollBar1.Visible := False;
    Edit7.Visible      := False;
    Button8.Visible    := True;
    Button7.Visible    := True;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := False;
    Label35.Visible    := False;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '15' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := True;
    Label35.Visible    := True;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
  Else IF leftstr(Combobox1.Text,2) = '20' Then
  Begin
    ListBox1.Visible   := False;
    Label15.Visible    := True;
    ScrollBar1.Visible := True;
    Edit7.Visible      := True;
    Button8.Visible    := False;
    Button7.Visible    := False;
    PnlTablas.Visible    := False;
    CheckBox6.Visible  := False;
    CheckBox7.Visible  := True;
    CheckBox3.Visible  := True;
    CheckBox1.Visible  := True;
    Memo1.Visible      := True;
    Label35.Visible    := True;
    Edit19.Visible      := False;
    Button15.Visible   := False;
    Button16.Visible   := False;
  End
end;

procedure TFCreacionFormatosD.Button6Click(Sender: TObject);
begin
  if MessageDlg('Esta seguro de eliminar este Item?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOQuery3.Delete;
  End;
  DBLookupListBox3.SetFocus;
end;

procedure TFCreacionFormatosD.Button2Click(Sender: TObject);
begin
  IF FCreacionFormatosD.ValidaFor(ADOQuery1.FieldValues['Codigo']) Then
  Begin
    if MessageDlg('Esta seguro de eliminar este Item?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      ADOQuery1.Delete;

      ADOQtmp.Close;
      ADOQtmp.SQL.Clear;
      ADOQtmp.SQL.Add('DELETE ');
      ADOQtmp.SQL.Add('FROM FDSecciones ');
      ADOQtmp.SQL.Add('WHERE Codigo_Formato NOT IN (SELECT Codigo FROM FDFormatos) ');
      ADOQtmp.SQL.Add('DELETE ');
      ADOQtmp.SQL.Add('FROM FDCampos ');
      ADOQtmp.SQL.Add('WHERE Codigo_Formato NOT IN (SELECT Codigo FROM FDFormatos) ');
      ADOQtmp.SQL.Add('DELETE ');
      ADOQtmp.SQL.Add('FROM FDSubCampos ');
      ADOQtmp.SQL.Add('WHERE Codigo_Formato NOT IN (SELECT Codigo FROM FDFormatos) ');
      ADOQtmp.ExecSQL;
    End;
  End
  Else Showmessage('ERROR: No es posible Eliminar Formatos con Información.');

  DBLookupListBox1.SetFocus;
end;

procedure TFCreacionFormatosD.Button4Click(Sender: TObject);
begin
  if MessageDlg('Esta seguro de eliminar este Item?',mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    IF ADOQuery3.Active Then Begin
      While ADOQuery3.RecordCount <> 0 Do
      Begin
        ADOQuery3.Delete;
      End;
    End;

    ADOQuery2.Delete;
  End;
  DBLookupListBox2.SetFocus;
end;

procedure TFCreacionFormatosD.BitBtn1Click(Sender: TObject);
begin
  OpenPictureDialog1.Title := 'Imagen a mostrar.';
  OpenPictureDialog1.InitialDir := ExtractFilePath(paramstr(0)) +'Imagenes\'  ;
  if OpenPictureDialog1.Execute then begin
    Edit8.Text := OpenPictureDialog1.FileName;
    Image1.Picture.LoadFromFile(OpenPictureDialog1.FileName);
    //RedimensionarImagen(Image1.Picture.Bitmap, Image1.Width,Image1.Height);
  end;
end;

procedure TFCreacionFormatosD.ComboBox3Exit(Sender: TObject);
var i:Integer;
    IndEst:Integer;
begin
  ADOQueryTablas.Connection  := ADOConnection1;

  ADOQueryTablas.Close;
  ADOQueryTablas.SQL.Clear;
  ADOQueryTablas.SQL.Add('SELECT * FROM '+Combobox3.Text);
  ADOQueryTablas.Open;
  Combobox4.Clear;
  Combobox9.Clear;
  IndEst:=0;
  For i:=0 TO ADOQueryTablas.FieldCount-1 do
  Begin
    if uppercase(ADOQueryTablas.FieldDefList.FieldDefs[i].Name) = 'ESTADO' then
    Begin
      IndEst := 1;
    End
    Else Begin
      Combobox4.Items.Add(ADOQueryTablas.FieldDefList.FieldDefs[i].Name);
      Combobox9.Items.Add(ADOQueryTablas.FieldDefList.FieldDefs[i].Name);
    End;  
  End;
  if IndEst = 0 Then
  Begin
    Combobox4.Clear;
    Combobox9.Clear;
    Showmessage('ERROR: Esta tabla debe tener el campo de Estado.');
  End;
end;

procedure TFCreacionFormatosD.BitBtn2Click(Sender: TObject);
begin
  OpenPictureDialog1.Title := 'Imagen a mostrar.';
  OpenPictureDialog1.InitialDir := ExtractFilePath(paramstr(0)) +'Imagenes\'  ;
  if OpenPictureDialog1.Execute then begin
    Edit16.Text := OpenPictureDialog1.FileName;
    Image2.Picture.LoadFromFile(OpenPictureDialog1.FileName);
  end;
end;

procedure TFCreacionFormatosD.BitBtn3Click(Sender: TObject);
var i,j,k,Desp,Desp2,Desp3,Tm,ing,NoC2,x,y:integer;
  Textnuevo         : TLabel;
  EditNuevo         : TEdit;
  MemoNuevo         : TMemo;
  DBImageNuevo      : TImage;
  FrameNuevo        : TJVScrollBox;
  PanelNuevo2       : TGroupBox;
  ComboBoxNuevo     : TCombobox;
  CheckBoxNuevo     : TCheckBox;
  DateTimeNuevo     : TDatetimePicker;
  DBLComboNuevo     : TDBLookupComboBox;
  DBLComboNuevo1    : TDBLookupComboBox;
  DBADOQueryNuevo   : TADOQuery;
  DBDatasourceNuevo : TDataSource;
  DBADOConectionNuevo : TAdoConnection;
  RadioNuevo        : TRadioButton;
  NoC,TamMemo       : Integer;
  Fondo             : TJvGradient;
  Panel             : TPanel;
  Panel1            : TPanel;
  Boton             : TBitBtn;
  Boton1            : TBitBtn;
  img               : TImage;
  TextN             : TJvEdit;
  TextN1            : TJvEdit;
  TextN2            : TJvEdit;
  PanelNuevo        : TPanel;
begin
  ubixy := tubixy.create(application);
  try
    Datamodule1.MuestraconAcceso(ubixy);
  except
    ubixy.free;
  end;

  NoC := 0;
  NoC2 := 0;
  tammemo:=0;

  Panelnuevo                 := TPanel.Create(ubixy.ScrollBox1);
  Panelnuevo.Parent          := ubixy.ScrollBox1;
  Panelnuevo.BevelInner      := bvLowered;
  Panelnuevo.BevelOuter      := BvRaised;
  Panelnuevo.Color           := clActiveBorder;
  Panelnuevo.Align           := alClient;

  Framenuevo                 := TJVScrollBox.Create(PanelNuevo);
  Framenuevo.Parent          := PanelNuevo;
  Framenuevo.Align           := alClient;
  if tammemo = 0 then tammemo:=FrameNuevo.Width;
  FrameNuevo.AutoScroll      := True;

  DBImageNuevo               := TImage.Create(FrameNuevo);
  DBImageNuevo.Parent        := FrameNuevo;
  DBImageNuevo.Picture.Bitmap.Assign(ADOQuery2.FieldByName('Imagen'));
  DBImageNuevo.Transparent   := False;
  DBImageNuevo.AutoSize      := true;
  DBImageNuevo.SendToBack;
  DBImageNuevo.OnClick       := Ubixy.imgClick;
  DBImageNuevo.OnDblClick    := Ubixy.imgDblClick;
  DBImageNuevo.OnMouseMove   := Ubixy.imgMouseMove;

  //Img.Picture.Assign(FCreacionFormatosD.DBImage2.Picture.Bitmap);
  x:=0;
  y:=0;
  while x < DBImageNuevo.Height do
  Begin
    DBImageNuevo.Canvas.MoveTo(x,0);
    DBImageNuevo.Canvas.LineTo(x,DBImageNuevo.Height);

    x:=x+50;
  End;

  while y < DBImageNuevo.Width do
  Begin
    DBImageNuevo.Canvas.MoveTo(0,y);
    DBImageNuevo.Canvas.LineTo(DBImageNuevo.Width,y);

    y:=y+50;
  End;

  ADOQuery3.first;

  Desp:=0;
  for j:=0 To ADOQuery3.RecordCount-1 do
  begin
   //Verificar Si Solicita el Campo por Edad y Sexo
   Ing:=0;
   if ing=0 then
   begin
     //Aqui se adicionan los controles para solicitar datos segun el tipo de campo.
     //Campo label que muestra el nombre del campo.
     //if (ADOQuery3.FieldValues['Tipo'] <> 5) and (ADOQuery3.FieldValues['Tipo'] <> 11)then
     Textnuevo              := TLabel.Create(Framenuevo);
     Textnuevo.Parent       := FrameNuevo;
     if (ADOQuery3.FieldValues['Label'] <> 'N')then
     begin
       Textnuevo.Caption      := ADOQuery3.FieldValues['Codigo_Campo']+ ' - ' +ADOQuery3.FieldValues['Descripcion']+':';
       if ADOQuery3.FieldValues['X'] <> 0 then Textnuevo.Left := ADOQuery3.FieldValues['X']
       Else Textnuevo.Left := 10;
       if ADOQuery3.FieldValues['Y'] <> 0 then Textnuevo.Top := ADOQuery3.FieldValues['Y']
       Else Textnuevo.Top := 13+Desp;
       Textnuevo.Hint         := 'Tx'+ADOQuery3.FieldValues['Codigo_Formato']+ADOQuery3.FieldValues['Codigo_Seccion']+ADOQuery3.FieldValues['Codigo_Campo'];
       Textnuevo.AutoSize     := true;
       Textnuevo.Font.Color   := clblack;
       Textnuevo.Transparent  := True;
     end;

     if ADOQuery3.FieldValues['Tipo'] = 1 Then
     begin
       //Campo texto que solicita informaciòn.
       EditNuevo            := TEdit.Create(Framenuevo);
       EditNuevo.Parent     := FrameNuevo;
       if ADOQuery3.FieldValues['X'] <> 0 then EditNuevo.Left := ADOQuery3.FieldValues['X']
       Else EditNuevo.Left := 10;
       if ADOQuery3.FieldValues['Y'] <> 0 then EditNuevo.Top := ADOQuery3.FieldValues['Y']
       Else EditNuevo.Top := 30+Desp;
       if ADOQuery3.FieldValues['Tamaño'] <> null then
       Begin
         EditNuevo.MaxLength  := ADOQuery3.FieldValues['Tamaño'];
         EditNuevo.Width := (ADOQuery3.FieldValues['Tamaño'] * 15);
       End;
       EditNuevo.Font.Style := [];
       EditNuevo.Name       := 'Ed'+inttostr(NoC);
       EditNuevo.Hint       := ADOQuery3.FieldValues['Codigo_Campo'];
       if ADOQuery3.FieldValues['Obligatorio'] = '1' then
         EditNuevo.Color    := clYellow
       else
         EditNuevo.Color    := clwindow;
       EditNuevo.Text       := '';
       Desp                 := Desp + 30 +EditNuevo.Height;
       inc(NoC);
     end
     else if ADOQuery3.FieldValues['Tipo'] = 2 then
     begin
         //Campo Memo que solicita informaciòn.
         MemoNuevo := TMemo.Create(FrameNuevo);
         MemoNuevo.Parent :=FrameNuevo;
         if ADOQuery3.FieldValues['X'] <> 0 then MemoNuevo.Left := ADOQuery3.FieldValues['X']
         Else MemoNuevo.Left := 10;
         if ADOQuery3.FieldValues['Y'] <> 0 then MemoNuevo.Top := ADOQuery3.FieldValues['Y']
         Else MemoNuevo.Top := 30+Desp;
         MemoNuevo.Width := tammemo - 30;
         if ADOQuery3.FieldValues['Tamaño'] <> null then
           MemoNuevo.Height := ADOQuery3.FieldValues['Tamaño']
         Else MemoNuevo.Height := 55;
         MemoNuevo.Font.Style := [];
         MemoNuevo.Name := 'Ed'+inttostr(NoC);
         MemoNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
         MemoNuevo.HelpKeyword := ADOQuery3.FieldValues['Descripcion'];
         if ADOQuery3.FieldValues['Obligatorio'] = '1' then
           MemoNuevo.Color :=clYellow
         else
           MemoNuevo.Color := clwindow;
         MemoNuevo.Text := '';
         Desp := Desp + MemoNuevo.Height+20;
         inc(NoC);
     end
     else if ADOQuery3.FieldValues['Tipo'] = 3 then
     begin
       //Campo ComboBox Historico.
       ComboBoxNuevo := TComboBox.Create(FrameNuevo);
       ComboBoxNuevo.Parent :=FrameNuevo;
       if ADOQuery3.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := ADOQuery3.FieldValues['X']
       Else ComboBoxNuevo.Left := Textnuevo.Width + 15;
       if ADOQuery3.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := ADOQuery3.FieldValues['Y']
       Else ComboBoxNuevo.Top := 10+Desp;
       ComboBoxNuevo.Font.Style := [];
       ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
       ComboBoxNuevo.Text:='';
       ComboBoxNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
       ComboBoxNuevo.Style := csDropDown;
       if ADOQuery3.FieldValues['Obligatorio'] = '1' then
         ComboBoxNuevo.Color := clYellow
       else
         ComboBoxNuevo.Color :=clwindow;
       ComboBoxNuevo.Width := 20;

       if ADOQuery3.FieldValues['Tamaño'] <> null then
       begin
         if ADOQuery3.FieldValues['Tamaño'] < 3 then tm := 14
         else if ADOQuery3.FieldValues['Tamaño'] < 6 then tm := 12
         else if ADOQuery3.FieldValues['Tamaño'] < 9 then tm := 11
         else if ADOQuery3.FieldValues['Tamaño'] < 12 then tm := 10
         else if ADOQuery3.FieldValues['Tamaño'] < 15 then tm := 9
         else if ADOQuery3.FieldValues['Tamaño'] < 20 then tm := 8
         else tm := 7;

         ComboBoxNuevo.Width     := ADOQuery3.FieldValues['Tamaño'] * tm;
         ComboBoxNuevo.MaxLength := ADOQuery3.FieldValues['Tamaño'];
       end;

       Desp := Desp + 30;
       inc(NoC);
     end
     else if ADOQuery3.FieldValues['Tipo'] = 4 then
     begin
       //Campo ComboBox que solicita informaciòn.
       ComboBoxNuevo := TComboBox.Create(FrameNuevo);
       ComboBoxNuevo.Parent :=FrameNuevo;
       if ADOQuery3.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := ADOQuery3.FieldValues['X']
       Else ComboBoxNuevo.Left := Textnuevo.Width + 15;
       if ADOQuery3.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := ADOQuery3.FieldValues['Y']
       Else ComboBoxNuevo.Top := 10+Desp;
       ComboBoxNuevo.Font.Style := [];
       ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
       ComboBoxNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
       ComboBoxNuevo.Style := csDropDown;
       ComboBoxNuevo.Text  := '';

       if ADOQuery3.FieldValues['Obligatorio'] = '1' then
         ComboBoxNuevo.Color := clYellow
       else
         ComboBoxNuevo.Color :=clwindow;
       ComboBoxNuevo.Width := 20;

       ADOQuery.Close;
       ADOQuery.Parameters.ParamValues['CDFmt']     := ADOQuery3.FieldValues['Codigo_Formato'];
       ADOQuery.Parameters.ParamValues['CDSecc']    := ADOQuery3.FieldValues['Codigo_Seccion'];
       ADOQuery.Parameters.ParamValues['CDCamp']    := ADOQuery3.FieldValues['Codigo_Campo'];
       ADOQuery.Parameters.ParamValues['CDSubCamp'] := '000';
       ADOQuery.Open;
       ADOQuery.First;
       while not ADOQuery.Eof do
       begin
         ComboBoxNuevo.Items.Add(ADOQuery.FieldValues['Valor']);
         if length(ADOQuery.FieldValues['Valor']) < 3 then tm := 20
         else if length(ADOQuery.FieldValues['Valor']) < 6 then tm := 15
         else if length(ADOQuery.FieldValues['Valor']) < 9 then tm := 12
         else if length(ADOQuery.FieldValues['Valor']) < 12 then tm := 10
         else if length(ADOQuery.FieldValues['Valor']) < 15 then tm := 9
         else if length(ADOQuery.FieldValues['Valor']) < 20 then tm := 8
         else tm := 7;

         if (length(ADOQuery.FieldValues['Valor'])* tm) > ComboBoxNuevo.Width then
            ComboBoxNuevo.Width := (length(ADOQuery.FieldValues['Valor'])* tm);
         ADOQuery.Next;
       end;
       Desp := Desp + 30;
       inc(NoC);
     end
     else if ADOQuery3.FieldValues['Tipo'] = 5 then
     begin
       //*******************************************************************************
       //Aqui se adicionan los controles para solicitar datos segun el tipo de SUBCAMPO.
       //*******************************************************************************
       Panelnuevo2 := TGroupBox.Create(FrameNuevo);
       Panelnuevo2.Parent :=FrameNuevo;
       Panelnuevo2.Caption:= ADOQuery3.FieldValues['Codigo_Campo']+ ' - ' +ADOQuery3.FieldValues['Descripcion']+':';
       Panelnuevo2.Color := clActiveBorder;
       if ADOQuery3.FieldValues['X'] <> 0 then Panelnuevo2.Left := ADOQuery3.FieldValues['X']
       Else Panelnuevo2.Left := 10;
       if ADOQuery3.FieldValues['Y'] <> 0 then Panelnuevo2.Top := ADOQuery3.FieldValues['Y']
       Else Panelnuevo2.Top := 13+Desp;
       Panelnuevo2.Width := tammemo - 30;
       Panelnuevo2.Hint  := ADOQuery3.FieldValues['Codigo_Campo'];
       Panelnuevo2.Height := 45;
       Desp := Desp + 45;

       ADOQuery10.Close;
       ADOQuery10.Parameters.ParamValues['CDFmt']  :=ADOQuery3.FieldValues['Codigo_Formato'];
       ADOQuery10.Parameters.ParamValues['CDSecc'] :=ADOQuery3.FieldValues['Codigo_Seccion'];
       ADOQuery10.Parameters.ParamValues['CDCampo']:=ADOQuery3.FieldValues['Codigo_Campo'];
       ADOQuery10.Open;
       ADOQuery10.First;
       Desp2:=0;
       Desp3:=15;
       for k:=0 to ADOQuery10.RecordCount-1 do
       begin
         //Campo label que muestra el nombre del campo.
         Textnuevo          := TLabel.Create(Panelnuevo2);
         Textnuevo.Parent   := Panelnuevo2;
         Textnuevo.Caption  := ADOQuery10.FieldValues['Codigo_SubCampo']+ ' - ' +ADOQuery10.FieldValues['Descripcion']+':';
         Textnuevo.Hint     := 'Tx'+ADOQuery10.FieldValues['Codigo_Formato']+ADOQuery10.FieldValues['Codigo_Seccion']+ADOQuery10.FieldValues['Codigo_Campo']+ADOQuery10.FieldValues['Codigo_SubCampo'];
         if ADOQuery3.FieldValues['TextoFijo'] = '1' Then
         Begin
           Textnuevo.AutoSize := false;
           Textnuevo.Width    := ADOQuery3.FieldValues['Tamaño']*10;
         End
         Else Textnuevo.AutoSize := true;

         if ((Textnuevo.Width + 10+Desp2)> panelnuevo2.Width) OR (ADOQuery10.FieldValues['NLinea'] = '1') then
         begin
           Desp2:=0;
           Panelnuevo2.Height := Panelnuevo2.Height + 30;
           Desp := Desp + 30;
           Desp3:= Desp3+ 25;
         end;
         Textnuevo.Left     := 10+Desp2;
         Textnuevo.Top      := Desp3+3;

         if ADOQuery10.FieldValues['Tipo'] = 1 then
         begin
           if ADOQuery10.FieldValues['Tamaño'] < 3 then tm := 14
           else if ADOQuery10.FieldValues['Tamaño'] < 6 then tm := 12
           else if ADOQuery10.FieldValues['Tamaño'] < 9 then tm := 11
           else if ADOQuery10.FieldValues['Tamaño'] < 12 then tm := 10
           else if ADOQuery10.FieldValues['Tamaño'] < 15 then tm := 9
           else if ADOQuery10.FieldValues['Tamaño'] < 20 then tm := 8
           else tm := 7;

           //Campo texto que solicita informaciòn.
           EditNuevo := TEdit.Create(Panelnuevo2);
           EditNuevo.Parent :=Panelnuevo2;
           if ADOQuery10.FieldValues['Tamaño'] <> null then
           begin
             EditNuevo.Width  := ADOQuery10.FieldValues['Tamaño'] * tm;
             EditNuevo.MaxLength := ADOQuery10.FieldValues['Tamaño'];
           end;

           if (Textnuevo.Width +EditNuevo.Width + 10+Desp2)> panelnuevo2.Width then
           begin
             Desp2:=0;
             Panelnuevo2.Height := Panelnuevo2.Height + 30;
             Desp := Desp + 30;
             Desp3:= Desp3+ 25;
           end;
           if ADOQuery10.FieldValues['X'] <> 0 then EditNuevo.Left := ADOQuery10.FieldValues['X']
           Else EditNuevo.Left := Textnuevo.Width + 10 +Desp2;
           if ADOQuery10.FieldValues['Y'] <> 0 then EditNuevo.Top := ADOQuery10.FieldValues['Y']
           Else EditNuevo.Top := Desp3;
           EditNuevo.Font.Style := [];
           EditNuevo.Name := 'Ed'+inttostr(NoC);
           EditNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
           EditNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
           if ADOQuery10.FieldValues['Obligatorio'] = '1' then
             EditNuevo.Color := clYellow
           else
             EditNuevo.Color := clwindow;
           EditNuevo.Text := '';
           Desp2 := Textnuevo.Width + 10 +Desp2+EditNuevo.Width;
           inc(NoC);
         end

         //RadioButton
         Else if ADOQuery10.FieldValues['Tipo'] = 15 then
         begin
           if ADOQuery10.FieldValues['Tamaño'] < 3 then tm := 14
           else if ADOQuery10.FieldValues['Tamaño'] < 6 then tm := 12
           else if ADOQuery10.FieldValues['Tamaño'] < 9 then tm := 11
           else if ADOQuery10.FieldValues['Tamaño'] < 12 then tm := 10
           else if ADOQuery10.FieldValues['Tamaño'] < 15 then tm := 9
           else if ADOQuery10.FieldValues['Tamaño'] < 20 then tm := 8
           else tm := 7;

           //Campo texto que solicita informaciòn.
           RadioNuevo := TRadioButton.Create(Panelnuevo2);
           RadioNuevo.Parent :=Panelnuevo2;
           if ADOQuery10.FieldValues['Tamaño'] <> null then
           begin
             RadioNuevo.Width  := ADOQuery10.FieldValues['Tamaño'] * tm;
           end;

           if (Textnuevo.Width +RadioNuevo.Width + 10+Desp2)> panelnuevo2.Width then
           begin
             Desp2:=0;
             Panelnuevo2.Height := Panelnuevo2.Height + 30;
             Desp := Desp + 30;
             Desp3:= Desp3+ 25;
           end;
           if ADOQuery10.FieldValues['X'] <> 0 then RadioNuevo.Left := ADOQuery10.FieldValues['X']
           Else RadioNuevo.Left := Textnuevo.Width + 10 +Desp2;
           if ADOQuery10.FieldValues['Y'] <> 0 then RadioNuevo.Top := ADOQuery10.FieldValues['Y']
           Else RadioNuevo.Top := Desp3;
           RadioNuevo.Font.Style := [];
           RadioNuevo.Name := 'Rd'+inttostr(NoC);
           RadioNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
           RadioNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
           if ADOQuery10.FieldValues['Obligatorio'] = '1' then
             RadioNuevo.Color := clYellow
           else
             RadioNuevo.Color := clwindow;
           Desp2 := Textnuevo.Width + 10 +Desp2+RadioNuevo.Width;
           inc(NoC);
         end

         //CheckBox
         Else if ADOQuery10.FieldValues['Tipo'] = 16 then
         begin
           if ADOQuery10.FieldValues['Tamaño'] < 3 then tm := 14
           else if ADOQuery10.FieldValues['Tamaño'] < 6 then tm := 12
           else if ADOQuery10.FieldValues['Tamaño'] < 9 then tm := 11
           else if ADOQuery10.FieldValues['Tamaño'] < 12 then tm := 10
           else if ADOQuery10.FieldValues['Tamaño'] < 15 then tm := 9
           else if ADOQuery10.FieldValues['Tamaño'] < 20 then tm := 8
           else tm := 7;

           //Campo texto que solicita informaciòn.
           CheckBoxNuevo := TCheckBox.Create(Panelnuevo2);
           CheckBoxNuevo.Parent :=Panelnuevo2;
           if ADOQuery10.FieldValues['Tamaño'] <> null then
           begin
             CheckBoxNuevo.Width  := ADOQuery10.FieldValues['Tamaño'] * tm;
           end;

           if (Textnuevo.Width +CheckBoxNuevo.Width + 10+Desp2)> panelnuevo2.Width then
           begin
             Desp2:=0;
             Panelnuevo2.Height := Panelnuevo2.Height + 30;
             Desp := Desp + 30;
             Desp3:= Desp3+ 25;
           end;
           if ADOQuery10.FieldValues['X'] <> 0 then CheckBoxNuevo.Left := ADOQuery10.FieldValues['X']
           Else CheckBoxNuevo.Left := Textnuevo.Width + 10 +Desp2;
           if ADOQuery10.FieldValues['Y'] <> 0 then CheckBoxNuevo.Top := ADOQuery10.FieldValues['Y']
           Else CheckBoxNuevo.Top := Desp3;
           CheckBoxNuevo.Font.Style := [];
           CheckBoxNuevo.Name := 'CB'+inttostr(NoC);
           CheckBoxNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
           CheckBoxNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
           if ADOQuery10.FieldValues['Obligatorio'] = '1' then
             CheckBoxNuevo.Color := clYellow
           else
             CheckBoxNuevo.Color := clwindow;
           Desp2 := Textnuevo.Width + 10 +Desp2+CheckBoxNuevo.Width;
           inc(NoC);
         end

         else if ADOQuery10.FieldValues['Tipo'] = 3 then
         begin
           //Campo ComboBox Historico
           ComboBoxNuevo := TComboBox.Create(Panelnuevo2);
           ComboBoxNuevo.Parent :=Panelnuevo2;
           if (Textnuevo.Width +ComboBoxNuevo.Width + 10+Desp2)> panelnuevo2.Width then
             begin
              Desp2:=0;
              Panelnuevo2.Height := Panelnuevo2.Height + 30;
              Desp := Desp + 30;
              Desp3:= Desp3+ 25;
             end;
           if ADOQuery10.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := ADOQuery10.FieldValues['X']
           Else ComboBoxNuevo.Left := Textnuevo.Width + 10 +Desp2;
           if ADOQuery10.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := ADOQuery10.FieldValues['Y']
           Else ComboBoxNuevo.Top := Desp3;
           ComboBoxNuevo.Font.Style := [];
           ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
           ComboBoxNuevo.Text:='';
           ComboBoxNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
           ComboBoxNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
           ComboBoxNuevo.Style := csDropDown;
           if ADOQuery10.FieldValues['Obligatorio'] = '1' then
             ComboBoxNuevo.Color := clYellow
           else
             ComboBoxNuevo.Color :=clwindow;

           if ADOQuery10.FieldValues['Tamaño'] <> null then
           begin
             if ADOQuery10.FieldValues['Tamaño'] < 3 then tm := 14
             else if ADOQuery10.FieldValues['Tamaño'] < 6 then tm := 12
             else if ADOQuery10.FieldValues['Tamaño'] < 9 then tm := 11
             else if ADOQuery10.FieldValues['Tamaño'] < 12 then tm := 10
             else if ADOQuery10.FieldValues['Tamaño'] < 15 then tm := 9
             else if ADOQuery10.FieldValues['Tamaño'] < 20 then tm := 8
             else tm := 7;

             ComboBoxNuevo.Width     := ADOQuery10.FieldValues['Tamaño'] * tm;
             ComboBoxNuevo.MaxLength := ADOQuery10.FieldValues['Tamaño'];
           end;

           Desp2 := Textnuevo.Width + 10 +Desp2+ComboBoxNuevo.Width;
           inc(NoC);
         end
         else if ADOQuery10.FieldValues['Tipo'] = 4 then
         begin
           //Campo ComboBox que solicita informaciòn.
           ComboBoxNuevo := TComboBox.Create(Panelnuevo2);
           ComboBoxNuevo.Parent :=Panelnuevo2;
           if (Textnuevo.Width +ComboBoxNuevo.Width + 10+Desp2)> panelnuevo2.Width then
           begin
             Desp2:=0;
             Panelnuevo2.Height := Panelnuevo2.Height + 30;
             Desp := Desp + 30;
             Desp3:= Desp3+ 25;
           end;
           if ADOQuery10.FieldValues['X'] <> 0 then ComboBoxNuevo.Left := ADOQuery10.FieldValues['X']
           Else ComboBoxNuevo.Left := Textnuevo.Width + 10 +Desp2;
           if ADOQuery10.FieldValues['Y'] <> 0 then ComboBoxNuevo.Top := ADOQuery10.FieldValues['Y']
           Else ComboBoxNuevo.Top := Desp3;
           ComboBoxNuevo.Font.Style := [];
           ComboBoxNuevo.Name := 'Ed'+inttostr(NoC);
           ComboBoxNuevo.HelpKeyword := ADOQuery10.FieldValues['Codigo_Campo'];
           ComboBoxNuevo.Hint := ADOQuery10.FieldValues['Codigo_SubCampo'];
           ComboBoxNuevo.Style := csDropDown;
           ComboBoxNuevo.text  := '';

           if ADOQuery10.FieldValues['Obligatorio'] = '1' then
             ComboBoxNuevo.Color := clYellow
           else
             ComboBoxNuevo.Color := clWindow;
           ComboBoxNuevo.Width := 20;

           ADOQuery.Close;
           ADOQuery.Parameters.ParamValues['CDFmt'] := ADOQuery10.FieldValues['Codigo_Formato'];
           ADOQuery.Parameters.ParamValues['CDSecc'] := ADOQuery10.FieldValues['Codigo_Seccion'];
           ADOQuery.Parameters.ParamValues['CDCamp'] := ADOQuery10.FieldValues['Codigo_Campo'];
           ADOQuery.Parameters.ParamValues['CDSubCamp'] := ADOQuery10.FieldValues['Codigo_SubCampo'];
           ADOQuery.Open;
           ADOQuery.First;

           while not ADOQuery.Eof do
           begin
             ComboBoxNuevo.Items.Add(ADOQuery.FieldValues['Valor']);
             if length(ADOQuery.FieldValues['Valor']) < 3 then tm := 20
             else if length(ADOQuery.FieldValues['Valor']) < 6 then tm := 15
             else if length(ADOQuery.FieldValues['Valor']) < 9 then tm := 12
             else if length(ADOQuery.FieldValues['Valor']) < 12 then tm := 10
             else if length(ADOQuery.FieldValues['Valor']) < 15 then tm := 9
             else if length(ADOQuery.FieldValues['Valor']) < 20 then tm := 8
             else tm := 7;

              if (length(ADOQuery.FieldValues['Valor'])* tm) > ComboBoxNuevo.Width then
                ComboBoxNuevo.Width := (length(ADOQuery.FieldValues['Valor'])* tm);
              ADOQuery.Next;
           end;
           Desp2 := Textnuevo.Width + 10 +Desp2+ComboBoxNuevo.Width;
           inc(NoC);
         end;

         ADOQuery10.Next;
       end;
       //*********************************************
     end
     else if (ADOQuery3.FieldValues['Tipo'] = 6) then
     Begin
       //Campo texto que solicita informaciòn.
       EditNuevo := TEdit.Create(FrameNuevo);
       EditNuevo.Parent :=FrameNuevo;
       if ADOQuery3.FieldValues['X'] <> 0 then EditNuevo.Left := ADOQuery3.FieldValues['X']
       Else EditNuevo.Left := Textnuevo.Width + 15;
       if ADOQuery3.FieldValues['Y'] <> 0 then EditNuevo.Top := ADOQuery3.FieldValues['Y']
       Else EditNuevo.Top := 10+Desp;
       EditNuevo.Font.Style := [];
       EditNuevo.Name := 'Fm'+ADOQuery3.FieldValues['Codigo_Campo'];
       EditNuevo.Hint := ADOQuery3.FieldValues['Texto'];
       EditNuevo.HelpKeyword := ADOQuery3.FieldValues['Codigo_Seccion'];
       EditNuevo.ReadOnly := True;
       EditNuevo.Color := cl3DLight;
       EditNuevo.Text := '';
       Desp := Desp + 30;
       inc(NoC);
     end
     else if (ADOQuery3.FieldValues['Tipo'] = 7) then
     begin
       if (uppercase(ADOQuery3.Fields.FieldByName('Tabla').AsString) = 'GEDIAGNOSTICOS') then
       begin
          TextN           := TJvEdit.Create(FrameNuevo);//TJvComboBox.Create(FrameNuevo);
          TextN.Parent    := FrameNuevo;
          TextN.Name      := 'T' +inttostr(NoC2)+'1';
          TextN.CharCase  := ecUpperCase;
          if ADOQuery3.FieldValues['X'] <> 0 then TextN.Left := ADOQuery3.FieldValues['X']
          Else TextN.Left := Textnuevo.Width + 15;
          if ADOQuery3.FieldValues['Y'] <> 0 then TextN.Top := ADOQuery3.FieldValues['Y']
          Else TextN.Top := 15+Desp;
          TextN.Width     := 58;
          TextN.Hint      := ADOQuery3.FieldValues['Codigo_Campo'];
          TextN.Text      := '';

          TextN1          :=  TJvEdit.Create(FrameNuevo);
          TextN1.Parent   := FrameNuevo;
          TextN1.Name     := 'T'+ inttostr(NoC2)+'2';
          TextN1.CharCase := ecUpperCase;
          if ADOQuery3.FieldValues['X'] <> 0 then TextN1.Left := ADOQuery3.FieldValues['X'] + TextN.Width
          Else TextN1.Left := TextN.Width + TextN.Left + 10;
          if ADOQuery3.FieldValues['Y'] <> 0 then TextN1.Top := ADOQuery3.FieldValues['Y']
          Else TextN1.Top := 15+Desp;
          TextN1.Width    := TamMemo - Textnuevo.Width -150;
          TextN1.Hint     := ADOQuery3.FieldValues['Codigo_Campo'];
          TextN1.Text     := '';

          Boton1          := TBitBtn.Create(FrameNuevo);
          Boton1.Parent   := FrameNuevo;
          Boton1.Width    := 27;
          Boton1.Height   := 21;
          if ADOQuery3.FieldValues['X'] <> 0 then Boton1.Left := ADOQuery3.FieldValues['X'] + TextN.Width + TextN1.Width
          Else Boton1.Left := TextN1.Width + TextN.Width + TextN.Left +15;
          if ADOQuery3.FieldValues['Y'] <> 0 then Boton1.Top := ADOQuery3.FieldValues['Y']
          Else Boton1.Top := 15+Desp;
          Boton1.Caption  := '...';
          Boton1.Hint     := 'T'+inttostr(NoC2);

          Desp := Desp + 45;
          inc(NoC2);
       end
       else begin
          IF ADOQuery3.FieldValues['CampoDesc'] <> null Then
          Begin
            //Campo Consulta de Tablas de GemaIPS que solicita informaciòn.
            DBADOConectionNuevo := TAdoConnection.Create(FrameNuevo);
            DBADOConectionNuevo.Close;
            DBADOConectionNuevo.ConnectionString   := Datamodule1.ADOConnection1.ConnectionString;
            DBADOConectionNuevo.DefaultDatabase    := ADOQuery3.Fields.FieldByName('BaseDatos').AsString;
            DBADOConectionNuevo.KeepConnection     := true;
            DBADOConectionNuevo.LoginPrompt        := false;
            DBADOConectionNuevo.Open;

            DBADOQueryNuevo := TADOQuery.Create(FrameNuevo);
            DBADOQueryNuevo.Name := 'ADOQ'+inttostr(NoC2);
            DBADOQueryNuevo.Connection := DBADOConectionNuevo;
            DBADOQueryNuevo.SQL.Add('SELECT * FROM '+ADOQuery3.FieldValues['Tabla']+' WHERE Estado = '+chr(39)+'A'+chr(39)+' ORDER BY '+ADOQuery3.FieldValues['CampoDesc']);
            DBDatasourceNuevo         := TDataSource.Create(FrameNuevo);
            DBDatasourceNuevo.Name    := 'DataS'+inttostr(NoC2);
            DBDatasourceNuevo.DataSet := DBADOQueryNuevo;

            //Combo de la Descripcion
            DBLComboNuevo             := TDBLookupComboBox.Create(FrameNuevo);
            DBLComboNuevo.Parent      := FrameNuevo;
            if ADOQuery3.FieldValues['X'] <> 0 then DBLComboNuevo.Left := ADOQuery3.FieldValues['X']
            Else DBLComboNuevo.Left := Textnuevo.Width + 15;
            if ADOQuery3.FieldValues['Y'] <> 0 then DBLComboNuevo.Top := ADOQuery3.FieldValues['Y']
            Else DBLComboNuevo.Top := 15+Desp;
            DBLComboNuevo.Font.Style  := [];
            DBLComboNuevo.Name        := 'TT'+inttostr(NoC2)+'1';
            DBLComboNuevo.Hint        := ADOQuery3.FieldValues['Codigo_Campo'];
            DBLComboNuevo.ListSource  := DBDatasourceNuevo;
            DBLComboNuevo.ListField   := ADOQuery3.FieldValues['Campo'];
            DBLComboNuevo.KeyField    := ADOQuery3.FieldValues['Campo'];
            DBLComboNuevo.Width       := 70;//tammemo - Textnuevo.Width-30;

            //Combo de la Descripcion
            DBLComboNuevo1             := TDBLookupComboBox.Create(FrameNuevo);
            DBLComboNuevo1.Parent      := FrameNuevo;
            if ADOQuery3.FieldValues['X'] <> 0 then DBLComboNuevo1.Left := ADOQuery3.FieldValues['X'] + DBLComboNuevo.Width
            Else DBLComboNuevo1.Left := Textnuevo.Width + DBLComboNuevo.Width +15;
            if ADOQuery3.FieldValues['Y'] <> 0 then DBLComboNuevo1.Top := ADOQuery3.FieldValues['Y']
            Else DBLComboNuevo1.Top := 15+Desp;
            DBLComboNuevo1.Font.Style  := [];
            DBLComboNuevo1.Name        := 'TT'+inttostr(NoC2)+'2';
            DBLComboNuevo1.Hint        := ADOQuery3.FieldValues['Codigo_Campo'];
            DBLComboNuevo1.ListSource  := DBDatasourceNuevo;
            DBLComboNuevo1.ListField   := ADOQuery3.FieldValues['CampoDesc'];
            DBLComboNuevo1.KeyField    := ADOQuery3.FieldValues['Campo'];
            DBLComboNuevo1.Width       := TamMemo - Textnuevo.Width -200;//tammemo - Textnuevo.Width-30;

            DBADOQueryNuevo.Open;
            Desp := Desp + 45;
            inc(NoC2);
          End;
       end;
     end
     else if ADOQuery3.FieldValues['Tipo'] = 8 then
     begin
       //Campo DateTime que solicita informaciòn.
       DateTimeNuevo := TDateTimePicker.Create(FrameNuevo);
       DateTimeNuevo.Parent :=FrameNuevo;
       if ADOQuery3.FieldValues['X'] <> 0 then DateTimeNuevo.Left := ADOQuery3.FieldValues['X']
       Else DateTimeNuevo.Left := Textnuevo.Width + 15;
       if ADOQuery3.FieldValues['Y'] <> 0 then DateTimeNuevo.Top := ADOQuery3.FieldValues['Y']
       Else DateTimeNuevo.Top := 10+Desp;
       DateTimeNuevo.Width := 250;
       DateTimeNuevo.Font.Style := [];
       DateTimeNuevo.Name := 'Ed'+inttostr(NoC);
       DateTimeNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
       DateTimeNuevo.DateTime := now;
       DateTimeNuevo.DateFormat := dfLong;
       Desp := Desp + 30;
       inc(NoC);
     end
     else if (ADOQuery3.FieldValues['Tipo'] = 10) then
     Begin
       //Campo texto que solicita informaciòn.
       EditNuevo := TEdit.Create(FrameNuevo);
       EditNuevo.Parent :=FrameNuevo;
       if ADOQuery3.FieldValues['X'] <> 0 then EditNuevo.Left := ADOQuery3.FieldValues['X']
       Else EditNuevo.Left := Textnuevo.Width + 15;
       if ADOQuery3.FieldValues['Y'] <> 0 then EditNuevo.Top := ADOQuery3.FieldValues['Y']
       Else EditNuevo.Top := 10+Desp;
       EditNuevo.Font.Style := [];
       EditNuevo.Name := 'Nm'+ADOQuery3.FieldValues['Codigo_Campo'];
       EditNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
       EditNuevo.Text := '0';
       Desp := Desp + 30;
       inc(NoC);
     end
     else if ADOQuery3.FieldValues['Tipo'] = 12 then
     begin
         //Campo Memo que solicita informaciòn.
         MemoNuevo := TMemo.Create(FrameNuevo);
         MemoNuevo.Parent :=FrameNuevo;
         if ADOQuery3.FieldValues['X'] <> 0 then MemoNuevo.Left := ADOQuery3.FieldValues['X']
         Else MemoNuevo.Left := 10;
         if ADOQuery3.FieldValues['Y'] <> 0 then MemoNuevo.Top := ADOQuery3.FieldValues['Y']
         Else MemoNuevo.Top := 30+Desp;
         MemoNuevo.Width := tammemo - 30;
         if ADOQuery3.FieldValues['Tamaño'] <> null then
           MemoNuevo.Height := ADOQuery3.FieldValues['Tamaño']
         Else MemoNuevo.Height := 55;
         MemoNuevo.Font.Style := [];
         MemoNuevo.Name := 'Ed'+inttostr(NoC);
         MemoNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
         MemoNuevo.HelpKeyword := ADOQuery3.FieldValues['Descripcion'];
         if ADOQuery3.FieldValues['Obligatorio'] = '1' then
           MemoNuevo.Color :=clYellow
         else
           MemoNuevo.Color := clWindow;
         MemoNuevo.Lines.Clear;
         MemoNuevo.Lines.Add(ADOQuery3.FieldValues['Texto']);
         Desp := Desp + MemoNuevo.Height+20;
         inc(NoC);
     end

     //En Prueba CheckBox
     Else if ADOQuery3.FieldValues['Tipo'] = 13  then
     begin
       if ADOQuery3.FieldValues['Tamaño'] < 3 then tm := 14
       else if ADOQuery3.FieldValues['Tamaño'] < 6 then tm := 12
       else if ADOQuery3.FieldValues['Tamaño'] < 9 then tm := 11
       else if ADOQuery3.FieldValues['Tamaño'] < 12 then tm := 10
       else if ADOQuery3.FieldValues['Tamaño'] < 15 then tm := 9
       else if ADOQuery3.FieldValues['Tamaño'] < 20 then tm := 8
       else tm := 7;

       //Campo texto que solicita informaciòn.
       CheckBoxNuevo := TCheckBox.Create(Framenuevo);
       CheckBoxNuevo.Parent :=Framenuevo;
       if ADOQuery3.FieldValues['Tamaño'] <> null then
       begin
         CheckBoxNuevo.Width  := ADOQuery3.FieldValues['Tamaño'] * tm;
       end;

       if (Textnuevo.Width +CheckBoxNuevo.Width + 10+Desp)> FrameNuevo.Width then
       begin
         Desp:=0;
         FrameNuevo.Height := FrameNuevo.Height + 30;
         Desp := Desp + 30;
         Desp3:= Desp3+ 25;
       end;
       if ADOQuery3.FieldValues['X'] <> 0 then CheckBoxNuevo.Left := ADOQuery3.FieldValues['X']
       Else CheckBoxNuevo.Left := Textnuevo.Width + 10 +Desp;
       if ADOQuery3.FieldValues['Y'] <> 0 then CheckBoxNuevo.Top := ADOQuery3.FieldValues['Y']
       Else CheckBoxNuevo.Top := Desp3;
       CheckBoxNuevo.Font.Style := [];
       CheckBoxNuevo.Name := 'CB'+inttostr(NoC);
       CheckBoxNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
       CheckBoxNuevo.HelpKeyword := ADOQuery3.FieldValues['Codigo_Campo'];
       if ADOQuery3.FieldValues['Obligatorio'] = '1' then
         CheckBoxNuevo.Color := clYellow
       else
         CheckBoxNuevo.Color := clwindow;
       Desp := Textnuevo.Width + 10 +Desp+CheckBoxNuevo.Width;
       inc(NoC);
     end
     //Imagenes en posiciones x y y (Odontogramas, Familiogramas, etc)
     Else if ADOQuery3.FieldValues['Tipo'] = 14  then
     begin
        img          := TImage.Create(FrameNuevo);
        img.Parent   := FrameNuevo;
        img.AutoSize := true;
        img.Cursor   := crhandpoint;
        img.Transparent := true;
        if ADOQuery3.FieldValues['X'] <> 0 then img.Left := ADOQuery3.FieldValues['X']
        Else img.Left := Textnuevo.Width + 15;
        if ADOQuery3.FieldValues['Y'] <> 0 then img.Top := ADOQuery3.FieldValues['Y']
        Else img.Top := 15+Desp;
        FrameNuevo.Color := clwhite;
        if fileexists(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQuery1.FieldValues['Descripcion']+'\'+ADOQuery3.FieldValues['Descripcion']+'.bmp') then
          img.Picture.LoadFromFile(ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQuery1.FieldValues['Descripcion']+'\'+ADOQuery3.FieldValues['Descripcion']+'.bmp')
        Else Showmessage('ERROR: '+ ExtractFilePath(paramstr(0))+'Imagenes\'+ADOQuery1.FieldValues['Descripcion']+'\'+ADOQuery3.FieldValues['Descripcion']+'.bmp' + ' No Existe este Archivo..');
        img.Name := 'Im'+inttostr(NoC);
        img.Hint     := ADOQuery3.FieldValues['Codigo_Campo']+'-'+ADOQuery3.FieldValues['Descripcion'];
        img.ShowHint := true;
        Desp := Desp + 45;
        inc(NoC);
     end

     else begin
       //Campo texto que solicita informaciòn.
       EditNuevo := TEdit.Create(FrameNuevo);
       EditNuevo.Parent :=FrameNuevo;
       if ADOQuery3.FieldValues['X'] <> 0 then EditNuevo.Left := ADOQuery3.FieldValues['X']
       Else EditNuevo.Left := Textnuevo.Width + 15;
       if ADOQuery3.FieldValues['Y'] <> 0 then EditNuevo.Top := ADOQuery3.FieldValues['Y']
       Else EditNuevo.Top := 10+Desp;
       EditNuevo.Font.Style := [];
       EditNuevo.Name := 'Ed'+inttostr(NoC);
       EditNuevo.Hint := ADOQuery3.FieldValues['Codigo_Campo'];
       EditNuevo.Text := '';
       Desp := Desp + 30;
       inc(NoC);
     end;
   end;  // Final de Edad y Sexo

   ADOQuery3.Next;
  end;  // Final del For
end;

procedure TFCreacionFormatosD.BitBtn4Click(Sender: TObject);
begin
  ADOQuery2.Edit;
  ADOQuery2.FieldValues['imagen'] := null;
  ADOQuery2.Post;
end;

procedure TFCreacionFormatosD.DBLookupListBox1Click(Sender: TObject);
begin
  //Edit1.Text := ADOQuery1.FieldValues['Codigo'];
  //Edit1Exit(Nil);
end;

procedure TFCreacionFormatosD.DBLookupListBox2Click(Sender: TObject);
begin
  Edit3.Text := ADOQuery2.FieldValues['Codigo_Seccion'];
  Edit3Exit(Nil);
end;

procedure TFCreacionFormatosD.DBLookupListBox3Click(Sender: TObject);
begin
  Edit5.Text := ADOQuery3.FieldValues['Codigo_Campo'];
  Edit12.Text := ADOQuery3.FieldValues['x'];
  Edit13.Text := ADOQuery3.FieldValues['y'];
  if ADOQuery3.FieldValues['label'] = 'S' then Checkbox7.Checked := true
  Else Checkbox7.Checked := false;
  ComboBox8.Text := campotoedit(ADOQuery3.FieldValues['BaseDatos']);
  ComboBox3.Text := campotoedit(ADOQuery3.FieldValues['Tabla']);
  ComboBox4.Text := campotoedit(ADOQuery3.FieldValues['Campo']);
  ComboBox9.Text := campotoedit(ADOQuery3.FieldValues['CampoDesc']);
  Memo1.Text     := campotoedit(ADOQuery3.FieldValues['Texto']);
  Edit5Exit(Nil);
end;

procedure TFCreacionFormatosD.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  case key of
     #1,#2,#3,#4,#5,#6,#7,#11,#12,#14,#15,#17,#18,#19,#20,#21,#22,#23,#24,#25,#26,#27,#32,#33,#34,#35 : key := #0;
     #36,#37,#38,#39,#40,#41,#42,#43,#45,#47,#58,#59,#60,#61,#62,#63,#64: key := #0;
     #65,#66,#67,#68,#69,#70,#71,#72,#73,#74,#75,#76,#77,#78,#79,#80,#81,#82,#83,#84,#85,#86,#87,#88,#89,#90 : key := #0;
     #91,#92,#93,#94,#95,#96,#97,#98,#99,#100,#101,#102,#103,#104,#105,#106,#107,#108,#109,#110,#111,#112,#113,#114,#115,#116 : key := #0;
     #117,#118,#119,#120,#121,#122,#123,#124,#125,#126,#127,#128,#129,#130,#131,#132,#133,#134,#135,#136,#137,#138,#139,#140,#141,#142 : key := #0;
     'ñ','Ñ','¿','´','°','¨','¡','ç' : key := #0;
   end;
end;

procedure TFCreacionFormatosD.Edit5Exit(Sender: TObject);
Var i:Integer;
begin
  IF (ADOQuery3.RecordCount <> 0) AND (Edit5.Text <> '') Then Begin
    ADOQueryValida.Close;
    ADOQueryValida.SQL.Clear;
    ADOQueryValida.SQL.Add('SELECT * FROM FDCampos Where Codigo_Formato ='+chr(39)+ADOQuery2.FieldValues['Codigo_Formato']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+ADOQuery2.FieldValues['Codigo_Seccion']+chr(39)+ ' AND Codigo_Campo ='+chr(39)+Edit5.text+chr(39));
    ADOQueryValida.Open;
    IF ADOQueryValida.RecordCount <> 0 Then
    Begin
      Edit6.Text := ADOQueryValida.FieldValues['Descripcion'];
      ScrollBar1.Position := ADOQueryValida.FieldValues['Tamaño'];
      for I := 0 to ComboBox1.Items.Count-1 do
        if strtoint(leftstr(ComboBox1.Items.Strings[i],2)) = ADOQueryValida.FieldValues['Tipo'] then
          ComboBox1.ItemIndex := i;
      ComboBox1Change(Nil);

      If ADOQueryValida.FieldValues['Obligatorio'] = '1' Then CheckBox1.Checked := true
      Else CheckBox1.Checked := False;
      If ADOQueryValida.FieldValues['Advertencia'] = '1' Then CheckBox3.Checked := True
      Else CheckBox3.Checked := False;
    End;

    ADOQuery6.Close;
    ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery2.FieldValues['Codigo_Formato'];
    ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery6.Parameters.ParamValues['CDCampo']  := Edit5.text;
    ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
    ADOQuery6.Open;

    ADOQuery6.First;
    ListBox1.Clear;
    While NOT ADOQuery6.Eof Do
    Begin
      ListBox1.Items.Add(ADOQuery6.FieldValues['Valor']);

      ADOQuery6.Next;
    End;
  End;
end;

procedure TFCreacionFormatosD.Edit3Exit(Sender: TObject);
begin
  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDSecciones Where Codigo_Formato ='+chr(39)+ADOQuery1.FieldValues['Codigo']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+Edit3.text+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount <> 0 Then
  Begin
    Edit4.Text := ADOQueryValida.FieldValues['Descripcion'];
  End;
end;

procedure TFCreacionFormatosD.Edit1Exit(Sender: TObject);
begin
  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDFormatos Where Codigo ='+chr(39)+Edit1.text+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount <> 0 Then
  Begin
    ADOQuery1.Locate('Codigo', Edit1.text, [loPartialKey]);
  End
  Else Begin
    Edit2.Text := '';
    Edit8.Text := '';
    ComboBox2.Text := '';
  End;
end;

procedure TFCreacionFormatosD.Button13Click(Sender: TObject);
begin
  Edit1.Text := '';
  Edit2.Text := '';
  Edit8.Text := '';
end;

procedure TFCreacionFormatosD.Button14Click(Sender: TObject);
Var F1: TextFile;
begin
  opguardar.initialdir:='c:\xampp\htdocs\';
  opguardar.filename:='index.html';
  opguardar.DefaultExt:='*.html';
  if opguardar.execute then
  begin
    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['CDFmt'] := ADOQuery1.FieldValues['Codigo'];
    ADOQuery2.Open;
    ADOQuery2.First;
    WHILE NOT ADOQuery2.Eof DO
    Begin
      AssignFile(F1, opguardar.InitialDir+'\'+ADOQuery1.FieldValues['Codigo']+'.html');
      Rewrite(F1);
      Writeln(F1,'<!DOCTYPE html>');
      Writeln(F1,'<html lang="es">');
      Writeln(F1,'  <head>');
      Writeln(F1,'    <title>GemaIPS - Gestión Médico Administrativo.</title>');
      Writeln(F1,'    <meta charset= "utf-8"/>');
      Writeln(F1,'    <meta name="description" content= "Gema"/>');
      Writeln(F1,'    <link rel="stylesheet" href="css/style.css">');
      Writeln(F1,'  </head>');
      Writeln(F1,'      <body>');
      Writeln(F1,'    <header>');
      Writeln(F1,'      <figure id="figura1">');
      Writeln(F1,'        <img src="img/logo.jpg"/>');
      Writeln(F1,'      </figure>');
      Writeln(F1,'      <h1>GemaIPS - Gestión Medico Administrativo</h1>');
      Writeln(F1,'    </header>');
      Writeln(F1,'    <nav>');
      Writeln(F1,'      <ul>');
      Writeln(F1,'        <li><a href="index.html">Inicio</a></li>');
      Writeln(F1,'      </ul>');
      Writeln(F1,'    </nav>');
      Writeln(F1,'    <form action="demo_form.asp" autocomplete="on">');
      Writeln(F1,'       <section>'+ADOQuery2.FieldValues['Descripcion']+':<br>');

      ADOQuery3.Close;
      ADOQuery3.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
      ADOQuery3.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery3.Open;
      ADOQuery3.First;
      WHILE NOT ADOQuery3.Eof DO
      Begin
        IF  ADOQuery3.FieldValues['Tipo']  = '01' then
          Writeln(F1,'            <article>'+ADOQuery3.FieldValues['Descripcion']+':<br> <input type="Text" name="'+ADOQuery3.FieldValues['Descripcion']+'" size="'+inttostr(ADOQuery3.FieldValues['tamaño'])+'" autocomplete="off"></article>')
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '02' then
          Writeln(F1,'            <article>'+ADOQuery3.FieldValues['Descripcion']+': <textarea cols=40 name='+ADOQuery3.FieldValues['Descripcion']+'></textarea></article>')
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '04' then
        Begin
          Writeln(F1,'            <article><label>'+ADOQuery3.FieldValues['Descripcion']+': <select>');
          ADOQuery6.Close;
          ADOQuery6.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
          ADOQuery6.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
          ADOQuery6.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
          ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
          ADOQuery6.Open;
          ADOQuery6.First;
          WHILE NOT ADOQuery6.Eof DO
          Begin
            Writeln(F1,'              <option value="1">'+ ADOQuery6.FieldValues['Valor']);

            ADOQuery6.Next;
          End;
          Writeln(F1,'            </select></label></article>');
        End
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '05' then
        Begin
          Writeln(F1,'       <section><article>'+ADOQuery3.FieldValues['Descripcion']+':<br>');

          ADOQuery5.Close;
          ADOQuery5.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
          ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
          ADOQuery5.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
          ADOQuery5.Open;
          ADOQuery5.First;
          WHILE NOT ADOQuery5.Eof DO
          Begin
            if ADOQuery5.FieldValues['Descripcion'] <> null then
              Writeln(F1,'            '+ADOQuery5.FieldValues['Descripcion']+': <input type="Text" name="'+ADOQuery5.FieldValues['Descripcion']+'" size="'+inttostr(ADOQuery5.FieldValues['tamaño'])+'" autocomplete="off">');
            if ADOQuery5.FieldValues['NLinea'] = '1' then
              Writeln(F1,'            <br>');

            ADOQuery5.Next;
          End;
          Writeln(F1,'       </article></section>');
        End
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '08' then
          Writeln(F1,'            <article>'+ADOQuery3.FieldValues['Descripcion']+':<br> <input type="datetime" name="'+ADOQuery3.FieldValues['Descripcion']+'" autocomplete="off"></article>')
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '10' then
          Writeln(F1,'            <article>'+ADOQuery3.FieldValues['Descripcion']+':<br> <input type="Number" name="'+ADOQuery3.FieldValues['Descripcion']+'" autocomplete="off"></article>')
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '13' then
          Writeln(F1,'            <article>'+ADOQuery3.FieldValues['Descripcion']+':<br> <input type="CheckBox" name="'+ADOQuery3.FieldValues['Descripcion']+'" autocomplete="off"></article>')
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '14' then
          Writeln(F1,'            <article>'+ADOQuery3.FieldValues['Descripcion']+':<br> <input type="Button" name="'+ADOQuery3.FieldValues['Descripcion']+'" autocomplete="off"></article>')
        ELSE IF  ADOQuery3.FieldValues['Tipo']  = '15' then
          Writeln(F1,'            <article>'+ADOQuery3.FieldValues['Descripcion']+':<br> <input type="Button" name="'+ADOQuery3.FieldValues['Descripcion']+'" autocomplete="off"></article>');

        ADOQuery3.Next;
      End;
      Writeln(F1,'              </section>');
      Writeln(F1,'        </form>');
      Writeln(F1,'      <aside>');
      Writeln(F1,'      </aside>');
      Writeln(F1,'    <footer>');
      Writeln(F1,'    </footer>');
      Writeln(F1,'  </body>');
      Writeln(F1,'</html>');
      CloseFile(F1);

      ADOQuery2.Next;
    End;
  end;
end;

procedure TFCreacionFormatosD.Button15Click(Sender: TObject);
Var cadena: string;
Begin
  cadena:=Reemplaza_Parametro(Memo1.Text,'');

  //Evalua Expresión
  JvInterpreterProgram1.Pas.Clear;
  JvInterpreterProgram1.Pas.Add(cadena);
  JvInterpreterProgram1.Run;
  Edit19.Text := JvInterpreterProgram1.VResult;
end;

procedure TFCreacionFormatosD.Button16Click(Sender: TObject);
begin
  ShellExecute(Handle,'open','http://wiki.delphigl.com/index.php/Tutorial_Scripting_mit_JvInterpreterProgram',nil,nil,SW_NORMAL);
end;

procedure TFCreacionFormatosD.Button17Click(Sender: TObject);
begin
  ListBox1.Clear;

  ADOQuery6.Close;
  ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery3.FieldValues['Codigo_Formato'];
  ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery3.FieldValues['Codigo_Seccion'];
  ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
  ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
  ADOQuery6.Open;

  ADOQuery6.First;
  While NOT ADOQuery6.Eof Do
  Begin
    ListBox1.Items.Add(ADOQuery6.FieldValues['Valor']);
    ADOQuery6.Delete;

    ADOQuery6.First;
  End;
end;

procedure TFCreacionFormatosD.Incrementar1Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery1.FieldValues['Codigo'])+strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDFormatos Where Codigo ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['CDFmt'] := ADOQuery1.FieldValues['Codigo'];
    ADOQuery2.Open;
    ADOQuery2.First;
    WHILE NOT ADOQuery2.Eof DO
    Begin
      ADOQuery3.Close;
      ADOQuery3.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
      ADOQuery3.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery3.Open;
      ADOQuery3.First;
      WHILE NOT ADOQuery3.Eof DO
      Begin
        ADOQuery5.Close;
        ADOQuery5.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
        ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
        ADOQuery5.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
        ADOQuery5.Open;
        ADOQuery5.First;
        WHILE NOT ADOQuery5.Eof DO
        Begin
          ADOQuery6.Close;
          ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
          ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
          ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
          ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
          ADOQuery6.Open;
          ADOQuery6.First;
          WHILE NOT ADOQuery6.Eof DO
          Begin
            ADOQuery6.Edit;
            ADOQuery6.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
            ADOQuery6.Post;

            ADOQuery6.Next;
          End;
          ADOQuery5.Edit;
          ADOQuery5.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
          ADOQuery5.Post;

          ADOQuery5.Next;
        End;

        ADOQuery6.Close;
        ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
        ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
        ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
        ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
        ADOQuery6.Open;
        ADOQuery6.First;
        WHILE NOT ADOQuery6.Eof DO
        Begin
          ADOQuery6.Edit;
          ADOQuery6.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
          ADOQuery6.Post;

          ADOQuery6.Next;
        End;

        ADOQuery3.Edit;
        ADOQuery3.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
        ADOQuery3.Post;

        ADOQuery3.Next;
      End;
      ADOQuery2.Edit;
      ADOQuery2.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
      ADOQuery2.Post;

      ADOQuery2.Next;
    End;
    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Codigo']:= inttostr(CodAnt);
    ADOQuery1.Post;
  End
  Else Showmessage('ERROR: No se puede Incrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.Decrementar1Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery1.FieldValues['Codigo'])-strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDFormatos Where Codigo ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery2.Close;
    ADOQuery2.Parameters.ParamValues['CDFmt'] := ADOQuery1.FieldValues['Codigo'];
    ADOQuery2.Open;
    ADOQuery2.First;
    WHILE NOT ADOQuery2.Eof DO
    Begin
      ADOQuery3.Close;
      ADOQuery3.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
      ADOQuery3.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery3.Open;
      ADOQuery3.First;
      WHILE NOT ADOQuery3.Eof DO
      Begin
        ADOQuery5.Close;
        ADOQuery5.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
        ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
        ADOQuery5.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
        ADOQuery5.Open;
        ADOQuery5.First;
        WHILE NOT ADOQuery5.Eof DO
        Begin
          ADOQuery6.Close;
          ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
          ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
          ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
          ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
          ADOQuery6.Open;
          ADOQuery6.First;
          WHILE NOT ADOQuery6.Eof DO
          Begin
            ADOQuery6.Edit;
            ADOQuery6.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
            ADOQuery6.Post;

            ADOQuery6.Next;
          End;

          ADOQuery5.Edit;
          ADOQuery5.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
          ADOQuery5.Post;

          ADOQuery5.Next;
        End;
        ADOQuery6.Close;
        ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
        ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
        ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
        ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
        ADOQuery6.Open;
        ADOQuery6.First;
        WHILE NOT ADOQuery6.Eof DO
        Begin
          ADOQuery6.Edit;
          ADOQuery6.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
          ADOQuery6.Post;

          ADOQuery6.Next;
        End;

        ADOQuery3.Edit;
        ADOQuery3.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
        ADOQuery3.Post;

        ADOQuery3.Next;
      End;
      ADOQuery2.Edit;
      ADOQuery2.FieldValues['Codigo_Formato']:= inttostr(CodAnt);
      ADOQuery2.Post;

      ADOQuery2.Next;
    End;
    ADOQuery1.Edit;
    ADOQuery1.FieldValues['Codigo']:= inttostr(CodAnt);
    ADOQuery1.Post;
  End
  Else Showmessage('ERROR: No se puede Decrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.Incrementar2Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery2.FieldValues['Codigo_Seccion'])+strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDSecciones Where Codigo_Formato ='+chr(39)+ADOQuery1.FieldValues['Codigo']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery3.Close;
    ADOQuery3.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
    ADOQuery3.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery3.Open;
    ADOQuery3.First;
    WHILE NOT ADOQuery3.Eof DO
    Begin
      ADOQuery5.Close;
      ADOQuery5.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
      ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery5.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
      ADOQuery5.Open;
      ADOQuery5.First;
      WHILE NOT ADOQuery5.Eof DO
      Begin
        ADOQuery6.Close;
        ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
        ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
        ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
        ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
        ADOQuery6.Open;
        ADOQuery6.First;
        WHILE NOT ADOQuery6.Eof DO
        Begin
          ADOQuery6.Edit;
          ADOQuery6.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
          ADOQuery6.Post;

          ADOQuery6.Next;
        End;

        ADOQuery5.Edit;
        ADOQuery5.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
        ADOQuery5.Post;

        ADOQuery5.Next;
      End;
      ADOQuery6.Close;
      ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
      ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
      ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
      ADOQuery6.Open;
      ADOQuery6.First;
      WHILE NOT ADOQuery6.Eof DO
      Begin
        ADOQuery6.Edit;
        ADOQuery6.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
        ADOQuery6.Post;

        ADOQuery6.Next;
      End;
      ADOQuery3.Edit;
      ADOQuery3.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
      ADOQuery3.Post;

      ADOQuery3.Next;
    End;
    ADOQuery2.Edit;
    ADOQuery2.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
    ADOQuery2.Post;
  End
  Else Showmessage('ERROR: No se puede Incrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.Decrementar2Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery2.FieldValues['Codigo_Seccion'])-strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDSecciones Where Codigo_Formato ='+chr(39)+ADOQuery1.FieldValues['Codigo']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery3.Close;
    ADOQuery3.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
    ADOQuery3.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery3.Open;
    ADOQuery3.First;
    WHILE NOT ADOQuery3.Eof DO
    Begin
      ADOQuery5.Close;
      ADOQuery5.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
      ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery5.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
      ADOQuery5.Open;
      ADOQuery5.First;
      WHILE NOT ADOQuery5.Eof DO
      Begin
        ADOQuery6.Close;
        ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
        ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
        ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
        ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
        ADOQuery6.Open;
        ADOQuery6.First;
        WHILE NOT ADOQuery6.Eof DO
        Begin
          ADOQuery6.Edit;
          ADOQuery6.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
          ADOQuery6.Post;

          ADOQuery6.Next;
        End;
        ADOQuery5.Edit;
        ADOQuery5.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
        ADOQuery5.Post;

        ADOQuery5.Next;
      End;
      ADOQuery6.Close;
      ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
      ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
      ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
      ADOQuery6.Open;
      ADOQuery6.First;
      WHILE NOT ADOQuery6.Eof DO
      Begin
        ADOQuery6.Edit;
        ADOQuery6.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
        ADOQuery6.Post;

        ADOQuery6.Next;
      End;
      ADOQuery3.Edit;
      ADOQuery3.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
      ADOQuery3.Post;

      ADOQuery3.Next;
    End;
    ADOQuery2.Edit;
    ADOQuery2.FieldValues['Codigo_Seccion']:= inttostr(CodAnt);
    ADOQuery2.Post;
  End
  Else Showmessage('ERROR: No se puede Decrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.Incrementar3Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery3.FieldValues['Codigo_Campo'])+strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDCampos Where Codigo_Formato ='+chr(39)+ADOQuery2.FieldValues['Codigo_Formato']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+ADOQuery2.FieldValues['Codigo_Seccion']+chr(39)+ ' AND Codigo_Campo ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery5.Close;
    ADOQuery5.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
    ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery5.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
    ADOQuery5.Open;
    ADOQuery5.First;
    WHILE NOT ADOQuery5.Eof DO
    Begin
      ADOQuery6.Close;
      ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
      ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
      ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
      ADOQuery6.Open;
      ADOQuery6.First;
      WHILE NOT ADOQuery6.Eof DO
      Begin
        ADOQuery6.Edit;
        ADOQuery6.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
        ADOQuery6.Post;

        ADOQuery6.Next;
      End;

      ADOQuery5.Edit;
      ADOQuery5.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
      ADOQuery5.Post;

      ADOQuery5.Next;
    End;
    ADOQuery6.Close;
    ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
    ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
    ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
    ADOQuery6.Open;
    ADOQuery6.First;
    WHILE NOT ADOQuery6.Eof DO
    Begin
      ADOQuery6.Edit;
      ADOQuery6.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
      ADOQuery6.Post;

      ADOQuery6.Next;
    End;
    ADOQuery3.Edit;
    ADOQuery3.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
    ADOQuery3.Post;
  End
  Else Showmessage('ERROR: No se puede Incrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.Decrementar3Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery3.FieldValues['Codigo_Campo'])-strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDCampos Where Codigo_Formato ='+chr(39)+ADOQuery2.FieldValues['Codigo_Formato']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+ADOQuery2.FieldValues['Codigo_Seccion']+chr(39)+ ' AND Codigo_Campo ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery5.Close;
    ADOQuery5.Parameters.ParamValues['CDFmt']  := ADOQuery1.FieldValues['Codigo'];
    ADOQuery5.Parameters.ParamValues['CDSecc'] := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery5.Parameters.ParamValues['CDCampo'] := ADOQuery3.FieldValues['Codigo_Campo'];
    ADOQuery5.Open;
    ADOQuery5.First;
    WHILE NOT ADOQuery5.Eof DO
    Begin
      ADOQuery6.Close;
      ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
      ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
      ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
      ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
      ADOQuery6.Open;
      ADOQuery6.First;
      WHILE NOT ADOQuery6.Eof DO
      Begin
        ADOQuery6.Edit;
        ADOQuery6.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
        ADOQuery6.Post;

        ADOQuery6.Next;
      End;
      ADOQuery5.Edit;
      ADOQuery5.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
      ADOQuery5.Post;

      ADOQuery5.Next;
    End;
    ADOQuery6.Close;
    ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
    ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
    ADOQuery6.Parameters.ParamValues['CDSCampo'] := '000';
    ADOQuery6.Open;
    ADOQuery6.First;
    WHILE NOT ADOQuery6.Eof DO
    Begin
      ADOQuery6.Edit;
      ADOQuery6.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
      ADOQuery6.Post;

      ADOQuery6.Next;
    End;

    ADOQuery3.Edit;
    ADOQuery3.FieldValues['Codigo_Campo']:= inttostr(CodAnt);
    ADOQuery3.Post;
  End
  Else Showmessage('ERROR: No se puede Decrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.Incrementar4Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery5.FieldValues['Codigo_SubCampo']) + strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDSubCampos Where Codigo_Formato ='+chr(39)+ADOQuery3.FieldValues['Codigo_Formato']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+ADOQuery3.FieldValues['Codigo_Seccion']+chr(39)+ ' AND Codigo_Campo ='+chr(39)+ADOQuery3.FieldValues['Codigo_Campo']+chr(39)+ ' AND Codigo_SubCampo ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery6.Close;
    ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
    ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
    ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
    ADOQuery6.Open;
    ADOQuery6.First;
    WHILE NOT ADOQuery6.Eof DO
    Begin
      ADOQuery6.Edit;
      ADOQuery6.FieldValues['Codigo_SubCampo']:= inttostr(CodAnt);
      ADOQuery6.Post;

      ADOQuery6.Next;
    End;

    ADOQuery5.Edit;
    ADOQuery5.FieldValues['Codigo_SubCampo']:= inttostr(CodAnt);
    ADOQuery5.Post;
  End
  Else Showmessage('ERROR: No se puede Incrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.Decrementar4Click(Sender: TObject);
Var CodAnt:Integer;
    InputString:string;
begin
  InputString:= InputBox('Rango de Incremento o Decremento.', 'Cada:', '1');

  CodAnt := strtoint(ADOQuery5.FieldValues['Codigo_SubCampo']) - strtoint(InputString);
  if CodAnt < 100 Then CodAnt := 100;

  ADOQueryValida.Close;
  ADOQueryValida.SQL.Clear;
  ADOQueryValida.SQL.Add('SELECT * FROM FDSubCampos Where Codigo_Formato ='+chr(39)+ADOQuery3.FieldValues['Codigo_Formato']+chr(39)+ ' AND Codigo_Seccion ='+chr(39)+ADOQuery3.FieldValues['Codigo_Seccion']+chr(39)+ ' AND Codigo_Campo ='+chr(39)+ADOQuery3.FieldValues['Codigo_Campo']+chr(39)+ ' AND Codigo_SubCampo ='+chr(39)+inttostr(CodAnt)+chr(39));
  ADOQueryValida.Open;
  IF ADOQueryValida.RecordCount = 0 Then
  Begin
    ADOQuery6.Close;
    ADOQuery6.Parameters.ParamValues['CDFmt']    := ADOQuery1.FieldValues['Codigo'];
    ADOQuery6.Parameters.ParamValues['CDSecc']   := ADOQuery2.FieldValues['Codigo_Seccion'];
    ADOQuery6.Parameters.ParamValues['CDCampo']  := ADOQuery3.FieldValues['Codigo_Campo'];
    ADOQuery6.Parameters.ParamValues['CDSCampo'] := ADOQuery5.FieldValues['Codigo_SubCampo'];
    ADOQuery6.Open;
    ADOQuery6.First;
    WHILE NOT ADOQuery6.Eof DO
    Begin
      ADOQuery6.Edit;
      ADOQuery6.FieldValues['Codigo_SubCampo']:= inttostr(CodAnt);
      ADOQuery6.Post;

      ADOQuery6.Next;
    End;

    ADOQuery5.Edit;
    ADOQuery5.FieldValues['Codigo_SubCampo']:= inttostr(CodAnt);
    ADOQuery5.Post;
  End
  Else Showmessage('ERROR: No se puede Decrementar por que ya esta ocupado el codigo');
end;

procedure TFCreacionFormatosD.ComboBox8Exit(Sender: TObject);
begin
  ADOConnection1.Close;
  ADOConnection1.ConnectionString    := DataModule1.ADOConnection1.ConnectionString;
  ADOConnection1.DefaultDatabase     := ComboBox8.Text;
  ADOConnection1.Open;

  ADOQryG.Connection    := ADOConnection1;

  ADOQryG.Close;
  ADOQryG.SQL.Clear;
  ADOQryG.SQL.Add('SELECT * FROM sysobjects');
  ADOQryG.SQL.Add('WHERE type = ''U''');
  ADOQryG.SQL.Add('ORDER BY name');
  ADOQryG.Open;

  ComboBox3.Clear;
  while not ADOQryG.Eof do
    begin
      ComboBox3.Items.Add(ADOQryG.Fields.FieldByName('name').AsString);
      ADOQryG.Next;
    end;
end;

end.
