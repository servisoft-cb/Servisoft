unit UNotaEntradaIt;
    
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEdit, JvTypedEdit, JvLookup, Buttons, Mask,
  JvToolEdit, JvCurrEdit, ExtCtrls, ComCtrls, DBCtrls, JvDBCtrl, FMTBcd,
  DB, DBClient, Provider, SqlExpr;

type
  TfNotaEntradaIt = class(TForm)
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    TSProdutos: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    JvDBLookupCombo2: TJvDBLookupCombo;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    JvxCurrencyEdit3: TJvxCurrencyEdit;
    JvxCurrencyEdit5: TJvxCurrencyEdit;
    JvxCurrencyEdit6: TJvxCurrencyEdit;
    Edit1: TEdit;
    JvxCurrencyEdit7: TJvxCurrencyEdit;
    JvxCurrencyEdit8: TJvxCurrencyEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label5: TLabel;
    JvxCurrencyEdit9: TJvxCurrencyEdit;
    TSMObras: TTabSheet;
    TSDuplicatas: TTabSheet;
    Label14: TLabel;
    JvxCurrencyEdit10: TJvxCurrencyEdit;
    Label15: TLabel;
    Label16: TLabel;
    JvxCurrencyEdit11: TJvxCurrencyEdit;
    JvDateEdit1: TJvDateEdit;
    Label17: TLabel;
    JvxCurrencyEdit12: TJvxCurrencyEdit;
    Label18: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    Label19: TLabel;
    JvxCurrencyEdit13: TJvxCurrencyEdit;
    Label20: TLabel;
    JvxCurrencyEdit14: TJvxCurrencyEdit;
    Label21: TLabel;
    JvxCurrencyEdit15: TJvxCurrencyEdit;
    Label22: TLabel;
    JvxCurrencyEdit16: TJvxCurrencyEdit;
    Label23: TLabel;
    JvxCurrencyEdit17: TJvxCurrencyEdit;
    Label24: TLabel;
    Edit2: TEdit;
    Label25: TLabel;
    JvDBLookupCombo5: TJvDBLookupCombo;
    CheckBox1: TCheckBox;
    Produto: TSQLQuery;
    ProdutoP: TDataSetProvider;
    qProduto: TClientDataSet;
    qsProduto: TDataSource;
    qProdutoID: TIntegerField;
    qProdutoNOME: TStringField;
    qProdutoUNIDADE: TStringField;
    qProdutoCODGRUPO: TIntegerField;
    qProdutoALIQICMS: TFloatField;
    qProdutoALIQIPI: TFloatField;
    qProdutoCODFORNECEDOR: TIntegerField;
    qProdutoINATIVO: TStringField;
    qProdutoPOSSUITAMANHO: TStringField;
    qProdutoOPCAOPRECO: TStringField;
    qProdutoDTCADASTRO: TDateField;
    qProdutoCODSITTRIB: TIntegerField;
    qProdutoCLASFISCAL: TStringField;
    qProdutoPRECOCUSTO: TFloatField;
    qProdutoPERCMINIMO: TFloatField;
    qProdutoPRECOMINIMO: TFloatField;
    qProdutoPERCVENDA: TFloatField;
    qProdutoPRECOVENDA: TFloatField;
    qProdutoDTREAJUSTE: TDateField;
    qProdutoCODBARRA: TStringField;
    qProdutoESTMINIMO: TFloatField;
    qProdutoOBS: TBlobField;
    qProdutoATUALIZAPRECO: TStringField;
    MaoObra: TSQLQuery;
    MaoObraP: TDataSetProvider;
    qMaoObra: TClientDataSet;
    qsMaoObra: TDataSource;
    qMaoObraID: TIntegerField;
    qMaoObraNOME: TStringField;
    qMaoObraPRECOVENDA: TFloatField;
    Label26: TLabel;
    JvDBLookupCombo6: TJvDBLookupCombo;
    qProdutoTIPO: TStringField;
    qProdutoCODSITTRIBCF: TIntegerField;
    ProdutoTam: TSQLQuery;
    ProdutoTamP: TDataSetProvider;
    qProdutoTam: TClientDataSet;
    qProdutoTamCODPRODUTO: TIntegerField;
    qProdutoTamTAMANHO: TStringField;
    qProdutoTamPRECOCUSTO: TFloatField;
    qProdutoTamPRECOMINIMO: TFloatField;
    qProdutoTamPRECOVENDA: TFloatField;
    qProdutoTamCODBARRA: TStringField;
    qProdutoTamESTMINIMO: TFloatField;
    qProdutoTamDTREAJUST: TDateField;
    dsProdutoTam: TDataSource;
    Label27: TLabel;
    JvxCurrencyEdit18: TJvxCurrencyEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure JvDBLookupCombo3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvxCurrencyEdit2Exit(Sender: TObject);
    procedure JvxCurrencyEdit7Exit(Sender: TObject);
    procedure JvxCurrencyEdit8Enter(Sender: TObject);
    procedure JvxCurrencyEdit8Exit(Sender: TObject);
    procedure JvxCurrencyEdit4Exit(Sender: TObject);
    procedure JvxCurrencyEdit6Exit(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure Label13Click(Sender: TObject);
    procedure JvDBLookupCombo4Exit(Sender: TObject);
    procedure JvDBLookupCombo3Enter(Sender: TObject);
    procedure JvDBLookupCombo2Exit(Sender: TObject);
    procedure Label18Click(Sender: TObject);
    procedure Label25Click(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Label26Click(Sender: TObject);
    procedure JvxCurrencyEdit13Exit(Sender: TObject);
    procedure JvxCurrencyEdit17Exit(Sender: TObject);
  private
    { Private declarations }
    vItem : Integer;
    vBaseIpi, vVlrIpi, vBaseICMS, vVlrICMS : Real;
    vVlrDesconto : Real;
    procedure Limpa;
    procedure Calcula_Valores;
    procedure Calcula_Impostos;
    procedure Confirma_Produto;
    procedure Confirma_MObra;
    procedure Confirma_Duplicata;
  public
    { Public declarations }
  end;

var
  fNotaEntradaIt: TfNotaEntradaIt;

implementation

uses UDm1, UDmCons, UNotaEntrada, Math, UProduto, USitTributaria,
  UMaoObra, UBanco, UNatOperacao;

{$R *.dfm}

procedure TfNotaEntradaIt.Limpa;
begin
  //*** Variáveis do Produto
  JvDBLookupCombo1.ClearValue;
  JvDBLookupCombo2.ClearValue;
  JvDBLookupCombo3.ClearValue;
  JvxCurrencyEdit1.Clear;
  JvxCurrencyEdit2.Clear;
  JvxCurrencyEdit3.Clear;
  JvxCurrencyEdit4.Clear;
  JvxCurrencyEdit5.Clear;
  JvxCurrencyEdit6.Clear;
  JvxCurrencyEdit7.Clear;
  JvxCurrencyEdit8.Clear;
  JvxCurrencyEdit9.Clear;
  Edit1.Clear;
  Edit2.Clear;

  //*** Variáveis da Mão de Obra
  JvDBLookupCombo4.ClearValue;
  JvxCurrencyEdit12.Clear;
  JvxCurrencyEdit13.Clear;
  JvxCurrencyEdit14.Clear;
  JvxCurrencyEdit15.Clear;
  JvxCurrencyEdit16.Clear;
  JvxCurrencyEdit17.Clear;

  //*** Variáveis da Duplicata
  JvxCurrencyEdit10.Clear;
  JvxCurrencyEdit11.Clear;
  JvDateEdit1.Clear;
  JvDBLookupCombo5.ClearValue;
end;

procedure TfNotaEntradaIt.Calcula_Valores;
var
  vVlrTotal : Real;
begin
  vVlrIpi  := 0;
  vBaseIpi := 0;
  //*** Soma o total sem ipi
  vVlrTotal := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value * JvxCurrencyEdit4.Value));
  //*** Calcula o Ipi e soma no total do item
  if JvxCurrencyEdit6.Value > 0 then
    begin
      vVlrIPI  := StrToFloat(FormatFloat('0.00',vVlrTotal * JvxCurrencyEdit6.Value / 100));
      vBaseIpi := vVlrTotal;
    end;
  vVlrTotal := vVlrTotal + vVlrIpi;

  JvxCurrencyEdit9.Value := vVlrTotal;
  //*** Calcula o Desconto e abati do total do item
  if JvxCurrencyEdit7.Value > 0 then
    JvxCurrencyEdit8.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit9.Value * JvxCurrencyEdit7.Value / 100));
  JvxCurrencyEdit9.Value := JvxCurrencyEdit9.Value - JvxCurrencyEdit8.Value;
