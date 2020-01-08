unit uOrcamentoInstC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids, JvDBCtrl, UCBase, DBXpress, SMDBGrid,
  UDm1, rsDBUtils; //FR_Class,  FR_Shape, FR_DSet, FR_DBSet, FR_Rich, frRtfExp,

type
  TfOrcamentoInstC = class(TForm)
    Panel1: TPanel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Panel2: TPanel;
    Edit1: TEdit;
    Label1: TLabel;
    BitBtn5: TBitBtn;
{    frReport1: TfrReport;
    frShapeObject1: TfrShapeObject;
    frDBDataSet1: TfrDBDataSet;
    frRichObject1: TfrRichObject;
    frPedido_Clausula: TfrDBDataSet;
    frDBDataSet3: TfrDBDataSet;
    frDBDataSet4: TfrDBDataSet;
    frRtfAdvExport1: TfrRtfAdvExport;}
    UCControls1: TUCControls;
    BitBtn3: TBitBtn;
    RadioGroup1: TRadioGroup;
    SMDBGrid2: TSMDBGrid;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SMDBGrid2DblClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Consulta;
  public
    vNumOrcamento : Integer;
    vAltera : Boolean;
    { Public declarations }
  end;

var
  fOrcamentoInstC: TfOrcamentoInstC;

implementation

uses uOrcamentoInst, UMenu, UPedidoRel, UPedidoRelAvulso,
  UPedidoRelPermanente, UPedidoRelPermanenteAprov, DB;

{$R *.dfm}

