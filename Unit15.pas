unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, DB, StdCtrls, Mask, Grids, DBGrids, ADODB,
  jpeg;

type
  TForm15 = class(TForm)
    tbl1: TADOTable;
    con1: TADOConnection;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    grp1: TGroupBox;
    pnl1: TPanel;
    img1: TImage;
    pnl2: TPanel;
    img2: TImage;
    pnl3: TPanel;
    img3: TImage;
    img4: TImage;
    lbl6: TLabel;
    btn1: TButton;
    btn2: TButton;
    atncfldtbl1ID: TAutoIncField;
    wdstrngfldtbl1CODIGO: TWideStringField;
    wdstrngfldtbl1DESCRIPCION: TWideStringField;
    fltfldtbl1PRECIO: TFloatField;
    fltfldtbl1CANTIDAD: TFloatField;
    fltfldtbl1TOTAL: TFloatField;
    wdstrngfldtbl1fotos: TWideStringField;
    wdstrngfldtbl1Fecha_de_entrada: TWideStringField;
    lbl1: TLabel;
    dbedtCODIGO: TDBEdit;
    lbl2: TLabel;
    tbl2: TADOTable;
    fltfldtbl2Cantidad: TFloatField;
    wdstrngfldtbl2fecha: TWideStringField;
    fltfldtbl2precio: TFloatField;
    lbl3: TLabel;
    dbedtCantidad: TDBEdit;
    lbl4: TLabel;
    dbedtfecha: TDBEdit;
    lbl5: TLabel;
    dbedtprecio: TDBEdit;
    wdstrngfldtbl2codigo: TWideStringField;
    wdstrngfldtbl2Descripcion: TWideStringField;
    dbedtDESCRIPCION1: TDBEdit;
    ds2: TDataSource;
    btn3: TButton;
    btn4: TButton;
    edt1: TEdit;
    fltfldtbl2Numero_de_orden: TFloatField;
    lbl7: TLabel;
    dbedtNumero_de_orden: TDBEdit;
    procedure pnl2Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure dbedtCODIGOChange(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit11, Unit18;

{$R *.dfm}

procedure TForm15.pnl2Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea guardar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin

tbl2.FieldValues['CODIGO']:=dbedtcodigo.text;
 tbl2.FieldValues['DESCRIPCION']:=dbedtDescripcion1.text;
 tbl2.fieldvalues['Numero_de_orden']:=edt1.text;
  tbl2.Post;
end
else
Abort;
end;

procedure TForm15.pnl3Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea eliminar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl2.Delete
end
else
Abort;
end;

procedure TForm15.pnl1Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea modificar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl2.Edit;
dbedtcodigo.Enabled:=True;
dbedtDescripcion1.Enabled:=True;
dbedtCantidad.Enabled:=true;
dbedtfecha.Enabled:=true;
dbedtprecio.Enabled:=true;
end
else
Abort;
end;

procedure TForm15.img4Click(Sender: TObject);
begin
tbl2.Insert;
dbedtDESCRIPCION1.Text:='';
dbedtcodigo.Enabled:=True;
dbedtDescripcion1.Enabled:=True;
dbedtCantidad.Enabled:=true;
dbedtfecha.Enabled:=true;
dbedtprecio.Enabled:=true;
end;

procedure TForm15.btn1Click(Sender: TObject);
begin
tbl2.Prior;
end;

procedure TForm15.btn2Click(Sender: TObject);
begin
tbl2.Next;
end;

procedure TForm15.dbedtCODIGOChange(Sender: TObject);
begin
tbl1.Locate('CODIGO',dbedtCODIGO.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TForm15.btn3Click(Sender: TObject);
begin
Form15.Hide;
form11.show;
end;

procedure TForm15.FormCreate(Sender: TObject);
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
tbl2.Last;
edt1.Text:= '00'+ floattostr(strtofloatdef(dbedtNumero_de_orden.text,0)+ (001));
  end;
procedure TForm15.btn4Click(Sender: TObject);
begin
QuickReport18.preview;
end;

end.
