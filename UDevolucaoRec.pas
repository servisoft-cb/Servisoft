unit UDevolucaoRec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, JvToolEdit, JvEdit, DBXpress,
  JvTypedEdit, JvCurrEdit, Buttons, UDm1, rsDBUtils;

type
  TfDevolucaoRec = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label9: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Bevel1: TBevel;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    Label10: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvxCurrencyEdit1Exit(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fDevolucaoRec: TfDevolucaoRec;

implementation

uses StrUtils, DB;

{$R *.dfm}

procedure TfDevolucaoRec.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfDevolucaoRec.JvxCurrencyEdit1Exit(Sender: TObject);
begin
  if JvxCurrencyEdit1.Value > StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) then
    begin
      ShowMessage('Valor da Devolução maior que valor restante da parcela!');
      JvxCurrencyEdit1.Clear;
      JvxCurrencyEdit1.SetFocus;
    end;

end;

procedure TfDevolucaoRec.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vItem : Integer;
begin
  if (JvDateEdit1.Text = '  /  /    ') or (JvxCurrencyEdit1.Value = 0) then
    begin
      ShowMessage('Falta informar a Data ou o Valor!');
      JvDateEdit1.SetFocus;
    end
  else
    begin
      Fdm1.tCReceberParc.Edit;
      Fdm1.tCReceberParcDTDEVOLUCAO.AsDateTime := JvDateEdit1.Date;
      Fdm1.tCReceberParcVLRDEVOLUCAO.AsFloat   := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRDEVOLUCAO.AsFloat)) +
                                                 JvxCurrencyEdit1.Value;
      Fdm1.tCReceberParcVLRRESTANTE.AsFloat    := StrToFloat(FormatFloat('0.00',Fdm1.tCReceberParcVLRRESTANTE.AsFloat)) -
                                                 JvxCurrencyEdit1.Value;
      Fdm1.tCReceberParc.Post;
      //Grava histórico
      Fdm1.tCReceberHist.Close;
      Fdm1.CReceberHist.Params[0].AsInteger := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
      Fdm1.CReceberHist.Params[1].AsString  := Fdm1.tCReceberParcPARCELA.AsString;
      Fdm1.tCReceberHist.Open;
      Fdm1.tCReceberHist.Last;
      vItem := Fdm1.tCReceberHistITEM.AsInteger;

      Fdm1.tCReceberHist.Insert;
      Fdm1.tCReceberHistNUMCRECEBER.AsInteger   := Fdm1.tCReceberParcNUMCRECEBER.AsInteger;
      Fdm1.tCReceberHistPARCELA.AsString        := Fdm1.tCReceberParcPARCELA.AsString;
      Fdm1.tCReceberHistITEM.AsInteger          := vItem + 1;
      if Edit1.Text <> '' then
        Fdm1.tCReceberHistHISTORICO.AsString    := Edit1.Text
      else
        Fdm1.tCReceberHistHISTORICO.AsString    := 'VLR. REFERENTE A DEVOLUÇÃO';
      Fdm1.tCReceberHistDTHISTORICO.AsDateTime  := Date;
      Fdm1.tCReceberHistDTULTPGTO.AsDateTime    := JvDateEdit1.Date;
      Fdm1.tCReceberHistTIPOHIST.AsString       := 'D';
      Fdm1.tCReceberHistVLRULTDEVOLUCAO.AsFloat := JvxCurrencyEdit1.Value;
      Fdm1.tCReceberHist.Post;
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      Fdm1.tCReceberHist.ApplyUpdates(0);
      Fdm1.tCReceberParc.ApplyUpdates(0);
      Fdm1.Conexao.Commit(TD);
      except
      Fdm1.Conexao.Rollback(TD);
      end;
      Close;
    end;
end;

procedure TfDevolucaoRec.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfDevolucaoRec.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
