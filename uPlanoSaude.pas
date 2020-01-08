unit uPlanoSaude;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, UDm1, rsDBUtils;

type
  TfPlanoSaude = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPlanoSaude: TfPlanoSaude;

implementation


{$R *.dfm}

procedure TfPlanoSaude.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPlanoSaude.Cancel;
  Close;
end;

procedure TfPlanoSaude.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tPlanoSaudeNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tPlanoSaude.State in [dsInsert] then
    Fdm1.tPlanoSaudeID.AsInteger := Fdm1.Incrementa('ID','PLANOSAUDE');
  Fdm1.tPlanoSaude.Post;
  Fdm1.tPlanoSaude.ApplyUpdates(0);
  Close;
end;

procedure TfPlanoSaude.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tPlanoSaude.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPlanoSaude.State in [dsBrowse] then
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

procedure TfPlanoSaude.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
