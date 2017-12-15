program innovadores;

uses
  Forms,
  main in '..\Form\main.pas' {mainform},
  matriculas in '..\Form\matriculas.pas' {fmatricula},
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  TStyleManager.TrySetStyle('Metropolis UI Blue');
  Application.CreateForm(Tmainform, mainform);
  Application.Run;
end.
