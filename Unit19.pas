unit Unit19;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TQuickReport19 = class(TQuickRep)
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    img1: TQRImage;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrdbtxtCODIGO: TQRDBText;
    qrdbtxtNOMBRE: TQRDBText;
    qrdbtxtDIRECCION: TQRDBText;
    qrdbtxtTELEFONO: TQRDBText;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrshp1: TQRShape;
    qrlbl8: TQRLabel;
  private

  public

  end;

var
  QuickReport19: TQuickReport19;

implementation

uses Unit6, Unit10;

{$R *.DFM}

end.
