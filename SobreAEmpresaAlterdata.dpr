program SobreAEmpresaAlterdata;

uses
  Vcl.Forms,
  SobreAlterdataPrincipal in 'C:\Users\Antonio\Documents\Embarcadero\Studio\Projects\SobreAlterdataPrincipal.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
