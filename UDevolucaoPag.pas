unit UDevolucaoPag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, DBCtrls, JvToolEdit, JvEdit, DBXpress,
  JvTypedEdit, JvCurrEdit, Buttons, UDm1, rsDBUtils;

type
  TfDevolucaoPag = class(TForm)
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
  fDevolucaoPag: TfDevolucaoPag;

implementation

uses StrUtils, DB;

{$R *.dfm}

procedure TfDevolucaoPag.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfDevolucaoPag.JvxCurrencyEdit1Exit(Sender: TObject);
begin
  if JvxCurrencyEdit1.Value > StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRRESTANTE.AsFloat)) then
    begin
      ShowMessage('Valor da Devolução maior que valor restante da parcela!');
      JvxCurrencyEdit1.Clear;
      JvxCurrencyEdit1.SetFocus;
    end;

end;

procedure TfDevolucaoPag.BitBtn5Click(Sender: TObject);
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
      Fdm1.tCPagarParc.Edit;
      Fdm1.tCPagarParcDTDEVOLUCAO.AsDateTime := JvDateEdit1.Date;
      Fdm1.tCPagarParcVLRDEVOLUCAO.AsFloat   := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRDEVOLUCAO.AsFloat)) +
                                               JvxCurrencyEdit1.Value;
      Fdm1.tCPagarParcVLRRESTANTE.AsFloat    := StrToFloat(FormatFloat('0.00',Fdm1.tCPagarParcVLRRESTANTE.AsFloat)) -
                                               JvxCurrencyEdit1.Value;
      Fdm1.tCPagarParc.Post;
      //Grava histórico
      Fdm1.tCPagarHist.Close;
      Fdm1.CPagarHist.Params[0].AsInteger := Fdm1.tCPagarParcCODFORNECEDOR.AsInteger;
      Fdm1.CPagarHist.Params[1].AsInteger := Fdm1.tCPagarParcNUMCPAGAR.AsInteger;
      Fdm1.CPagarHist.Params[2].AsString  := Fdm1.tCPagarParcPARCELA.AsString;
      Fdm1.tCPagarHist.Open;
      Fdm1.tCPagarHist.Last;
      vItem := Fdm1.tCPagarHistITEM.AsInteger;

      Fdm1.tCPagarHist.Insert;
      Fdm1.tCPagarHistNUMCPAGAR.AsInteger     := Fdm1.tCPagarParcNUMCPAGAR.AsInteger;
      Fdm1.tCPagarHistPARCELA.AsString        := Fdm1.tCPagarParcPARCELA.AsString;
      Fdm1.tCPagarHistITEM.AsInteger          := vItem + 1;
      if Edit1.Text <> '' then
        Fdm1.tCPagarHistHISTORICO.AsString    := Edit1.Text
      else
        Fdm1.tCPagarHistHISTORICO.AsString    := 'VLR. REFERENTE A DEVOLUÇÃO';
      Fdm1.tCPagarHistDTHISTORICO.AsDateTime  := Date;
      Fdm1.tCPagarHistDTULTPGTO.AsDateTime    := JvDateEdit1.Date;
      Fdm1.tCPagarHistTIPOHIST.AsString       := 'D';
      Fdm1.tCPagarHistVLRULTDEVOLUCAO.AsFloat := JvxCurrencyEdit1.Value;
      Fdm1.tCPagarHist.Post;
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      Fdm1.tCPagarHist.ApplyUpdates(0);
      Fdm1.tCPagarParc.ApplyUpdates(0);
      Fdm1.Conexao.Commit(TD);
      except
      Fdm1.Conexao.Rollback(TD);
      end;
      Close;
    end;
end;

procedure TfDevolucaoPag.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfDevolucaoPag.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
