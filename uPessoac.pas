unit uPessoaC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids,
  DBGrids, JvDBCtrl, DBCtrls, UCBase, dbxpress, FMTBcd, DB, SqlExpr, JvCombobox, JvComponent, JvColorBox, SMDBGrid, UDm1,
  rsDBUtils, JvLookup, IdBaseComponent, IdCoder, IdCoder3to4, IdCoderMIME,
  NxCollection;// FR_Class, FR_DSet, FR_DBSet;

type
  TfPessoaC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    UCControls1: TUCControls;
    qDeleta: TSQLQuery;
    Label1: TLabel;
    JvComboBox1: TJvComboBox;
    Edit1: TEdit;
    BitBtn3: TBitBtn;
    CheckBox1: TCheckBox;
    JvColorSquare4: TJvColorSquare;
    SMDBGrid1: TSMDBGrid;
    CheckBox2: TCheckBox;
    BitBtn4: TBitBtn;
    CheckBox3: TCheckBox;
    Label3: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBGrid2: TJvDBGrid;
    Label4: TLabel;
    Decoder1: TIdDecoderMIME;
    BitBtn5: TBitBtn;
    cbBloq: TCheckBox;
    BitBtn6: TBitBtn;
    btnUsuario: TNxButton;
    Label2: TLabel;
    btnSistema: TNxButton;
//    frReport1: TfrReport;
//    frDBPessoa: TfrDBDataSet;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure SMDBGrid1DblClick(Sender: TObject);
    procedure SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
      AFont: TFont; var Background: TColor; Highlight: Boolean);
    procedure SMDBGrid1TitleClick(Column: TColumn);
    procedure CheckBox1Click(Sender: TObject);
    procedure CheckBox2Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBLookupCombo1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure btnUsuarioClick(Sender: TObject);
    procedure btnSistemaClick(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;

    ColunaOrdenada: String;
    procedure Consulta(vAVencer: Boolean);
  public
    { Public declarations }
  end;

var
  fPessoaC: TfPessoaC;

implementation

uses uPessoa, UMenu, UDmCons, UPrevPessoa, URelPessoas, uRelEnvelope1, uIntegracao,
  uPessoa_Sistema, uPessoa_Usuario;

{$R *.dfm}

procedure TfPessoaC.Consulta(vAVencer: Boolean);
var
  vPessoa: String;
begin
  Fdm1.tPessoa.Close;
  vPessoa := Fdm1.ctPessoa + 'WHERE 1 = 1';

  if CheckBox3.Checked then
    vPessoa := vPessoa + ' AND P.CLIENTE = ''1''';

  if JvDBLookupCombo1.KeyValue > 0 then
    vPessoa := vPessoa + ' AND P.CODCENTROCUSTO = ''' + JvDBLookupCombo1.Value + '''';

  if (Edit1.Text <> '') and (Edit1.Text <> '[DIGITE O NOME E PRESSIONE F3 PARA LOCALIZAR]') then
  begin
    case  JvComboBox1.ItemIndex of
      0: vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%''';
      1: vPessoa :=  vPessoa + ' AND P.DOCUMENTO LIKE ''%' + Edit1.Text + '%''';
      2: vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and P.Cliente = ''1''';
      3: vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and P.Fornecedor = ''1''';
      4: vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and P.Transportadora = ''1''';
      5: vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and P.Vendedor = ''1''';
      6: vPessoa :=  vPessoa + ' AND P.NOME LIKE ''%' + Edit1.Text + '%'' and P.Funcionario = ''1''';
    end;
  end
  else
  begin
    case JvComboBox1.ItemIndex of
      2: vPessoa :=  vPessoa + ' AND P.Cliente = ''1''';
      3: vPessoa :=  vPessoa + ' AND P.Fornecedor = ''1''';
      4: vPessoa :=  vPessoa + ' AND P.Transportadora = ''1''';
      5: vPessoa :=  vPessoa + ' AND P.Vendedor = ''1''';
      6: vPessoa :=  vPessoa + ' AND P.Funcionario = ''1''';
    end;
  end;
  if CheckBox1.Checked then
    vPessoa := vPessoa + ' AND (P.STATUS = ''1'')';

  vPessoa :=  vPessoa + ' ORDER BY P.NOME';
  Fdm1.Pessoa.CommandText := vPessoa;
  Fdm1.tPessoa.Open;
  DmCons.qCidade.Open;
  DmCons.qTipoCobranca.Open;
  Dmcons.qBanco.Open;
  DmCons.qVendedor.Open;
  Label2.Caption := 'Total de registros: ' + IntToStr(Fdm1.tPessoa.RecordCount);
end;

procedure TfPessoaC.BitBtn1Click(Sender: TObject);
begin
  Fdm1.tPessoa.Close;
  Fdm1.Pessoa.CommandText := Fdm1.ctPessoa
                           + 'WHERE P.ID = :codigo';
  {Fdm1.Pessoa.CommandText := 'SELECT P.*, C.NOME CIDADE_NOME, CC.NOME NOME_CENTROCUSTO, P.ID PESSOA_ID ' +
                             'FROM PESSOA P ' +
                             'LEFT JOIN CIDADE C ON (P.CIDADE = C.ID) ' +
                             'LEFT JOIN CENTROCUSTO CC ON (P.CODCENTROCUSTO = CC.ID) ' +
                             'WHERE P.ID = :codigo';}
  Fdm1.Pessoa.Params[0].AsInteger := 0;
  Fdm1.tPessoa.Open;
  Fdm1.tPessoa.Insert;
  Fdm1.tPessoaID.AsInteger := Fdm1.Incrementa('ID','PESSOA');
  Fdm1.tPessoaPESSOA_ID.AsInteger := Fdm1.tPessoaID.AsInteger;
  fPessoa := TfPessoa.Create(Self);

  fPessoa.fDm1 := fDm1;

  fPessoa.ShowModal;
end;

procedure TfPessoaC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = vk_F6) then
  begin
