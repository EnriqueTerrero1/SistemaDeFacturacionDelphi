program sistema_de_facturacion;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {Form3},
  Unit6 in 'Unit6.pas' {Form6},
  Unit7 in 'Unit7.pas' {qckrprt7: TQuickRep},
  Unit4 in 'Unit4.pas' {QuickReport4: TQuickRep},
  Unit5 in 'Unit5.pas' {Form5},
  Unit8 in 'Unit8.pas' {Form8},
  Unit9 in 'Unit9.pas' {qckrprt: TQuickRep},
  Unit10 in 'Unit10.pas' {Form10},
  Unit11 in 'Unit11.pas' {Form11},
  Unit13 in 'Unit13.pas' {Form13},
  Unit14 in 'Unit14.pas' {Form14},
  Unit15 in 'Unit15.pas' {Form15},
  Unit16 in 'Unit16.pas' {Form16},
  Unit12 in 'Unit12.pas' {QuickReport12: TQuickRep},
  Unit17 in 'Unit17.pas' {QuickReport17: TQuickRep},
  Unit18 in 'Unit18.pas' {QuickReport18: TQuickRep},
  Unit19 in 'Unit19.pas' {QuickReport19: TQuickRep},
  Unit20 in 'Unit20.pas' {QuickReport20: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(Tqckrprt, qckrprt);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(TForm11, Form11);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TQuickReport12, QuickReport12);
  Application.CreateForm(TQuickReport17, QuickReport17);
  Application.CreateForm(TQuickReport18, QuickReport18);
  Application.CreateForm(TQuickReport19, QuickReport19);
  Application.CreateForm(TQuickReport20, QuickReport20);
  Application.Run;
end.
