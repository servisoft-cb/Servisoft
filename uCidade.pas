unit uCidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, JvLookup, UDm1, rsDBUtils;

type
  TfCidade = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    JvDBLookupCombo1: TJvDBLookupCombo;
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
  fCidade: TfCidade;

implementation

uses UDmCons;

{$R *.dfm}

procedure TfCidade.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tCidade.Cancel;
  Close;
end;

procedure TfCidade.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tCidadeNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tCidadeUF.IsNull then
  begin
    ShowMessage('Estado deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tCidadeCODPAIS.IsNull then
  begin
    ShowMessage('País deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tCidade.State in [dsInsert] then
    Fdm1.tCidadeID.AsInteger := Fdm1.Incrementa('ID','Cidade');
  Fdm1.tCidade.Post;
  Fdm1.tCidade.ApplyUpdates(0);
  Close;
end;

procedure TfCidade.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tCidade.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tCidade.State in [dsBrowse] then
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

procedure TfCidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmCons.qUF.Close;
  dmCons.qPais.Close;
end;

procedure TfCidade.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  dmCons.qUF.Open;
  dmCons.qPais.Open;
end;

end.
