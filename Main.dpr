program Main;

uses
  ExceptionLog,
  Forms,
  Principal in 'Principal.pas' {Form1},
  UPesquisa in 'UPesquisa.pas' {frmPesquisa},
  UCM in 'UCM.pas' {CM: TDataModule},
  UBanco in 'UBanco.pas' {frmConfBanco};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TCM, CM);
  Application.CreateForm(TfrmConfBanco, frmConfBanco);
  Application.Run;
end.
