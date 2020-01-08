unit uFormaPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvDBComb, UDm1, rsDBUtils;

type
  TfFormaPgto = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
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
  fFormaPgto: TfFormaPgto;

implementation


{$R *.dfm}

procedure TfFormaPgto.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tFormaPgto.Cancel;
  Close;
end;

procedure TfFormaPgto.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tFormaPgtoDESCRICAO.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tFormaPgto.State in [dsInsert] then
    Fdm1.tFormaPgtoID.AsInteger := Fdm1.Incrementa('ID','FormaPgto');
  Fdm1.tFormaPgto.Post;
  Fdm1.tFormaPgto.ApplyUpdates(0);
  Close;
end;

procedure TfFormaPgto.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tFormaPgto.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tFormaPgto.State in [dsBrowse] then
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

procedure TfFormaPgto.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
