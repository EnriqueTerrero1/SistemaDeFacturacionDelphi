unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Mask, DBCtrls, ADODB, ExtCtrls, jpeg;

type
  TForm1 = class(TForm)
    btn1: TButton;
    lbl9: TLabel;
    lbl5: TLabel;
    pnl1: TPanel;
    lbl6: TLabel;
    tbl1: TADOTable;
    atncfldtbl1ID: TAutoIncField;
    wdstrngfldtbl1MATRICULADELEMPLEADO: TWideStringField;
    wdstrngfldtbl1NOMBRE: TWideStringField;
    wdstrngfldtbl1APELLIDO: TWideStringField;
    wdstrngfldtbl1CLAVEDEACCESO: TWideStringField;
    lbl1: TLabel;
    ds1: TDataSource;
    lbl4: TLabel;
    edt1: TEdit;
    lbl7: TLabel;
    dbedtCLAVEDEACCESO: TDBEdit;
    wdstrngfldtbl1fotos: TWideStringField;
    edt3: TEdit;
    img1: TImage;
    img4: TImage;
    cbb1: TComboBox;
    lbl2: TLabel;
    lbl3: TLabel;
    wdstrngfldtbl1encargado: TWideStringField;
    lbl8: TLabel;
    dbedtencargado: TDBEdit;
    con1: TADOConnection;
    lbl10: TLabel;
    lbl11: TLabel;
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure cbb1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit8, Unit11;

{$R *.dfm}

procedure TForm1.btn2Click(Sender: TObject);
begin
Form1.Hide;
FORM8.SHOW;
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
if dbedtEncargado.Text = 'administrador' then;
form11.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
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
begin
  while not tbl1.Eof do
begin
  cbb1.items.add(tbl1.FieldByName('MATRICULA DEL EMPLEADO').ASstring);
  tbl1.Next;

dbedtEncargado.Text:='';
dbedtCLAVEDEACCESO.text:='';

  end;
end;
end;

procedure TForm1.btn1Click(Sender: TObject);
begin
 if dbedtEncargado.Text = 'administrador' then
  IF EDT1.TEXT = dbedtCLAVEDEACCESO.Text then
form11.Show;
Form1.Hide;

begin
if dbedtEncargado.text = 'vendedor' then
IF EDT1.TEXT = dbedtCLAVEDEACCESO.Text then
 form2.show;
 form1.Hide;
end;
begin
 if edt1.Text <> dbedtCLAVEDEACCESO.Text then
form1.show;
lbl5.CAPTION:='CLAVE DE ACCESO,INCORRECTA';
end;
end;


procedure TForm1.cbb1Change(Sender: TObject);
begin
tbl1.Locate('MATRICULA DEL EMPLEADO',cbb1.Text,[loCaseInsensitive,loPartialKey]);
end;

end.
