unit ImprimeFormato;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Printers, DB, ADODB, ExtCtrls, DBCtrls, Grids, DBGrids,
  Buttons, Mask, JvComponentBase, JvPrvwRender, JvExControls, JvPrvwDoc,
  JvExDBGrids, JvDBGrid,System.Internal.VarHlpr, FrameListaTabla2, Vcl.ComCtrls,
  JvTracker;

type
  TImpFormato = class(TForm)
    ADOQFormato: TADOQuery;
    DSFormato: TDataSource;
    ADOQImpresion: TADOQuery;
    ADOQEncFormato: TADOQuery;
    DSEncFormato: TDataSource;
    OpenDialog1: TOpenDialog;
    PrinterSetupDialog1: TPrinterSetupDialog;
    PrintDialog1: TPrintDialog;
    ADOQTmp: TADOQuery;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel1: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label7: TLabel;
    DBMemo1: TDBMemo;
    DBNavigator2: TDBNavigator;
    DBEdit1: TDBEdit;
    Memo1: TMemo;
    Edit1: TEdit;
    Edit2: TEdit;
    DBEdit2: TDBEdit;
    Edit5: TEdit;
    Panel2: TPanel;
    Button3: TButton;
    Button4: TButton;
    Button2: TButton;
    DBGrid1: TJvDBGrid;
    SpeedButton2: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Button1: TButton;
    DBNavigator1: TDBNavigator;
    TabSheet3: TTabSheet;
    Label6: TLabel;
    Edit4: TEdit;
    TabSheet4: TTabSheet;
    ListaCol1: TListaCol;
    Panel3: TPanel;
    ScrollBox1: TScrollBox;
    ImagePrint: TImage;
    JvTracker1: TJvTracker;
    Button5: TButton;
    TabSheet5: TTabSheet;
    Edit3: TEdit;
    BitBtn2: TBitBtn;
    Panel4: TPanel;
    Image1: TImage;
    Label5: TLabel;
    Memo2: TMemo;
    BitBtn1: TBitBtn;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure DSEncFormatoDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DSFormatoUpdateData(Sender: TObject);
    procedure DBMemo1Exit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure JvTracker1ChangedValue(Sender: TObject; NewValue: Integer);
    procedure Button5Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    Procedure Imprimir(mm:tobject;via:integer);
  public
    { Public declarations }

  end;

var
  ImpFormato: TImpFormato;

implementation

Uses Libreria_PrateincoForm, UDataModule1, Libreria_Prateinco;
{$R *.dfm}

Procedure TImpFormato.Imprimir(mm:tobject;via:integer);
Var x,y,i,j:integer;
    hojax,hojay:integer;
    Inc:Integer;
    sw:Integer;
    R :TRect;
    ScaleX, ScaleY: Integer;
    Valor:Currency;
    ValorInt:Integer;
    Labelxx,LineaG : String;
    incx,incy:integer;