end;

procedure TfNotaEntradaIt.Calcula_Impostos;
var
  vPercCalculo : Real;
begin
  vBaseICMS := 0;
  vVlrICMS  := 0;
  if JvxCurrencyEdit5.Value > 0 then
    begin
      vPercCalculo := 100;
      if JvDBLookupCombo1.Text <> '' then
        begin
          Dm1.tSitTributaria.Close;
          Dm1.SitTributaria.ParamByName('Codigo').AsInteger := JvDBLookupCombo1.KeyValue;
          Dm1.tSitTributaria.Open;
          vPercCalculo := Dm1.tSitTributariaPERCENTUAL.AsFloat;
          Dm1.tSitTributaria.Close;
        end;
      if not DM1.tNotaEntradaICMSIPI.AsBoolean then
        vBaseICMS := JvxCurrencyEdit9.Value - vVlrIpi
      else
        vBaseICMS := JvxCurrencyEdit9.Value;
      if vPercCalculo = 0 then
        vBaseICMS := 0
      else
      if vPercCalculo <> 100 then
        vBaseICMS := StrToFloat(FormatFloat('0.00',(vBaseICMS * vPercCalculo) / 100));
      if vBaseICMS > 0 then
        vVlrICMS := StrToFloat(FormatFloat('0.00',(vBaseICMS * JvxCurrencyEdit5.Value) / 100));
    end;
