unit UDctoEstoqueIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEdit, JvTypedEdit, JvLookup, Buttons, Mask,
  JvToolEdit, JvCurrEdit, ExtCtrls, ComCtrls, DBCtrls, JvDBCtrl, FMTBcd,
  DB, DBClient, Provider, SqlExpr;

type
  TfDctoEstoqueIt = class(TForm)
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    TSProdutos: TTabSheet;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    JvDBLookupCombo2: TJvDBLookupCombo;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    Edit1: TEdit;
    Label5: TLabel;
    JvxCurrencyEdit9: TJvxCurrencyEdit;
    Label24: TLabel;
    Edit2: TEdit;
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
    qProdutoTIPO: TStringField;
    qProdutoCODSITTRIBCF: TIntegerField;
    qProdutoFOTO1: TStringField;
    qProdutoFOTO2: TStringField;
    qProdutoFOTO3: TStringField;
    qProdutoFOTO4: TStringField;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure JvDBLookupCombo3Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
    procedure JvDBLookupCombo3Enter(Sender: TObject);
    procedure JvDBLookupCombo2Exit(Sender: TObject);
    procedure Edit2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvxCurrencyEdit4Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Limpa;
    procedure Confirma_Produto;
  public
    { Public declarations }
  end;

var
  fDctoEstoqueIt: TfDctoEstoqueIt;

implementation

uses UDm1, UDmCons, Math, UProduto;


{$R *.dfm}

procedure TfDctoEstoqueIt.Limpa;
begin
  //*** Variáveis do Produto
  JvDBLookupCombo2.ClearValue;
  JvDBLookupCombo3.ClearValue;
  JvxCurrencyEdit1.Clear;
  JvxCurrencyEdit2.Clear;
  JvxCurrencyEdit4.Clear;
  JvxCurrencyEdit9.Clear;
  Edit1.Clear;
  Edit2.Clear;
end;

procedure TfDctoEstoqueIt.Confirma_Produto;
var
  vItem : Integer;
begin
  if (JvDBLookupCombo3.Text = '') or ((DmCons.qProdutoTam.RecordCount > 0) and
     (JvDBLookupCombo2.Text = '')) or (Edit1.Text = '') or (JvxCurrencyEdit2.Value = 0) or
     (JvxCurrencyEdit4.Value = 0) then
    ShowMessage('Esta faltando um destes campos <Produto> <Tamanho> <Unidade> <Quantidade> <Valor Unitário>')
  else
    begin
      if (fDctoEstoqueIt.Tag = 2) then
        begin
          vItem := JvxCurrencyEdit1.AsInteger;
          Dm1.tDctoEstoqueIt.Edit;
          DM1.tDctoEstoqueVLRTOTAL.AsFloat  := DM1.tDctoEstoqueVLRTOTAL.AsFloat - DM1.tDctoEstoqueItPRECOTOTAL.AsFloat;
        end
      else
        begin
          Dm1.tDctoEstoqueIt.Last;
          vItem := DM1.tDctoEstoqueItITEM.AsInteger + 1;
          Dm1.tDctoEstoqueIt.Insert;
        end;
      Dm1.tDctoEstoqueItNUMDOCTO.AsInteger   := Dm1.tDctoEstoqueNUMDOCTO.AsInteger; 
      DM1.tDctoEstoqueItITEM.AsInteger       := vItem;
      DM1.tDctoEstoqueItCODPRODUTO.AsInteger := JvDBLookupCombo3.KeyValue;
      DM1.tDctoEstoqueItNOMEPRODUTO.AsString := JvDBLookupCombo3.Text;
      if JvDBLookupCombo2.Text <> '' then
        Dm1.tDctoEstoqueItTAMANHO.AsString   := JvDBLookupCombo2.Text;
      DM1.tDctoEstoqueItUM.AsString          := Edit1.Text;
      DM1.tDctoEstoqueItQTD.AsFloat          := JvxCurrencyEdit2.Value;
      DM1.tDctoEstoqueItPRECO.AsFloat        := JvxCurrencyEdit4.Value;
      DM1.tDctoEstoqueItPRECOTOTAL.AsFloat   := JvxCurrencyEdit9.Value;

      DM1.tDctoEstoqueVLRTOTAL.AsFloat       := DM1.tDctoEstoqueVLRTOTAL.AsFloat + JvxCurrencyEdit9.Value;
      DM1.tDctoEstoqueIt.Post;
      qProdutoTam.Close;
      Limpa;
      Edit2.SetFocus;
      if (fDctoEstoqueIt.Tag = 2) then
        Close;
    end;
end;

procedure TfDctoEstoqueIt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qProduto.Close;
  DmCons.qProduto.Close;
  Action := Cafree;
