unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls;

type
  TForm11 = class(TForm)
    img1: TImage;
    lbl1: TLabel;
    img2: TImage;
    lbl2: TLabel;
    img3: TImage;
    lbl3: TLabel;
    img4: TImage;
    lbl4: TLabel;
    img5: TImage;
    lbl5: TLabel;
    img6: TImage;
    lbl6: TLabel;
    img7: TImage;
    lbl7: TLabel;
    img8: TImage;
    lbl8: TLabel;
    procedure img2Click(Sender: TObject);
    procedure img4Click(Sender: TObject);
    procedure img3Click(Sender: TObject);
    procedure img1Click(Sender: TObject);
    procedure img5Click(Sender: TObject);
    procedure img6Click(Sender: TObject);
    procedure img7Click(Sender: TObject);
    procedure img8Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit10, Unit2, Unit6, Unit8, Unit1, Unit13, Unit14, Unit15, Unit16;

{$R *.dfm}

procedure TForm11.img2Click(Sender: TObject);
begin
form10.show;
Form11.Hide;
end;

procedure TForm11.img4Click(Sender: TObject);
begin
Form11.hide;
Form2.show;
end;

procedure TForm11.img3Click(Sender: TObject);
begin
form6.show;
Form11.Hide;
end;

procedure TForm11.img1Click(Sender: TObject);
begin
form8.show;
Form11.Hide;
end;

procedure TForm11.img5Click(Sender: TObject);
begin
Form11.Hide;
 Form1.edt1.text:='';
 Form1.lbl5.Caption:='';
 Form1.cbb1.Text:='';
Form1.Show;

end;

procedure TForm11.img6Click(Sender: TObject);
begin
    form14.show;
    Form11.Hide;
end;

procedure TForm11.img7Click(Sender: TObject);
begin
Form15.Show;
Form11.Hide;
end;

procedure TForm11.img8Click(Sender: TObject);
begin
form16.show;
Form11.Hide;
end;

end.
