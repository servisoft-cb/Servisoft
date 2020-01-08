unit UContasReceberCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FMTBcd, Grids, DBGrids, StdCtrls, Buttons, Mask, JvToolEdit, DB,
  DBClient, Provider, SqlExpr;

type
  TfContasReceberCliente = class(TForm)
    CReceberParc: TSQLQuery;
    CReceberParcP: TDataSetProvider;
    qCReceberParc: TClientDataSet;
    qCReceberParcNOME: TStringField;
    qCReceberParcVLRVENCIMENTO: TFloatField;
    qCReceberParcVLRPAGTO: TFloatField;
    qCReceberParcVLRRESTANTE: TFloatField;
    qCReceberParcDTVENCIMENTO: TDateField;
    qsCReceberParc: TDataSource;
    Label1: TLabel;
    JvDateEdit1: TJvDateEdit;
    BitBtn1: TBitBtn;
    BitBtn3: TBitBtn;
    tClienteTotal: TClientDataSet;
    dsClienteTotal: TDataSource;
    tClienteTotalCliente: TStringField;
    tClienteTotalSaldoTotal: TFloatField;
    tClienteTotalSaldoVencidas: TFloatField;
    tClienteTotalSaldoVencer: TFloatField;
    tClienteTotalSaldoPago: TFloatField;
    Avencer: TSQLQuery;
    AvencerP: TDataSetProvider;
    qAvencer: TClientDataSet;
    qAvencerNOME: TStringField;
    qAvencerVLRVENCIMENTO: TFloatField;
    qAvencerVLRPAGTO: TFloatField;
    qAvencerVLRRESTANTE: TFloatField;
    qAvencerDTVENCIMENTO: TDateField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fContasReceberCliente: TfContasReceberCliente;

implementation

uses UContasReceberClienteRel;

{$R *.dfm}

procedure TfContasReceberCliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := cafree;
end;

procedure TfContasReceberCliente.BitBtn1Click(Sender: TObject);
begin
  if (JvDateEdit1.Text <> '  /  /    ') then
    begin
       qCReceberParc.Close;
       CReceberParc.Params[0].AsDate := JvDateEdit1.Date;
       qCReceberParc.Open;
       qCReceberParc.First;
       while not qCReceberParc.Eof do
         begin
           if tClienteTotal.Locate('Cliente',qCReceberParcNOME.AsString,[LocaseInsensitive]) then
             begin
               tClienteTotal.Edit;
               tClienteTotalCliente.AsString := qCReceberParcNOME.AsString;
               tClienteTotalSaldoPago.AsFloat := tClienteTotalSaldoPago.AsFloat + qCReceberParcVLRPAGTO.AsFloat;
               tClienteTotalSaldoTotal.AsFloat := tClienteTotalSaldoTotal.AsFloat + qCReceberParcVLRVENCIMENTO.AsFloat;
               if qCReceberParcDTVENCIMENTO.AsDateTime < JvDateEdit1.Date then
                 tClienteTotalSaldoVencidas.AsFloat := tClienteTotalSaldoVencidas.AsFloat + qCReceberParcVLRRESTANTE.AsFloat;
               tClienteTotal.Post;
             end
           else
             begin
               tClienteTotal.Insert;
               tClienteTotalCliente.AsString := qCReceberParcNOME.AsString;
               tClienteTotalSaldoPago.AsFloat := qCReceberParcVLRPAGTO.AsFloat;
               tClienteTotalSaldoTotal.AsFloat := qCReceberParcVLRVENCIMENTO.AsFloat;
               if qCReceberParcDTVENCIMENTO.AsDateTime < JvDateEdit1.Date then
                 tClienteTotalSaldoVencidas.AsFloat := qCReceberParcVLRRESTANTE.AsFloat;
               tClienteTotal.Post;
             end;
           qCReceberParc.Next;
         end;
       qAvencer.Close;
       Avencer.Params[0].AsDate := JvDateEdit1.Date;
       qAvencer.Open;
       qAvencer.First;
       while not qAvencer.Eof do
         begin
           if tClienteTotal.Locate('Cliente',qAvencerNOME.AsString,[LocaseInsensitive]) then
             begin
               tClienteTotal.Edit;
               tClienteTotalSaldoVencer.AsFloat := tClienteTotalSaldoVencer.AsFloat + qAvencerVLRRESTANTE.AsFloat;
               tClienteTotalSaldoTotal.AsFloat  := tClienteTotalSaldoTotal.AsFloat + qAvencerVLRVENCIMENTO.AsFloat;
               tClienteTotal.Post;
             end
           else
             begin
               tClienteTotal.Insert;
               tClienteTotalSaldoVencer.AsFloat := qAvencerVLRRESTANTE.AsFloat;
               tClienteTotalSaldoTotal.AsFloat  := qAvencerVLRVENCIMENTO.AsFloat;
               tClienteTotal.Post;
             end;
           qAvencer.Next;
         end;
       tClienteTotal.IndexFieldNames := 'Cliente';  
       fContasReceberClienteRel := TfContasReceberClienteRel.Create(Self);
       fContasReceberClienteRel.RlReport1.Preview;
       fContasReceberClienteRel.RlReport1.Free;
    end
  else
    ShowMessage('Deve haver uma data de referência para efetuar a impressão!');
end;

procedure TfContasReceberCliente.BitBtn3Click(Sender: TObject);
begin
  JvDateEdit1.Clear;
end;

end.
