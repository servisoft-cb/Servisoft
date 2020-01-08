unit uClausula;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, ComCtrls, UDm1, rsDBUtils;

type
  TfClausula = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    DBMemo1: TDBMemo;
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
  fClausula: TfClausula;

implementation


{$R *.dfm}

procedure TfClausula.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tClausula.Cancel;
  Close;
end;

procedure TfClausula.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tClausulaNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if DBMemo1.Lines.Text = '' then 
  begin
    ShowMessage('Descrição deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tClausula.State in [dsInsert] then
    Fdm1.tClausulaID.AsInteger := Fdm1.Incrementa('ID','CLAUSULA');
  Fdm1.tClausula.Post;
  Fdm1.tClausula.ApplyUpdates(0);
  Close;
end;

procedure TfClausula.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tClausula.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tClausula.State in [dsBrowse] then
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

procedure TfClausula.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
