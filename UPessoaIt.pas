unit UPessoaIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ComCtrls, JvEdit, JvTypedEdit;

type
  TfPessoaIt = class(TForm)
    PageControl1: TPageControl;
    TSContato: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    BitBtn5: TBitBtn;
    Edit2: TEdit;
    Edit3: TEdit;
    JvIntegerEdit1: TJvIntegerEdit;
    Edit4: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    procedure Confirma_Contato;
    procedure Limpa;
  public
    { Public declarations }
  end;

var
  fPessoaIt: TfPessoaIt;

implementation

uses UDm1, UDmCons, DB, UPessoa;

{$R *.dfm}

procedure TfPessoaIt.Limpa;
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  JvIntegerEdit1.Clear;
end;

procedure TfPessoaIt.Confirma_Contato;
var
  vItem : Integer;
begin
  if Edit1.Text = '' then
    ShowMessage('Contato não pode ser vazio!')
  else
    begin
      if vAlteraPes = 'A' then
        begin
          vItem := Dm1.tTelefoneITEM.AsInteger;
          Dm1.tTelefone.Edit;
        end
      else
        begin
          Dm1.tTelefone.Last;
          vItem := DM1.tTelefoneITEM.AsInteger + 1;
          Dm1.tTelefone.Insert;
        end;
      Dm1.tTelefoneCODPESSOA.AsInteger := Dm1.tPessoaID.AsInteger;
      Dm1.tTelefoneITEM.AsInteger      := vItem; 
      Dm1.tTelefoneCONTATO.AsString    := Edit1.Text;
      Dm1.tTelefoneEMAIL.AsString      := Edit4.Text;
      Dm1.tTelefoneRAMAL.AsInteger     := JvIntegerEdit1.Value;
      Dm1.tTelefoneSETOR.AsString      := Edit3.Text;
      Dm1.tTelefoneTELEFONE.AsString   := Edit2.Text;
      DM1.tTelefone.Post;
      Limpa;
      Edit1.SetFocus;
      if vAlteraPes = 'A' then
        Close;
    end;
end;

procedure TfPessoaIt.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPessoaIt.FormShow(Sender: TObject);
begin
//  TSContato.TabVisible   := False;
//  TTabSheet(FindComponent(vTabSheet)).TabVisible := True;
  //*** Quando for digitação dos produtos
  Edit1.SetFocus;
  if vTabSheet = 'TSContato' then
    begin
      Edit1.SetFocus;
      if (vAlteraPes = 'A') or (vAlteraPes = 'C') then
        begin
          Edit1.Text := Dm1.tTelefoneCONTATO.AsString;
          Edit2.Text := Dm1.tTelefoneTELEFONE.AsString;
          JvIntegerEdit1.Value := Dm1.tTelefoneRAMAL.AsInteger;
          Edit3.Text := Dm1.tTelefoneSETOR.AsString;
          Edit4.Text := Dm1.tTelefoneEMAIL.AsString;
        end;
    end;

  if vAlteraPes = 'C' then
    begin
      PageControl1.Enabled := False;
      BitBtn5.Enabled      := False
    end
  else
    begin
      PageControl1.Enabled := True;
      BitBtn5.Enabled      := True;
    end;
end;

procedure TfPessoaIt.BitBtn5Click(Sender: TObject);
begin
  if vTabSheet = 'TSContato' then
    Confirma_Contato;
end;

end.
