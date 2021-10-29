program BomDia;

uses
  Vcl.Forms,
  Bom_Dia in 'Bom_Dia.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
