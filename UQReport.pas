unit UQReport;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, Dialogs, ExtCtrls, QuickRpt, QRCtrls, StdCtrls,
  QRDMBarcode;

type
  TUQRep = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRBand2: TQRBand;
    QRDMBarcode1: TQRDMBarcode;
    QRDMBarcode2: TQRDMBarcode;
    QRDMBarcode3: TQRDMBarcode;
    QRDMBarcode4: TQRDMBarcode;
    QRDMBarcode5: TQRDMBarcode;
    QRPreviewController1: TQRPreviewController;
    procedure FormCreate(Sender: TObject);
    procedure QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
    procedure QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    PCount:integer;  //페이지 카운트
    ItemCount, ItemIndex, iCol:integer;
  end;

var
  UQRep: TUQRep;

implementation

uses
  FMain;

{$R *.dfm}

procedure TUQRep.FormCreate(Sender: TObject);
begin
  QRDMBarcode1.Text := '';
  QRDMBarcode2.Text := '';
  QRDMBarcode3.Text := '';
  QRDMBarcode4.Text := '';
  QRDMBarcode5.Text := '';

  ItemCount := FMain.MainForm.DBAdvGrid1.RowCount;
  ItemIndex := 1;
end;

procedure TUQRep.QRBand2AfterPrint(Sender: TQRCustomBand; BandPrinted: Boolean);
begin
  QRDMBarcode1.Text := '';
  QRDMBarcode2.Text := '';
  QRDMBarcode3.Text := '';
  QRDMBarcode4.Text := '';
  QRDMBarcode5.Text := '';
end;

procedure TUQRep.QuickRep1NeedData(Sender: TObject; var MoreData: Boolean);
begin
  if ItemIndex < ItemCount then QRDMBarcode1.Text := Trim(FMain.MainForm.DBAdvGrid1.Rows[ItemIndex].Text); Inc(ItemIndex);
  if ItemIndex < ItemCount then QRDMBarcode2.Text := Trim(FMain.MainForm.DBAdvGrid1.Rows[ItemIndex].Text); Inc(ItemIndex);
  if ItemIndex < ItemCount then QRDMBarcode3.Text := Trim(FMain.MainForm.DBAdvGrid1.Rows[ItemIndex].Text); Inc(ItemIndex);
  if ItemIndex < ItemCount then QRDMBarcode4.Text := Trim(FMain.MainForm.DBAdvGrid1.Rows[ItemIndex].Text); Inc(ItemIndex);
  if ItemIndex < ItemCount then QRDMBarcode5.Text := Trim(FMain.MainForm.DBAdvGrid1.Rows[ItemIndex].Text); Inc(ItemIndex);

  MoreData:= (ItemIndex <= ItemCount + 4);
end;

end.