begin
  Edit3.Text := campotoedit(ADOQEncFormato.FieldValues['Plantilla']);
  Image1.Picture.LoadFromFile(Edit3.Text);

  Memo1.Text := Reemplaza_Parametro(DBMemo1.Text,'');

  ADOQImpresion.Close;
  ADOQImpresion.SQL.Clear;
  ADOQImpresion.SQL.Add(Memo1.Text);
  if Edit4.Text <> '' then
  Begin
    ADOQImpresion.Filtered:= true;
    ADOQImpresion.Filter := Edit4.Text;
  End
  Else ADOQImpresion.Filtered := false;
  ADOQImpresion.Open;
  ADOQImpresion.First;
  if ADOQImpresion.RecordCount = 0 then
  Begin
    Showmessage('Error: No hay registros seleccionados.');
    Exit;
  End;

  Hojax:=strtoint(Edit1.Text);
  Hojay:=strtoint(Edit2.Text);
  Inc:=50;
  sw:=0;

  ImagePrint.Picture.Bitmap.Width := Hojax;
  ImagePrint.Picture.Bitmap.Height := Hojay;
  ImagePrint.Width := Hojax;
  ImagePrint.Height := Hojay;
  JvTracker1.Maximum := Hojax;
  JvTracker1.Value := Hojax;

  if via=1 then
  Begin
    With TPrinter(mm) do
    Begin
      Try
        ScaleX :=GetDeviceCaps(Handle, logPixelsX) div PixelsPerInch;
        ScaleY :=GetDeviceCaps(Handle, logPixelsY) div PixelsPerInch;
        R := Rect(0, 0, Image1.Picture.Width * ScaleX,Image1.Picture.Height * ScaleY);
        Canvas.StretchDraw(R, Image1.Picture.Graphic);

        Canvas.Brush.Style := bsClear;
        ADOQFormato.First;
        while NOT ADOQFormato.Eof  do
        Begin
          Canvas.Font.Size := campotoedit(ADOQFormato.FieldValues['Tam']);
          Canvas.Font.Name := campotoedit(ADOQFormato.FieldValues['Fuente']);
          if (ADOQFormato.FieldValues['Campo'] <> Null) then
          Begin
            //Tipo = 0: Label
            //       1: Campo Normal
            //       2: Codigo de Barras del Numero
            //       3: Imagen del Campo
            //       4: Imagen de Archivo
            //       5: Numero con Comas
            //       6: Monto Escrito
            //       7: SQL en el campo
            //       8: SQl Invertido
            //       9: Plantilla Standard

            if ADOQFormato.FieldValues['Label'] = 'S' then labelxx:= trim(ADOQFormato.FieldValues['Descripcion'])+' '
            Else Labelxx := '';

            if (ADOQFormato.FieldValues['Tipo'] = '0') then
            Begin
              Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '1') then
            Begin
              if (ADOQImpresion.FieldValues[trim(ADOQFormato.FieldValues['Campo'])] <> null) then
              Begin
                VariantToUnicodeString(ADOQImpresion.FieldValues[trim(ADOQFormato.FieldValues['Campo'])],LineaG);
                Labelxx := Labelxx + LineaG;//Format('%.50s',[ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']]]);
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx);
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '2') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
                CodificaEAN(canvas,ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']]);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '3') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
                Image1.Picture.Bitmap.Assign(ADOQImpresion.FieldByName(ADOQFormato.FieldValues['Campo']));
                R := Rect(ADOQFormato.FieldValues['X'], ADOQFormato.FieldValues['Y'], (Image1.Picture.Width * (ScaleX/2))+ADOQFormato.FieldValues['X'],(Image1.Picture.Height * (ScaleY/2))+ADOQFormato.FieldValues['Y']);
                Canvas.StretchDraw(R, Image1.Picture.Graphic);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '4') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
                Image1.Picture.Bitmap.LoadFromFile(ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']]);
                R := Rect(ADOQFormato.FieldValues['X'], ADOQFormato.FieldValues['Y'], (Image1.Picture.Width * (ScaleX/2))+ADOQFormato.FieldValues['X'],(Image1.Picture.Height * (ScaleY /2))+ADOQFormato.FieldValues['Y']);
                Canvas.StretchDraw(R, Image1.Picture.Graphic);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '5') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
              Begin
                Valor := ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']];
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx+Format('%16.2n',[Valor]));
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '6') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
              Begin
                ValorInt := ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']];
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx+xIntToLletras(ValorInt));
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '7') then
            Begin
              if (ADOQFormato.FieldValues['Campo'] <> null) then
              Begin
                ADOQTmp.Close;
                ADOQTmp.SQL.Clear;
                ADOQTmp.SQL.Add(ADOQFormato.FieldValues['Campo']);
                if Edit4.Text <> '' then
                Begin
                  ADOQTmp.Filtered:= true;
                  ADOQTmp.Filter := Edit4.Text;
                End
                Else ADOQTmp.Filtered := false;
                ADOQTmp.Open;
                ADOQTmp.First;

                //Calcular la longitud de los campos

                incx:= 0;
                incy:=50;

                //Titulos
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx);
                For i := 0 to adoqtmp.FieldList.Count-1 do
                Begin
                  Canvas.TextOut(ADOQFormato.FieldValues['X']+(incx),ADOQFormato.FieldValues['Y']+(1*incy),ADOQTmp.FieldList.Fields[i].FieldName);
                  incx := incx + (ADOQTmp.FieldList.Fields[i].Size * Canvas.Font.Size * ScaleX);
                End;
                //********

                j:=2;
                while NOT ADOQtmp.Eof do
                Begin
                  incx:= 0;
                  For i := 0 to adoqtmp.FieldList.Count-1 do
                  Begin
                    Canvas.TextOut(ADOQFormato.FieldValues['X']+(incx),ADOQFormato.FieldValues['Y']+(j*incy),ADOQTmp.FieldList.Fields[i].AsString);
                    incx := incx + (ADOQTmp.FieldList.Fields[i].Size * Canvas.Font.Size * ScaleX);
                  End;

                  j:=j+1;
                  ADOQTmp.Next;
                End;
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '8') then
            Begin
              ListaCol1.Edit1.Text := ADOQFormato.FieldValues['Campo'];
              ListaCol1.Edit7.Text := Edit4.Text;

              incx:= 400;
              incy:=50;
              for j := 0 to ListaCol1.StringGrid1.RowCount-1 do
              Begin
                for i := 0 to ListaCol1.StringGrid1.ColCount-1 do
                  Canvas.TextOut(ADOQFormato.FieldValues['X']+(i*incx),ADOQFormato.FieldValues['Y']+(j*incy),ListaCol1.StringGrid1.Cells[i,j]);
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '9') then
            Begin
              Canvas.Rectangle(100,100,Hojax-200,Hojay-200);
              Canvas.Rectangle(110,110,Hojax-210,800);
              Canvas.Rectangle(110,810,Hojax-210,Hojay-510);
              Canvas.Rectangle(110,Hojay-500,Hojax-210,Hojay-210);

