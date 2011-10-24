unit UBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, UCM;

type
  TfrmConfBanco = class(TForm)
    edtCaminho: TEdit;
    btnSeleciona: TBitBtn;
    btnConecta: TButton;
    edtServidor: TEdit;
    dlg: TOpenDialog;
    lbl1: TLabel;
    lbl2: TLabel;
    procedure btnSelecionaClick(Sender: TObject);
    procedure btnConectaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConfBanco: TfrmConfBanco;

implementation

{$R *.dfm}

procedure TfrmConfBanco.btnConectaClick(Sender: TObject);
begin
  CM.ib_database.Connected:= False;
  CM.ib_database.DatabaseName:= edtCaminho.Text;
  CM.ib_database.Server:= edtServidor.Text;
  try
    CM.ib_database.Connect;
    MessageBox(0, 'Conectado com Sucesso!', 'Conexão', MB_ICONINFORMATION or MB_OK);
    Close;
  except
    on e : Exception do
      ShowMessage(e.Message);
  end;
end;

procedure TfrmConfBanco.btnSelecionaClick(Sender: TObject);
begin
  dlg.Execute();
  edtCaminho.Text:= dlg.FileName;
end;

end.