end;

procedure TfNotaEntradaIt.Confirma_Produto;
begin
{  if (JvDBLookupCombo3.Text = '') or ((DmCons.qProdutoTam.RecordCount > 0) and
     (JvDBLookupCombo2.Text = '')) or (Edit1.Text = '') or (JvxCurrencyEdit2.Value = 0) or
     (JvxCurrencyEdit4.Value = 0) then}
// Juca - na tabela estoque, o campo tamanho está obrigatório. O teste acima verifica se o produto tem tamanhos
// Verificar teste abaixo


  if (JvDBLookupCombo3.Text = '') or (Edit1.Text = '') or
     (JvxCurrencyEdit2.Value = 0) or (JvxCurrencyEdit4.Value = 0) or (JvDBLookupCombo6.Text = '') then
    ShowMessage('Esta faltando um destes campos <Produto> <Tamanho> <Unidade> <Quantidade> <Valor Unitário> <Nat. Operação>')
  else
  if not (DmCons.qProdutoTam.IsEmpty) and (JvDBLookupCombo2.Text = '') then
    begin
      ShowMessage('Este produto requer tamanho!');
      JvDBLookupCombo2.SetFocus;
    end
  else
    begin
      if (fNotaEntradaIt.Tag = 12) then
        begin
          vItem := JvxCurrencyEdit1.AsInteger;
          Dm1.tNotaEntradaIt.Edit;
          //*** Se estiver no modo de alteração, tem que diminuir os totais da nota de entrada
          //*** para depois somar novamente
          DM1.tNotaEntradaBASEICMS.AsFloat := DM1.tNotaEntradaBASEICMS.AsFloat - Dm1.tNotaEntradaItBASEICMS.AsFloat;
          DM1.tNotaEntradaVLRICMS.AsFloat  := DM1.tNotaEntradaVLRICMS.AsFloat - Dm1.tNotaEntradaItVLRICMS.AsFloat;
          DM1.tNotaEntradaBASEIPI.AsFloat  := DM1.tNotaEntradaBASEIPI.AsFloat - Dm1.tNotaEntradaItBASEIPI.AsFloat;
          DM1.tNotaEntradaVLRIPI.AsFloat   := DM1.tNotaEntradaVLRIPI.AsFloat - Dm1.tNotaEntradaItVLRIPI.AsFloat;
          DM1.tNotaEntradaVLRTOTAL.AsFloat := DM1.tNotaEntradaVLRTOTAL.AsFloat - Dm1.tNotaEntradaItVLRTOTAL.AsFloat;
          DM1.tNotaEntradaVLRTOTALITENS.AsFloat := DM1.tNotaEntradaVLRTOTALITENS.AsFloat - Dm1.tNotaEntradaItVLRTOTAL.AsFloat;
          //******************************
        end
      else
        begin
          Dm1.tNotaEntradaIt.Last;
          vItem := DM1.tNotaEntradaItITEM.AsInteger + 1;
          Dm1.tNotaEntradaIt.Insert;
        end;
      DM1.tNotaEntradaItITEM.AsInteger       := vItem;
      Dm1.tNotaEntradaItCODNATOPER.AsInteger := JvDBLookupCombo6.KeyValue;
      DM1.tNotaEntradaItCODPRODUTO.AsInteger := JvDBLookupCombo3.KeyValue;
      DM1.tNotaEntradaItNOME.AsString        := JvDBLookupCombo3.Text;
      ///////////// Boca ////////////////////
      Dm1.tNotaEntradaItTAMANHO.AsString     := JvDBLookupCombo2.Text;
      DM1.tNotaEntradaItUNIDADE.AsString     := Edit1.Text;
      if JvDBLookupCombo1.Text <> '' then
        Dm1.tNotaEntradaItCODSITTRIB.AsInteger := JvDBLookupCombo1.KeyValue;
      if CheckBox1.Checked then
        Dm1.tNotaEntradaItBAIXAESTOQUE.AsString := 'S'
      else
        Dm1.tNotaEntradaItBAIXAESTOQUE.AsString := 'N';
      DM1.tNotaEntradaItQTD.AsFloat         := JvxCurrencyEdit2.Value;
      DM1.tNotaEntradaItQTD2.AsFloat        := JvxCurrencyEdit3.Value;
      DM1.tNotaEntradaItVLRUNITARIO.AsFloat := JvxCurrencyEdit4.Value;
      DM1.tNotaEntradaItALIQICMS.AsFloat    := JvxCurrencyEdit5.Value;
      DM1.tNotaEntradaItALIQIPI.AsFloat     := JvxCurrencyEdit6.Value;
      DM1.tNotaEntradaItPERCDESC.AsFloat    := JvxCurrencyEdit7.Value;
      DM1.tNotaEntradaItVLRDESC.AsFloat     := JvxCurrencyEdit8.Value;
      DM1.tNotaEntradaItVLRTOTAL.AsFloat    := JvxCurrencyEdit9.Value;

      Calcula_Impostos;

      Dm1.tNotaEntradaItBASEIPI.AsFloat  := vBaseIpi;
      Dm1.tNotaEntradaItVLRIPI.AsFloat   := vVlrIpi;
      Dm1.tNotaEntradaItBASEICMS.AsFloat := vBaseICMS;
      Dm1.tNotaEntradaItVLRICMS.AsFloat  := vVlrICMS;

      //*** Atualiza os valores na tabela NotaEntrada
      DM1.tNotaEntradaBASEICMS.AsFloat := DM1.tNotaEntradaBASEICMS.AsFloat + vBaseICMS;
      DM1.tNotaEntradaVLRICMS.AsFloat  := DM1.tNotaEntradaVLRICMS.AsFloat + vVlrICMS;
      DM1.tNotaEntradaBASEIPI.AsFloat  := DM1.tNotaEntradaBASEIPI.AsFloat + vBaseIpi;
      DM1.tNotaEntradaVLRIPI.AsFloat   := DM1.tNotaEntradaVLRIPI.AsFloat + vVlrIPI;
      DM1.tNotaEntradaVLRTOTAL.AsFloat := DM1.tNotaEntradaVLRTOTAL.AsFloat + JvxCurrencyEdit9.Value;
      DM1.tNotaEntradaVLRTOTALITENS.AsFloat := DM1.tNotaEntradaVLRTOTALITENS.AsFloat + JvxCurrencyEdit9.Value;
      //*******

      DM1.tNotaEntradaIt.Post;

      //*** Atualiza o preço do produto, se este tiver a opção para atualizar automático
      //*** O sistema só vai atualizar se a data da nota for maior que a do último reajuste e
      //*** se o valor do for maior do que tem hoje
      DM1.tProduto.Close;
      DM1.Produto.Params[0].AsInteger := DM1.tNotaEntradaItCODPRODUTO.AsInteger;
      DM1.tProduto.Open;
      if (DM1.tProdutoATUALIZAPRECO.AsString = 'S') and
         (DM1.tProdutoPOSSUITAMANHO.AsString = 'N') and
         (DM1.tNotaEntradaDTENTRADA.AsDateTime > DM1.tProdutoDTREAJUSTE.AsDateTime) and
         (DM1.tNotaEntradaItVLRUNITARIO.AsFloat > DM1.tProdutoPRECOCUSTO.AsFloat) then
        begin
          DM1.tProduto.Edit;
          DM1.tProdutoPRECOCUSTO.AsFloat    := DM1.tNotaEntradaItVLRUNITARIO.AsFloat;
          DM1.tProdutoDTREAJUSTE.AsDateTime := DM1.tNotaEntradaDTENTRADA.AsDateTime;
          DM1.tProduto.Post;
        end
      else
      if (DM1.tProdutoPOSSUITAMANHO.AsString = 'S') and (DM1.tProdutoATUALIZAPRECO.AsString = 'S') then
        begin
          DM1.tProdutoTam.Close;
          DM1.ProdutoTam.Params[0].AsInteger := DM1.tNotaEntradaItCODPRODUTO.AsInteger;
          DM1.tProdutoTam.Open;
          if (DM1.tProdutoTam.Locate('TAMANHO',DM1.tNotaEntradaItTAMANHO.AsString,([LocaseInsensitive]))) and
             (DM1.tNotaEntradaDTENTRADA.AsDateTime > DM1.tProdutoDTREAJUSTE.AsDateTime) and
             (DM1.tNotaEntradaItVLRUNITARIO.AsFloat > DM1.tProdutoTamPRECOCUSTO.AsFloat) then
            begin
              DM1.tProdutoTam.Edit;
              DM1.tProdutoTamPRECOCUSTO.AsFloat := DM1.tNotaEntradaItVLRUNITARIO.AsFloat;
              DM1.tProdutoTam.Post;
            end;
        end;
      //******** Fim do bloco para atualização dos preços
      Label2.Font.Color         := clWindowText;
      Label2.Font.Style         := [];
      Limpa;
      Edit2.SetFocus;
      if (fNotaEntradaIt.Tag = 12) then
        Close;
    end;
