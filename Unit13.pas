unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, Grids, DBGrids, ADODB, jpeg, ExtCtrls;

type
  TForm13 = class(TForm)
    tbl1: TADOTable;
    dbgrd1: TDBGrid;
    ds1: TDataSource;
    btn1: TButton;
    btn2: TButton;
    img1: TImage;
    lbl2: TLabel;
    pnl1: TPanel;
    lbl3: TLabel;
    img2: TImage;
    img3: TImage;
    lbl1: TLabel;
    con1: TADOConnection;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm13.btn1Click(Sender: TObject);
begin
tbl1.Prior;
end;

procedure TForm13.btn2Click(Sender: TObject);
begin
tbl1.Next;
end;

procedure TForm13.img1Click(Sender: TObject);
begin
Form13.hide;
form2.show;
end;

procedure TForm13.img3Click(Sender: TObject);
begin
Form13.Hide;
Form2.Show;
end;

procedure TForm13.FormCreate(Sender: TObject);
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
