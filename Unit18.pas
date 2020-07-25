unit Unit18;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TQuickReport18 = class(TQuickRep)
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    img1: TQRImage;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrsysdt1: TQRSysData;
    qrdbtxtcodigo: TQRDBText;
    qrdbtxtDESCRIPCION: TQRDBText;
    qrdbtxtCantidad: TQRDBText;
    qrdbtxtprecio: TQRDBText;
    qrdbtxtfecha: TQRDBText;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
  private

  public

  end;

var
  QuickReport18: TQuickReport18;

implementation

uses Unit15;

{$R *.DFM}

end.