end;

procedure TfNotaEntradaIt.Confirma_MObra;
begin
  if (JvDBLookupCombo4.Text = '') or (JvxCurrencyEdit13.Value = 0) or (JvxCurrencyEdit17.Value = 0) then
    ShowMessage('Esta faltando um destes campos <Serviço> <Qtd.> <Valor Unitário>!')
  else
    begin
      if (fNotaEntradaIt.Tag = 22) then
        begin
          vItem := JvxCurrencyEdit12.AsInteger;
          Dm1.tNotaEntradaMObra.Edit;
          //*** Se estiver no modo de alteração, tem que diminuir os totais da nota de entrada
          //*** para depois somar novamente
          DM1.tNotaEntradaVLRTOTAL.AsFloat := DM1.tNotaEntradaVLRTOTAL.AsFloat - Dm1.tNotaEntradaMObraVLRTOTAL.AsFloat;
          Dm1.tNotaEntradaVLRTOTALMOBRAS.AsFloat := Dm1.tNotaEntradaVLRTOTALMOBRAS.AsFloat - Dm1.tNotaEntradaMObraVLRTOTAL.AsFloat;
          //******************************
        end
      else
        begin
          Dm1.tNotaEntradaMObra.Last;
          vItem := DM1.tNotaEntradaMObraITEM.AsInteger + 1;
          Dm1.tNotaEntradaMObra.Insert;
        end;
      DM1.tNotaEntradaMObraITEM.AsInteger       := vItem;
      if DM1.tNotaEntradaCODNATOPERMOBRA.AsString = '' then
        begin
          DM1.tNotaEntradaCODNATOPERMOBRA.AsInteger := DM1.tNotaEntradaCODNATOPER.AsInteger;
          fNotaEntrada.JvDBLookupCombo2.KeyValue    := DM1.tNotaEntradaCODNATOPER.AsInteger;
        end;
      DM1.tNotaEntradaMObraCODNATOPER.AsInteger := Dm1.tNotaEntradaCODNATOPER.AsInteger;
      DM1.tNotaEntradaMObraCODFISCALNATOPER.AsString := fNotaEntrada.JvDBLookupCombo2.Text;
      DM1.tNotaEntradaMObraCODMOBRA.AsInteger  := JvDBLookupCombo4.KeyValue;
      DM1.tNotaEntradaMObraNOMEMOBRA.AsString  := JvDBLookupCombo4.Text;
      DM1.tNotaEntradaMObraQTD.AsFloat         := JvxCurrencyEdit13.Value;
      DM1.tNotaEntradaMObraVLRUNITARIO.AsFloat := JvxCurrencyEdit17.Value;
      DM1.tNotaEntradaMObraVLRTOTAL.AsFloat    := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit13.Value * JvxCurrencyEdit17.Value));
      DM1.tNotaEntradaMObraALIQISSQN.AsFloat   := JvxCurrencyEdit14.Value;
      DM1.tNotaEntradaMObraALIQINSS.AsFloat    := JvxCurrencyEdit15.Value;
      DM1.tNotaEntradaMObraALIQIRF.AsFloat     := JvxCurrencyEdit16.Value;
      DM1.tNotaEntradaMObraVLRISSQN.AsFloat    := StrToFloat(FormatFloat('0.00',DM1.tNotaEntradaMObraVLRTOTAL.AsFloat * JvxCurrencyEdit14.Value));

      //*** Atualiza os valores na tabela NotaEntrada
      DM1.tNotaEntradaVLRTOTAL.AsFloat       := DM1.tNotaEntradaVLRTOTAL.AsFloat + DM1.tNotaEntradaMObraVLRTOTAL.AsFloat;
      DM1.tNotaEntradaVLRTOTALMOBRAS.AsFloat := DM1.tNotaEntradaVLRTOTALMOBRAS.AsFloat +  + DM1.tNotaEntradaMObraVLRTOTAL.AsFloat;
      //*******

      DM1.tNotaEntradaMObra.Post;
      Limpa;
      JvDBLookupCombo4.SetFocus;
      if (fNotaEntradaIt.Tag = 22) then
        Close;
    end;
