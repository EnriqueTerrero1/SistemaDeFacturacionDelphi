unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls, Grids, DBGrids, DB, Mask, ADODB,
  jpeg;

type
  TForm6 = class(TForm)
    con1: TADOConnection;
    tbl1: TADOTable;
    atncfldtbl1ID: TAutoIncField;
    wdstrngfldtbl1NOMBRE: TWideStringField;
    wdstrngfldtbl1DIRECCION: TWideStringField;
    wdstrngfldtbl1CONTACTO: TWideStringField;
    wdstrngfldtbl1TELEFONO: TWideStringField;
    ds1: TDataSource;
    lbl3: TLabel;
    dbedtNOMBRE: TDBEdit;
    lbl4: TLabel;
    dbedtDIRECCION: TDBEdit;
    lbl5: TLabel;
    dbedtCONTACTO: TDBEdit;
    lbl6: TLabel;
    dbedtTELEFONO: TDBEdit;
    dbgrd1: TDBGrid;
    btn1: TButton;
    grp1: TGroupBox;
    pnl1: TPanel;
    img2: TImage;
    pnl2: TPanel;
    img3: TImage;
    pnl3: TPanel;
    img4: TImage;
    img5: TImage;
    edt1: TEdit;
    btn3: TButton;
    btn4: TButton;
    wdstrngfldtbl1fotos: TWideStringField;
    dlgOpen1: TOpenDialog;
    img6: TImage;
    pnl4: TPanel;
    lbl1: TLabel;
    img7: TImage;
    wdstrngfldtbl1CODIGO: TWideStringField;
    lbl7: TLabel;
    edt2: TEdit;
    dbedtCODIGO: TDBEdit;
    lbl2: TLabel;
    btn2: TButton;
    procedure btn1Click(Sender: TObject);
    procedure pnl1Click(Sender: TObject);
    procedure pnl2Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt2Change(Sender: TObject);
    procedure dbedtCODIGOChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit2, Unit11, Unit12;

{$R *.dfm}

procedure TForm6.btn1Click(Sender: TObject);
begin
form6.Hide;
form11.show;
end;

procedure TForm6.pnl1Click(Sender: TObject);
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

procedure TForm6.pnl2Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea modificar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl1.Edit;
dbedtNOMBRE.Enabled:= True;
dbedtDIRECCION.Enabled:=True;
dbedtCONTACTO.Enabled:=True;
dbedtTELEFONO.Enabled:=True;
dbedtCODIGO.enabled:=True;
pnl1.Enabled:=True;
pnl3.enabled:=true;
end
else
Abort;
end;

procedure TForm6.pnl3Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea eliminar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl1.delete;
end
else
abort;
end;

procedure TForm6.img5Click(Sender: TObject);
begin
tbl1.Insert;
dbedtNOMBRE.Enabled:= True;

dbedtDIRECCION.Enabled:=True;
dbedtCONTACTO.Enabled:=True;
dbedtTELEFONO.Enabled:=True;
dbedtCODIGO.enabled:=True;
pnl1.Enabled:=True;
pnl3.enabled:=true;

end;

procedure TForm6.btn2Click(Sender: TObject);
begin
QuickReport12.preview;
tbl1.edit;

end;

procedure TForm6.btn3Click(Sender: TObject);
begin
tbl1.Prior;

end;

procedure TForm6.btn4Click(Sender: TObject);
begin
tbl1.Next;

end;



procedure TForm6.FormCreate(Sender: TObject);

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
procedure TForm6.edt2Change(Sender: TObject);
begin
tbl1.Locate('CODIGO',edt2.Text,[loCaseInsensitive,loPartialKey]);
end;

procedure TForm6.dbedtCODIGOChange(Sender: TObject);
begin
pnl1.enabled:=True;
pnl3.Enabled:=True;

end;

end.
