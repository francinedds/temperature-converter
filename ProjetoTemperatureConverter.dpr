program ProjetoTemperatureConverter;

uses
  Vcl.Forms,
  view.converter in 'views\view.converter.pas' {ViewConverter},
  view.alert in 'views\view.alert.pas' {ViewAlert};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewConverter, ViewConverter);
  Application.Run;
end.
