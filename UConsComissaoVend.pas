unit UConsComissaoVend;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvLookup, Mask, JvToolEdit, Grids, DBGrids, JvDBCtrl,
  Buttons, FMTBcd, DBClient, Provider, DB, SqlExpr, JvCurrEdit, Math, VarUtils,
  UDM1, rsDBUtils;

type
  TfConsComissaoVend = class(TForm)
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label2: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label3: TLabel;
    JvDateEdit2: TJvDateEdit;
    JvDBGrid1: TJvDBGrid;
    BitBtn1: TBitBtn;
    ExtComissao: TSQLQuery;
    ExtComissaoP: TDataSetProvider;
    qExtComissao: TClientDataSet;
    dsExtComissao: TDataSource;
    qExtComissaoNUMMOV: TIntegerField;
    qExtComissaoCODVENDEDOR: TIntegerField;
    qExtComissaoDTREFERENCIA: TDateField;
    qExtComissaoNUMNOTA: TIntegerField;
    qExtComissaoPARCELA: TStringField;
    qExtComissaoCODCLIENTE: TIntegerField;
    qExtComissaoFUNCAO: TStringField;
    qExtComissaoVLRBASE: TFloatField;
    qExtComissaoPERCENTUAL: TFloatField;
    qExtComissaoVLRCOMISSAO: TFloatField;
    qExtComissaoTIPO: TStringField;
    qExtComissaoNOMECLIENTE: TStringField;
    Label8: TLabel;
    JvxCurrencyEdit3: TJvxCurrencyEdit;
    Label4: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Label5: TLabel;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    Label6: TLabel;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    Label7: TLabel;
    JvxCurrencyEdit5: TJvxCurrencyEdit;
    SaldoAnt: TSQLQuery;
    SaldoAntP: TDataSetProvider;
    qSaldoAnt: TClientDataSet;
    qSaldoAntVLRCOMISSAO: TFloatField;
    qSaldoAntFUNCAO: TStringField;
    SaldoPeriodo: TSQLQuery;
    SaldoPeriodoP: TDataSetProvider;
    qSaldoPeriodo: TClientDataSet;
    qSaldoPeriodoVLRCOMISSAO: TFloatField;
    qSaldoPeriodoFUNCAO: TStringField;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    qExtComissaoOBS: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    //Fdm1: Tdm1;
  public
    { Public declarations }
    //property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fConsComissaoVend: TfConsComissaoVend;

implementation

uses UDmCons, UComissaoRel, UPagtoComissao;

{$R *.dfm}
                                                                    
procedure TfConsComissaoVend.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  DmCons.qVendedor.Close;
  qExtComissao.Close;
  qSaldoAnt.close;
  Action := Cafree;
end;

procedure TfConsComissaoVend.FormCreate(Sender: TObject);
begin
  DmCons.qVendedor.Open;
end;

procedure TfConsComissaoVend.BitBtn1Click(Sender: TObject);
var
  vValor : Real;