end;

procedure TfNotaEntradaIt.Confirma_Duplicata;
begin
  if (JvDateEdit1.Text = '  /  /    ') or (JvxCurrencyEdit11.Value = 0) then
    ShowMessage('Esta faltando um destes campos <Data Vencimento> <Valor Vencimento>!')
  else
    begin
      if (fNotaEntradaIt.Tag = 32) then
        begin
          vItem := JvxCurrencyEdit10.AsInteger;
          Dm1.tNotaEntradaParc.Edit;
        end
      else
        begin
          Dm1.tNotaEntradaParc.Last;
          vItem := DM1.tNotaEntradaParcITEM.AsInteger + 1;
          Dm1.tNotaEntradaParc.Insert;
        end;
      DM1.tNotaEntradaParcITEM.AsInteger          := vItem;
      DM1.tNotaEntradaParcDTVENCIMENTO.AsDateTime := JvDateEdit1.Date;
      DM1.tNotaEntradaParcVLRVENCIMENTO.AsFloat   := JvxCurrencyEdit11.Value;
      if DM1.tNotaEntradaNRODUPLICATA.AsInteger = 0 then
        DM1.tNotaEntradaNRODUPLICATA.AsInteger := DM1.tNotaEntradaNUMNOTA.AsInteger;
      DM1.tNotaEntradaParcNUMDUPLICATA.AsInteger := DM1.tNotaEntradaNRODUPLICATA.AsInteger;
      if JvDBLookupCombo5.Text <> '' then
        begin
          DM1.tNotaEntradaParcCODBANCO.AsInteger := JvDBLookupCombo5.KeyValue;
          DM1.tNotaEntradaParcNOMEBANCO.AsString := JvDBLookupCombo5.Text;
        end;

      DM1.tNotaEntradaParc.Post;
      Limpa;
      JvDateEdit1.SetFocus;
      if (fNotaEntradaIt.Tag = 32) then
        Close;
    end;