//              Image1.Picture.Bitmap.Assign(Datamodule1.ADOQuery1.FieldByName('Logo'));
//              R := Rect(1500, 120, 2700,400);
//              Canvas.StretchDraw(R, Image1.Picture.Graphic);
            End;
          End;

          ADOQFormato.Next;
        End;
      Finally
      End;
    End;
  End
  Else Begin
    With TBitmap(mm) do
    Begin
      Try
        ScaleX :=GetDeviceCaps(Handle, logPixelsX) div PixelsPerInch;
        ScaleY :=GetDeviceCaps(Handle, logPixelsY) div PixelsPerInch;
        R := Rect(0, 0, Image1.Picture.Width * ScaleX,Image1.Picture.Height * ScaleY);
        Canvas.StretchDraw(R, Image1.Picture.Graphic);

        Canvas.Brush.Style := bsClear;
        ADOQFormato.First;
        while NOT ADOQFormato.Eof  do
        Begin
          Canvas.Font.Size := campotoedit(ADOQFormato.FieldValues['Tam']);
          Canvas.Font.Name := campotoedit(ADOQFormato.FieldValues['Fuente']);
          if (ADOQFormato.FieldValues['Campo'] <> Null) then
          Begin
            //Tipo = 0: Label
            //       1: Campo Normal
            //       2: Codigo de Barras del Numero
            //       3: Imagen del Campo
            //       4: Imagen de Archivo
            //       5: Numero con Comas
            //       6: Monto Escrito
            //       7: SQL en el campo
            //       8: SQl Invertido
            //       9: Plantilla Standard

            if ADOQFormato.FieldValues['Label'] = 'S' then labelxx:= trim(ADOQFormato.FieldValues['Descripcion'])+' '
            Else Labelxx := '';

            if (ADOQFormato.FieldValues['Tipo'] = '0') then
            Begin
              Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '1') then
            Begin
              if (ADOQImpresion.FieldValues[trim(ADOQFormato.FieldValues['Campo'])] <> null) then
              Begin
                VariantToUnicodeString(ADOQImpresion.FieldValues[trim(ADOQFormato.FieldValues['Campo'])],LineaG);
                Labelxx := Labelxx + LineaG;//Format('%.50s',[ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']]]);
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx);
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '2') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
                CodificaEAN(canvas,ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']]);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '3') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
                Image1.Picture.Bitmap.Assign(ADOQImpresion.FieldByName(ADOQFormato.FieldValues['Campo']));
                R := Rect(ADOQFormato.FieldValues['X'], ADOQFormato.FieldValues['Y'], (Image1.Picture.Width * (ScaleX/2))+ADOQFormato.FieldValues['X'],(Image1.Picture.Height * (ScaleY/2))+ADOQFormato.FieldValues['Y']);
                Canvas.StretchDraw(R, Image1.Picture.Graphic);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '4') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
                Image1.Picture.Bitmap.LoadFromFile(ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']]);
                R := Rect(ADOQFormato.FieldValues['X'], ADOQFormato.FieldValues['Y'], (Image1.Picture.Width * (ScaleX/2))+ADOQFormato.FieldValues['X'],(Image1.Picture.Height * (ScaleY /2))+ADOQFormato.FieldValues['Y']);
                Canvas.StretchDraw(R, Image1.Picture.Graphic);
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '5') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
              Begin
                Valor := ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']];
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx+Format('%16.2n',[Valor]));
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '6') then
            Begin
              if (ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']] <> null) then
              Begin
                ValorInt := ADOQImpresion.FieldValues[ADOQFormato.FieldValues['Campo']];
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx+xIntToLletras(ValorInt));
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '7') then
            Begin
              if (ADOQFormato.FieldValues['Campo'] <> null) then
              Begin
                ADOQTmp.Close;
                ADOQTmp.SQL.Clear;
                ADOQTmp.SQL.Add(ADOQFormato.FieldValues['Campo']);
                if Edit4.Text <> '' then
                Begin
                  ADOQTmp.Filtered:= true;
                  ADOQTmp.Filter := Edit4.Text;
                End
                Else ADOQTmp.Filtered := false;
                ADOQTmp.Open;
                ADOQTmp.First;

                incx:= 0;
                incy:=50;

                //Titulos
                Canvas.TextOut(ADOQFormato.FieldValues['X'],ADOQFormato.FieldValues['Y'],Labelxx);
                For i := 0 to adoqtmp.FieldList.Count-1 do
                Begin
                  Canvas.TextOut(ADOQFormato.FieldValues['X']+(incx),ADOQFormato.FieldValues['Y']+(1*incy),ADOQTmp.FieldList.Fields[i].FieldName);
                  incx := incx + (ADOQTmp.FieldList.Fields[i].Size * Canvas.Font.Size);
                End;
                //********

                j:=2;
                while NOT ADOQtmp.Eof do
                Begin
                  incx:= 0;
                  For i := 0 to adoqtmp.FieldList.Count-1 do
                  Begin
                    Canvas.TextOut(ADOQFormato.FieldValues['X']+(incx),ADOQFormato.FieldValues['Y']+(j*incy),ADOQTmp.FieldList.Fields[i].AsString);
                    incx := incx + (ADOQTmp.FieldList.Fields[i].Size * Canvas.Font.Size);
                  End;

                  j:=j+1;
                  ADOQTmp.Next;
                End;
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '8') then
            Begin
              ListaCol1.Edit1.Text := ADOQFormato.FieldValues['Campo'];
              ListaCol1.Edit7.Text := Edit4.Text;

              incx:= 400;
              incy:=50;
              for j := 0 to ListaCol1.StringGrid1.RowCount-1 do
              Begin
                for i := 0 to ListaCol1.StringGrid1.ColCount-1 do
                  Canvas.TextOut(ADOQFormato.FieldValues['X']+(i*incx),ADOQFormato.FieldValues['Y']+(j*incy),ListaCol1.StringGrid1.Cells[i,j]);
              End;
            End
            Else if (ADOQFormato.FieldValues['Tipo'] = '9') then
            Begin
              Canvas.Rectangle(100,100,Hojax-200,Hojay-200);
              Canvas.Rectangle(110,110,Hojax-210,800);
              Canvas.Rectangle(110,810,Hojax-210,Hojay-510);
              Canvas.Rectangle(110,Hojay-500,Hojax-210,Hojay-210);

