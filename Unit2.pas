unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, ADODB, Grids, DBGrids, ExtCtrls,
  jpeg;

type
  TForm2 = class(TForm)
    tbl1: TADOTable;
    atncfldtbl1ID: TAutoIncField;
    wdstrngfldtbl1NOMBRE: TWideStringField;
    wdstrngfldtbl1DIRECCION: TWideStringField;
    wdstrngfldtbl1CONTACTO: TWideStringField;
    wdstrngfldtbl1TELEFONO: TWideStringField;
    ds1: TDataSource;
    dbedtNOMBRE: TDBEdit;
    dbedtDIRECCION: TDBEdit;
    dbedtCONTACTO: TDBEdit;
    dbedtTELEFONO: TDBEdit;
    grp1: TGroupBox;
    lbl8: TLabel;
    lbl9: TLabel;
    lbl10: TLabel;
    lbl11: TLabel;
    lbl12: TLabel;
    grp2: TGroupBox;
    tbl2: TADOTable;
    atncfldtbl2ID: TAutoIncField;
    wdstrngfldtbl2CODIGO: TWideStringField;
    wdstrngfldtbl2DESCRIPCION: TWideStringField;
    fltfldtbl2PRECIO: TFloatField;
    fltfldtbl2CANTIDAD: TFloatField;
    fltfldtbl2TOTAL: TFloatField;
    ds2: TDataSource;
    dbedtDESCRIPCION: TDBEdit;
    dbedtPRECIO: TDBEdit;
    lbl14: TLabel;
    lbl15: TLabel;
    lbl16: TLabel;
    lbl17: TLabel;
    lbl18: TLabel;
    tbl3: TADOTable;
    btn3: TButton;
    wdstrngfldtbl3codigo: TWideStringField;
    wdstrngfldtbl3descripcion: TWideStringField;
    fltfldtbl3preciounitario: TFloatField;
    fltfldtbl3cantidad: TFloatField;
    fltfldtbl3itbis: TFloatField;
    fltfldtbl3total: TFloatField;
    ds3: TDataSource;
    dbedtitbis: TDBEdit;
    dbgrd1: TDBGrid;
    btn4: TButton;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtCANTIDAD: TDBEdit;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl19: TLabel;
    lbl21: TLabel;
    fltfldtbl1TOTALAPAGAR: TFloatField;
    lbl5: TLabel;
    dbedtTOTALAPAGAR: TDBEdit;
    btn1: TButton;
    lbl20: TLabel;
    lbl1: TLabel;
    dbedttotal: TDBEdit;
    lbl23: TLabel;
    dbedttotal1: TDBEdit;
    btn2: TButton;
    img1: TImage;
    lbl22: TLabel;
    lbl24: TLabel;
    edt3: TEdit;
    btn5: TButton;
    dbedtCANTIDAD1: TDBEdit;
    lbl4: TLabel;
    dbedtdescripcion2: TDBEdit;
    lbl25: TLabel;
    img3: TImage;
    lbl26: TLabel;
    lbl27: TLabel;
    cbb1: TComboBox;
    wdstrngfldtbl1CODIGO: TWideStringField;
    cbb2: TComboBox;
    wdstrngfldtbl3fecha: TWideStringField;
    dbedtfecha1: TDBEdit;
    tbl4: TADOTable;
    con1: TADOConnection;
    ds4: TDataSource;
    atncfldtbl4ID: TAutoIncField;
    wdstrngfldtbl4Codigo_de_Facturacion: TWideStringField;
    wdstrngfldtbl4Descripcion: TWideStringField;
    fltfldtbl4Cantidad: TFloatField;
    fltfldtbl4Precio: TFloatField;
    fltfldtbl4total: TFloatField;
    wdstrngfldtbl4Cliente: TWideStringField;
    wdstrngfldtbl4Fecha: TWideStringField;
    lbl13: TLabel;
    dbedtCodigo_de_Facturacion: TDBEdit;
    lbl28: TLabel;
    btn6: TButton;
    btn7: TButton;
    fltfldtbl1ITBIS: TFloatField;
    wdstrngfldtbl3Tipodepago: TWideStringField;
    lbl29: TLabel;
    dbedtTipodepago: TDBEdit;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure dbedtCANTIDADChange(Sender: TObject);
    procedure dbedtTOTALChange(Sender: TObject);

    procedure btn4Click(Sender: TObject);

    procedure dbedttotal1Change(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure pnl2Click(Sender: TObject);
    procedure dbedtdescripcion2Change(Sender: TObject);
    procedure img3Click(Sender: TObject);
    
    procedure cbb2Change(Sender: TObject);
    procedure cbb1Change(Sender: TObject);



  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit4,Unit6, Unit7, Unit5, Unit9, Unit10, Unit1, Unit13, Unit14;

{$R *.dfm}

procedure TForm2.btn1Click(Sender: TObject);
var
  I:Integer;
 buttonselected: integer;
begin
buttonselected := messageDlg ('seguro que desea cancelar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
for i:= 1 to TBL3.RecordCount do
begin
tbl3.Delete ;
tbl3.Next ;
lbl2.caption:='';
lbl3.caption:='';
dbedtTOTALAPAGAR.Text:='';
end
end
else
abort;
end;



procedure TForm2.btn2Click(Sender: TObject);
var
  buttonselected: integer;
  I:Integer;
  begin
buttonselected := messageDlg ('seguro que desea validar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
  tbl1.post;
  qckrprt.preview;
  tbl1.Edit;
  tbl2.EDIT;
  tbl3.Edit;
  tbl1.Post;
  tbl2.Post;
  tbl3.Post;
  dbedtTOTALAPAGAR.Clear;
  dbedtCANTIDAD.clear;
  dbedtNOMBRE.Clear;
  dbedtPRECIO.Clear;
  dbedtDIRECCION.Clear;
  dbedtCONTACTO.clear;
  dbedtTELEFONO.Clear;
  dbedtDESCRIPCION.Clear;
  dbedtitbis.Clear;
  dbedttotal.clear;
  dbedttotal1.Clear;
  dbedtCANTIDAD1.Clear;
  dbedtdescripcion2.Clear;
  dbedtfecha1.Clear;
  dbedtCodigo_de_Facturacion.Clear;
  tbl4.Last;
edt3.text:= '00'+ floattostr(strtofloatdef(dbedtCodigo_de_Facturacion.text,0)+ (001));
for i:= 1 to TBL3.RecordCount do
begin
tbl3.Delete ;
tbl3.Next ;
lbl2.caption:='';
lbl3.caption:='';
end
end
else
Abort;
end;





procedure TForm2.FormCreate(Sender: TObject);
 var
  today: TDateTime;
  aux : integer;
Archivo : string;
i: Integer;
begin
  i := 0;

Archivo:= GetCurrentDir+ '\SISTEMADEBASEDEDATOS.mdb';
with con1 do
begin

if not Connected then

begin

{si el archivo existe, abrir conexion}

if FileExists(Archivo) then

ConnectionString := 'Provider =Microsoft.Jet.OLEDB.4.0;Data Source= '+ Archivo +';Persist Security Info= False'

else

 ShowMessage('El archivo' + QuotedStr(Archivo) + 'no existe');

try
  Open;
except

ShowMessage ('Hubo un problema tratando de abrir la base de datos');
 end;
end;

try

for i := 0 to Self.ComponentCount -1 Do
 if Self.Components[i].ClassType = TADOTable then
  with Self.Components[i] As TADOTable Do
   Open;

except
  ShowMessage('Hubo un problema tratando de abrir la tabla ' + Self.Components[i].Name);
  end;

begin
  dbedtNOMBRE.Text:='';
tbl4.Last;
edt3.Text:= '00'+ floattostr(strtofloatdef(dbedtCodigo_de_Facturacion.text,0)+ (001));
  while not tbl1.Eof do
  begin

  cbb1.items.add(tbl1.FieldByName('CODIGO').ASstring);
  tbl1.Next;
  end;
  while not tbl2.eof do
  begin
  cbb2.Items.add(tbl2.fieldbyname('CODIGO').ASstring);
  tbl2.Next;
  end;
   today:=Now;
    dbedtfecha1.text:=(datetostr(today)+','+timetostr(today));
  dbedtTOTALAPAGAR.Clear;
tbl3.Insert;
dbedtNOMBRE.Text:='';
dbedtDIRECCION.Text:='';
dbedtCONTACTO.Text:='';
dbedtTELEFONO.Text:='';

dbedtDESCRIPCION.Text:='';
dbedtPRECIO.Text:='';
dbedtCANTIDAD.text:='';
dbedttotal1.text:='';
dbedtdescripcion2.text:='';
dbedtCANTIDAD1.Text:='';
end;
end;
end;



procedure TForm2.dbedtCANTIDADChange(Sender: TObject);
var
  t:Double;
begin
   t:=(strtofloatdef (dbedtCANTIDAD.Text,0)*(StrToFloatDef (dbedtprecio.text,0)));
  dbedtTOTAL.text:= floattostr (t);
end;








procedure TForm2.dbedtTOTALChange(Sender: TObject);
var
T:Double;
D:Double;
begin

T:=(strtofloatdef (dbedtCANTIDAD.Text,0)*(StrToFloatDef (dbedtprecio.text,0)));
D:=(T)*(0.18);
  dbedtTOTAL.text:= floattostr (T);
  dbedtitbis.text:=floattostr(d);

end;


procedure TForm2.btn4Click(Sender: TObject);

var
 buttonselected: integer;
begin
buttonselected := messageDlg ('seguro que desea ELIMINAR?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin

    tbl3.Edit;
  //itbis//
 LBL3.Caption:=FloatToStr(StrToFloatDef(LBl3.CAPTION,0)-(StrToFloatDef(dbedtitbis.text,0)));
 //subtotal//

  lbl2.Caption:= floattostr(StrToFloatDef (lbl2.caption,0)- (StrToFloatDef(dbedttotal1.Text,0)));
dbedtTOTALAPAGAR.Text:= FLOATTOSTR(StrToFloatDef(lbl2.Caption,0)+(StrToFloatDef(lbl3.Caption,0)));

tbl2.Edit;
tbl3.Locate('DESCRIPCION',dbedtDESCRIPCION.Text,[loCaseInsensitive,loPartialKey]);
dbedtCANTIDAD1.text:=floattostr(strtofloatdef(dbedtCANTIDAD1.text,0)+(strtofloatdef(dbedtCANTIDAD.text,0)));
tbl2.Post;
tbl3.Delete;
end
else
Abort;


end;



procedure TForm2.dbedttotal1Change(Sender: TObject);
var
T:Double;
D:Double;
begin

T:=(strtofloatdef (dbedtCANTIDAD.Text,0)*(StrToFloatDef (dbedtprecio.text,0)));
D:=(T)*(0.18);
  dbedtTOTAL.text:= floattostr (T);
  dbedtitbis.text:=floattostr(d);

end;



procedure TForm2.btn3Click(Sender: TObject);
var
T:Double;
D:Double;
   today: TDateTime;
 begin
begin
   tbl4.Insert;
  today:=Now;
    dbedtfecha1.text:=(datetostr(today));
    tbl4.FieldValues['Fecha']:=dbedtfecha1.text;
tbl4.FieldValues['Cantidad']:=dbedtCANTIDAD.Text;

  tbl2.Edit;
dbedtCANTIDAD1.text:=floattostr(strtofloatdef(dbedtCANTIDAD1.text,0)-(strtofloatdef(dbedtCANTIDAD.text,0)));
   tbl2.Post;
tbl1.Edit;
T:=(strtofloatdef (dbedtCANTIDAD.Text,0)*(StrToFloatDef (dbedtprecio.text,0)));
D:=(T)*(0.18);
  dbedtTOTAL.text:= floattostr (T);
  tbl4.FieldValues['total']:=dbedttotal.Text;
  dbedtitbis.text:=floattostr(d);
  //SUBTOTAL//
  lbl2.Caption:= floattostr(StrToFloatDef(lbl2.caption,0)+(T));
   //I.T.B.I.S//
   LBL3.CAPTION:=FloatToStr(StrToFloatDef(lbl3.Caption,0)+(D));
   //TOTAL A PAGAR//
dbedtTOTALAPAGAR.Text:=FloatToStr(StrToFloatDef(lbl2.Caption,0)+(StrToFloatDef(lbl3.Caption,0)));
tbl3.FieldValues['descripcion']:= dbedtDESCRIPCION.Text;
tbl3.FieldValues['codigo']:= cbb2.Text;
tbl3.FieldValues['precio unitario']:= dbedtPRECIO.Text;

tbl4.FieldValues['Descripcion']:=dbedtDESCRIPCION.text;
tbl4.fieldvalues['Codigo_de_facturacion']:=edt3.text;
tbl4.FieldValues['precio']:=dbedtPRECIO.Text;
tbl4.FieldValues['Cliente']:=dbedtNOMBRE.Text;
tbl4.Post;
tbl3.Post;
btn2.Enabled:=true;
dbedtdescripcion.text:= '';
dbedtprecio.text:='';
end
end;


procedure TForm2.btn6Click(Sender: TObject);
begin
tbl3.Prior;
end;

procedure TForm2.btn7Click(Sender: TObject);
begin
tbl3.Next;
end;


procedure TForm2.btn5Click(Sender: TObject);


begin
form13.show;
Form2.Hide;

end;

procedure TForm2.pnl1Click(Sender: TObject);
begin
tbl2.Next;
end;

procedure TForm2.pnl2Click(Sender: TObject);
begin
tbl2.Prior;
end;



procedure TForm2.dbedtdescripcion2Change(Sender: TObject);
begin

tbl2.Locate('DESCRIPCION',dbedtdescripcion2.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TForm2.img3Click(Sender: TObject);
begin
Form2.Hide;
 Form1.edt1.text:='';
 Form1.lbl5.Caption:='';
 Form1.cbb1.Text:='';
Form1.Show;
end;




procedure TForm2.cbb2Change(Sender: TObject);


begin
  tbl3.Insert;

tbl2.Locate('CODIGO',cbb2.Text,[loCaseInsensitive,loPartialKey]);
  btn1.Enabled:=true;
btn4.Enabled:=true;
btn3.enabled:=True;
end;


procedure TForm2.cbb1Change(Sender: TObject);

begin
cbb2.enabled:=True;
tbl1.Locate('CODIGO',cbb1.Text,[loCaseInsensitive,loPartialKey]);
;
end;

end.
