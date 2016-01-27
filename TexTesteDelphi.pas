unit TexTesteDelphi;

interface

uses
  Forms, Dialogs, Classes, Controls, StdCtrls, SysUtils;

type

  TTransporte = class

  public
    procedure move(pmetros: Integer);   Abstract;

  private
    nome       : String;

  protected
    constructor Create(nome : String);
  end;

  TCarro = class(TTransporte);
  TAviao = class(TTransporte);

  TForm1 = class(TForm)
    Button1: TButton;

    procedure Button1Click(Sender: TObject);

  end;

var
  Form1       : TForm1;
  Transporte  : TTransporte;
  Carro       : TCarro;
  Aviao       : TAviao;

implementation
{$R *.dfm}

constructor TTransporte.Create(nome : String);
begin
  self.nome :=nome;
end;

procedure TTransporte.move(pmetros: Integer);
begin
  ShowMessage(self.nome + ' moveu ' + intToStr(pmetros) +'m');
end;

procedure TForm1.Button1Click(Sender: TObject);

begin
  Carro.Create('Porche 911');
  Carro.move(10);

  Carro.Create('Boing 747');
  Carro.move(10);
end;

end.