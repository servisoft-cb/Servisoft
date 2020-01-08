unit uPessoaServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup,
  JvToolEdit, JvDBCtrl, JvCurrEdit, UDm1, rsDBUtils;

type
  TfPessoaServico = class(TForm)
    Label3: TLabel;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label46: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label1: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label12: TLabel;
    JvxCurrencyEdit8: TJvxCurrencyEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPessoaServico: TfPessoaServico;

implementation


{$R *.dfm}

procedure TfPessoaServico.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tServico.Cancel;
  Close;
end;

procedure TfPessoaServico.BitBtn1Click(Sender: TObject);
begin
  if JvDBLookupCombo1.Text = '' then
  begin
    ShowMessage('Serviço deve ser preenchido!');
    Exit;
  end;
  Fdm1.tPessoaServicoNOME.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPessoaServico.Post;
  Close;
end;

procedure TfPessoaServico.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoaServico.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPessoaServico.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfPessoaServico.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tServico.Close;
end;

procedure TfPessoaServico.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  Fdm1.tServico.Open;
end;

end.
