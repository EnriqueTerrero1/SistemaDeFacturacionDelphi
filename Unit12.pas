unit Unit12;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TQuickReport12 = class(TQuickRep)
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    img1: TQRImage;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrdbtxtCODIGO: TQRDBText;
    qrdbtxtNOMBRE: TQRDBText;
    qrdbtxtTELEFONO: TQRDBText;
    qrdbtxtTELEFONO1: TQRDBText;
    qrdbtxtCONTACTO: TQRDBText;
    qrlbl4: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl10: TQRLabel;
    qrsysdt1: TQRSysData;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
  private

  public

  end;

var
  QuickReport12: TQuickReport12;

implementation

uses Unit6, Unit2;

{$R *.DFM}

end.
