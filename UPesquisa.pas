unit UPesquisa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, DBGrids, StdCtrls, Buttons, UCM, DUtilit;

type
  TfrmPesquisa = class(TForm)
    edtDadosPesquisa: TEdit;
    btnSelecionar: TBitBtn;
    Grid: TDBGrid;
    DS1: TDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edtDadosPesquisaChange(Sender: TObject);
    procedure edtDadosPesquisaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GridCellClick(Column: TColumn);
    procedure btnSelecionarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure GridDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
        procedure BuscaProduto;
  end;

var
  frmPesquisa: TfrmPesquisa;

implementation

{$R *.dfm}

procedure TfrmPesquisa.btnSelecionarClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmPesquisa.BuscaProduto;
var
  Lista : TStringList;
  I : Integer;
begin
  try
    Lista:= TStringList.Create;
    ListaDePesquisa(edtDadosPesquisa.Text, Lista, True);
    if (edtDadosPesquisa.Text <> Trim('')) then
    begin
      if (edtDadosPesquisa.Text[1] in ['a'..'z','A'..'Z']) then
      begin
        with CM.CDS do
        begin
          if lista.Count > 0 then
          begin
            FilterOptions:= [focaseinsensitive];
            filter:= 'NM_PRODUTO like '+QUOTEDSTR('%'+lista[0]+ '%');
            for I := 1 to Lista.Count - 1 do
               filter:=filter + ' and NM_PRODUTO like '+QUOTEDSTR('%'+lista[I]+ '%');
            Filtered:=true;
          end
          else
          begin
            with CM.CDS do
            begin
              if lista.Count > 0 then
              begin
                FilterOptions:= [focaseinsensitive];
                filter:= 'cod_barras like '+QUOTEDSTR('%'+lista[0]+ '%');
                for I := 1 to Lista.Count - 1 do
                  filter:=filter + ' and cod_barras like '+QUOTEDSTR('%'+lista[I]+ '%');
                Filtered:=true;
              end;
            end;
           end;
        end;
      end;
    end;
  finally
    Lista.Free;
  end;
end;

procedure TfrmPesquisa.edtDadosPesquisaChange(Sender: TObject);
begin
  BuscaProduto;
end;


procedure TfrmPesquisa.edtDadosPesquisaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_DOWN then
    Grid.SetFocus;

  if key = VK_RETURN then
  begin
    if edtDadosPesquisa.Text = '' then
    begin
      ShowMessage('Por favor, selecione um produto!');
      Exit;
    end;
    btnSelecionar.Click;
  end;

  if key = VK_ESCAPE then
    close;
end;

procedure TfrmPesquisa.FormCreate(Sender: TObject);
begin
  CM.CDS.Filter:= '';
end;

procedure TfrmPesquisa.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Case Key Of
      VK_ESCAPE : Close;
  End;
end;

procedure TfrmPesquisa.GridCellClick(Column: TColumn);
begin
  edtDadosPesquisa.Text:= CM.CDS.FieldByName('NM_PRODUTO').AsString;
  edtDadosPesquisa.Tag:= CM.CDS.FieldByName('CD_PRODUTO').AsInteger;
end;

procedure TfrmPesquisa.GridDblClick(Sender: TObject);
begin
  btnSelecionar.Click;
end;

end.
