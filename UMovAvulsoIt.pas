unit UMovAvulsoIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEdit, JvTypedEdit, JvLookup, Buttons, Mask,
  JvToolEdit, JvCurrEdit, ExtCtrls, ComCtrls, DBCtrls, JvDBCtrl, FMTBcd,
  DB, DBClient, Provider, SqlExpr, UDm1, rsDBUtils;

type
  TfMovAvulsoIt = class(TForm)
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    TSProdutos: TTabSheet;
    Label1: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    Edit1: TEdit;
    Label5: TLabel;
    JvxCurrencyEdit9: TJvxCurrencyEdit;
    TSDuplicatas: TTabSheet;
    Label14: TLabel;
    JvxCurrencyEdit10: TJvxCurrencyEdit;
    Label15: TLabel;
    Label16: TLabel;
    JvxCurrencyEdit11: TJvxCurrencyEdit;
    JvDateEdit1: TJvDateEdit;
    Produto: TSQLQuery;
    ProdutoP: TDataSetProvider;
    qProduto: TClientDataSet;
    qsProduto: TDataSource;
    ProdutoTamP: TDataSetProvider;
    ProdutoTam: TSQLQuery;
    qProdutoTam: TClientDataSet;
    dsProdutoTam: TDataSource;
    qProdutoTamCODPRODUTO: TIntegerField;
    qProdutoTamTAMANHO: TStringField;
    qProdutoTamPRECOCUSTO: TFloatField;
    qProdutoTamPRECOMINIMO: TFloatField;
    qProdutoTamPRECOVENDA: TFloatField;
    qProdutoTamCODBARRA: TStringField;
    qProdutoTamESTMINIMO: TFloatField;
    qProdutoTamDTREAJUST: TDateField;
    Edit2: TEdit;
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
    qProdutoDTREAJUSTE: TDateField;
    qProdutoCODBARRA: TStringField;
    qProdutoESTMINIMO: TFloatField;
    qProdutoOBS: TMemoField;
    qProdutoATUALIZAPRECO: TStringField;
    qProdutoTIPO: TStringField;
    qProdutoLOTEECONOMICO: TIntegerField;
    qProdutoCODSITTRIBCF: TIntegerField;
    qProdutoREFERENCIA: TStringField;
    qProdutoVLRMO: TFMTBCDField;
    qProdutoPRECOVENDA: TFMTBCDField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvxCurrencyEdit4Exit(Sender: TObject);
  private
    { Private declarations }

    vItem : Integer;
    vBaseIpi, vVlrIpi, vBaseICMS, vVlrICMS : Real;
    vGeraDupl, vCodClasFiscal : String;
    vCodSitTrib : Integer;
    Fdm1: Tdm1;
    procedure Limpa;
    procedure Confirma_Produto;
    procedure Confirma_Duplicata;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fMovAvulsoIt: TfMovAvulsoIt;

implementation

uses UDmCons, Math, UProduto, USitTributaria,
  UTipoCobranca, UMaoObra, UNatOperacao, UProdutoIt;

{$R *.dfm}

procedure TfMovAvulsoIt.Limpa;
begin
  //*** Variáveis do Produto
  JvxCurrencyEdit1.Clear;
  JvxCurrencyEdit2.Clear;
  JvxCurrencyEdit4.Clear;     
  JvxCurrencyEdit9.Clear;
  Edit1.Clear;
  Edit2.Clear;

  //*** Variáveis da Mão de Obra

  //*** Variáveis da Duplicata
  JvxCurrencyEdit10.Clear;
  JvxCurrencyEdit11.Clear;
  JvDateEdit1.Clear;
end;

procedure TfMovAvulsoIt.Confirma_Produto;
begin
  if (Edit1.Text = '') or (JvxCurrencyEdit2.Value = 0) or
     (JvxCurrencyEdit4.Value = 0) then
    ShowMessage('Esta faltando um destes campos  <Produto> <Quantidade> <Valor Unitário>')
  else
    begin
      if (fMovAvulsoIt.Tag = 12) then
        begin
          vItem := JvxCurrencyEdit1.AsInteger;
          Fdm1.tMovAvulsoItens.Edit;
          Fdm1.tMovAvulsoVLRTOTAL.AsFloat  := Fdm1.tMovAvulsoVLRTOTAL.AsFloat - Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat;
          Fdm1.tMovAvulsoVLRTOTALITENS.AsFloat := Fdm1.tMovAvulsoVLRTOTALITENS.AsFloat - Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat;
        end
      else
        begin
          Fdm1.tMovAvulsoItens.Last;
          vItem := Fdm1.tMovAvulsoItensITENS.AsInteger + 1;
          Fdm1.tMovAvulsoItens.Insert;
        end;
      Fdm1.tMovAvulsoItensDESCRICAO.Value     := Edit2.Text;
      Fdm1.tMovAvulsoItensITENS.AsInteger     := vItem;
      Fdm1.tMovAvulsoItensQTD.AsFloat         := JvxCurrencyEdit2.Value;
      Fdm1.tMovAvulsoItensVLRUNIT.AsFloat     := JvxCurrencyEdit4.Value;
      Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat    := JvxCurrencyEdit9.Value;
      Fdm1.tMovAvulsoVLRTOTALITENS.AsFloat    := Fdm1.tMovAvulsoVLRTOTALITENS.AsFloat + Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat;
      Fdm1.tMovAvulsoVLRTOTAL.AsFloat         := Fdm1.tMovAvulsoVLRTOTAL.AsFloat + Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat;
      Fdm1.tMovAvulsoItens.Post;
      Limpa;
      Edit2.SetFocus;
      if (fMovAvulsoIt.Tag = 12) then
        Close;
    end;