end;


procedure TfNotaEntradaIt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qProduto.Close;
  qMaoObra.Close;
  DmCons.qBanco.Close;
  Action := Cafree;
end;

procedure TfNotaEntradaIt.BitBtn5Click(Sender: TObject);
begin
  if (fNotaEntradaIt.Tag = 11) or (fNotaEntradaIt.Tag = 12) then
    Confirma_Produto
  else
  if (fNotaEntradaIt.Tag = 21) or (fNotaEntradaIt.Tag = 22) then
    Confirma_MObra
  else
  if (fNotaEntradaIt.Tag = 31) or (fNotaEntradaIt.Tag = 32) then
    Confirma_Duplicata;
end;

procedure TfNotaEntradaIt.JvDBLookupCombo3Exit(Sender: TObject);
begin
  if JvDBLookupCombo3.Text <> '' then
    begin
      //*** Abre o sql dos tamanhos
      qProduto.Locate('ID',JvDBLookupCombo3.KeyValue,([LocaseInsensitive]));
      DmCons.qProdutoTam.Close;
      DmCons.ProdutoTam.ParamByName('Codigo').AsInteger := JvDBLookupCombo3.KeyValue;
      DmCons.qProdutoTam.Open;
      if DmCons.qProdutoTam.RecordCount > 0 then
        begin
          Label2.Font.Color         := clRed;
          Label2.Font.Style         := [fsBold];
          Edit2.Clear;
        end
      else
        begin
          Label2.Font.Color      := clWindowText;
          Label2.Font.Style      := [];
          Edit2.Text             := qProdutoCODBARRA.AsString;
          Edit1.SetFocus;
        end;

      //*** Move os campos da tabela produtos para os componentes
      if (fNotaEntradaIt.Tag = 12) or (JvDBLookupCombo3.KeyValue <> JvDBLookupCombo3.Tag) then
        begin
          Edit1.Text             := qProdutoUNIDADE.AsString;
          if qProdutoCODSITTRIB.AsInteger > 0 then
            JvDBLookupCombo1.KeyValue := qProdutoCODSITTRIB.AsInteger
          else
            JvDBLookupCombo1.ClearValue;
          if qProdutoPOSSUITAMANHO.AsString = 'N' then
            JvxCurrencyEdit4.Value := qProdutoPRECOVENDA.AsFloat;
          JvxCurrencyEdit5.Value := qProdutoALIQICMS.AsFloat;
          JvxCurrencyEdit6.Value := qProdutoALIQIPI.AsFloat;
        end;
    end;
end;

