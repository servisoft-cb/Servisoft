unit uOrcamentoProd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons, ExtCtrls, JvLookup, rsDBUtils, uDM1;

type
  TfOrcamentoProd = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    Label3: TLabel;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    SpeedButton1: TSpeedButton;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit1Exit(Sender: TObject);
    procedure JvDBLookupCombo1Exit(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
    function calcTotal: Currency;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fOrcamentoProd: TfOrcamentoProd;

implementation

uses UDmCons, UProduto;

{$R *.dfm}

procedure TfOrcamentoProd.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPedidoIt.Cancel;
  Close;
end;

procedure TfOrcamentoProd.BitBtn1Click(Sender: TObject);
begin
  if Fdm1.tPedidoItCODPRODUTO.IsNull then
  begin
    ShowMessage('Produto deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tPedidoItQTD.IsNull then
  begin
    ShowMessage('Quantidade deve ser preenchida!');
    Exit;
  end;
  if Fdm1.tPedidoItVLRUNITARIO.IsNull then
  begin
    ShowMessage('Valor deve ser preenchido!');
    Exit;
  end;
  DBEdit1.OnExit(Sender);
  if Fdm1.tPedidoIt.State in [dsInsert] then
    Fdm1.tPedidoItITEM.AsInteger := 0;
  Fdm1.tPedidoItPRODUTO.AsString := JvDBLookupCombo1.Text;
  Fdm1.tPedidoIt.Post;
  Close;
end;

procedure TfOrcamentoProd.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPedidoIt.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn1.Click;
              if Fdm1.tPedidoIt.State in [dsBrowse] then
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

procedure TfOrcamentoProd.FormCreate(Sender: TObject);
begin
  dmCons.qProduto.Open;
end;

procedure TfOrcamentoProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dmCons.qProduto.Close;
end;

procedure TfOrcamentoProd.DBEdit1Exit(Sender: TObject);
begin
  if (not Fdm1.tPedidoItQTD.IsNull) and (not Fdm1.tPedidoItVLRUNITARIO.IsNull) then
    Fdm1.tPedidoItVLRTOTAL.AsCurrency := calcTotal;
end;

function TfOrcamentoProd.calcTotal: Currency;
begin
  Result := Fdm1.tPedidoItQTD.AsCurrency * Fdm1.tPedidoItVLRUNITARIO.AsCurrency;
end;

procedure TfOrcamentoProd.JvDBLookupCombo1Exit(Sender: TObject);
begin
  if JvDBLookupCombo1.Text <> '' then
  begin
    Fdm1.qInc.SQL.Text := 'SELECT PRECOVENDA, UNIDADE, VLRMO FROM PRODUTO WHERE ID = ' + JvDBLookupCombo1.Value;
    Fdm1.qInc.Open;
    Fdm1.tPedidoItVLRUNITARIO.AsString := Fdm1.qInc.fieldByName('PRECOVENDA').AsString;
    Fdm1.tPedidoItUNIDADE.AsString     := Fdm1.qInc.fieldByName('UNIDADE').AsString;
    Fdm1.tPedidoItVLRMO.AsString       := '0';
    if not Fdm1.qInc.FieldByName('VLRMO').IsNull then
      Fdm1.tPedidoItVLRMO.AsCurrency := Fdm1.qInc.FieldByName('VLRMO').AsCurrency * Fdm1.tPedidoItQTD.AsCurrency;
    Fdm1.qInc.Close;
    Fdm1.qInc.SQL.Text := '';
  end;
end;

procedure TfOrcamentoProd.Label1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
  DmCons.qProduto.Close;
  DmCons.qProduto.Open;
end;

procedure TfOrcamentoProd.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfOrcamentoProd.SpeedButton1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
  JvDBLookupCombo1.LookupSource.DataSet.Close;
  JvDBLookupCombo1.LookupSource.DataSet.Open;
end;

end.
