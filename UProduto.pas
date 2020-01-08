unit UProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, VerificaCGC, VerificaCPF, FMTBcd, SqlExpr,
  JvToolEdit, JvCurrEdit, DBXpress, Menus, JvBitBtn, JvSpeedButton,
  JvxCtrls, JvCombobox, DBClient, Provider, ExtDlgs, JPEG, JvDBComb, UCBase, UDm1,
  rsDBUtils;

type
  TfProduto = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    Panel2: TPanel;
    Label1: TLabel;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label5: TLabel;
    DBEdit2: TDBEdit;
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    Label8: TLabel;
    DBEdit5: TDBEdit;
    Label9: TLabel;
    JvDBLookupCombo3: TJvDBLookupCombo;
    Label14: TLabel;
    Label16: TLabel;
    DBEdit11: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    qCheca: TSQLQuery;
    qChecaID: TIntegerField;
    qChecaDOCUMENTO: TStringField;
    qChecaNOME: TStringField;
    Label30: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    JvDBLookupCombo5: TJvDBLookupCombo;
    JvDBLookupCombo6: TJvDBLookupCombo;
    Label31: TLabel;
    JvDBDateEdit2: TJvDBDateEdit;
    Label32: TLabel;
    DBMemo1: TDBMemo;
    TabSheet3: TTabSheet;
    Panel5: TPanel;
    BitBtn5: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    BitBtn4: TBitBtn;
    GroupBox1: TGroupBox;
    JvDBGrid2: TJvDBGrid;
    PopupMenu1: TPopupMenu;
    ImprimirConsulta1: TMenuItem;
    ImprimirSelecionados1: TMenuItem;
    ImprimirMalaDireta1: TMenuItem;
    JvxSpeedButton1: TJvxSpeedButton;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    DBEdit6: TDBEdit;
    Label12: TLabel;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label15: TLabel;
    DBEdit10: TDBEdit;
    Label4: TLabel;
    DBCheckBox2: TDBCheckBox;
    JvComboBox1: TJvComboBox;
    Edit3: TEdit;
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
    qProdutoPRECOCUSTO: TFloatField;
    qProdutoPERCMINIMO: TFloatField;
    qProdutoPRECOMINIMO: TFloatField;
    qProdutoPERCVENDA: TFloatField;
    qProdutoDTREAJUSTE: TDateField;
    qProdutoCODBARRA: TStringField;
    qProdutoESTMINIMO: TFloatField;
    qProdutoOBS: TBlobField;
    qProdutoATUALIZAPRECO: TStringField;
    qProdutoGRUPO: TStringField;
    qProdutoFORNECEDOR: TStringField;
    qProdutoCODSITTRIB_1: TStringField;
    qProdutoCLASFISCAL: TStringField;
    Pessoa: TSQLQuery;
    PessoaP: TDataSetProvider;
    qPessoa: TClientDataSet;
    qsPessoa: TDataSource;
    qPessoaID: TIntegerField;
    qPessoaNOME: TStringField;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    qProdutoTIPO: TStringField;
    Label2: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label18: TLabel;
    DBEdit12: TDBEdit;
    JvDBComboBox2: TJvDBComboBox;
    Label19: TLabel;
    DBCheckBox3: TDBCheckBox;
    JvDBDateEdit1: TJvDBDateEdit;
    Label17: TLabel;
    Label20: TLabel;
    DBEdit13: TDBEdit;
    qProdutoPRECOVENDA: TFMTBCDField;
    UCControls1: TUCControls;
    GroupBox3: TGroupBox;
    JvDBGrid3: TJvDBGrid;
    StaticText5: TStaticText;
    StaticText6: TStaticText;
    Panel4: TPanel;
    Image1: TImage;
    Label21: TLabel;
    Label22: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure JvDBLookupCombo1Change(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure JvDBLookupCombo4Change(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Label14Click(Sender: TObject);
    procedure Label16Click(Sender: TObject);
    procedure Label30Click(Sender: TObject);
    procedure DBRadioGroup1Click(Sender: TObject);
    procedure Edit3Change(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit9Exit(Sender: TObject);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StaticText4Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure DBEdit7Enter(Sender: TObject);
    procedure DBEdit9Enter(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure DBRadioGroup2Click(Sender: TObject);
    procedure StaticText5Click(Sender: TObject);
    procedure StaticText6Click(Sender: TObject);
    procedure JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Habilita;
    procedure Consulta;
    procedure Atualiza;
  public
    { Public declarations }
  end;

var
  fProduto: TfProduto;
  vAlteraProd : String;

implementation

uses UDmCons, UClasFiscal, UPessoa, USitTributaria, UGrupo,
  UProdutoIt, UMenu;

{$R *.dfm}

procedure TfProduto.Atualiza;
var
  vTexto : String;
begin
  if Fdm1.tProduto.State in [dsInactive,dsBrowse] then
  begin
    Fdm1.tProduto.Close;
    Fdm1.tProdutoTam.Close;
    Fdm1.tProdutoFoto.Close;
    if BitBtn1.Tag = 1 then
    begin
      Fdm1.Produto.ParamByName('Codigo').AsInteger := 0;
      Fdm1.ProdutoTam.ParamByName('Codigo').AsInteger := 0;
      Fdm1.ProdutoFoto.ParamByName('Codigo').AsInteger := 0;
    end
    else
    begin
      Fdm1.Produto.ParamByName('Codigo').AsInteger := qProdutoID.AsInteger;
      Fdm1.ProdutoTam.ParamByName('Codigo').AsInteger := qProdutoID.AsInteger;
      Fdm1.ProdutoFoto.ParamByName('Codigo').AsInteger := qProdutoID.AsInteger;
    end;
    vTexto := Fdm1.Produto.CommandText;
    Fdm1.tProduto.Open;
    Fdm1.tProdutoTam.Open;
    Fdm1.tProdutoFoto.Open;
  end;
end;

procedure TfProduto.Consulta;
begin
  qProduto.Close;
  qProduto.Open;
end;

procedure TfProduto.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  Panel5.Enabled  := not Panel5.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  JvxSpeedButton1.Enabled := not JvxSpeedButton1.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfProduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfProduto.BitBtn1Click(Sender: TObject);
begin
  Image1.Picture := Nil;
  BitBtn1.Tag := 1;
  PageControl1.ActivePageIndex := 1;
  Habilita;
  Atualiza;
  Fdm1.tProduto.Insert;
  DBEdit1.SetFocus;
  if Fdm1.tProdutoTam.IsEmpty then
    DBCheckBox2.Enabled   := True
  else
    DBCheckBox2.Enabled   := False;
  BitBtn1.Tag := 0;
  Fdm1.tProdutoTIPO.AsString := 'P';
  DBRadioGroup2Click(Sender);
end;

procedure TfProduto.BitBtn2Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  Atualiza;
  Fdm1.tProduto.Edit;
  DBCheckBox2Click(Sender);
  if Fdm1.tProdutoTam.IsEmpty then
    DBCheckBox2.Enabled   := True
  else
    DBCheckBox2.Enabled   := False;
  DBRadioGroup2Click(Sender);
  Habilita;
end;

procedure TfProduto.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tProdutoTam.Cancel;
  Fdm1.tProdutoFoto.Cancel;
  Fdm1.tProduto.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfProduto.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfProduto.BitBtn5Click(Sender: TObject);
var
  vCodigo : integer;
  TD : TTransactionDesc;

  vDelta1,
  vDelta2,
  vDelta3 : OleVariant;

  iflag : Integer;

  sBookMark1,
  sBookMark2,
  sBookMark3 : string;

begin
  vCodigo := 0;
  if DBEdit1.Text <> '' then
    begin
      if ((Fdm1.tProdutoPOSSUITAMANHO.AsString = 'S') and not(Fdm1.tProdutoTam.IsEmpty)) or
         (Fdm1.tProdutoPOSSUITAMANHO.AsString = 'N') then
        begin
          try
          TD.TransactionID  := 1;
          TD.IsolationLevel := xilREADCOMMITTED;
          Fdm1.Conexao.StartTransaction(TD);
          if Fdm1.tProduto.State = dsInsert then
          begin
            vCodigo := Fdm1.Incrementa('ID','PRODUTO');
            Fdm1.tProdutoTam.Last;
            while not Fdm1.tProdutoTam.Bof do
            begin
              Fdm1.tProdutoTam.Edit;
              Fdm1.tProdutoTamCODPRODUTO.AsInteger := vCodigo;
              if Fdm1.tProdutoTamCODBARRA.AsString = '' then
                Fdm1.tProdutoTamCODBARRA.AsString := IntToStr(vCodigo) + Fdm1.tProdutoTamTAMANHO.AsString;
              Fdm1.tProdutoTam.Prior;
            end;
            if Fdm1.tProdutoTam.State in [dsEdit,dsInsert] then
              Fdm1.tProdutoTam.Post;
            Fdm1.tProdutoFoto.Last;
            while not Fdm1.tProdutoFoto.Bof do
            begin
              Fdm1.tProdutoFoto.Edit;
              Fdm1.tProdutoFotoCODPRODUTO.AsInteger := vCodigo;
              Fdm1.tProdutoFoto.Prior;
            end;
            if Fdm1.tProdutoFoto.State in [dsEdit,dsInsert] then
              Fdm1.tProdutoFoto.Post;
          end;
          if Fdm1.tProduto.State = dsInsert then
            Fdm1.tProdutoID.AsInteger := vCodigo;
          if Fdm1.tProdutoCODBARRA.AsString = '' then
            Fdm1.tProdutoCODBARRA.AsString := IntToStr(vCodigo);
          Fdm1.tProduto.Post;

          sBookMark1 := Fdm1.tProdutoFoto.Bookmark;
          sBookMark2 := Fdm1.tProdutoTam.Bookmark;
          sBookMark3 := Fdm1.tProduto.Bookmark;

          vDelta1 := Fdm1.tProdutoFoto.Data;
          vDelta2 := Fdm1.tProdutoTam.Data;
          vDelta3 := Fdm1.tProduto.Data;

          iflag := 1;

          if Fdm1.tProdutoFoto.ChangeCount > 0 then
            Fdm1.tProdutoFoto.ApplyUpdates(0);
          iflag := 2;
          if Fdm1.tProdutoTam.ChangeCount > 0 then
            Fdm1.tProdutoTam.ApplyUpdates(0);
          iflag := 3;
          if Fdm1.tProduto.ChangeCount > 0 then
            Fdm1.tProduto.ApplyUpdates(0);
          Fdm1.Conexao.Commit(TD);
          Habilita;
          qProduto.Refresh;
          if vCodigo > 0 then
          begin
            qProduto.IndexFieldNames := 'ID';
            qProduto.Last;
          end;
          PageControl1.ActivePage := TabSheet1;
          BitBtn1.SetFocus;
          except
            on E:Exception do
            begin
              if iflag = 2 then
                Fdm1.tProdutoFoto.Data := vDelta1;
              if iflag = 3 then
                begin
                  Fdm1.tProdutoFoto.Data := vDelta1;
                  Fdm1.tProdutoTam.Data  := vDelta2;
                end;

              Fdm1.tProdutoFoto.Bookmark := sBookMark1;
              Fdm1.tProdutoTam.Bookmark  := sBookMark2;
              Fdm1.tProduto.Bookmark     := sBookMark3;
              Fdm1.Conexao.Rollback(TD);
            end;
          end;
        end
      else
        ShowMessage('Tipo de Produto é Tamanho, deve ser digitado tamanho!');
    end
  else
    ShowMessage('Não pode ser confirmado com o Nome em branco!');
end;

procedure TfProduto.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vDelta1,
  vDelta2,
  vDelta3 : OleVariant;

  iflag : Integer;

  sBookMark1,
  sBookMark2,
  sBookMark3 : string;
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      Atualiza;
      Fdm1.tProdutoTam.First;
      while not Fdm1.tProdutoTam.Eof do
        Fdm1.tProdutoTam.Delete;
      Fdm1.tProdutoFoto.First;
      while not Fdm1.tProdutoFoto.Eof do
        Fdm1.tProdutoFoto.Delete;
      Fdm1.tProduto.Delete;

      sBookMark1 := Fdm1.tProdutoFoto.Bookmark;
      sBookMark2 := Fdm1.tProdutoTam.Bookmark;
      sBookMark3 := Fdm1.tProduto.Bookmark;

      vDelta1 := Fdm1.tProdutoFoto.Data;
      vDelta2 := Fdm1.tProdutoTam.Data;
      vDelta3 := Fdm1.tProduto.Data;

      iflag := 1;

      if Fdm1.tProdutoFoto.ChangeCount > 0 then
        Fdm1.tProdutoFoto.ApplyUpdates(0);
      iflag := 2;
      if Fdm1.tProdutoTam.ChangeCount > 0 then
        Fdm1.tProdutoTam.ApplyUpdates(0);
      iflag := 3;
      if Fdm1.tProduto.ChangeCount > 0 then
        Fdm1.tProduto.ApplyUpdates(0);
      Fdm1.Conexao.Commit(TD);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
      except
        on E:Exception do
        begin
          if iflag = 2 then
            Fdm1.tProdutoFoto.Data := vDelta1;
          if iflag = 3 then
            begin
              Fdm1.tProdutoFoto.Data := vDelta1;
              Fdm1.tProdutoTam.Data  := vDelta2;
            end;

          Fdm1.tProdutoFoto.Bookmark := sBookMark1;
          Fdm1.tProdutoTam.Bookmark  := sBookMark2;
          Fdm1.tProduto.Bookmark     := sBookMark3;

          Fdm1.Conexao.Rollback(TD);
        end;
      end;  
    end;
end;

procedure TfProduto.JvDBLookupCombo1Change(Sender: TObject);
begin
  Consulta;
end;

procedure TfProduto.TabSheet2Show(Sender: TObject);
begin
  Image1.Picture := Nil;
  Atualiza;
end;

procedure TfProduto.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  DmCons.qPessoa.Close;
  DmCons.qGrupo.Close;
  DmCons.qClasFiscal.Close;
  DmCons.qSitTributaria.Close;
  Fdm1.tProduto.Close;
  Fdm1.tProdutoTam.Close;
  Fdm1.tProdutoFoto.Close;
  Fdm1.tSitTribCF.Close;
end;

procedure TfProduto.DBCheckBox2Click(Sender: TObject);
begin
  if Fdm1.tProduto.State in [dsEdit,dsInsert] then
    begin
      case DBCheckBox2.Checked of
        False  : begin
                  GroupBox1.Enabled     := False;
                  Fdm1.tProdutoCODBARRA.Clear;
                  DBEdit11.Color        := clInfoBk;
                  DBEdit11.Enabled      := True;
                end;
        True  : begin
                  DBEdit11.Color        := clWindow;
                  DBEdit11.Enabled      := False;
                  GroupBox1.Enabled     := True;
                end;
      end;
    end;
end;

procedure TfProduto.JvDBLookupCombo4Change(Sender: TObject);
begin
  qPessoa.Close;
  Pessoa.SQL.Clear;
  Pessoa.SQL.Add('SELECT ID, NOME FROM PESSOA WHERE FORNECEDOR = ''1'' ORDER BY NOME');
  qPessoa.Open;
end;

procedure TfProduto.Label9Click(Sender: TObject);
begin
  DmCons.qGrupo.Close;
  fGrupo := TfGrupo.Create(Self);
  fGrupo.ShowModal;
  DmCons.qGrupo.Close;
  DmCons.qGrupo.Open;
end;

procedure TfProduto.Label14Click(Sender: TObject);
begin
  DmCons.qSitTributaria.Close;
  fSitTributaria := TfSitTributaria.Create(Self);
  fSitTributaria.ShowMOdal;
  DmCons.qSitTributaria.Close;
  DmCons.qSitTributaria.Open;
end;

procedure TfProduto.Label16Click(Sender: TObject);
begin
  DmCons.qClasFiscal.Close;
  fClasFiscal := TfClasFiscal.Create(Self);
  fClasFiscal.ShowModal;
  DmCons.qClasFiscal.Close;
  DmCons.qClasFiscal.Open;
end;

procedure TfProduto.Label30Click(Sender: TObject);
begin
  qPessoa.Close;
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
  Pessoa.SQL.Clear;
  Pessoa.SQL.Add('SELECT ID, NOME FROM PESSOA WHERE FORNECEDOR = ''1'' ORDER BY NOME');
  qPessoa.Open;
end;

procedure TfProduto.DBRadioGroup1Click(Sender: TObject);
begin
{  case JvDBComboBox1.ItemIndex of
    0 : begin
          DBEdit6.Color    := clWindow;
          DBEdit8.Color    := clWindow;
          DBEdit10.Color   := clWindow;
          DBEdit6.Enabled  := True;
          DBEdit8.Enabled  := True;
          DBEdit10.Enabled := True;
        end;
    1 : begin
          DBEdit6.Color    := clInfoBk;
          DBEdit8.Color    := clInfoBk;
          DBEdit10.Color   := clInfoBk;
          DBEdit6.Enabled  := False;
          DBEdit8.Enabled  := False;
          DBEdit10.Enabled := False;
        end;
  end;}
end;

procedure TfProduto.Edit3Change(Sender: TObject);
begin
  qProduto.Close;
  Produto.SQL.Clear;
  Produto.SQL.Add('SELECT PRODUTO.*, GRUPO.NOME GRUPO, PESSOA.NOME FORNECEDOR, ');
  Produto.SQL.Add('SITTRIBUTARIA.CODSITTRIB');
  Produto.SQL.Add('FROM PRODUTO');
  Produto.SQL.Add('LEFT JOIN GRUPO ON');
  Produto.SQL.Add('(PRODUTO.CODGRUPO = GRUPO.ID)');
  Produto.SQL.Add('LEFT JOIN PESSOA ON');
  Produto.SQL.Add('(PRODUTO.CODFORNECEDOR = PESSOA.ID)');
  Produto.SQL.Add('LEFT JOIN SITTRIBUTARIA ON');
  Produto.SQL.Add('(PRODUTO.CODSITTRIB = SITTRIBUTARIA.ID)');
  if Edit3.Text <> '' then
  begin
    case JvComboBox1.ItemIndex of
      0 : Produto.SQL.Add('WHERE PRODUTO.NOME LIKE ''%' + Edit3.Text + '%'' and TIPO = ''P''');
      1 : Produto.SQL.Add('WHERE GRUPO.NOME LIKE ''%' + Edit3.Text + '%''');
      2 : Produto.SQL.Add('WHERE SITTRIBUTARIA.CODSITTRIB LIKE ''%' + Edit3.Text + '%''');
      3 : Produto.SQL.Add('WHERE PESSOA.NOME LIKE ''%' + Edit3.Text + '%''');
      4 : Produto.SQL.Add('WHERE PRODUTO.NOME LIKE ''%' + Edit3.Text + '%'' and TIPO = ''S''');
    end;
  end;
  Produto.SQL.Add('ORDER BY PRODUTO.NOME');
  qProduto.Open;
end;

procedure TfProduto.JvDBGrid1DblClick(Sender: TObject);
begin
  Atualiza;
  PageControl1.ActivePage := TabSheet2;
end;

procedure TfProduto.JvComboBox1Enter(Sender: TObject);
begin
  Edit3.Clear;
end;

procedure TfProduto.DBEdit7Exit(Sender: TObject);
begin
  if DBEdit7.Text <> '' then
    Fdm1.tProdutoPRECOMINIMO.AsFloat := Fdm1.tProdutoPRECOCUSTO.AsFloat + (Fdm1.tProdutoPRECOCUSTO.AsFloat * Fdm1.tProdutoPERCMINIMO.AsFloat) / 100;
end;

procedure TfProduto.DBEdit9Exit(Sender: TObject);
begin
  if DBEdit9.Text <> '' then
    Fdm1.tProdutoPRECOVENDA.AsFloat := Fdm1.tProdutoPRECOCUSTO.AsFloat + (Fdm1.tProdutoPRECOCUSTO.AsFloat * Fdm1.tProdutoPERCVENDA.AsFloat) / 100;
end;

procedure TfProduto.StaticText1Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
  begin
    fProdutoIt  := TfProdutoIt.Create(Self);

    fProdutoIt.dm1 := Fdm1;

    fProdutoIt.Tag := 11;
    fProdutoIt.ShowModal;
  end;
end;

procedure TfProduto.StaticText2Click(Sender: TObject);
begin
  if (BitBtn3.Enabled) and not(Fdm1.tProdutoTam.IsEmpty) then
    begin
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        Fdm1.tProdutoTam.Delete;
    end;
end;

procedure TfProduto.StaticText3Click(Sender: TObject);
begin
  if (BitBtn3.Enabled) and not(Fdm1.tProdutoTam.IsEmpty) then
    begin
      fProdutoIt  := TfProdutoIt.Create(Self);

      fProdutoIt.dm1 := Fdm1;

      fProdutoIt.Tag := 12;
      fProdutoIt.ShowModal;
    end;
end;

procedure TfProduto.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return
  else
  if BitBtn3.Enabled then
    begin
      if key = 45 then
        StaticText1Click(Sender)
      else
      if key = 46 then
        StaticText2Click(Sender)
      else
      if key = 13 then
        StaticText3Click(Sender);
    end;
end;

procedure TfProduto.StaticText4Click(Sender: TObject);
begin
  JvDBGrid2DblClick(Sender)
end;

procedure TfProduto.JvDBGrid2DblClick(Sender: TObject);
begin
  if Fdm1.tProdutoTam.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      fProdutoIt  := TfProdutoIt.Create(Self);

      fProdutoIt.dm1 := Fdm1;

      fProdutoIt.Tag := 13;
      fProdutoIt.ShowModal;
    end;
end;

procedure TfProduto.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  qProduto.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfProduto.DBEdit7Enter(Sender: TObject);
begin
  Fdm1.tProdutoPRECOMINIMO.Clear;
end;

procedure TfProduto.DBEdit9Enter(Sender: TObject);
begin
  Fdm1.tProdutoPRECOVENDA.Clear;
end;

procedure TfProduto.TabSheet3Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfProduto.DBRadioGroup2Click(Sender: TObject);
begin
  case JvDBComboBox2.ItemIndex of
    0 : begin
          DBCheckBox2.Enabled   := True;
          GroupBox2.Enabled     := True;
          TabSheet3.TabVisible  := True;
          DBEdit5.ReadOnly      := False;
        end;
    1 : begin
          DBCheckBox2.Enabled   := False;
          GroupBox2.Enabled     := False;
          TabSheet3.TabVisible  := False;
          DBEdit5.ReadOnly      := True;
        end;
  end;
end;

procedure TfProduto.StaticText5Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      fProdutoIt  := TfProdutoIt.Create(Self);

      fProdutoIt.dm1 := Fdm1;

      fProdutoIt.Tag := 21;
      fProdutoIt.ShowModal;
    end;
end;

procedure TfProduto.StaticText6Click(Sender: TObject);
begin
  if (BitBtn3.Enabled) and not(Fdm1.tProdutoFoto.IsEmpty) then
    begin
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          Fdm1.tProdutoFoto.Delete;
          Image1.Picture := Nil;
          Image1.Picture.LoadFromFile(Fdm1.tProdutoFotoCAMINHO.AsString);
        end;
    end;
end;

procedure TfProduto.JvDBGrid3KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = vk_Delete) then
    Key := vk_Return
  else
  if BitBtn3.Enabled then
    begin
      if key = 45 then
        StaticText5Click(Sender)
      else
      if key = 46 then
        StaticText6Click(Sender)
    end;
end;

procedure TfProduto.FormShow(Sender: TObject);
begin
  TabSheet3.TabVisible := False;
  qPessoa.Open;
  DmCons.qGrupo.Open;
  DmCons.qGrupo.IndexFieldNames := 'NOME';
  DmCons.qClasFiscal.Open;
  DmCons.qSitTributaria.Open;
  qProduto.Open;
  Fdm1.tSitTribCF.Close;
  Fdm1.SitTribCF.Params[0].AsInteger := Fdm1.tParametroECF.AsInteger;
  Fdm1.tSitTribCF.Open;
end;

procedure TfProduto.FormDestroy(Sender: TObject);
begin
  FreeandNil(Fdm1);
end;

end.
