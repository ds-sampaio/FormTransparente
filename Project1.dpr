program Project1;

uses
  Vcl.Forms,
  Principal in 'Principal.pas' {Form1},
  Transparente in 'Transparente.pas' {frmTransparente};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
