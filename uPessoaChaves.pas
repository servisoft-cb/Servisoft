unit uPessoaChaves;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb;

type
  TfPessoaChaves = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label44: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDm1: TDm1;
  end;

var
  fPessoaChaves: TfPessoaChaves;

implementation

{$R *.dfm}

procedure TfPessoaChaves.BitBtn2Click(Sender: TObject);
begin
  Fdm1.cdsPessoaChave.Cancel;
  Close;
end;

procedure TfPessoaChaves.BitBtn1Click(Sender: TObject);
begin
  Fdm1.cdsPessoaChave.Post;
  Fdm1.cdsPessoaChave.ApplyUpdates(0);
  Close;
end;

procedure TfPessoaChaves.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.cdsPessoaChave.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbYes,mbNo],0) of
      mrYes: begin
              BitBtn1.Click;
              if Fdm1.cdsPessoaChave.State in [dsBrowse] then
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

procedure TfPessoaChaves.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
