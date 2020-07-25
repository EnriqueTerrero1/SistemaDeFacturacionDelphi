unit Unit20;

interface

uses Windows, SysUtils, Messages, Classes, Graphics, Controls,
  StdCtrls, ExtCtrls, Forms, QuickRpt, QRCtrls, jpeg;

type
  TQuickReport20 = class(TQuickRep)
    qrbndDetailBand1: TQRBand;
    qrdbtxtCodigo_de_Facturacion: TQRDBText;
    qrdbtxtDescripcion: TQRDBText;
    qrdbtxtCantidad: TQRDBText;
    qrdbtxtPrecio: TQRDBText;
    qrdbtxttotal: TQRDBText;
    qrdbtxtCliente: TQRDBText;
    qrdbtxtFecha: TQRDBText;
    qrbndSummaryBand1: TQRBand;
    qrxpr1: TQRExpr;
    qrlbl8: TQRLabel;
    qrbndColumnHeaderBand1: TQRBand;
    qrshp1: TQRShape;
    img1: TQRImage;
    qrlbl1: TQRLabel;
    qrlbl2: TQRLabel;
    qrlbl3: TQRLabel;
    qrlbl4: TQRLabel;
    qrlbl5: TQRLabel;
    qrlbl6: TQRLabel;
    qrlbl7: TQRLabel;
    qrlbl9: TQRLabel;
    qrshp2: TQRShape;
    qrlbl10: TQRLabel;
  private

  public

  end;

var
  QuickReport20: TQuickReport20;

implementation

uses Unit14;

{$R *.DFM}

end.
