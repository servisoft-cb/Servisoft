unit uTelefone;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, UDm1, Dialogs, rsDBUtils, StdCtrls, Buttons, ExtCtrls, Mask, DBCtrls,
  JvToolEdit, JvDBCtrl;

type
  TfTelefone = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label12: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    Label5: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fTelefone: TfTelefone;

implementation

uses UDmCons;

{$R *.dfm}

procedure TfTelefone.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tTelefone.Cancel;
  Close;
end;

procedure TfTelefone.BitBtn1Click(Sender: TObject);
var
  vItem : Integer;
begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if DBEdit2.Text = '' then
  begin
    ShowMessage('Telefone deve ser preenchido!');
    Exit;
  end;
  Fdm1.tTelefone.Post;
  Close;
end;

procedure TfTelefone.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tTelefone.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tTelefone.State in [dsBrowse] then
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

procedure TfTelefone.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
