unit FMain;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls,
  AdvPanel, AdvMemo, AdvmSQLS, Vcl.StdCtrls, AeroButtons, QuickRpt, Vcl.Grids,
  AdvObj, BaseGrid, AdvGrid, DBAdvGrid, sSkinProvider, sSkinManager;

type
  TMainForm = class(TForm)
    AdvSQLMemoStyler1: TAdvSQLMemoStyler;
    AdvPanel1: TAdvPanel;
    AdvMemo1: TAdvMemo;
    AdvPanel2: TAdvPanel;
    AdvPanel3: TAdvPanel;
    AeroButton1: TAeroButton;
    AeroButton2: TAeroButton;
    AdvPanelStyler1: TAdvPanelStyler;
    DBAdvGrid1: TDBAdvGrid;
    sSkinManager1: TsSkinManager;
    sSkinProvider1: TsSkinProvider;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure AeroButton1Click(Sender: TObject);
    procedure AeroButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;

implementation

uses
  UDM, UQReport;

{$R *.dfm}

procedure TMainForm.AeroButton1Click(Sender: TObject);
var
  i : Integer;
begin
//  AdvMemo1.Lines.Text := 'select top 10 item_serno from tp_serial_csv01';

  if Trim(AdvMemo1.Lines.Text) = '' then
  begin
    ShowMessage('쿼리를 입력하세요!');
    Exit;
  end;

  DM.ClearSql;
  DBAdvGrid1.ClearColumnHeaders;
  DBAdvGrid1.ClearAll;

  with DM.UniQuery1 do
  begin
    SQL.Text.Empty;
    Close;

    SQL.Text := AdvMemo1.Lines.Text;

    Open;
  end;
  DBAdvGrid1.AutoSize := True;
end;

procedure TMainForm.AeroButton2Click(Sender: TObject);
var
  repPrint : TUQRep;
  i : integer;
begin
  repPrint := TUQRep.Create(Application);
  repPrint.QRLabel1.Caption := DM.UniConnection1.Database + ' ' + repPrint.QRLabel1.Caption;
//  repPrint.QuickRep1.Preview;
  repPrint.QuickRep1.Print;
end;

procedure TMainForm.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  DM.UniQuery1.Close;
  DM.UniConnection1.Disconnect;
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  DM.fn_SetDBConnect;

  DM.ClearSql;

  DBAdvGrid1.ClearColumnHeaders;
  DBAdvGrid1.ClearAll;
end;

end.
