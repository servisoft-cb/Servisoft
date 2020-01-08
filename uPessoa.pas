unit uPessoa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Mask, DBCtrls, UDm1,
  Buttons, ExtCtrls, ComCtrls, JvDBComb, dbxpress, VerificaCPF, VerificaCGC, JvToolEdit, JvDBCtrl, Grids, DBGrids, UCBase,
  FMTBcd, SqlExpr, DBClient, Provider, rsDBUtils, SMDBGrid, IdBaseComponent, IdCoder, JvLookup, IdCoder3to4, IdCoderMIME,
  StrUtils;

type
  TfPessoa = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    DBEdit6: TDBEdit;
    Label7: TLabel;
    DBEdit7: TDBEdit;
    Label8: TLabel;
    DBEdit8: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label9: TLabel;
    JvDBComboBox1: TJvDBComboBox;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit9: TDBEdit;
    Label12: TLabel;
    JvDBLookupCombo2: TJvDBLookupCombo;
    GroupBox1: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    TabSheet2: TTabSheet;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    Label15: TLabel;
    DBEdit14: TDBEdit;
    Label16: TLabel;
    DBEdit15: TDBEdit;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    Label27: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    TabSheet7: TTabSheet;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    JvDBGrid1: TJvDBGrid;
    TabSheet8: TTabSheet;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    Label39: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    DBEdit34: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    TabSheet10: TTabSheet;
    JvDBGrid3: TJvDBGrid;
    Panel7: TPanel;
    BitBtn7: TBitBtn;
    BitBtn8: TBitBtn;
    DBMemo1: TDBMemo;
    Label45: TLabel;
    VerificaCGC1: TVerificaCGC;
    VerificaCPF1: TVerificaCPF;
    Label40: TLabel;
    DBEdit39: TDBEdit;
    DBCheckBox5: TDBCheckBox;
    Label41: TLabel;
    JvDBLookupCombo8: TJvDBLookupCombo;
    Label50: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    UCControls1: TUCControls;
    Panel3: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label14: TLabel;
    Label28: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    GroupBox2: TGroupBox;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    JvDBLookupCombo3: TJvDBLookupCombo;
    DBEdit20: TDBEdit;
    JvDBLookupCombo4: TJvDBLookupCombo;
    JvDBLookupCombo5: TJvDBLookupCombo;
    DBEdit21: TDBEdit;
    JvDBLookupCombo6: TJvDBLookupCombo;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit11: TDBEdit;
    JvDBComboBox3: TJvDBComboBox;
    JvDBLookupCombo9: TJvDBLookupCombo;
    DBEdit41: TDBEdit;
    Label55: TLabel;
    JvDBLookupCombo7: TJvDBLookupCombo;
    Label38: TLabel;
    Label44: TLabel;
    JvDateEdit1: TJvDateEdit;
    Encoder1: TIdEncoderMIME;
    Decoder1: TIdDecoderMIME;
    TabSheet4: TTabSheet;
    Panel4: TPanel;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    JvDBGrid2: TJvDBGrid;
    TabSheet9: TTabSheet;
    JvDBGrid4: TJvDBGrid;
    Panel5: TPanel;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    Label13: TLabel;
    DBEdit10: TDBEdit;
    Label46: TLabel;
    DBEdit33: TDBEdit;
    TabSheet3: TTabSheet;
    JvDBGrid5: TJvDBGrid;
    Panel6: TPanel;
    BitBtn11: TBitBtn;
    BitBtn12: TBitBtn;
    Label47: TLabel;
    JvDBLookupCombo10: TJvDBLookupCombo;
    BitBtn13: TBitBtn;
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure te(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBEdit4Exit(Sender: TObject);
    procedure JvDBLookupCombo1Exit(Sender: TObject);
    procedure JvDBLookupCombo3Exit(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure JvDBGrid3DblClick(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure JvDBGrid3TitleClick(Column: TColumn);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure Label41Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure JvDBComboBox1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure JvDBGrid4DblClick(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
  private
    { Private declarations }
    vItem: Integer;
    vCNPJCPF: Boolean;
    vDocCliente: String;
    function Numeros(Documento: String): String;
    function Mascara_Doc(Documento: String): String;
  public
    { Public declarations }
    fDm1: TDm1;
  end;

var
  fPessoa: TfPessoa;

implementation

uses uTelefone, uPessoaServico, uCidade, uCentroCusto, UDmCons, uPessoaHist, uPessoaChaves, uPessoaModulos, uIntegracao;

{$R *.dfm}

function TfPessoa.Numeros(Documento: String): String;
var
  vTexto1: String;
  i: Integer;
begin
  vTexto1 := '';
  for i := 1 to Length(Documento) do
    begin
     //if TryStrToInt(copy(Documento,i,1)) then
      if (copy(Documento,i,1) = '0') or (copy(Documento,i,1) =  '1') or (copy(Documento,i,1) =  '2') or
         (copy(Documento,i,1) = '3') or (copy(Documento,i,1) =  '4') or (copy(Documento,i,1) =  '5') or
         (copy(Documento,i,1) = '6') or (copy(Documento,i,1) =  '7') or (copy(Documento,i,1) =  '8') or
         (copy(Documento,i,1) = '9') then
        vTexto1 := vTexto1 + copy(Documento,i,1);
    end;
  Result := vTexto1;
end;

function TfPessoa.Mascara_Doc(Documento: String): String;
var
  vTexto1: String;          
begin
  if Fdm1.tPessoaPESSOA.AsString = 'J' then
    vTexto1 := copy(Documento,1,2) + '.' + copy(Documento,3,3) + '.' + copy(Documento,6,3)
               + '/' + copy(Documento,9,4) + '-' + copy(Documento,13,2)
  else
  if Fdm1.tPessoaPESSOA.AsString = 'F' then
    vTexto1 := copy(Documento,1,3) + '.' + copy(Documento,4,3) + '.' + copy(Documento,7,3)
               + '-' + copy(Documento,10,2);
  Result := vTexto1;
end;

procedure TfPessoa.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tPessoa.Cancel;
  Close;
end;

procedure TfPessoa.BitBtn1Click(Sender: TObject);
var
  TD: TTransactionDesc;
  vId: Integer;

  vDelta1, vDelta2,
  vDelta3, vDelta4,
  vDelta5, vDelta6, vDelta7: OleVariant;

  iflag: Integer;

  sBookMark1, sBookMark2,
  sBookMark3, sBookMark4,
  sBookMark5, sBookMark6, sBookMark7: string;

begin
  if DBEdit1.Text = '' then
  begin
    ShowMessage('Nome deve ser preenchido!');
    Exit;
  end;
  if (Fdm1.tPessoaCLIENTE.AsString = '0') and (Fdm1.tPessoaFORNECEDOR.AsString = '0') and
     (Fdm1.tPessoaVENDEDOR.AsString = '0') and (Fdm1.tPessoaTRANSPORTADORA.AsString = '0') and
     (Fdm1.tPessoaFUNCIONARIO.AsString = '0') then
  begin
    ShowMessage('Um papel deve ser preenchido!');
    Exit;
  end;
  if (Fdm1.tPessoaVLRPGTO.AsFloat > 0) and (Fdm1.tPessoaDIAPAGAMENTO.AsInteger <= 0) then
  begin
    ShowMessage('Falta informar o dia de cobrança para este cliente!');
    Exit;
  end;

  if Fdm1.tPessoaSTATUS.AsString = '0' then
  begin
    if Fdm1.tPessoaCLIENTE.AsString = '1' then
    begin
      fDm1.tCReceberParc.Close;
      fDm1.CReceberParc.Params[0].AsInteger := Fdm1.tPessoaID.AsInteger;
      fDm1.tCReceberParc.Open;
      if (fDm1.tCReceberParc.RecordCount > 0) and (fDm1.tCReceberParcVLRRESTANTE.AsFloat > 0) then
      begin
        fDm1.tCReceberParc.Close;
        ShowMessage('Registro não pode ser desativado pois possui parcelas em aberto no contas a receber!');
        exit;
      end;
    end;
    if (Fdm1.tPessoaFORNECEDOR.AsString = '1') or (Fdm1.tPessoaFUNCIONARIO.AsString = '1') then
    begin
      fDm1.tCPagarParc.Close;
      fDm1.CPagarParc.Params[0].AsInteger := Fdm1.tPessoaID.AsInteger;
      fDm1.tCPagarParc.Open;
      if (fDm1.tCPagarParc.RecordCount > 0) and (fDm1.tCPagarParcVLRRESTANTE.AsFloat > 0) then
      begin
        fDm1.tCPagarParc.Close;
        ShowMessage('Registro não pode ser desativado pois possui parcelas em aberto no contas a pagar!');
        exit;
      end;
    end;
  end;

  if Fdm1.tPessoaDOCUMENTO.AsString = '' then
  begin
    ShowMessage('CNPJ/CPF deve ser preenchido!');
    Exit;
  end;
  if Fdm1.tPessoaCIDADE.IsNull then
  begin
    ShowMessage('Cidade deve ser preenchido!');
    Exit;
  end;
  if (JvDateEdit1.Text = '  /  /    ') then
  begin
    ShowMessage('Preencha a data de validade da licença!');
    PageControl1.ActivePage := TabSheet6;
    JvDateEdit1.SetFocus;
    Exit;
  end
  else
  begin
    try
      Fdm1.tPessoaDT_LIBERADO.AsString := Encoder1.EncodeString(JvDateEdit1.Text);
    except
      Fdm1.tPessoaDT_LIBERADO.Clear;
    end;
  end;

  try
    iflag := 0;
    TD.TransactionID  := 1;
    TD.IsolationLevel := xilREADCOMMITTED;
    Fdm1.Conexao.StartTransaction(TD);
    Fdm1.tPessoa.Post;

    sBookMark1 := Fdm1.tPessoaServico.Bookmark;
    sBookMark2 := Fdm1.tTelefone.Bookmark;
    sBookMark3 := Fdm1.tPessoa.Bookmark;

    vDelta1 := Fdm1.tPessoaServico.Data;
    vDelta2 := Fdm1.tTelefone.Data;
    vDelta3 := Fdm1.tPessoa.Data;

{    fDmRemoto.cdsPessoa.Post;
    if fDmRemoto.cdsPessoa.ApplyUpdates(0) > 0 then
      Abort;}

    iflag := 1;
    if Fdm1.tPessoaServico.ChangeCount > 0 then
      Fdm1.tPessoaServico.ApplyUpdates(0);
    iflag := 2;
    if Fdm1.tTelefone.ChangeCount > 0 then
      Fdm1.tTelefone.ApplyUpdates(0);
    iflag := 3;
    if Fdm1.tPessoa.ChangeCount > 0 then
      Fdm1.tPessoa.ApplyUpdates(0);
    iflag := 4;
    iflag := 5;

    Fdm1.Conexao.Commit(TD);

    vDocCliente := Numeros(DBEdit4.Text);
  except
    on E:Exception do
    begin
      if iflag = 1 then
          Fdm1.tPessoaServico.Data := vDelta1;
      if iflag = 2 then
      begin
        Fdm1.tPessoaServico.Data := vDelta1;
        Fdm1.tTelefone.Data      := vDelta2;
      end;
      if iflag = 3 then
      begin
        Fdm1.tPessoaServico.Data := vDelta1;
        Fdm1.tTelefone.Data      := vDelta2;
        Fdm1.tPessoa.Data        := vDelta3;
      end;
      if iflag = 4 then
      begin
        Fdm1.tPessoaServico.Data := vDelta1;
        Fdm1.tTelefone.Data      := vDelta2;
        Fdm1.tPessoa.Data        := vDelta3;
      end;

      Fdm1.tPessoaServico.Bookmark := sBookMark1;
      Fdm1.tTelefone.Bookmark      := sBookMark2;
      Fdm1.tPessoa.Bookmark        := sBookMark3;

      Fdm1.Conexao.Rollback(TD);
      ShowMessage('Erro ao tentar gravar o registro: ' + E.Message);
    end;
  end;
  Close;
end;

procedure TfPessoa.te(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 3;
  PageControl2.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfPessoa.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tPessoa.State in [dsInsert,dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbYes,mbNo],0) of
      mrYes: begin
              BitBtn1.Click;
              if Fdm1.tPessoa.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn2.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfPessoa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  oDBUtils.OpenTables(False,Self);
end;

procedure TfPessoa.DBEdit4Exit(Sender: TObject);
begin
  if DBEdit4.Text <> '' then
  begin
    vDocCliente := Numeros(DBEdit4.Text);
    if (Length(vDocCliente) <> 11) and (Length(vDocCliente) <> 14) then

      ShowMessage('Documento informado está incorreto!')
    else
    begin
      vDocCliente  := Mascara_Doc(vDocCliente);
      DBEdit4.Text := vDocCliente;
      if Fdm1.tPessoaPESSOA.AsString = 'F' then
      begin
        //VerificaCPF1.Entrada := DBEdit4.Text;
        VerificaCPF1.Entrada := vDocCliente;
        If not VerificaCPF1.Resultado then
        begin
          ShowMessage('O CPF está incorreto!');
          DBEdit4.SetFocus;
        end
      end
      else
      if Fdm1.tPessoaPESSOA.AsString = 'J' then
      begin
        //VerificaCGC1.Entrada := DBEdit4.Text;
        VerificaCGC1.Entrada := vDocCliente;
        if not VerificaCGC1.Resultado then
        begin
          ShowMessage('O CNPJ está incorreto!');
          DBEdit4.SetFocus;
        end;
      end;
    end;
  end;
end;

procedure TfPessoa.JvDBLookupCombo1Exit(Sender: TObject);
begin
  Fdm1.tPessoaESTADO.AsString := Fdm1.tCidadeUF.AsString;
end;

procedure TfPessoa.JvDBLookupCombo3Exit(Sender: TObject);
begin
  if not Fdm1.tPessoaCOBCIDADE.IsNull then
    Fdm1.tPessoaCOBUF.AsString := Fdm1.tCidadeUF.AsString;
end;

procedure TfPessoa.BitBtn3Click(Sender: TObject);
begin
  fTelefone := TfTelefone.Create(Self);

  fTelefone.Dm1 := Fdm1;

  Fdm1.tTelefone.Last;
  vItem := Fdm1.tTelefoneITEM.AsInteger;
  Fdm1.tTelefone.Insert;
  Fdm1.tTelefoneCODPESSOA.AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tTelefoneITEM.AsInteger := vItem + 1;
  fTelefone.ShowModal;
  fTelefone.Free;
end;

procedure TfPessoa.BitBtn4Click(Sender: TObject);
begin
  if not Fdm1.tTelefone.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tTelefone.Delete;
      Fdm1.tTelefone.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.BitBtn8Click(Sender: TObject);
begin
  if not Fdm1.tPessoaServico.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tPessoaServico.Delete;
      Fdm1.tPessoaServico.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.JvDBGrid1DblClick(Sender: TObject);
begin
  if not Fdm1.tTelefone.IsEmpty then
  begin
    fTelefone := TfTelefone.Create(Self);

    fTelefone.Dm1 := Fdm1;

    Fdm1.tTelefone.Edit;
    fTelefone.ShowModal;
    fTelefone.Free;
  end;
end;

procedure TfPessoa.BitBtn7Click(Sender: TObject);
begin
  fPessoaServico := TfPessoaServico.Create(Self);

  fPessoaServico.Dm1 := Fdm1;

  Fdm1.tPessoaServico.Last;
  vItem := Fdm1.tPessoaServicoSERVICO_ID.Value;
  Fdm1.tPessoaServico.Insert;
  Fdm1.tPessoaServicoPESSOA_ID.Value := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaServicoSERVICO_ID.Value := vItem + 1;
  fPessoaServico.ShowModal;
  fPessoaServico.Free;
end;

procedure TfPessoa.JvDBGrid3DblClick(Sender: TObject);
begin
  if not Fdm1.tPessoaServico.IsEmpty then
  begin
    fPessoaServico := TfPessoaServico.Create(Self);

    fPessoaServico.Dm1 := Fdm1;
    
    Fdm1.tPessoaServico.Edit;
    fPessoaServico.ShowModal;
    fPessoaServico.Free;
  end;
end;

procedure TfPessoa.Label9Click(Sender: TObject);
begin
  fCidade := TfCidade.Create(Self);

  fCidade.Dm1 := Fdm1;

  Fdm1.tCidade.Insert;
  fCidade.ShowModal;
  Fdm1.tCidade.Close;
  Fdm1.tCidade.Open;
end;

procedure TfPessoa.JvDBGrid3TitleClick(Column: TColumn);
var
  i: Word;
begin
  Fdm1.tPessoaServico.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfPessoa.JvDBGrid1TitleClick(Column: TColumn);
var
  i: Word;
begin
  Fdm1.tTelefone.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
end;

procedure TfPessoa.Label41Click(Sender: TObject);
begin
  fCentroCusto := TfCentroCusto.Create(Self);

  fCentroCusto.Dm1 := Fdm1;

  Fdm1.tCentroCusto.Insert;
  fCentroCusto.ShowModal;
  Fdm1.tCentroCusto.Close;
  Fdm1.tCentroCusto.Open;
end;

procedure TfPessoa.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self,fDm1);
  oDBUtils.OpenTables(True,Self);

  PageControl1.ActivePageIndex := 3;
  PageControl2.ActivePageIndex := 0;
  PageControl1.ActivePageIndex := 0;

  Fdm1.tTelefone.Close;
  Fdm1.Telefone.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tTelefone.Open;
  Fdm1.tPessoaServico.Close;
  Fdm1.PessoaServico.ParamByName('P1').AsInteger := Fdm1.tPessoaID.AsInteger;
  Fdm1.tPessoaServico.Open;

  fdm1.cdsModulo.Open;

  JvDBComboBox1Change(Sender);
  JvDateEdit1.Text := Decoder1.DecodeString(fdm1.tPessoaDT_LIBERADO.AsString);
end;

procedure TfPessoa.JvDBComboBox1Change(Sender: TObject);
begin
  Label55.Visible  := JvDBComboBox1.Values[JvDBComboBox1.ItemIndex] = 'F';
  DBEdit41.Visible := JvDBComboBox1.Values[JvDBComboBox1.ItemIndex] = 'F';

  if not DBEdit41.Visible then
    DBEdit41.Clear;
end;

procedure TfPessoa.BitBtn5Click(Sender: TObject);
begin
  fPessoaHist := TfPessoaHist.Create(Self);
  fPessoaHist.fDm1 := fDm1;
  fDm1.cdsPessoaHist.Insert;
  fDm1.cdsPessoaHistID.AsInteger := fDm1.Incrementa('ID','PESSOA_HIST');
  fPessoaHist.ShowModal;
end;

procedure TfPessoa.BitBtn6Click(Sender: TObject);
begin
  if not Fdm1.cdsPessoaHist.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.cdsPessoaHist.Delete;
      Fdm1.cdsPessoaHist.ApplyUpdates(0);
    end;
end;

procedure TfPessoa.JvDBGrid2DblClick(Sender: TObject);
begin
  fPessoaHist := TfPessoaHist.Create(Self);
  fPessoaHist.fDm1 := fDm1;
  fDm1.cdsPessoaHist.Edit;
  fPessoaHist.ShowModal;
end;

procedure TfPessoa.BitBtn9Click(Sender: TObject);
begin
  fPessoaChaves := TfPessoaChaves.Create(Self);
  fPessoaChaves.fDm1 := fDm1;
  fDm1.cdsPessoaChave.Insert;
  fDm1.cdsPessoaChaveID.AsInteger := fDm1.Incrementa('ID','PESSOA_CHAVES');
  fPessoaChaves.ShowModal;
  if fDm1.tPessoa.State in [dsBrowse] then
    fDm1.tPessoa.Edit;
end;

procedure TfPessoa.BitBtn10Click(Sender: TObject);
begin
  if not Fdm1.cdsPessoaChave.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.cdsPessoaChave.Delete;
      Fdm1.cdsPessoaChave.ApplyUpdates(0);
      Fdm1.tPessoa.Edit;
    end;
end;

procedure TfPessoa.JvDBGrid4DblClick(Sender: TObject);
begin
  fPessoaChaves := TfPessoaChaves.Create(Self);
  fPessoaChaves.fDm1 := fDm1;
  fDm1.cdsPessoaChave.Edit;
  fPessoaChaves.ShowModal;
end;

procedure TfPessoa.BitBtn11Click(Sender: TObject);
begin
  fPessoaModulos := TfPessoaModulos.Create(Self);
  fPessoaModulos.fDm1 := fDm1;
  fDm1.cdsPessoaModulos.Insert;
  fPessoaModulos.ShowModal;
end;

procedure TfPessoa.BitBtn12Click(Sender: TObject);
begin
  if MessageDlg('Deseja realmente exlcuir este módulo?',mtConfirmation,[mbOk,mbNo],0) = mrOk then
    fDm1.cdsPessoaModulos.Delete;
end;

procedure TfPessoa.BitBtn13Click(Sender: TObject);
begin
  Prc_Gravar_Pessoa_FB(fdm1,fDm1.tPessoaID.AsInteger);
end;

end.