//    fDm1.tPessoa.Filter   := Decoder1.DecodeString(tPessoaDT_LIBERADO.AsString) <= QuotedStr(FormatDateTime('mm/dd/yyyy',Date));
//    fDm1.tPessoa.Filtered := not (fDm1.tPessoa.Filtered);
  end;
end;

procedure TfPessoaC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tPessoa.Close;
  Fdm1.Clausula.Close;
  //Fdm1.Pessoa.CommandText := 'SELECT * FROM PESSOA';
  Fdm1.Pessoa.CommandText := Fdm1.ctPessoa;
end;

procedure TfPessoaC.BitBtn2Click(Sender: TObject);
var
  TD: TTransactionDesc;
begin
  if not Fdm1.tPessoa.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      try
        TD.TransactionID  := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        Fdm1.Conexao.StartTransaction(TD);

        qDeleta.Close;
        qDeleta.SQL.Clear;
        qDeleta.SQL.Add('Delete from PESSOA_SERVICO where PESSOA_ID = ' + Fdm1.tPessoaID.AsString);
        qDeleta.ExecSQL();

        qDeleta.Close;
        qDeleta.SQL.Clear;
        qDeleta.SQL.Add('Delete from TELEFONE where CODPESSOA = ' + Fdm1.tPessoaID.AsString);
        qDeleta.ExecSQL();

        Fdm1.tPessoa.Delete;
        Fdm1.tPessoa.ApplyUpdates(0);
        Fdm1.Conexao.Commit(TD);
      except
        on E:Exception do
        begin
          Fdm1.Conexao.Rollback(TD);
          ShowMessage('Erro ao tentar excluir o registro: ' + E.Message);
        end;
      end;
    end;
end;

procedure TfPessoaC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
end;

procedure TfPessoaC.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
end;

procedure TfPessoaC.BitBtn3Click(Sender: TObject);
begin
//  Fdm1.tPessoa.IndexFieldNames := 'BAIRRO;NOME';
  fRelPessoas := TfRelPessoas.Create(self);
  fRelPessoas.Dm1 := Fdm1;
  fRelPessoas.RlReport1.Preview;
  FreeAndNil(fRelPessoas);
end;

procedure TfPessoaC.SMDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tPessoa.IsEmpty then
  begin
    fPessoa := TfPessoa.Create(Self);
    fPessoa.fDm1 := fDm1;
    fDm1.tPessoa.Edit;
    fPessoa.ShowModal;
    fPessoa.Free;
  end;
end;

procedure TfPessoaC.SMDBGrid1GetCellParams(Sender: TObject; Field: TField;
  AFont: TFont; var Background: TColor; Highlight: Boolean);
