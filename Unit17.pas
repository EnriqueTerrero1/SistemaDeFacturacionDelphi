unit Unit17;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TQuickReport17 = class(TQuickRep)
    qrbndColumnHeaderBand1: TQRBand;
    qrbndDetailBand1: TQRBand;
    img1: TQRImage;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrdbtxtNOMBRE: TQRDBText;
    qrdbtxtAPELLIDO: TQRDBText;
    qrdbtxtDireccion: TQRDBText;
    qrdbtxttelefono: TQRDBText;
    qrdbtxtsexo: TQRDBText;
    qrdbtxtMATRICULADELEMPLEADO: TQRDBText;
    qrdbtxttelefono1: TQRDBText;
    qrdbtxtcorreoelectronico: TQRDBText;
    qrdbtxtDepartamento: TQRDBText;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl8: TQRLabel;
    qrlbl9: TQRLabel;
    qrlbl12: TQRLabel;
    qrlbl13: TQRLabel;
    qrlbl14: TQRLabel;
    qrshp1: TQRShape;
    qrshp2: TQRShape;
    qrlbl15: TQRLabel;
  private

  public

  end;

var
  QuickReport17: TQuickReport17;

implementation

uses Unit8;

{$R *.DFM}

end.
