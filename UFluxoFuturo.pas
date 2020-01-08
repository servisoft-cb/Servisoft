unit UFluxoFuturo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvLookup, Buttons, Grids, DBGrids, JvDBCtrl, Mask,
  JvToolEdit, JvEdit, JvTypedEdit, ExtCtrls, FMTBcd, DBClient, Provider,
  DB, SqlExpr, JvCurrEdit, UDm1, rsDBUtils;

type
  TfFluxoFuturo = class(TForm)
    JvDBGrid1: TJvDBGrid;
    mConsulta: TClientDataSet;
    mConsultaData: TDateField;
    mConsultaVlrReceber: TFloatField;
    mConsultaVlrPagar: TFloatField;
    mConsultaSaldo: TFloatField;
    dsmConsulta: TDataSource;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    JvxCurrencyEdit3: TJvxCurrencyEdit;
    BitBtn1: TBitBtn;
    Fluxo: TSQLQuery;
    qFluxo: TClientDataSet;
    FluxoP: TDataSetProvider;
    dsqFluxo: TDataSource;
    FluxoVLRESTANTER: TFloatField;
    FluxoDTVENCIMENTO: TDateField;
    FluxoVLRRESTANTEP: TFloatField;
    qFluxoVLRESTANTER: TFloatField;
    qFluxoDTVENCIMENTO: TDateField;
    qFluxoVLRRESTANTEP: TFloatField;
    CReceberParc: TSQLQuery;
    CReceberParcVLRRESTANTE: TFloatField;
    qCReceberParc: TClientDataSet;
    CReceberParcP: TDataSetProvider;
    qCReceberParcVLRRESTANTE: TFloatField;
    CPagarParc: TSQLQuery;
    qCPagarParc: TClientDataSet;
    CPagarParcP: TDataSetProvider;
    CPagarParcVLRRESTANTE: TFloatField;
    qCPagarParcVLRRESTANTE: TFloatField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure mConsultaNewRecord(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
    vSaldo : Currency;
    procedure Gera_Memo;
  public
    { Public declarations }
  end;

var
  fFluxoFuturo: TfFluxoFuturo;
  vAlteraMov : String;

implementation

uses UDmCons, UMovFinanceiroIt, UMovFinanceiroRel, UContasReceberDet,
  UContasPagarDet;

{$R *.dfm}

procedure TfFluxoFuturo.Gera_Memo;
begin
  vSaldo := JvxCurrencyEdit3.Value;
  mConsulta.EmptyDataSet;
  qFluxo.First;
  while not qFluxo.Eof do
    begin
      if mConsulta.Locate('DATA',qFluxoDTVENCIMENTO.AsDateTime,([LocaseInsensitive])) then
        mConsulta.Edit
      else
        begin
          mConsulta.Insert;
          mConsultaData.AsDateTime := qFluxoDTVENCIMENTO.AsDateTime;
        end;
      mConsultaVlrPagar.AsFloat   := mConsultaVlrPagar.AsFloat + qFluxoVLRRESTANTEP.AsFloat;
      mConsultaVlrReceber.AsFloat := mConsultaVlrReceber.AsFloat + qFluxoVLRESTANTER.AsFloat;
      vSaldo := vSaldo + qFluxoVLRESTANTER.AsFloat - qFluxoVLRRESTANTEP.AsFloat;
      mConsultaSaldo.AsCurrency   := vSaldo;
      mConsulta.Post;
      qFluxo.Next;
    end;
end;

procedure TfFluxoFuturo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qMovFinanceiro.Close;
  Action := Cafree;
end;

procedure TfFluxoFuturo.BitBtn1Click(Sender: TObject);
begin
  //Monta o Fluxo
  qFluxo.Close;
  Fluxo.ParamByName('DTVENCIMENTO').AsDate := Date;
  qFluxo.Open;

  //Monta as contas a receber em atraso
  qCReceberParc.Close;
  CReceberParc.ParamByName('DTVENCIMENTO').AsDate := Date;
  qCReceberParc.Open;
  JvxCurrencyEdit1.Value := qCReceberParcVLRRESTANTE.AsCurrency;

  //Monta as contas a pagar em atraso
  qCPagarParc.Close;
  CPagarParc.ParamByName('DTVENCIMENTO').AsDate := Date;
  qCPagarParc.Open;
  JvxCurrencyEdit2.Value := qCPagarParcVLRRESTANTE.AsCurrency;

  JvxCurrencyEdit3.Value := JvxCurrencyEdit1.Value - JvxCurrencyEdit2.Value;
  
  Gera_Memo;
end;

procedure TfFluxoFuturo.mConsultaNewRecord(DataSet: TDataSet);
begin
  mConsultaVlrPagar.AsFloat   := 0;
  mConsultaVlrReceber.AsFloat := 0;
  mConsultaSaldo.AsFloat      := 0;
end;

procedure TfFluxoFuturo.BitBtn2Click(Sender: TObject);
begin
  fContasReceberDet := TfContasReceberDet.Create(Self);
  fContasReceberDet.ShowModal;
end;

procedure TfFluxoFuturo.BitBtn3Click(Sender: TObject);
begin
  fContasPagarDet := TfContasPagarDet.Create(Self);
  fContasPagarDet.ShowModal;
end;

end.
