program Aula06;

uses
  Vcl.Forms,
  Aula06Principal in 'Aula06Principal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
