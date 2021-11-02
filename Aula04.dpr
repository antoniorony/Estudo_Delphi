program Aula04;

uses
  Vcl.Forms,
  Aula04Principal in 'Aula04Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