procedure TfNotaEntradaIt.FormShow(Sender: TObject);
begin
  TSProdutos.TabVisible   := False;
  TSMObras.TabVisible     := False;
  TSDuplicatas.TabVisible := False;;
  //*** Quando for digitação dos produtos
  if (fNotaEntradaIt.Tag = 11) or (fNotaEntradaIt.Tag = 12) or (fNotaEntradaIt.Tag = 13) then
    begin
      TSProdutos.TabVisible   := True;
      qProduto.Close;
      qProduto.Open;
      BitBtn5.Caption := 'Confirma Produto';
      JvDBLookupCombo6.SetFocus;
      if (fNotaEntradaIt.Tag = 12) or (fNotaEntradaIt.Tag = 13) then
        begin
          JvxCurrencyEdit1.AsInteger := Dm1.tNotaEntradaItITEM.AsInteger;
          JvDBLookupCombo6.KeyValue  := DM1.tNotaEntradaItCODNATOPER.AsInteger;
          JvDBLookupCombo3.KeyValue  := Dm1.tNotaEntradaItCODPRODUTO.AsInteger;
          Edit2.Text                 := qProdutoCODBARRA.AsString;
          if Dm1.tNotaEntradaItTAMANHO.AsString <> '' then
            begin
              DmCons.qProdutoTam.Close;
              DmCons.ProdutoTam.ParamByName('Codigo').AsInteger := JvDBLookupCombo3.KeyValue;
              DmCons.qProdutoTam.Open;
              JvDBLookupCombo2.KeyValue := Dm1.tNotaEntradaItTAMANHO.AsString;
              Edit2.Text                := Dmcons.qProdutoTamCODBARRA.AsString;
            end;
          Edit1.Text := Dm1.tNotaEntradaItUNIDADE.AsString;
          if Dm1.tNotaEntradaItCODSITTRIB.AsInteger > 0 then
            JvDBLookupCombo1.KeyValue := Dm1.tNotaEntradaItCODSITTRIB.AsInteger;
          if Dm1.tNotaEntradaItBAIXAESTOQUE.AsString = 'S' then
            CheckBox1.Checked := True
          else
            CheckBox1.Checked := False;
          JvxCurrencyEdit2.Value := Dm1.tNotaEntradaItQTD.AsFloat;
          JvxCurrencyEdit3.Value := Dm1.tNotaEntradaItQTD2.AsFloat;
          JvxCurrencyEdit4.Value := Dm1.tNotaEntradaItVLRUNITARIO.AsFloat;
          JvxCurrencyEdit5.Value := Dm1.tNotaEntradaItALIQICMS.AsFloat;
          JvxCurrencyEdit6.Value := Dm1.tNotaEntradaItALIQIPI.AsFloat;
          JvxCurrencyEdit7.Value := Dm1.tNotaEntradaItPERCDESC.AsFloat;
          JvxCurrencyEdit8.Value := Dm1.tNotaEntradaItVLRDESC.AsFloat;
          JvxCurrencyEdit9.Value := Dm1.tNotaEntradaItVLRTOTAL.AsFloat;
          vVlrIpi                := Dm1.tNotaEntradaItVLRIPI.AsFloat;
          vBaseIpi               := Dm1.tNotaEntradaItBASEIPI.AsFloat;
          vVlrICMS               := Dm1.tNotaEntradaItVLRICMS.AsFloat;
          vBaseICMS              := Dm1.tNotaEntradaItBASEICMS.AsFloat;
        end
      else
        JvDBLookupCombo6.KeyValue := DM1.tNotaEntradaCODNATOPER.AsInteger;
    end
  else
  //*** Quando for digitação dos serviços
  if (fNotaEntradaIt.Tag = 21) or (fNotaEntradaIt.Tag = 22) or (fNotaEntradaIt.Tag = 23) then
    begin
      TSMObras.TabVisible     := True;
      qMaoObra.Close;
      qMaoObra.Open;
      BitBtn5.Caption := 'Confirma Serviço';
      JvDBLookupCombo4.SetFocus;
      if (fNotaEntradaIt.Tag = 22) or (fNotaEntradaIt.Tag = 23) then
        begin
          JvDBLookupCombo4.KeyValue   := DM1.tNotaEntradaMObraCODMOBRA.AsInteger;
          JvxCurrencyEdit12.AsInteger := DM1.tNotaEntradaMObraITEM.AsInteger;
          JvxCurrencyEdit13.Value     := DM1.tNotaEntradaMObraQTD.AsFloat;
          JvxCurrencyEdit17.Value     := DM1.tNotaEntradaMObraVLRUNITARIO.AsFloat;
          JvxCurrencyEdit14.Value     := DM1.tNotaEntradaMObraALIQISSQN.AsFloat;
          JvxCurrencyEdit15.Value     := DM1.tNotaEntradaMObraALIQINSS.AsFloat;
          JvxCurrencyEdit16.Value     := DM1.tNotaEntradaMObraALIQIRF.AsFloat;
        end;
    end
  else
  //*** Quando for digitação das duplicatas
  if (fNotaEntradaIt.Tag = 31) or (fNotaEntradaIt.Tag = 32) or (fNotaEntradaIt.Tag = 33) then
    begin
      TSDuplicatas.TabVisible := True;
      DmCons.qBanco.Open;
      BitBtn5.Caption := 'Confirma Duplicata';
      JvDateEdit1.SetFocus;
      if (fNotaEntradaIt.Tag = 32) or (fNotaEntradaIt.Tag = 33) then
        begin
          JvxCurrencyEdit10.AsInteger := DM1.tNotaEntradaParcITEM.AsInteger;
          JvDateEdit1.Date := DM1.tNotaEntradaParcDTVENCIMENTO.AsDateTime;
          JvxCurrencyEdit11.Value := Dm1.tNotaEntradaParcVLRVENCIMENTO.AsFloat;
          if Dm1.tNotaEntradaParcCODBANCO.AsInteger > 0 then
            JvDBLookupCombo5.KeyValue := DM1.tNotaEntradaParcCODBANCO.AsInteger;
        end;
    end;

  if (fNotaEntradaIt.Tag = 13) or (fNotaEntradaIt.Tag = 23) or (fNotaEntradaIt.Tag = 33) then
    begin
      PageControl1.Enabled := False;
      BitBtn5.Enabled      := False
    end
  else
    begin
      PageControl1.Enabled := True;
      BitBtn5.Enabled      := True;
    end;
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit2Exit(Sender: TObject);
begin
  Calcula_Valores;
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit7Exit(Sender: TObject);
begin
  if JvxCurrencyEdit7.Value > 0 then
    Calcula_Valores;
  if JvxCurrencyEdit8.Value > 0 then
    JvxCurrencyEdit8.SetFocus;
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit8Enter(Sender: TObject);
begin
  vVlrDesconto := JvxCurrencyEdit8.Value;
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit8Exit(Sender: TObject);
begin
  JvxCurrencyEdit9.Value := JvxCurrencyEdit9.Value + vVlrDesconto - JvxCurrencyEdit8.Value;
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit4Exit(Sender: TObject);
begin
  Calcula_Valores;
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit6Exit(Sender: TObject);
begin
  Calcula_Valores;