end;


procedure TfMovAvulsoIt.Confirma_Duplicata;
begin
  if (JvDateEdit1.Date < 1) or (JvxCurrencyEdit11.Value = 0) then
    ShowMessage('Esta faltando um destes campos <Data Vencimento> ou <Valor Vencimento>!')
  else
    begin
      if (fMovAvulsoIt.Tag = 22) then
        begin
          vItem := JvxCurrencyEdit10.AsInteger;
          Fdm1.tMovAvulsoParc.Edit;
        end
      else
        begin
          Fdm1.tMovAvulsoParc.Last;
          vItem := Fdm1.tMovAvulsoParcPARCELA.AsInteger + 1;
          Fdm1.tMovAvulsoParc.Insert;
        end;
      Fdm1.tMovAvulsoParcDTVENC.AsDateTime := JvDateEdit1.Date;
      Fdm1.tMovAvulsoParcVALOR.AsFloat   := JvxCurrencyEdit11.Value;
      Fdm1.tMovAvulsoParc.Post;

      Limpa;
      JvDateEdit1.SetFocus;
      if (fMovAvulsoIt.Tag = 22) then
        Close;
    end;
end;

procedure TfMovAvulsoIt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfMovAvulsoIt.BitBtn5Click(Sender: TObject);
begin
  if (fMovAvulsoIt.Tag = 11) or (fMovAvulsoIt.Tag = 12) then
    Confirma_Produto
  else
  if (fMovAvulsoIt.Tag = 31) or (fMovAvulsoIt.Tag = 22) then
    Confirma_Duplicata;

end;

procedure TfMovAvulsoIt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  TSProdutos.TabVisible   := False;
  TSDuplicatas.TabVisible := False;
  //*** Quando for digitação dos produtos
  if (fMovAvulsoIt.Tag = 11) or (fMovAvulsoIt.Tag = 12) or (fMovAvulsoIt.Tag = 13) then
    begin
      TSProdutos.TabVisible   := True;
      qProduto.Open;
      BitBtn5.Caption := 'Confirma Produto';
      if (fMovAvulsoIt.Tag = 12) or (fMovAvulsoIt.Tag = 13) then
        begin
          JvxCurrencyEdit1.AsInteger := Fdm1.tMovAvulsoItensITENS.AsInteger;
          JvxCurrencyEdit2.Value := Fdm1.tMovAvulsoItensQTD.AsFloat;
          JvxCurrencyEdit4.Value := Fdm1.tMovAvulsoItensVLRUNIT.AsFloat;
          JvxCurrencyEdit9.Value := Fdm1.tMovAvulsoItensVLRTOTAL.AsFloat;
        end
      else
        Edit2.SetFocus
    end
  else
  //*** Quando for digitação das duplicatas
  if (fMovAvulsoIt.Tag = 21) or (fMovAvulsoIt.Tag = 22) or (fMovAvulsoIt.Tag = 23) then
    begin
      TSDuplicatas.TabVisible := True;
      BitBtn5.Caption := 'Confirma Duplicata';
      if (fMovAvulsoIt.Tag = 22) or (fMovAvulsoIt.Tag = 23) then
        begin
          JvxCurrencyEdit10.AsInteger := Fdm1.tMovAvulsoParcPARCELA.AsInteger;
          JvDateEdit1.Date := Fdm1.tMovAvulsoParcDTVENC.AsDateTime;
          JvxCurrencyEdit11.Value := Fdm1.tMovAvulsoParcVALOR.AsFloat;
        end;
    end;

  if (fMovAvulsoIt.Tag = 13) or (fMovAvulsoIt.Tag = 23) or (fMovAvulsoIt.Tag = 33)then
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

procedure TfMovAvulsoIt.Edit2KeyDown(Sender: TObject; var Key: Word;
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

          DmCons.qProdutoTam.Close;
          DmCons.ProdutoTam.ParamByName('Codigo').AsInteger := qProdutoTamCODPRODUTO.AsInteger;
          DmCons.qProdutoTam.Open;
          Edit1.Text                := qProdutoUNIDADE.AsString;
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
               Edit1.Text                := qProdutoUNIDADE.AsString;
              end
          else
            ShowMessage('Produto não cadastrado');
        end;
    end;
    qProduto.Filtered := False;
end;

procedure TfMovAvulsoIt.JvxCurrencyEdit4Exit(Sender: TObject);
begin
  if JvxCurrencyEdit4.Value > 0 then
    JvxCurrencyEdit9.Value := JvxCurrencyEdit4.Value * JvxCurrencyEdit2.Value; 
end;

end.

