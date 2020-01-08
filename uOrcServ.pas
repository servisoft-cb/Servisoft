unit uOrcServ;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls,
  Buttons, ExtCtrls, JvLookup, Menus, rsDBUtils, uDM1;

type
  TfOrcServ = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label12: TLabel;
    DBEdit16: TDBEdit;
    PopupMenu1: TPopupMenu;
    Limpar1: TMenuItem;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Label1Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fOrcServ: TfOrcServ;

implementation

uses UDmCons, uServico;

{$R *.dfm}

procedure TfOrcServ.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPedidoServico.Cancel;
  Close;
end;

procedure TfOrcServ.BitBtn1Click(Sender: TObject);
begin
  if JvDBLookupCombo1.KeyValue < 1 then
  begin
    ShowMessage('Serviço deve ser preenchido!');
    Exit;
  end;
  if DBEdit4.Text = '' then
  begin
    ShowMessage('Quantidade deve ser preenchida!');
    Exit;
  end;
  if DBEdit16.Text = '' then
  begin
    ShowMessage('Valor deve ser preenchido!');
    Exit;
  end;
  Fdm1.tPedidoServicoSERVICO.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPedidoServico.Post;
  Close;
end;

procedure TfOrcServ.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPedidoServicoPermanente.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPedidoServicoPermanente.State in [dsBrowse] then
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

procedure TfOrcServ.Label1Click(Sender: TObject);
begin
  if not Fdm1.tServico.Active then
    Fdm1.tServico.Open;
  fServico := TfServico.Create(Self);
  Fdm1.tServico.Insert;
  fServico.ShowModal;
  fServico.Free;
end;

procedure TfOrcServ.DBEdit4Exit(Sender: TObject);
begin
  Fdm1.tPedidoServicoVALORMES.AsCurrency := Fdm1.tPedidoServicoVALORSERVICO.AsCurrency * Fdm1.tPedidoServicoQTD.AsCurrency;
end;

procedure TfOrcServ.DBEdit16Exit(Sender: TObject);
begin
  Fdm1.tPedidoServicoVALORMES.AsCurrency := Fdm1.tPedidoServicoVALORSERVICO.AsCurrency * Fdm1.tPedidoServicoQTD.AsCurrency;
end;

procedure TfOrcServ.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
