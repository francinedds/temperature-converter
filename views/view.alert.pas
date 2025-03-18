unit view.alert;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.Imaging.jpeg,
  Vcl.Buttons, Vcl.StdCtrls;

type
  TViewAlert = class(TForm)
    pnlBackground: TPanel;
    pnlHeader: TPanel;
    pnlContent: TPanel;
    Image1: TImage;
    lblMessage: TLabel;
    pnlBtnYes: TPanel;
    pnlBtnNo: TPanel;
    BtnYes: TSpeedButton;
    BtnNo: TSpeedButton;
    lblAlert: TLabel;
    btnClose: TSpeedButton;
    procedure BtnYesClick(Sender: TObject);
    procedure BtnNoClick(Sender: TObject);
    procedure btnCloseClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewAlert: TViewAlert;

implementation

{$R *.dfm}

procedure TViewAlert.btnCloseClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewAlert.BtnNoClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TViewAlert.BtnYesClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.