//              Image1.Picture.Bitmap.Assign(Datamodule1.ADOQuery1.FieldByName('Logo'));
//              R := Rect(1500, 120, 2700,400);
//              Canvas.StretchDraw(R, Image1.Picture.Graphic);
            End;
          End;

          ADOQFormato.Next;
        End;
      Finally
      End;
    End;
  End;
End;

procedure TImpFormato.JvTracker1ChangedValue(Sender: TObject;
  NewValue: Integer);
begin
  ImagePrint.Width := NewValue;
  ImagePrint.Height := JvTracker1.Value -1;
  JvTracker1.Value   := ImagePrint.Height;
end;

procedure TImpFormato.BitBtn1Click(Sender: TObject);
begin
  ADOQEncFormato.Edit;
  ADOQEncFormato.FieldValues['Plantilla'] := '';
  ADOQEncFormato.Post;
end;

procedure TImpFormato.BitBtn2Click(Sender: TObject);
begin
  opendialog1.Title:='Buscar Plantilla';
  opendialog1.DefaultExt:='*.bmp';
  opendialog1.Execute;
  if opendialog1.FileName <> '' then
  BEGIN
    Edit3.Text := trim(opendialog1.FileName);

    ADOQEncFormato.Edit;
    ADOQEncFormato.FieldValues['Plantilla'] := Edit3.Text;
    ADOQEncFormato.Post;
    Image1.Picture.LoadFromFile(opendialog1.FileName);
  END;
