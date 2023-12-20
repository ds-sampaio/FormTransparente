unit Transparente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmTransparente = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
    class function New(AOWner: TComponent): TfrmTransparente;
    function Mensagem(aParent: TPanel; const aMensagem: String): TfrmTransparente;
  end;

implementation

{$R *.dfm}

{ TfrmTransparente }

function TfrmTransparente.Mensagem(aParent: TPanel; const aMensagem: String): TfrmTransparente;
begin
  Result := Self;
  Self.Parent := aParent;
  Self.Label2.Caption := aMensagem;
  Self.Show;
end;

class function TfrmTransparente.New(AOWner: TComponent): TfrmTransparente;
begin
  Result := Self.Create(AOWner);
end;

end.
