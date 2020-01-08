unit uPessoaModulos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, DBCtrls, Buttons, Mask,
  db, ExtCtrls, UDm1, rsDBUtils, JvToolEdit, JvDBCtrl, JvDBComb, JvLookup;

type
  TfPessoaModulos = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label44: TLabel;
    Label2: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    JvDBLookupCombo1: TJvDBLookupCombo;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
    procedure JvDBLookupCombo1Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDm1: TDm1;
  end;

var
  fPessoaModulos: TfPessoaModulos;

implementation

{$R *.dfm}

procedure TfPessoaModulos.BitBtn2Click(Sender: TObject);
begin
  Fdm1.cdsPessoaModulos.Cancel;
  Close;
end;

procedure TfPessoaModulos.BitBtn1Click(Sender: TObject);
begin
  fDm1.cdsPessoaModulosMODULO_NOME.AsString := JvDBLookupCombo1.Text;
  Fdm1.cdsPessoaModulos.Post;
  Fdm1.cdsPessoaModulos.ApplyUpdates(0);
  Close;
end;

procedure TfPessoaModulos.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.cdsPessoaModulos.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbYes,mbNo],0) of
      mrYes: begin
              BitBtn1.Click;
              if Fdm1.cdsPessoaModulos.State in [dsBrowse] then
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

procedure TfPessoaModulos.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,Fdm1);
end;

procedure TfPessoaModulos.JvDBLookupCombo1Enter(Sender: TObject);
begin
  fDm1.cdsModulo.IndexFieldNames := 'NOME';
end;

end.