procedure TfOrcamentoInstC.consulta;
begin
    Fdm1.tPedido.Close;
    if Edit1.Text = '[Digite o nome e pressione F3 para localizar]' then
      Edit1.Clear;
    case RadioGroup1.ItemIndex of
      0 :     Fdm1.Pedido.CommandText := 'SELECT A.*, B.NOME, C.NOME SERVICO, E.NOME CONDPGTO, F.DESCRICAO FORMA_PGTO ' +
                              'FROM PEDIDO A ' +
                              'FULL JOIN PESSOA B ON (A.CODCLIENTE = B.ID) ' +
                              'LEFT JOIN PEDIDOSERVICO D ON (D.PEDIDO_ID = A.NUMLACTO) ' +
                              'LEFT JOIN SERVICO C ON (C.ID = D.SERVICOAVULSO_ID) ' +
                              'LEFT JOIN CONDPGTO E ON (E.ID = A.CODCONDPGTO) ' +
                              'LEFT JOIN FORMAPGTO F ON (A.FORMA_PGTO_ID = F.ID) ' +
                              'WHERE (TIPO <> 4) and (TIPO <> 5) AND UPPER(NUMORCAMENTO) LIKE UPPER(''%' + Edit1.Text + '%'')';
      1 :     Fdm1.Pedido.CommandText := 'SELECT A.*, B.NOME,CAST ('''' AS CHAR(40)) AS SERVICO, E.NOME CONDPGTO, F.DESCRICAO FORMA_PGTO ' +
                              'FROM PEDIDO A ' +
                              'FULL JOIN PESSOA B ON (A.CODCLIENTE = B.ID) ' +
                              //'LEFT JOIN PEDIDOSERVICO D ON (D.PEDIDO_ID = A.NUMLACTO) ' +
                              //'LEFT JOIN SERVICO C ON (C.ID = D.SERVICOAVULSO_ID) ' +
                              'LEFT JOIN CONDPGTO E ON (E.ID = A.CODCONDPGTO) ' +
                              'LEFT JOIN FORMAPGTO F ON (A.FORMA_PGTO_ID = F.ID) ' +
                              'WHERE (TIPO <>1) and (TIPO <>2) and (TIPO <>3) AND UPPER(NUMORCAMENTO) LIKE UPPER(''%' + Edit1.Text + '%'')';
    end;
    Fdm1.tPedido.Open;
end;

procedure TfOrcamentoInstC.BitBtn1Click(Sender: TObject);
var
  vAux : String;
begin
  if not Fdm1.tPedido.Active then
    Fdm1.tPedido.Open;
  Fdm1.tPedido.Insert;
  Fdm1.tPedidoNUMLACTO.AsInteger     := 0;
  Fdm1.tPedidoNUMORCAMENTO.AsInteger := 0;
  Fdm1.tPedidoCODCLIENTE.AsInteger   := 0;
  Fdm1.tParametro.Open;
  Fdm1.tPedidoIMPOSTO.AsCurrency := Fdm1.tParametroIMPOSTO_NF.AsCurrency;
  Fdm1.tPedidoLUCRO.AsFloat      := Fdm1.tParametroPERCLUCRO.AsFloat;
  Fdm1.tParametro.Close;
  fOrcamentoInst := TfOrcamentoInst.Create(Self);

  fOrcamentoInst.Dm1 := Fdm1;

  fOrcamentoInst.JvDBComboBox3.Enabled := True;
  fOrcamentoInst.ShowModal;
  fOrcamentoInst.Free;

  if (Fdm1.tPedidoTIPO.AsString = '1') or (Fdm1.tPedidoTIPO.AsString = '2') or (Fdm1.tPedidoTIPO.AsString = '3') then
    RadioGroup1.ItemIndex := 0
  else
    RadioGroup1.ItemIndex := 1;

  consulta;

  if not vAltera then
  begin
    Fdm1.tPedido.IndexFieldNames := 'NUMORCAMENTO';
    Fdm1.tPedido.Last;
  end
  else
  begin
    if vNumOrcamento > 0 then
      Fdm1.tPedido.Locate('NUMLACTO',vNumOrcamento,([locaseinsensitive]));
    vAltera := False;
  end;

end;

procedure TfOrcamentoInstC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tCidade.Close;
  Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE';

  Fdm1.tPedido.Close;
  Fdm1.Pedido.CommandText := 'SELECT A.*, B.NOME, C.NOME SERVICO, E.NOME CONDPGTO, F.DESCRICAO FORMA_PGTO ' +
                            'FROM PEDIDO A ' +
                            'INNER JOIN PESSOA B ON (A.CODCLIENTE = B.ID) ' +
                            'LEFT JOIN PEDIDOSERVICO D ' +
                            'ON (D.PEDIDO_ID = A.NUMLACTO) ' +
                            'LEFT JOIN SERVICO C ' +
                            'ON (C.ID = D.SERVICOAVULSO_ID) ' +
                            'LEFT JOIN CONDPGTO E ' +
                            'ON (E.ID = A.CODCONDPGTO) ' +
                            'LEFT JOIN FORMAPGTO F ON (A.FORMA_PGTO_ID = F.ID)';
end;

procedure TfOrcamentoInstC.BitBtn2Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vDelta1,
  vDelta2,
  vDelta3,
  vDelta4,
  vDelta5 : OleVariant;

  iflag : Integer;

  sBookMark1,
  sBookMark2,
  sBookMark3,
  sBookMark4,
  sBookMark5 : string;
begin
  if not Fdm1.tPedido.IsEmpty then
    if MessageDlg('Deseja realmente excluir este registro?',mtconfirmation,[mbOk,mbNo],0) = mrOk then
    begin
      Fdm1.tPedidoIt.Close;
      Fdm1.PedidoIt.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
      Fdm1.tPedidoIt.Open;
      while not Fdm1.tPedidoIt.IsEmpty do
        Fdm1.tPedidoIt.Delete;
      Fdm1.tPedidoServicoPermanente.Close;
      Fdm1.PedidoServicoPermanente.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
      Fdm1.tPedidoServicoPermanente.Open;
      while not Fdm1.tPedidoServicoPermanente.IsEmpty do
        Fdm1.tPedidoServicoPermanente.Delete;
      Fdm1.tPedidoServico.Close;
      Fdm1.PedidoServico.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
      Fdm1.tPedidoServico.Open;
      while not Fdm1.tPedidoServico.IsEmpty do
        Fdm1.tPedidoServico.Delete;
      Fdm1.tPedido.Delete;

      try
        TD.TransactionID  := 1;
        TD.IsolationLevel := xilREADCOMMITTED;
        Fdm1.Conexao.StartTransaction(TD);

        sBookMark1 := Fdm1.tPedido.Bookmark;
        sBookMark2 := Fdm1.tPedidoIt.Bookmark;
        sBookMark3 := Fdm1.tPedidoServico.Bookmark;
        sBookMark4 := Fdm1.tPedidoServicoPermanente.Bookmark;
        sBookMark5 := Fdm1.tPedido_Clausula.Bookmark;

        vDelta1 := Fdm1.tPedido.Data;
        vDelta2 := Fdm1.tPedidoIt.Data;
        vDelta3 := Fdm1.tPedidoServico.Data;
        vDelta4 := Fdm1.tPedidoServicoPermanente.Data;
        vDelta5 := Fdm1.tPedido_Clausula.Data;

        iflag := 1;

        if Fdm1.tPedido.ChangeCount > 0 then
          Fdm1.tPedido.ApplyUpdates(0);
        iflag := 2;
        if Fdm1.tPedidoIt.ChangeCount > 0 then
          Fdm1.tPedidoIt.ApplyUpdates(0);
        iflag := 3;
        if Fdm1.tPedidoServico.ChangeCount > 0 then
          Fdm1.tPedidoServico.ApplyUpdates(0);
        iflag := 4;
        if Fdm1.tPedidoServicoPermanente.ChangeCount > 0 then
          Fdm1.tPedidoServicoPermanente.ApplyUpdates(0);
        iflag := 5;
        if Fdm1.tPedido_Clausula.ChangeCount > 0 then
          Fdm1.tPedido_Clausula.ApplyUpdates(0);

        Fdm1.Conexao.Commit(TD);

      except
        on E:Exception do
        begin
          if iflag = 2 then
            Fdm1.tPedido.Data  := vDelta1;
          if iflag = 3 then
            begin
              Fdm1.tPedido.Data  := vDelta1;
              Fdm1.tPedidoIt.Data  := vDelta2;
            end;
          if iflag = 4 then
            begin
              Fdm1.tPedido.Data         := vDelta1;
              Fdm1.tPedidoIt.Data       := vDelta2;
              Fdm1.tPedidoServico.Data  := vDelta3;
            end;
          if iflag = 5 then
            begin
              Fdm1.tPedido.Data         := vDelta1;
              Fdm1.tPedidoIt.Data       := vDelta2;
              Fdm1.tPedidoServico.Data  := vDelta3;
              Fdm1.tPedidoServicoPermanente.Data  := vDelta4;
            end;

          Fdm1.tPedido.Bookmark                   := sBookMark1;
          Fdm1.tPedidoIt.Bookmark                 := sBookMark2;
          Fdm1.tPedidoServico.Bookmark            := sBookMark3;
          Fdm1.tPedidoServicoPermanente.Bookmark  := sBookMark4;
          Fdm1.tPedido_Clausula.Bookmark          := sBookMark5;

          Fdm1.Conexao.Rollback(TD);
          ShowMessage('Erro ao tentar gravar o registro: ' + E.Message);
        end;
      end;
    end;
end;

procedure TfOrcamentoInstC.BitBtn5Click(Sender: TObject);
begin
  if Fdm1.tPedido.IsEmpty then
  begin
    ShowMessage('Sem orçamentos para imprimir!');
    Exit;
  end;

  if Fdm1.tPedidoTIPO.AsString = '4' then
  begin
    ShowMessage('relatório em desenvolvimento!');
    exit;
  end;

  Fdm1.tPessoa.Close;
  Fdm1.Pessoa.CommandText := 'SELECT * FROM PESSOA WHERE ID = :CODIGO';
  Fdm1.Pessoa.ParamByName('Codigo').AsInteger := Fdm1.tPedidoCODCLIENTE.AsInteger;
  Fdm1.tPessoa.Open;

  Fdm1.tPedido_Clausula.Close;
  Fdm1.Pedido_Clausula.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedido_Clausula.Open;

  Fdm1.tCidade.Close;
  if not Fdm1.tPedidoCIDADE_ID.IsNull then
    Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE WHERE ID = ' + Fdm1.tPedidoCIDADE_ID.AsString
  else
    if not Fdm1.tPessoaCIDADE.IsNull then
      Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE WHERE ID = ' + Fdm1.tPessoaCIDADE.AsString;
  Fdm1.tCidade.Open;
  if Fdm1.tPedidoTIPO.AsString = '2' then
  begin
    Fdm1.tPedidoServico.Close;
    Fdm1.PedidoServico.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
    Fdm1.tPedidoServico.Open;

//    frReport1.LoadFromFile('OrcamentoAvulso.frf');
//    oDBUtils.SetDataSourceProperties(frReport1, Fdm1);
//    frReport1.ShowReport;

    Fdm1.tPedidoServico.Close;
  end
  else
  if Fdm1.tPedidoTIPO.AsString = '3' then
  begin
    Fdm1.tPedidoServicoPermanente.Close;
    Fdm1.PedidoServicoPermanente.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
    Fdm1.tPedidoServicoPermanente.Open;
//    frReport1.LoadFromFile('OrcamentoPermanente.frf');
//    oDBUtils.SetDataSourceProperties(frReport1, Fdm1);
//    frReport1.ShowReport;
    Fdm1.tPedidoServicoPermanente.Close;
  end
  else
  if Fdm1.tPedidoTIPO.AsString = '1' then
  begin
    Fdm1.tPedidoIt.Close;
    Fdm1.PedidoIt.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
    Fdm1.tPedidoIt.Open;
    if Fdm1.tPedidoIt.IsEmpty then
    begin
      ShowMessage('Este pedido não possui itens!');
      Exit;
    end;
//    frReport1.LoadFromFile('OrcamentoInst.frf');
//    oDBUtils.SetDataSourceProperties(frReport1, Fdm1);
//    frReport1.ShowReport;
    Fdm1.tPedidoServicoPermanente.Close;
  end
  else
  if Fdm1.tPedidoTIPO.AsString = '4' then
  begin
    ShowMessage('relatório em desenvolvimento!');

    {Fdm1.tPedidoServico.Close;
    Fdm1.PedidoServico.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
    Fdm1.tPedidoServico.Open;
    if Fdm1.tPedidoServico.IsEmpty then
    begin
      ShowMessage('Este pedido não possui ordem de serviço!');
      Exit;
    end;
    // falta desenvolver o relatorio, ver com o PV layout   Cleomar
    frReport1.LoadFromFile('OrcamentoInst.frf');
    
    frReport1.ShowReport;
    Fdm1.tPedidoServico.Close;}
  end;
  Fdm1.tPessoa.Close;
  Fdm1.Pessoa.CommandText := 'SELECT * FROM PESSOA';
  Fdm1.Cidade.Close;
  Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE';
  Fdm1.tPedido_Clausula.Close;
end;

procedure TfOrcamentoInstC.BitBtn3Click(Sender: TObject);
var
  iNumPedido : Integer;
begin
  if Fdm1.tPedido.IsEmpty then
  begin
    ShowMessage('Sem orçamentos para imprimir!');
    Exit;
  end;
  iNumPedido := Fdm1.tPedidoNUMORCAMENTO.AsInteger;
  Fdm1.tPedido.Filtered := False;
  Fdm1.tPedido.Filter   := 'NUMORCAMENTO = ' + QuotedStr(IntToStr(iNumPedido));
  Fdm1.tPedido.Filtered := True;

  Fdm1.tPessoa.Close;
  Fdm1.Pessoa.CommandText := 'SELECT * FROM PESSOA WHERE ID = :CODIGO';
  Fdm1.Pessoa.ParamByName('Codigo').AsInteger := Fdm1.tPedidoCODCLIENTE.AsInteger;
  Fdm1.tPessoa.Open;
  Fdm1.tPedido_Clausula.Close;
  Fdm1.Pedido_Clausula.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
  Fdm1.tPedido_Clausula.Open;
  Fdm1.tCidade.Close;
  if not Fdm1.tPedidoCIDADE_ID.IsNull then
    Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE WHERE ID = ' + Fdm1.tPedidoCIDADE_ID.AsString
  else
    if not Fdm1.tPessoaCIDADE.IsNull then
      Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE WHERE ID = ' + Fdm1.tPessoaCIDADE.AsString;
  Fdm1.tCidade.Open;
  if Fdm1.tPedidoTIPO.AsString = '2' then
  begin
    Fdm1.tPedidoServico.Close;
    Fdm1.PedidoServico.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
    Fdm1.tPedidoServico.Open;

    fPedidoRelAvulso := TfPedidoRelAvulso.Create(Self);

    fPedidoRelAvulso.Dm1 := Fdm1;

    fPedidoRelAvulso.RLReport1.Preview;
    FreeAndNil(fPedidoRelAvulso);
    Fdm1.tPedido.Filtered := False;
//    frReport1.LoadFromFile('OrcamentoAvulso.frf');
//    frReport1.ShowReport;
    Fdm1.tPedidoServico.Close;
  end
  else // pedido aprovado
  if Fdm1.tPedidoTIPO.AsString = '3' then
  begin
    Fdm1.tPedidoServicoPermanente.Close;
    Fdm1.PedidoServicoPermanente.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
    Fdm1.tPedidoServicoPermanente.Open;
    if Fdm1.tPedidoSITUACAO.AsString = '2' then
      begin
        Fdm1.tPedidoIt.Close;
        Fdm1.PedidoIt.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
        Fdm1.tPedidoIt.Open;

        Fdm1.tParametro.Open;
        Fdm1.tParametro.First;
        fPedidoRelPermanenteAprov := TfPedidoRelPermanenteAprov.Create(Self);

        fPedidoRelPermanenteAprov.Dm1 := Fdm1;

        fPedidoRelPermanenteAprov.RLReport1.Preview;
        FreeAndNil(fPedidoRelPermanenteAprov);
        Fdm1.tParametro.Close;
      end
    else
      begin
        fPedidoRelPermanente := TfPedidoRelPermanente.Create(Self);

        fPedidoRelPermanente.Dm1 := Fdm1;

        fPedidoRelPermanente.RLReport1.Preview;
        FreeAndNil(fPedidoRelPermanente);
      end;
    Fdm1.tPedido.Filtered := False;

//    frReport1.LoadFromFile('OrcamentoPermanente.frf');
//    frReport1.ShowReport;
    Fdm1.tPedidoServicoPermanente.Close;
  end
  else
  if (Fdm1.tPedidoTIPO.AsString = '1') or (Fdm1.tPedidoTIPO.AsString = '4') or (Fdm1.tPedidoTIPO.AsString = '5')then
  begin
    Fdm1.tPedidoIt.Close;
    Fdm1.PedidoIt.ParamByName('P1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
    Fdm1.tPedidoIt.Open;

    Fdm1.tPedidoServico.Close;
    if (Fdm1.tPedidoTIPO.AsString = '4') or (Fdm1.tPedidoTIPO.AsString = '5')then
      begin
        Fdm1.PedidoServico.ParamByName('I1').AsInteger := Fdm1.tPedidoNUMLACTO.AsInteger;
        Fdm1.tPedidoServico.Open;
      end;

    {if Fdm1.tPedidoIt.IsEmpty then
    begin
      ShowMessage('Este pedido não possui itens!');
      Exit;
    end;}
    fPedidoRel := TfPedidoRel.Create(Self);

    fPedidoRel.Dm1 := Fdm1;

    fPedidoRel.Show;

    fPedidoRel.RLReport1.Preview;
    FreeAndNil(fPedidoRel);
    Fdm1.tPedido.Filtered := False;
//    frReport1.LoadFromFile('OrcamentoInst.frf');
//    frReport1.ShowReport;
    Fdm1.tPedidoServicoPermanente.Close;
  end;

  Fdm1.tPessoa.Close;
  Fdm1.Pessoa.CommandText := 'SELECT * FROM PESSOA';
  Fdm1.tCidade.Close;
  Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE';
  Fdm1.tPedido_Clausula.Close;
  Fdm1.tPedido.FindKey([iNumPedido]);
end;

procedure TfOrcamentoInstC.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = Vk_F3) then
  begin
    Consulta;
    if Edit1.Text = '' then
      Edit1.Text := '[Digite o nome e pressione F3 para localizar]';
    Fdm1.tPedido.IndexFieldNames := 'NUMORCAMENTO';
  end;
end;

procedure TfOrcamentoInstC.SMDBGrid2DblClick(Sender: TObject);
begin
  if not Fdm1.tPedido.IsEmpty then
  begin
    vNumOrcamento := Fdm1.tPedidoNUMLACTO.AsInteger;
    vAltera := True;
    fOrcamentoInst := TfOrcamentoInst.Create(Self);

    fOrcamentoInst.Dm1 := Fdm1;

    Fdm1.tPedido.Edit;
    fOrcamentoInst.JvDBComboBox3.Enabled := False;
    fOrcamentoInst.ShowModal;
    fOrcamentoInst.Free;
    Fdm1.tPedido.Close;
    Fdm1.tPedido.Open;
    if vNumOrcamento > 0 then
      Fdm1.tPedido.Locate('NUMLACTO',vNumOrcamento,([locaseinsensitive]));
    vAltera := False;
  end;
end;

procedure TfOrcamentoInstC.FormShow(Sender: TObject);
begin
  vAltera := False;
end;

procedure TfOrcamentoInstC.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, fdm1);
end;

procedure TfOrcamentoInstC.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
