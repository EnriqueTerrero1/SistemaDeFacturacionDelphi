unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DBCtrls, ExtCtrls, Grids, DBGrids, Mask, DB, ADODB,
  jpeg;

type
  TForm8 = class(TForm)
    dbgrd1: TDBGrid;
    btn1: TButton;
    grp1: TGroupBox;
    pnl1: TPanel;
    img1: TImage;
    pnl2: TPanel;
    img2: TImage;
    pnl3: TPanel;
    img3: TImage;
    img4: TImage;
    btn3: TButton;
    btn4: TButton;
    pnl4: TPanel;
    lbl10: TLabel;
    img6: TImage;
    con1: TADOConnection;
    tbl1: TADOTable;
    atncfldtbl1ID: TAutoIncField;
    wdstrngfldtbl1MATRICULADELEMPLEADO: TWideStringField;
    wdstrngfldtbl1NOMBRE: TWideStringField;
    wdstrngfldtbl1APELLIDO: TWideStringField;
    fltfldtbl1DESCUENTOTOTAL: TFloatField;
    fltfldtbl1SUELDO: TFloatField;
    fltfldtbl1OtrosIngresos: TFloatField;
    wdstrngfldtbl1CLAVEDEACCESO: TWideStringField;
    wdstrngfldtbl1Departamento: TWideStringField;
    wdstrngfldtbl1correoelectronico: TWideStringField;
    wdstrngfldtbl1sexo: TWideStringField;
    wdstrngfldtbl1telefono: TWideStringField;
    wdstrngfldtbl1Posicion: TWideStringField;
    wdstrngfldtbl1Direccion: TWideStringField;
    wdstrngfldtbl1AFP: TWideStringField;
    wdstrngfldtbl1ISR: TWideStringField;
    wdstrngfldtbl1TSS: TWideStringField;
    wdstrngfldtbl1OtrosDescuentps: TWideStringField;
    wdstrngfldtbl1encargado: TWideStringField;
    lbl1: TLabel;
    dbedtMATRICULADELEMPLEADO: TDBEdit;
    ds2: TDataSource;
    lbl2: TLabel;
    dbedtNOMBRE: TDBEdit;
    lbl3: TLabel;
    dbedtAPELLIDO: TDBEdit;
    lbl5: TLabel;
    dbedtSUELDO: TDBEdit;
    lbl8: TLabel;
    dbedtDepartamento: TDBEdit;
    lbl9: TLabel;
    dbedtcorreoelectronico: TDBEdit;
    lbl11: TLabel;
    dbedtsexo: TDBEdit;
    lbl12: TLabel;
    dbedttelefono: TDBEdit;
    lbl14: TLabel;
    dbedtDireccion: TDBEdit;
    lbl15: TLabel;
    dbedtAFP: TDBEdit;
    lbl19: TLabel;
    dbedtencargado: TDBEdit;
    wdstrngfldtbl1fotos: TWideStringField;
    lbl7: TLabel;
    dbedtCLAVEDEACCESO: TDBEdit;
    edt1: TEdit;
    lbl13: TLabel;
    edt2: TEdit;
    lbl18: TLabel;
    btn2: TButton;
    wdstrngfldtbl1ars: TWideStringField;
    lbl4: TLabel;
    dbedtars: TDBEdit;
    procedure btn1Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure pnl2Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure dbedtMATRICULADELEMPLEADOChange(Sender: TObject);
    procedure dbedtSUELDOChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure edt2Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit1, Unit11, Unit17;

{$R *.dfm}

procedure TForm8.btn1Click(Sender: TObject);
begin
Form8.Hide;
FORM11.SHOW;
end;

procedure TForm8.pnl1Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea guardar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl1.Post;
application.messagebox('cambios gurdados','guardar');
end
else
Abort;
end;

procedure TForm8.pnl2Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea modificar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then

begin
tbl1.Edit;
pnl1.Enabled:=True;
pnl3.Enabled:=True;
dbedtCLAVEDEACCESO.enabled:=True;
dbedtMATRICULADELEMPLEADO.enabled:=True;
dbedtNOMBRE.enabled:=True;
dbedtAPELLIDO.enabled:=True;
dbedtSUELDO.enabled:=True;

dbedtDepartamento.enabled:=True;
dbedtcorreoelectronico.enabled:=True;
dbedtsexo.enabled:=true;
dbedttelefono.Enabled:=True;
dbedtDireccion.enabled:=True;
dbedtAFP.Enabled:=True;


dbedtencargado.Enabled:=True;
end
else
abort;
end;

procedure TForm8.pnl3Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea ELIMINAR?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl1.delete;
end
else
Abort;
end;

procedure TForm8.img4Click(Sender: TObject);
begin
tbl1.Insert;
dbedtCLAVEDEACCESO.enabled:=True;
dbedtMATRICULADELEMPLEADO.enabled:=True;
dbedtNOMBRE.enabled:=True;
dbedtAPELLIDO.enabled:=True;

dbedtSUELDO.enabled:=True;
dbedtDepartamento.enabled:=True;
dbedtcorreoelectronico.enabled:=True;
dbedtsexo.enabled:=true;
dbedttelefono.Enabled:=True;
dbedtDireccion.enabled:=True;
dbedtAFP.Enabled:=True;

dbedtencargado.Enabled:=True;
pnl1.Enabled:=True;
pnl3.Enabled:=True;

end;

procedure TForm8.btn2Click(Sender: TObject);
begin
QuickReport17.preview;

tbl1.edit;
end;


procedure TForm8.btn3Click(Sender: TObject);
begin
tbl1.Next;

end;

procedure TForm8.btn4Click(Sender: TObject);
begin
tbl1.Prior;

end;

procedure TForm8.dbedtMATRICULADELEMPLEADOChange(Sender: TObject);
begin
tbl1.Locate('MATRICULA DEL EMPLEADO',edt1.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TForm8.dbedtSUELDOChange(Sender: TObject);
begin
//afp//
dbedtAFP.text:=floattostr(StrToFloatDef(dbedtSUELDO.Text,0)*(2.87)/100);
dbedtars.text:=FloatToStr(StrToFloatDef(dbedtSUELDO.text,0)*(3.04)/100);



end;

procedure TForm8.FormCreate(Sender: TObject);
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
 end;
procedure TForm8.edt1Change(Sender: TObject);
begin
tbl1.Locate('MATRICULA DEL EMPLEADO',edt1.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TForm8.edt2Change(Sender: TObject);
begin
tbl1.Locate('encargado',edt2.Text,[loCaseInsensitive,loPartialKey]);
end;

end.
