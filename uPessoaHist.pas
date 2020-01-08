unit uPessoaHist;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvLookup;

type
  TfPessoaHist = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label44: TLabel;
    Label1: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    JvDBDateEdit2: TJvDBDateEdit;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBCheckBox1: TDBCheckBox;
    JvDBLookupCombo1: TJvDBLookupCombo;
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
  fPessoaHist: TfPessoaHist;

implementation

{$R *.dfm}

procedure TfPessoaHist.BitBtn2Click(Sender: TObject);
begin
  Fdm1.cdsPessoaHist.Cancel;
  Close;
end;

procedure TfPessoaHist.BitBtn1Click(Sender: TObject);
begin
  Fdm1.cdsPessoaHist.Post;
  Close;
end;

procedure TfPessoaHist.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.cdsPessoaHist.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbYes,mbNo],0) of
      mrYes: begin
              BitBtn1.Click;
              if Fdm1.cdsPessoaHist.State in [dsBrowse] then
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

procedure TfPessoaHist.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  if fdm1.cdsPessoaHistDATA.IsNull then
    fdm1.cdsPessoaHistDATA.AsDateTime := Date;
end;

end.
