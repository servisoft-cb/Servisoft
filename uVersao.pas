unit uVersao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, uDmVersao, Dialogs, StdCtrls, Mask,
  DBCtrls, Buttons, ExtCtrls, JvLookup, rsDBUtils;

type
  TfVersao = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBMemo1: TDBMemo;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    fDmVersao: TDmVersao;
  end;

var
  fVersao: TfVersao;

implementation

{$R *.dfm}

procedure TfVersao.BitBtn2Click(Sender: TObject);
begin
  fDmVersao.cdsVersao.Cancel;
  Close;
end;

procedure TfVersao.BitBtn1Click(Sender: TObject);
begin
  if fDmVersao.cdsVersaoPROGRAMA_ID.IsNull then
  begin
    ShowMessage('Programa deve ser preenchido!');
    Exit;
  end;
  if fDmVersao.cdsVersaoVERSAO.IsNull then
  begin
    ShowMessage('Versão deve ser preenchida!');
    Exit;
  end;
  fDmVersao.cdsVersaoPROGRAMA.AsString := JvDBLookupCombo1.Text;
  fDmVersao.cdsVersao.Post;
  fDmVersao.cdsVersao.ApplyUpdates(0);
  Close;
end;

procedure TfVersao.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if fDmVersao.cdsVersao.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if fDmVersao.cdsVersao.State in [dsBrowse] then
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

procedure TfVersao.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDmVersao);
end;

end.