begin
  if (Fdm1.tPessoaID.AsInteger > 0) then
    if Fdm1.tPessoaSTATUS.AsString = '0' then
      Background  := clRed;
  if not(Fdm1.tPessoaDT_LIBERADO.IsNull) and (trim(Fdm1.tPessoaDT_LIBERADO.AsString) <> '') then
  begin
    if (fdm1.tPessoaclDtLiberacao.AsString <> '') and not(Fdm1.tPessoaclDtLiberacao.IsNull) then
      if ((fdm1.tPessoaCODCENTROCUSTO.AsInteger = 16) or (fdm1.tPessoaCODCENTROCUSTO.AsInteger = 18)) and
          (fdm1.tPessoaclDtLiberacao.AsDateTime < Date + 7) then
        AFont.Color := clRed;
  end;
  if Fdm1.tPessoaEMPRESA_PRINCIPAL.AsString = '1' then
    AFont.Style := [fsBold];
end;

procedure TfPessoaC.SMDBGrid1TitleClick(Column: TColumn);
var
  i: Word;
begin
  ColunaOrdenada := Column.FieldName;
  Fdm1.tPessoa.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to SMDBGrid1.Columns.Count - 1 do
    if not (SMDBGrid1.Columns.Items[I] = Column) then
      SMDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
  Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
  Edit1.SelectAll;
end;

procedure TfPessoaC.CheckBox1Click(Sender: TObject);
begin
  Fdm1.tPessoa.Filtered := False;
  if CheckBox1.Checked then
  begin
    CheckBox2.Checked := false;
    Fdm1.tPessoa.Filter   := 'STATUS = 1';
    Fdm1.tPessoa.Filtered := True;
  end;
  if Fdm1.tPessoa.Active then
    Label2.Caption := 'Total de registros: ' + IntToStr(Fdm1.tPessoa.RecordCount);
end;

procedure TfPessoaC.CheckBox2Click(Sender: TObject);
begin
  Fdm1.tPessoa.Filtered := False;
  if CheckBox2.Checked then
  begin
    CheckBox1.Checked := false;
    Fdm1.tPessoa.Filter   := 'STATUS = 0';
    Fdm1.tPessoa.Filtered := True;
  end;
  if Fdm1.tPessoa.Active then
    Label2.Caption := 'Total de registros: ' + IntToStr(Fdm1.tPessoa.RecordCount);
end;

procedure TfPessoaC.BitBtn4Click(Sender: TObject);
begin
  fRelEnvelope1 := TfRelEnvelope1.Create(Self);
  fRelEnvelope1.Dm1 := Fdm1;
  fRelEnvelope1.RLReport1.Preview();
  FreeAndNil(fRelEnvelope1);

  Fdm1.tCidade.Close;
  Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE';

{  frDBPessoa.DataSource := fDm1.dsPessoa;
  frReport1.LoadFromFile('Envelope01.frf');
  frReport1.ShowReport;}
end;

procedure TfPessoaC.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  oDBUtils.ActiveDataSet(True,fdm1.tCentroCusto,Name);

  ColunaOrdenada := 'NOME';
  Fdm1.tPessoa.IndexFieldNames := ColunaOrdenada;
end;

procedure TfPessoaC.JvDBLookupCombo1Change(Sender: TObject);
begin
  Consulta(False);
end;

procedure TfPessoaC.BitBtn5Click(Sender: TObject);
begin
  prc_Ler_Vcto_Site(fdm1);
end;

procedure TfPessoaC.BitBtn6Click(Sender: TObject);
var
  vData: String;
begin
  Consulta(False);
  vData := FormatDateTime('mm/dd/yyyy',Date);
  fdm1.tPessoa.Filtered := False;
//  if cbBloq.Checked then
//  begin
//    fdm1.tPessoa.Filter   := 'clDtLiberacao <= ' + vData;
//    fdm1.tPessoa.Filtered := True;
//  end;
end;

procedure TfPessoaC.btnUsuarioClick(Sender: TObject);
begin
  if not Fdm1.tPessoa.IsEmpty then
  begin
    fPessoa_Usuario := TfPessoa_Usuario.Create(Self);
    fPessoa_Usuario.fDm1 := fDm1;
    fPessoa_Usuario.vID_Pessoa := Fdm1.tPessoaID.AsInteger;
    fPessoa_Usuario.ShowModal;
    FreeAndNil(fPessoa_Usuario);
  end;
end;

procedure TfPessoaC.btnSistemaClick(Sender: TObject);
begin
  if not Fdm1.tPessoa.IsEmpty then
  begin
    fPessoa_Sistema := TfPessoa_Sistema.Create(Self);
    fPessoa_Sistema.fDm1 := fDm1;
    fPessoa_Sistema.vID_Pessoa := Fdm1.tPessoaID.AsInteger;
    fPessoa_Sistema.ShowModal;
    FreeAndNil(fPessoa_Sistema);
  end;
end;

end.

