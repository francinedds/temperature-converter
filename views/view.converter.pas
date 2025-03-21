unit view.converter;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Imaging.jpeg, Vcl.ExtCtrls,
  Vcl.StdCtrls, Vcl.Buttons, ShellAPI, view.alert;

type
  TViewConverter = class(TForm)
    pnlHeader: TPanel;
    pnlTitle: TPanel;
    pnlFooter: TPanel;
    pnlContent: TPanel;
    background: TImage;
    lblFahrenheit: TLabel;
    lblCelcius: TLabel;
    lblTitle: TLabel;
    edtFahrenheit: TEdit;
    edtCelcius: TEdit;
    pnlBtnFahrenheit: TPanel;
    btnReset: TSpeedButton;
    pnlBtnExit: TPanel;
    btnExit: TSpeedButton;
    btnClose: TSpeedButton;
    ScrollBar: TScrollBar;
    btnAbrirNav: TSpeedButton;
    lblCopy: TLabel;
    procedure btnCloseClick(Sender: TObject);
    procedure btnExitClick(Sender: TObject);
    procedure btnAbrirNavClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ScrollBarChange(Sender: TObject);
    procedure ScrollBarScroll(Sender: TObject; ScrollCode: TScrollCode;
      var ScrollPos: Integer);
    procedure btnResetClick(Sender: TObject);
  private
    TempF, TempC: Double;
  public
    { Public declarations }
  end;

var
  ViewConverter: TViewConverter;

implementation

{$R *.dfm}

procedure TViewConverter.btnCloseClick(Sender: TObject);
begin
    ViewAlert := TViewAlert.Create(nil);
  try
    ViewAlert.ShowModal;
  finally
    ViewAlert.Free;
  end;
end;

procedure TViewConverter.btnExitClick(Sender: TObject);
begin
  ViewAlert := TViewAlert.Create(nil);
  try
    ViewAlert.ShowModal;
  finally
    ViewAlert.Free;
  end;
end;

procedure TViewConverter.btnResetClick(Sender: TObject);
begin
  edtFahrenheit.Text := '32';
  edtCelcius.Text    := '0';
end;

procedure TViewConverter.FormShow(Sender: TObject);
begin
  btnAbrirNav.Hint := 'See more';
  btnAbrirNav.ShowHint := True;

  btnClose.Hint := 'Close';
  btnClose.ShowHint := True;
end;

procedure TViewConverter.ScrollBarChange(Sender: TObject);
begin
  TempF := (ScrollBar.Position);
  edtFahrenheit.Text := FloatToStr(TempF);

  TempC := (TempF - 32) * 5/9;
  edtCelcius.Text := FloatToStr(TempC);
end;

procedure TViewConverter.ScrollBarScroll(Sender: TObject;
  ScrollCode: TScrollCode; var ScrollPos: Integer);
begin
  TempF := (ScrollBar.Position);
  edtFahrenheit.Text := FloatToStr(TempF);

  TempC := (TempF - 32 ) * 5/9;
  edtCelcius.Text := FloatToStr(TempC);
end;

procedure TViewConverter.btnAbrirNavClick(Sender: TObject);
begin
  ShellExecute(0, 'open', 'https://br.mouser.com/technical-resources/conversion-calculators/temperature-conversion-calculator', nil, nil, SW_SHOWNORMAL);
end;

end.