end;

procedure TfDctoEstoqueIt.BitBtn5Click(Sender: TObject);
begin
  Confirma_Produto;
end;

procedure TfDctoEstoqueIt.JvDBLookupCombo3Exit(Sender: TObject);
begin
  if JvDBLookupCombo3.Text <> '' then
    begin
      //*** Abre o sql dos tamanhos caso não tenha digitado o codigo de barra
      if Edit2.Text = '' then
        begin
          DmCons.qProdutoTam.Close;
          DmCons.ProdutoTam.ParamByName('Codigo').AsInteger := JvDBLookupCombo3.KeyValue;
          DmCons.qProdutoTam.Open;
          Edit2.Text             := qProdutoCODBARRA.AsString;
        end;

      //*** Move os campos da tabela produtos para os componentes
      if (fDctoEstoqueIt.Tag = 2) or (JvDBLookupCombo3.KeyValue <> JvDBLookupCombo3.Tag) then
        begin
          Edit1.Text             := qProdutoUNIDADE.AsString;
          if qProdutoOPCAOPRECO.AsString = 'U' then
            JvxCurrencyEdit4.Value := qProdutoPRECOVENDA.AsFloat;
        end;
      JvxCurrencyEdit2.Value := 1;
    end;
end;

procedure TfDctoEstoqueIt.FormShow(Sender: TObject);
begin
  //*** Quando for digitação dos produtos
  if fDctoEstoqueIt.Tag = 1 then
    begin
      qProduto.Open;
      BitBtn5.Caption := 'Confirma Produto';
      Edit2.SetFocus;
      if (fDctoEstoqueIt.Tag = 2) or (fDctoEstoqueIt.Tag = 3) then
        begin
          JvxCurrencyEdit1.AsInteger := DM1.tDctoEstoqueItITEM.AsInteger;
          JvDBLookupCombo3.KeyValue  := DM1.tDctoEstoqueItCODPRODUTO.AsInteger;
          if Dm1.tDctoEstoqueItTAMANHO.AsString <> '' then
            begin
              DmCons.qProdutoTam.Close;
              DmCons.ProdutoTam.ParamByName('Codigo').AsInteger := JvDBLookupCombo3.KeyValue;
              DmCons.qProdutoTam.Open;
              JvDBLookupCombo2.KeyValue := Dm1.tDctoEstoqueItTAMANHO.AsString;
            end;
          Edit1.Text                 := DM1.tDctoEstoqueItUM.AsString;
          JvxCurrencyEdit2.Value := DM1.tDctoEstoqueItQTD.AsFloat;
          JvxCurrencyEdit4.Value := DM1.tDctoEstoqueItPRECO.AsFloat;
          JvxCurrencyEdit9.Value := DM1.tDctoEstoqueItPRECOTOTAL.AsFloat;
        end;
    end;
  if (fDctoEstoqueIt.Tag = 3) then
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

procedure TfDctoEstoqueIt.Label1Click(Sender: TObject);
begin
  fProduto := TfProduto.Create(Self);
  fProduto.ShowModal;
  qProduto.Close;
  qProduto.Open;
end;

procedure TfDctoEstoqueIt.JvDBLookupCombo3Enter(Sender: TObject);
begin
  JvDBLookupCombo3.Tag := 0;
  if JvDBLookupCombo3.Text <> '' then
    JvDBLookupCombo3.Tag := JvDBLookupCombo3.KeyValue;
end;

procedure TfDctoEstoqueIt.JvDBLookupCombo2Exit(Sender: TObject);
begin
  if (qProdutoOPCAOPRECO.AsString = 'T') and
     ((fDctoEstoqueIt.Tag = 2) or (JvDBLookupCombo3.KeyValue <> JvDBLookupCombo3.Tag)) then
     begin
       JvxCurrencyEdit4.Value := DmCons.qProdutoTamPRECOVENDA.AsFloat;
       Edit2.Text := qProdutoTamCODBARRA.AsString;
     end;
end;

procedure TfDctoEstoqueIt.Edit2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) and(Edit2.Text <> '') then
    begin
/// Verifica se o produto é por tamanho //
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
          Edit1.Text             := qProdutoUNIDADE.AsString;

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
               Edit2.Text                := qProdutoCODBARRA.AsString;
            end
          else
            ShowMessage('Produto não cadastrado');
        end;
    end;
end;

procedure TfDctoEstoqueIt.JvxCurrencyEdit4Exit(Sender: TObject);
begin
  JvxCurrencyEdit9.Value := StrToFloat(FormatFloat('0.00',JvxCurrencyEdit2.Value * JvxCurrencyEdit4.Value));
end;

end.

