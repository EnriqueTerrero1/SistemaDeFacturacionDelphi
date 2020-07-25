unit Unit14;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, StdCtrls, Mask, DBCtrls, ComCtrls;

type
  TForm14 = class(TForm)
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    edt1: TEdit;
    edt3: TEdit;
    lbl3: TLabel;
    lbl4: TLabel;
    tbl1: TADOTable;
    wdstrngfldtbl1Codigo_de_Facturacion: TWideStringField;
    wdstrngfldtbl1Descripcion: TWideStringField;
    fltfldtbl1Cantidad: TFloatField;
    fltfldtbl1Precio: TFloatField;
    fltfldtbl1total: TFloatField;
    wdstrngfldtbl1Cliente: TWideStringField;
    wdstrngfldtbl1Fecha: TWideStringField;
    ds1: TDataSource;
    con1: TADOConnection;
    btn1: TButton;
    btn2: TButton;
    dtp1: TDateTimePicker;
    dtp2: TDateTimePicker;
    btn3: TButton;
    lbl2: TLabel;
    lbl5: TLabel;
    btn4: TButton;
    procedure btn1Click(Sender: TObject);
    procedure edt3Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edt1Change(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);


  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form14: TForm14;

implementation

uses Unit2, Unit11, Unit20;

{$R *.dfm}








procedure TForm14.btn1Click(Sender: TObject);
begin
    Form14.Hide;
    form11.show;

end;





procedure TForm14.edt3Change(Sender: TObject);
begin
if edt3.Text <>'' then
begin
  tbl1.Filter:='Cliente like '+ quotedstr(edt3.Text);
  tbl1.Filtered:= True;
end
else
tbl1.Filtered:= False;
end;

procedure TForm14.FormCreate(Sender: TObject);
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

procedure TForm14.edt1Change(Sender: TObject);
begin
if edt1.Text <>'' then
begin
  tbl1.Filter:='Codigo_de_facturacion like '+ quotedstr(edt1.Text);
  tbl1.Filtered:= True;
end
else
tbl1.Filtered:= False;
end;

procedure TForm14.btn2Click(Sender: TObject);


begin
quickreport20.preview;
end;



procedure TForm14.btn3Click(Sender: TObject);
begin
tbl1.Filter:='fecha >='+quotedstr(DateToStr(dtp1.DateTime))+'and fecha<='+quotedstr(DateToStr(dtp2.DateTime));
tbl1.Filtered:=True;
end;

procedure TForm14.btn4Click(Sender: TObject);
var
I:Integer;
begin
for i:= 1 to TBL1.RecordCount do
begin
tbl1.Delete ;
tbl1.Next ;
end;
end;
end.
