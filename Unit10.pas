unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Grids, DBGrids, DB, Mask, DBCtrls,
  ADODB;

type
  TForm10 = class(TForm)
    tbl1: TADOTable;
    wdstrngfldtbl1CODIGO: TWideStringField;
    fltfldtbl1PRECIO: TFloatField;
    fltfldtbl1TOTAL: TFloatField;
    lbl1: TLabel;
    dbedtCODIGO: TDBEdit;
    ds1: TDataSource;
    lbl2: TLabel;
    lbl3: TLabel;
    dbedtPRECIO: TDBEdit;
    dbgrd1: TDBGrid;
    grp1: TGroupBox;
    pnl1: TPanel;
    pnl2: TPanel;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    img2: TImage;
    img3: TImage;
    fltfldtbl1CANTIDAD: TFloatField;
    lbl6: TLabel;
    dbedtCANTIDAD: TDBEdit;
    pnl4: TPanel;
    lbl7: TLabel;
    img6: TImage;
    wdstrngfldtbl1DESCRIPCION: TWideStringField;
    dbedtDESCRIPCION1: TDBEdit;
    wdstrngfldtbl1fotos: TWideStringField;
    con1: TADOConnection;
    btn4: TButton;
    procedure pnl1Click(Sender: TObject);
    procedure pnl2Click(Sender: TObject);
    procedure pnl3Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit2, Unit11, Unit19;

{$R *.dfm}

procedure TForm10.pnl1Click(Sender: TObject);
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

procedure TForm10.pnl2Click(Sender: TObject);
var
 buttonselected: integer;
 begin
buttonselected := messageDlg ('seguro que desea modificar?',mtError,mbOKCancel,0);
if buttonselected = mrOk then
begin
tbl1.Edit;
dbedtCANTIDAD.Enabled:=True;
dbedtCODIGO.enabled:=True;
dbedtDESCRIPCION1.enabled:=True;
dbedtPRECIO.enabled:=True;
pnl1.Enabled:=True;
pnl2.enabled:=True;
end
else
Abort;
end;
procedure TForm10.pnl3Click(Sender: TObject);
begin

tbl1.delete;

end;

procedure TForm10.img1Click(Sender: TObject);
begin
tbl1.Insert;
dbedtCANTIDAD.Enabled:=True;
dbedtCODIGO.enabled:=True;
dbedtDESCRIPCION1.enabled:=True;
dbedtPRECIO.enabled:=True;

pnl1.Enabled:=True;
pnl2.enabled:=True;

end;

procedure TForm10.btn1Click(Sender: TObject);
begin
tbl1.Prior;
end;

procedure TForm10.btn2Click(Sender: TObject);
begin
tbl1.Next;

end;

procedure TForm10.btn3Click(Sender: TObject);
begin
Form11.show;
FORM10.hide;
end;

procedure TForm10.btn4Click(Sender: TObject);
begin

quickreport19.preview;

end;

procedure TForm10.FormCreate(Sender: TObject);
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
end.