end;

procedure TImpFormato.Button1Click(Sender: TObject);
Var x,y:integer;
    hojax,hojay:integer;
    Inc:Integer;
    sw:Integer;
begin
  if MessageDlg('Desea Imprimir la Plantilla de Impresión en la Impresora por Defecto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Hojax:=strtoint(Edit1.Text);
    Hojay:=strtoint(Edit2.Text);
    Inc:=100;
    sw:=0;

    Printer.BeginDoc;
    Printer.Canvas.Brush.Style := bsSolid;
    x:=Inc;
    while x < Hojax  do
    Begin
      y:=Inc;
      While y < Hojay do
      Begin
        if sw=0 then Printer.Canvas.Brush.Color := clwhite
        Else Printer.Canvas.Brush.Color := clinactiveborder;

        Printer.Canvas.Rectangle(x,y,x+inc,y+inc);
        y:=y+inc;
      End;

      if sw=0 then sw:=1
      else sw:=0;
      x:=x+inc;
    End;

    x:=0;
    while x < Hojax  do
    Begin
      Printer.Canvas.TextOut(x,0,inttostr(trunc(x/inc)));
      x:=x+inc;
    End;

    y:=0;
    While y < Hojay do
    Begin
      Printer.Canvas.TextOut(0,y,inttostr(trunc(y/inc)));
      y:=y+inc;
    End;
    Printer.Canvas.TextOut(inc,y-200,'Impresión de Regla para Formatos. Multiplique por:'+inttostr(inc));
    Printer.EndDoc;
  end;
end;

procedure TImpFormato.Button2Click(Sender: TObject);
begin
  if MessageDlg('Desea Imprimir el Formato en la Impresora por Defecto?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    try
      printer.BeginDoc;
      Imprimir(printer,1);
    finally
      printer.EndDoc;
    end;
  end;
end;

procedure TImpFormato.Button3Click(Sender: TObject);
begin
  if PrinterSetupDialog1.Execute then
  Edit5.Text := Printer.Printers[Printer.PrinterIndex];
  Edit1.Text := inttostr(Printer.PageWidth);
  Edit2.Text := inttostr(Printer.PageHeight);
end;

procedure TImpFormato.Button4Click(Sender: TObject);
begin
  if PrintDialog1.Execute then
  Edit5.Text := Printer.Printers[Printer.PrinterIndex];
  Edit1.Text := inttostr(Printer.PageWidth);
  Edit2.Text := inttostr(Printer.PageHeight);
end;

procedure TImpFormato.Button5Click(Sender: TObject);
begin
  Imprimir(imageprint.Picture.Bitmap,0);
  PageControl1.ActivePageIndex := 3;
end;

procedure TImpFormato.DBGrid1CellClick(Column: TColumn);
begin
  if Column.Field.DataType = ftMemo then
  Begin
    ADOQFormato.Edit;
    ADOQFormato.FieldValues[Column.Field.FieldName] := InputMemo('Ingrese el Contenido del Campo Memo',ADOQFormato.FieldValues[Column.Field.FieldName]);
  End;
end;

procedure TImpFormato.DBGrid1DrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
begin
  ColorGrillas(TDBGrid(Sender),Rect, DataCol, Column, State);
end;

procedure TImpFormato.DBMemo1Exit(Sender: TObject);
begin
  If ADOQEncFormato.State = dsedit then ADOQEncFormato.Post;
end;

procedure TImpFormato.DSEncFormatoDataChange(Sender: TObject; Field: TField);
begin
  if (ADOQEncFormato.FieldValues['IdE'] <> NULL) AND (ADOQEncFormato.FieldValues['Formato'] <> NULL) then
  Begin
    ADOQFormato.Close;
    ADOQFormato.Parameters.ParamValues['Empre'] := ADOQEncFormato.FieldValues['IdE'];
    ADOQFormato.Parameters.ParamValues['Forma']  := ADOQEncFormato.FieldValues['Formato'];
    ADOQFormato.Open;
  End;
end;

procedure TImpFormato.DSFormatoUpdateData(Sender: TObject);
begin
  If ADOQFormato.State = dsInsert Then
  Begin
     ADOQFormato.FieldValues['IdE'] := ADOQEncFormato.FieldValues['IdE'];
     ADOQFormato.FieldValues['Formato'] := ADOQEncFormato.FieldValues['Formato'];
  End;
end;

procedure TImpFormato.FormActivate(Sender: TObject);
begin
  ADOQEncFormato.Open;
end;

procedure TImpFormato.FormCreate(Sender: TObject);
begin
  Edit1.Text := inttostr(Printer.PageWidth);
  Edit2.Text := inttostr(Printer.PageHeight);
  if datamodule1.ADOQuery1.FieldValues['Tipo_Rol'] = '000' then
    Panel1.Enabled := True
  Else
    Panel1.Enabled := false;

  Edit5.Text := Printer.Printers[Printer.PrinterIndex];
  PageControl1.ActivePageIndex := 0;
end;

procedure TImpFormato.SpeedButton1Click(Sender: TObject);
Var i:Integer;
begin
  if MessageDlg('Esta seguro de Cargar los Campos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    Memo1.Text := Reemplaza_Parametro(DBMemo1.Text,'');

    ADOQImpresion.Close;
    ADOQImpresion.SQL.Clear;
    ADOQImpresion.SQL.Add(Memo1.Text);
    ADOQImpresion.MaxRecords := 1;
    ADOQImpresion.Open;
    ADOQImpresion.First;

    for I := 0 to ADOQImpresion.FieldCount-1 do
    Begin
      ADOQFormato.Append;
      ADOQFormato.FieldValues['Descripcion'] := ADOQImpresion.FieldDefList.FieldDefs[i].Name;
      ADOQFormato.FieldValues['Campo'] := ADOQImpresion.FieldDefList.FieldDefs[i].Name;
      ADOQFormato.FieldValues['X'] := 100;
      ADOQFormato.FieldValues['Y'] := I*50;
      ADOQFormato.FieldValues['Tipo'] := '1';
      ADOQFormato.FieldValues['Label'] := 'N';
      ADOQFormato.FieldValues['tam'] := 8;
      ADOQFormato.FieldValues['Fuente'] := 'Tahoma';
      ADOQFormato.Post;
    End;
    ADOQImpresion.Close;
    ADOQImpresion.MaxRecords := 0;
  end;
end;

procedure TImpFormato.SpeedButton2Click(Sender: TObject);
Var i:Integer;
begin
  if MessageDlg('Esta seguro de Eliminar los Campos?', mtConfirmation, [mbYes, mbNo], 0) = mrYes then
  begin
    ADOQFormato.First;
    while NOT ADOQFormato.Eof do
    Begin
      ADOQFormato.Delete;
      ADOQFormato.First;
    End;
  end;
end;

end.
