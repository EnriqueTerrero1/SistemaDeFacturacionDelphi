unit Unit16;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, Grids, DBGrids, ADODB;

type
  TForm16 = class(TForm)
    tbl1: TADOTable;
    con1: TADOConnection;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    wdstrngfldtbl1codigo: TWideStringField;
    wdstrngfldtbl1Descripcion: TWideStringField;
    fltfldtbl1Cantidad: TFloatField;
    wdstrngfldtbl1fecha: TWideStringField;
    fltfldtbl1precio: TFloatField;
    lbl1: TLabel;
    lbl2: TLabel;
    dbedtDescripcion: TDBEdit;
    lbl3: TLabel;
    dbedtCantidad: TDBEdit;
    lbl4: TLabel;
    dbedtfecha: TDBEdit;
    lbl5: TLabel;
    dbedtprecio: TDBEdit;
    ds2: TDataSource;
    tbl2: TADOTable;
    atncfldtbl2ID: TAutoIncField;
    wdstrngfldtbl2CODIGO: TWideStringField;
    wdstrngfldtbl2DESCRIPCION: TWideStringField;
    fltfldtbl2PRECIO: TFloatField;
    fltfldtbl2CANTIDAD: TFloatField;
    fltfldtbl2TOTAL: TFloatField;
    wdstrngfldtbl2fotos: TWideStringField;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    edt1: TEdit;
    lbl6: TLabel;
    wdstrngfldtbl2Fecha_de_entrada: TWideStringField;
    btn5: TButton;
    lbl7: TLabel;
    btn6: TButton;
    edt2: TEdit;
    btn7: TButton;
    btn8: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbedtprecioChange(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn8Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form16: TForm16;

implementation

uses Unit11;

{$R *.dfm}

procedure TForm16.btn1Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea modificar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl2.Edit;
end
else
Abort;
end;

procedure TForm16.btn2Click(Sender: TObject);
begin


tbl2.Insert;
     tbl2.FieldValues['CODIGO']:=edt2.text;
 tbl2.FieldValues['DESCRIPCION']:=dbedtDescripcion.text;
  tbl2.FieldValues['CANTIDAD']:=dbedtCantidad.text;
  tbl2.FieldValues['PRECIO']:=edt1.text;
   tbl2.FieldValues['Fecha_de_entrada']:=dbedtfecha.text;

end;



procedure TForm16.dbedtprecioChange(Sender: TObject);
var
  t:Double;
  D:Double;
begin

  t:=(StrToFloatDef (dbedtprecio.text,0)*(0.20));
  D:=(StrToFloatDef(dbedtprecio.Text,0)+(t));
  EDT1.text:= floattostr (D);
end;

procedure TForm16.btn3Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea ELIMINAR?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl2.Delete;
end
else
Abort;
end;

procedure TForm16.btn4Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea guardar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl2.Post;
end

else
Abort;
end;

procedure TForm16.btn5Click(Sender: TObject);
begin
Form16.Hide;
form11.show;
end;


procedure TForm16.FormCreate(Sender: TObject);
var
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


end;
END;
procedure TForm16.edt2Change(Sender: TObject);
begin
tbl1.Locate('codigo',edt2.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TForm16.btn6Click(Sender: TObject);
begin
 dbedtDescripcion.enabled:=True;
  dbedtCantidad.enabled:=True;
  dbedtfecha.enabled:=True;
  dbedtprecio.enabled:=True;
  edt2.Enabled:=True;
                             tbl1.Insert;
end;

procedure TForm16.btn8Click(Sender: TObject);
begin
tbl2.Next;
end;

procedure TForm16.btn7Click(Sender: TObject);
begin
tbl2.Prior;
end;

end.
 