begin
  if JvDBLookupCombo1.Text = '' then
    ShowMessage('Falta informar o vendedor!')
  else
    begin
      //Monta o sql do saldo anterior
      vValor := 0;
      JvxCurrencyEdit1.Value := 0;
      JvxCurrencyEdit2.Value := 0;
      JvxCurrencyEdit3.Value := 0;
      JvxCurrencyEdit4.Value := 0;
      JvxCurrencyEdit5.Value := 0;
      if JvDateEdit1.Text <> '  /  /    ' then
        begin
          qSaldoAnt.Close;
          SaldoAnt.SQL.Clear;
          SaldoAnt.SQL.Add('Select Sum(VlrComissao) VlrComissao, Funcao');
          SaldoAnt.SQL.Add('from EXTCOMISAO');
          SaldoAnt.SQL.Add('WHERE CODVENDEDOR = :CODVENDEDOR');
          SaldoAnt.ParamByName('CODVENDEDOR').AsInteger := JvDBLookupCombo1.KeyValue;
          if JvDateEdit1.Text <> '  /  /    ' then
            begin
              SaldoAnt.SQL.Add('  AND DTREFERENCIA < :DATA');
              SaldoAnt.ParamByName('DATA').AsDate := JvDateEdit1.Date;
            end;
          SaldoAnt.SQL.Add('group by Funcao');
          qSaldoAnt.Open;
          while not qSaldoAnt.Eof do
            begin
              if qSaldoAntFUNCAO.AsString = 'E' then
                vValor := StrToFloat(FormatFloat('0.00',vValor + qSaldoAntVLRCOMISSAO.AsFloat))
              else
              if (qSaldoAntFUNCAO.AsString = 'S') or (qSaldoAntFUNCAO.AsString = 'D')  then
                vValor := StrToFloat(FormatFloat('0.00',vValor - qSaldoAntVLRCOMISSAO.AsFloat));
              qSaldoAnt.Next;
            end;
        end;
      JvxCurrencyEdit3.Value := StrToFloat(FormatFloat('0.00',vValor));

      //Monta o sql do saldo do período
      qSaldoPeriodo.Close;
      SaldoPeriodo.SQL.Clear;
      SaldoPeriodo.SQL.Add('Select Sum(VlrComissao) VlrComissao, Funcao');
      SaldoPeriodo.SQL.Add('from EXTCOMISAO');
      SaldoPeriodo.SQL.Add('WHERE CODVENDEDOR = :CODVENDEDOR');
      SaldoPeriodo.ParamByName('CODVENDEDOR').AsInteger := JvDBLookupCombo1.KeyValue;
      if (JvDateEdit1.Text <> '  /  /    ') and (JvDateEdit2.Text <> '  /  /    ') then
        SaldoPeriodo.SQL.Add('   AND   EXTCOMISAO.DTREFERENCIA between :DATA1 AND :DATA2')
      else
      if JvDateEdit1.Text <> '  /  /    ' then
        SaldoPeriodo.SQL.Add('   AND   EXTCOMISAO.DTREFERENCIA >=  :DATA1')
      else
      if JvDateEdit2.Text <> '  /  /    ' then
        SaldoPeriodo.SQL.Add('   AND   EXTCOMISAO.DTREFERENCIA <=  :DATA2');
      if (JvDateEdit1.Text <> '  /  /    ') then
        SaldoPeriodo.ParamByName('DATA1').AsDate := JvDateEdit1.Date;
      if (JvDateEdit2.Text <> '  /  /    ') then
        SaldoPeriodo.ParamByName('DATA2').AsDate := JvDateEdit2.Date;
      SaldoPeriodo.SQL.Add('Group by Funcao');
      qSaldoPeriodo.Open;
      while not qSaldoPeriodo.Eof do
        begin
          if qSaldoPeriodoFUNCAO.AsString = 'E' then
            JvxCurrencyEdit1.Value := qSaldoPeriodoVLRCOMISSAO.AsFloat
          else
          if (qSaldoPeriodoFUNCAO.AsString = 'S') or (qSaldoPeriodoFUNCAO.AsString = 'D')  then
            JvxCurrencyEdit2.Value := qSaldoPeriodoVLRCOMISSAO.AsFloat;
          qSaldoPeriodo.Next;
        end;
      JvxCurrencyEdit4.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit1.Value - JvxCurrencyEdit2.Value));
      JvxCurrencyEdit5.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit3.Value + JvxCurrencyEdit4.Value));

      //Monta o sql do período
      qExtComissao.Close;
      ExtComissao.SQL.Clear;
      ExtComissao.SQL.Add('Select EXTCOMISAO.*, PESSOA.NOME NOMECLIENTE');
      ExtComissao.SQL.Add('from EXTCOMISAO');
      ExtComissao.SQL.Add('full join PESSOA on');
      ExtComissao.SQL.Add('PESSOA.ID = CODCLIENTE');
      ExtComissao.SQL.Add('where EXTCOMISAO.CODVENDEDOR = :CODVENDEDOR');
      if (JvDateEdit1.Text <> '  /  /    ') and (JvDateEdit2.Text <> '  /  /    ') then
        ExtComissao.SQL.Add('   AND   EXTCOMISAO.DTREFERENCIA between :DATA1 AND :DATA2')
      else
      if JvDateEdit1.Text <> '  /  /    ' then
        ExtComissao.SQL.Add('   AND   EXTCOMISAO.DTREFERENCIA >=  :DATA1')
      else
      if JvDateEdit2.Text <> '  /  /    ' then
        ExtComissao.SQL.Add('   AND   EXTCOMISAO.DTREFERENCIA <=  :DATA2');
      if (JvDateEdit1.Text <> '  /  /    ') then
        ExtComissao.ParamByName('DATA1').AsDate := JvDateEdit1.Date;
      if (JvDateEdit2.Text <> '  /  /    ') then
        ExtComissao.ParamByName('DATA2').AsDate := JvDateEdit2.Date;
      ExtComissao.SQL.Add('order by EXTCOMISAO.DTREFERENCIA, EXTCOMISAO.FUNCAO');
      ExtComissao.ParamByName('CODVENDEDOR').AsInteger := JvDBLookupCombo1.KeyValue;
      qExtComissao.Open;
    end;
end;

procedure TfConsComissaoVend.BitBtn2Click(Sender: TObject);
begin
  if qExtComissao.RecordCount > 0 then
    begin
      fComissaoRel := TfComissaoRel.Create(Self);
      fComissaoRel.RlReport1.Preview;
      fComissaoRel.RlReport1.Free;
    end
  else
    ShowMessage('Não existe registros para serem impressos!');
end;

procedure TfConsComissaoVend.BitBtn3Click(Sender: TObject);
begin
  if JvDBLookupCombo1.Text = '' then
    begin
      ShowMessage('Falta informar o vendedor!');
      exit;
    end;

  fPagtoComissao := TfPagtoComissao.Create(Self);
  fPagtoComissao.ShowModal;
end;

procedure TfConsComissaoVend.FormShow(Sender: TObject);
begin
  //oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
