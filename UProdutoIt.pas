unit UProdutoIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvEdit, JvTypedEdit, JvLookup, Buttons, Mask,
  JvToolEdit, JvCurrEdit, ExtCtrls, ComCtrls, DBCtrls, JvDBCtrl, UDm1, rsDBUtils;

type
  TfProdutoIt = class(TForm)
    BitBtn5: TBitBtn;
    PageControl1: TPageControl;
    TSTAMANHO: TTabSheet;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    JvxCurrencyEdit2: TJvxCurrencyEdit;
    JvxCurrencyEdit4: TJvxCurrencyEdit;
    Edit3: TEdit;
    Label1: TLabel;
    JvxCurrencyEdit1: TJvxCurrencyEdit;
    Label2: TLabel;
    JvxCurrencyEdit18: TJvxCurrencyEdit;
    Label10: TLabel;
    Edit1: TEdit;
    Label5: TLabel;
    JvDateEdit2: TJvDateEdit;
    TSFOTO: TTabSheet;
    Label7: TLabel;
    Label8: TLabel;
    Edit2: TEdit;
    JvFilenameEdit1: TJvFilenameEdit;
    Panel1: TPanel;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvFilenameEdit1Change(Sender: TObject);
  private
    Fdm1: Tdm1;
  private
    { Private declarations }
    procedure Limpa;
    procedure Confirma_Tamanho;
    procedure Confirma_Foto;
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;    
  end;

var
  fProdutoIt: TfProdutoIt;

implementation

uses UDmCons, Math, DB, UProduto, USitTributaria,
  UBanco;

{$R *.dfm}

procedure TfProdutoIt.Limpa;
begin
  //*** Variáveis do Produto

  Edit1.Clear;
  Edit3.Clear;
  JvxCurrencyEdit1.Clear;
  JvxCurrencyEdit4.Clear;
  JvxCurrencyEdit18.Clear;
  JvxCurrencyEdit2.Clear;
  JvDateEdit2.Clear;
end;

procedure TfProdutoIt.Confirma_Foto;
var
  vItem : Integer;
  vTexto : String;
begin
  if (JvFilenameEdit1.Text <> '') then
    begin
      Fdm1.tProdutoFoto.Last;
      vItem :=  Fdm1.tProdutoFotoITEM.AsInteger + 1;
      Fdm1.tProdutoFoto.Insert;
      Fdm1.tProdutoFotoCODPRODUTO.AsInteger := Fdm1.tProdutoID.AsInteger;
      Fdm1.tProdutoFotoITEM.AsInteger       := vItem;
      Fdm1.tProdutoFotoNOME.AsString        := Edit2.Text;
      vTexto                               := JvFilenameEdit1.Text;
      Delete(vTexto,1,1);
      Delete(vTexto,Length(vTexto),1);
      Fdm1.tProdutoFotoCAMINHO.AsString     := vTexto;
      Fdm1.tProdutoFoto.Post;
      Edit2.Clear;
      JvFilenameEdit1.Clear;
      Image1.Picture := Nil;
      JvFilenameEdit1.SetFocus;
      fProduto.Image1.Picture.LoadFromFile(Fdm1.tProdutoFotoCAMINHO.AsString);
    end
  else
    ShowMessage('Todos os campos devem ser preenchidos');    
end;

procedure TfProdutoIt.Confirma_Tamanho;
begin
  if Edit3.Text = '' then
    ShowMessage('Falta informar o Tamanho!')
  else
    begin
      if fProdutoIt.Tag = 12 then
        Fdm1.tProdutoTam.Edit
      else
        Fdm1.tProdutoTam.Insert;
      Fdm1.tProdutoTamTAMANHO.AsString     := Edit3.Text;
      Fdm1.tProdutoTamPRECOCUSTO.AsFloat   := JvxCurrencyEdit4.Value;
      Fdm1.tProdutoTamPRECOMINIMO.AsFloat  := JvxCurrencyEdit1.Value;
      Fdm1.tProdutoTamPRECOVENDA.AsFloat   := JvxCurrencyEdit18.Value;
      Fdm1.tProdutoTamESTMINIMO.AsFloat    := JvxCurrencyEdit2.Value;
      Fdm1.tProdutoTamCODBARRA.AsString    := Edit1.Text;
      Fdm1.tProdutoTamDTREAJUST.AsDateTime := JvDateEdit2.Date;
      Fdm1.tProdutoTam.Post;

      Limpa;
      Edit3.SetFocus;
      if fProdutoIt.Tag = 12 then
        Close;
    end;
end;


procedure TfProdutoIt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProdutoIt.BitBtn5Click(Sender: TObject);
begin
  if (fProdutoIt.Tag = 11) or (fProdutoIt.Tag = 12) then
    Confirma_Tamanho
  else
  if (fProdutoIt.Tag = 21) then
    Confirma_Foto;
end;

procedure TfProdutoIt.FormShow(Sender: TObject);
begin

  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  DmCons.qProduto.Close;
  DmCons.qProduto.Open;

  TSTAMANHO.TabVisible := False;
  TSFOTO.TabVisible    := False;
  //*** Quando for digitação dos produtos
  if (fProdutoIt.Tag = 11) or (fProdutoIt.Tag = 12) or (fProdutoIt.Tag = 13) then
    begin
      TSTAMANHO.TabVisible    := True;
      Edit3.SetFocus;
      if (fProdutoIt.Tag = 12) or (fProdutoIt.Tag = 13) then
        begin
          Edit3.Text := Fdm1.tProdutoTamTAMANHO.AsString;
          JvxCurrencyEdit4.Value  := Fdm1.tProdutoTamPRECOCUSTO.AsFloat;
          JvxCurrencyEdit1.Value  := Fdm1.tProdutoTamPRECOMINIMO.AsFloat;
          JvxCurrencyEdit18.Value := Fdm1.tProdutoTamPRECOVENDA.AsFloat;
          JvxCurrencyEdit2.Value  := Fdm1.tProdutoTamESTMINIMO.AsFloat;
          Edit1.Text              := Fdm1.tProdutoTamCODBARRA.AsString;
          JvDateEdit2.Date        := Fdm1.tProdutoTamDTREAJUST.AsDateTime;
          if fProdutoIt.Tag = 13 then
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
    end
  else
  if fProdutoIt.Tag = 21 then
    begin
      TSFOTO.TabVisible    := True;
      JvFilenameEdit1.SetFocus;
    end;
end;

procedure TfProdutoIt.JvFilenameEdit1Change(Sender: TObject);
var
  vTexto : String;
begin
  vTexto                               := JvFilenameEdit1.Text;
  Delete(vTexto,1,1);
  Delete(vTexto,Length(vTexto),1);
  if JvFilenameEdit1.Text <> '' then
    Image1.Picture.LoadFromFile(vTexto);
end;

end.

