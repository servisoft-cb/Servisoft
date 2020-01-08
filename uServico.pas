unit uServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvDBComb, UDm1, rsDBUtils;

type
  TfServico = class(TForm)
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label10: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label1: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    Label2: TLabel;
    Label4: TLabel;
    JvDBComboBox3: TJvDBComboBox;
    JvDBComboBox4: TJvDBComboBox;
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
  fServico: TfServico;

implementation


{$R *.dfm}

procedure TfServico.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tServico.Cancel;
  Close;
end;

procedure TfServico.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tServicoNOME.IsNull then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tServico.State in [dsInsert] then
    Fdm1.tServicoID.AsInteger := Fdm1.Incrementa('ID','Servico');
  Fdm1.tServico.Post;
  Fdm1.tServico.ApplyUpdates(0);
  Close;
end;

procedure TfServico.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tServico.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tServico.State in [dsBrowse] then
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

procedure TfServico.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
