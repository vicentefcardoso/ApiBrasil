program ApiBrasil;

uses
  Vcl.Forms,
  Main in 'Main.pas' {FrmMain},
  Classe.APIBrasil in 'Classe.APIBrasil.pas',
  Constants.APIBrasil in 'Constants.APIBrasil.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Windows10 SlateGray');
  Application.CreateForm(TFrmMain, FrmMain);
  Application.Run;
end.
