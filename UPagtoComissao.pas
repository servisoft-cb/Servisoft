unit UPagtoComissao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, JvToolEdit, JvCurrEdit, UDm1, rsDBUtils;

type
  TfPagtoComissao = class(TForm)
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Label7: TLabel;
    JvxCurrencyEdit5: TJvxCurrencyEdit;
    Label2: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label3: TLabel;
    Edit1: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;

  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fPagtoComissao: TfPagtoComissao;

implementation

uses UConsComissaoVend;

{$R *.dfm}


procedure TfPagtoComissao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPagtoComissao.BitBtn2Click(Sender: TObject);
begin
  Close;
end;

procedure TfPagtoComissao.BitBtn1Click(Sender: TObject);
begin
  if (JvDateEdit1.Date < 1) or (JvxCurrencyEdit1.Value <= 0) then
    begin
      ShowMessage('Falta informar a data ou o valor de pagamento!');
      exit;
    end;

  FDm1.tExtComissao.Close;
  FDm1.ExtComissao.Params[0].AsInteger := 0;
  FDm1.tExtComissao.Open;

  FDm1.tExtComissao.Insert;
  FDm1.tExtComissaoNUMMOV.AsInteger        := FDm1.Incrementa('NUMMOV','EXTCOMISAO');
  FDm1.tExtComissaoCODVENDEDOR.AsInteger   := fConsComissaoVend.JvDBLookupCombo1.KeyValue;
  FDm1.tExtComissaoCODCLIENTE.AsInteger    := 0;
  FDm1.tExtComissaoDTREFERENCIA.AsDateTime := JvDateEdit1.Date;
  FDm1.tExtComissaoFUNCAO.AsString         := 'S';
  FDm1.tExtComissaoNUMNOTA.AsInteger       := 0;
  FDm1.tExtComissaoPARCELA.AsString        := '';
  FDm1.tExtComissaoPERCENTUAL.AsCurrency   := 0;
  FDm1.tExtComissaoTIPO.AsString           := 'P';
  FDm1.tExtComissaoVLRBASE.AsCurrency      := 0;
  FDm1.tExtComissaoVLRCOMISSAO.AsCurrency  := JvxCurrencyEdit1.Value;
  if trim(Edit1.Text) <> '' then
    Fdm1.tExtComissaoOBS.AsString := Edit1.Text;

  FDm1.tExtComissao.Post;
  FDm1.tExtComissao.ApplyUpdates(0);

  ShowMessage('Pagamento gravado!');
  Close;
end;

procedure TfPagtoComissao.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
