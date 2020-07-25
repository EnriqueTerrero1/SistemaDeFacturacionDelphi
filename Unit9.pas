unit Unit9;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  Tqckrprt = class(TQuickRep)
    qrbndColumnHeaderBand1: TQRBand;
    qrbndPageHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    qrdbtxtcodigo: TQRDBText;
    qrlbl1: TQRLabel;
    qrdbtxtdescripcion: TQRDBText;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrdbtxtcantidad: TQRDBText;
    qrdbtxtpreciounitario: TQRDBText;
    qrlbl4: TQRLabel;
    qrdbtxttotal: TQRDBText;
    qrlbl5: TQRLabel;
    qrbndPageFooterBand1: TQRBand;
    qrdbtxtMATRICULA: TQRDBText;
    qrlbl6: TQRLabel;
    qrdbtxtNOMBRE: TQRDBText;
    qrlbl7: TQRLabel;
    qrdbtxtTELEFONO: TQRDBText;
    qrlbl8: TQRLabel;
    qrdbtxtTELEFONO1: TQRDBText;
    qrlbl9: TQRLabel;
    qrdbtxtfecha: TQRDBText;
    img1: TQRImage;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qrshp3: TQRShape;
    qrshp4: TQRShape;
    qrbndSummaryBand1: TQRBand;
    qrlbl10: TQRLabel;
    qrlbl11: TQRLabel;
    qrlbl12: TQRLabel;
    qrdbtxtitbis: TQRDBText;
    qrdbtxtTOTALAPAGAR: TQRDBText;
    qrlbl13: TQRLabel;
    qrxpr1: TQRExpr;
    qrlbl14: TQRLabel;
    qrxpr2: TQRExpr;
    qrlbl15: TQRLabel;
    qrlbl16: TQRLabel;
    qrdbtxtNOMBRE1: TQRDBText;
    qrdbtxtAPELLIDO: TQRDBText;
  private

  public

  end;

var
  qckrprt: Tqckrprt;

implementation

uses Unit2, Unit1;

{$R *.DFM}

end.
