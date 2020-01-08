unit UEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, JvDBCtrl, StdCtrls, JvCombobox, Mask,
  JvToolEdit, FMTBcd, DB, DBClient, Provider, SqlExpr, Buttons, JvLookup,
  JvxCtrls;

type
  TfEstoque = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    JvDBGrid1: TJvDBGrid;
    Label2: TLabel;
    JvDateEdit1: TJvDateEdit;
    BitBtn1: TBitBtn;
    EstoqueMov: TSQLQuery;
    EstoqueMovP: TDataSetProvider;
    qEstoqueMov: TClientDataSet;
    qsEstoqueMov: TDataSource;
    qEstoqueMovCODPRODUTO: TIntegerField;
    qEstoqueMovTAMANHO: TStringField;
    qEstoqueMovQTD: TFloatField;
    qEstoqueMovNOME: TStringField;
    JvDBLookupCombo1: TJvDBLookupCombo;
    BitBtn2: TBitBtn;
    ComboBox1: TComboBox;
    JvxSpeedButton1: TJvxSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure JvxSpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fEstoque: TfEstoque;

implementation

uses UDmCons, UProdutoHist, UEstoqueRel;

{$R *.dfm}

procedure TfEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qEstoqueMov.Close;
  Action := Cafree;
end;

procedure TfEstoque.FormCreate(Sender: TObject);
begin
  JvDateEdit1.Date := Now;
end;

procedure TfEstoque.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  qEstoqueMov.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfEstoque.BitBtn1Click(Sender: TObject);
begin
  if JvDateEdit1.Text <> '  /  /    ' then
    begin
      qEstoqueMov.Close;
      EstoqueMov.SQL.Clear;
      EstoqueMov.SQL.Add('select estoquemov.codproduto, estoquemov.tamanho, SUM(estoquemov.qtd2) QTD, produto.nome');
      EstoqueMov.SQL.Add('from estoquemov');
      EstoqueMov.SQL.Add('inner join produto on');
      EstoqueMov.SQL.Add('(estoquemov.codproduto = produto.id)');
      EstoqueMov.SQL.Add('where estoquemov.dtmov <= :D1 ');
      EstoqueMov.SQL.Add('group by estoquemov.codproduto, estoquemov.tamanho, produto.nome');
      EstoqueMov.SQL.Add('order by produto.nome, estoquemov.tamanho');
      EstoqueMov.Params[0].AsDate := JvDateEdit1.Date;
      qEstoqueMov.Open;
      qEstoqueMov.Filtered := False;
      case ComboBox1.ItemIndex of
        0 : ;
        1 : begin
              qEstoqueMov.Filter   := 'QTD > 0,00001';
              qEstoqueMov.Filtered := True;
            end;
      end;
    end
  else
    ShowMessage('Deve haver uma data de referência para efetuar a consulta!');
end;

procedure TfEstoque.BitBtn2Click(Sender: TObject);
begin
  fProdutoHist := TfProdutoHist.Create(Self);
  DmCons.qProduto.Open;
  if qEstoqueMov.Active then
    begin
      fProdutoHist.JvDBLookupCombo1.KeyValue := qEstoqueMovCODPRODUTO.AsInteger;
      fProdutoHist.JvDBLookupCombo1.OnExit(Sender);
      if qEstoqueMovTAMANHO.AsString <> '' then
        fProdutoHist.JvDBLookupCombo2.KeyValue := qEstoqueMovTAMANHO.AsString;
      fProdutoHist.BitBtn1Click(Sender);
    end;
  fProdutoHist.ShowModal;
end;

procedure TfEstoque.JvxSpeedButton1Click(Sender: TObject);
begin
  if not qEstoqueMov.IsEmpty then
    begin
      fEstoqueRel := TfEstoqueRel.Create(Self);
      fEstoqueRel.RLReport1.Preview;
      fEstoqueRel.RLReport1.Free;
    end
  else
    ShowMessage('Não há registros para serem impressos!');  
end;

end.