end;

procedure TfNotaEntradaIt.Label1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
  qProduto.Close;
  qProduto.Open;
  DmCons.qSitTributaria.Open;
end;

procedure TfNotaEntradaIt.Label13Click(Sender: TObject);
begin
  fSitTributaria := TfSitTributaria.Create(Self);
  fSitTributaria.ShowModal;
  DmCons.qSitTributaria.Close;
  DmCons.qSitTributaria.Open;
end;

procedure TfNotaEntradaIt.JvDBLookupCombo4Exit(Sender: TObject);
begin
  JvxCurrencyEdit17.Value := DmCons.qMaoObraPRECOVENDA.AsFloat;
end;

procedure TfNotaEntradaIt.JvDBLookupCombo3Enter(Sender: TObject);
begin
  JvDBLookupCombo3.Tag := 0;
  if JvDBLookupCombo3.Text <> '' then
    JvDBLookupCombo3.Tag := JvDBLookupCombo3.KeyValue;
end;

procedure TfNotaEntradaIt.JvDBLookupCombo2Exit(Sender: TObject);
begin
  if (JvDBLookupCombo2.Text <> '') and (qProdutoPOSSUITAMANHO.AsString = 'S') and
     ((fNotaEntradaIt.Tag <> 12) or (JvDBLookupCombo3.KeyValue <> JvDBLookupCombo3.Tag)) then
     begin
       JvxCurrencyEdit4.Value := DmCons.qProdutoTamPRECOCUSTO.AsFloat;
       Edit2.Text := DmCons.qProdutoTamCODBARRA.AsString;
     end
end;

procedure TfNotaEntradaIt.Label18Click(Sender: TObject);
begin
  qMaoObra.Close;
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
  qMaoObra.Open;
end;

procedure TfNotaEntradaIt.Label25Click(Sender: TObject);
begin
  DmCons.qBanco.Close;
  fBanco := TfBanco.Create(Self);
  fBanco.ShowModal;
  DmCons.qBanco.Open;
end;

procedure TfNotaEntradaIt.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and (Edit2.Text <> '') then
    begin
      qProdutoTam.Close;
      ProdutoTam.Params[0].AsString := Edit2.Text;
      qProdutoTam.Open;
      if not qProdutoTam.IsEmpty then
        begin
          JvxCurrencyEdit4.Value      := qProdutoTamPRECOVENDA.AsFloat;
          qProduto.Open;
          qProduto.Locate('ID',qProdutoTamCODPRODUTO.AsInteger,([LocaseInsensitive]));
          JvDBLookupCombo3.KeyValue := qProdutoID.AsInteger;
          Edit2.Text                := qProdutoTamCODBARRA.AsString;

          DmCons.qProdutoTam.Close;
          DmCons.ProdutoTam.ParamByName('Codigo').AsInteger := qProdutoTamCODPRODUTO.AsInteger;
          DmCons.qProdutoTam.Open;
          JvDBLookupCombo2.KeyValue := qProdutoTamTAMANHO.AsString;
          Edit1.Text                := qProdutoUNIDADE.AsString;
          Label2.Font.Color         := clRed;
          Label2.Font.Style         := [fsBold];
          JvDBLookupCombo3.SetFocus;
        end
      else
        begin
          qProduto.Open;
          qProduto.Filtered := False;
          qProduto.Filter   := 'CODBARRA = '''+Edit2.Text+'''';
          qProduto.Filtered := True;
          if not qProduto.IsEmpty then
            begin
               JvxCurrencyEdit4.Value    := qProdutoPRECOVENDA.AsFloat;
               JvDBLookupCombo3.KeyValue := qProdutoID.AsInteger;
               Edit1.Text                := qProdutoUNIDADE.AsString;
               Edit2.Text                := qProdutoCODBARRA.AsString;
               Label2.Font.Color         := clWindowText;
               Label2.Font.Style         := [];
            end
          else
            ShowMessage('Produto não cadastrado');
        end;
    end;
    qProduto.Filtered := False;
end;

procedure TfNotaEntradaIt.Label26Click(Sender: TObject);
begin
  DmCons.qNatOperacao.Close;
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
  DmCons.qNatOperacao.Open;
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit13Exit(Sender: TObject);
begin
  JvxCurrencyEdit18.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit13.Value * JvxCurrencyEdit17.Value));
end;

procedure TfNotaEntradaIt.JvxCurrencyEdit17Exit(Sender: TObject);
begin
  JvxCurrencyEdit18.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit13.Value * JvxCurrencyEdit17.Value));
end;

end.

