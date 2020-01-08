unit UOS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Math,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, JvToolEdit, JvCurrEdit, DBXpress,
  DBClient, Provider, JvCombobox, JvDBComb;

type
  TfOS = class(TForm)
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
    JvDBDateEdit2: TJvDBDateEdit;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    Label4: TLabel;
    JvDBLookupCombo4: TJvDBLookupCombo;
    Label6: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    Label7: TLabel;
    PageControl2: TPageControl;
    TSProdutos: TTabSheet;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    JvComboBox1: TJvComboBox;
    Label9: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label10: TLabel;
    JvDateEdit2: TJvDateEdit;
    Edit1: TEdit;
    Label13: TLabel;
    JvDBDateEdit3: TJvDBDateEdit;
    Label15: TLabel;
    DBEdit8: TDBEdit;
    DBEdit3: TDBEdit;
    JvDBComboBox1: TJvDBComboBox;
    Label11: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBLookupCombo1Change(Sender: TObject);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure Label7Click(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure Label24Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
  private
    { Private declarations }
    procedure Habilita;
    procedure Consulta;
    procedure Atualiza;
  public
    { Public declarations }
  end;

var
  fOS: TfOS;
  vAlteraORC : String;

implementation

uses UDm1, UDmCons, UPessoa, UNatOperacao, UCondPgto;

{$R *.dfm}

procedure TfOS.Atualiza;
begin
  if Dm1.tPedido.State in [dsInactive,dsBrowse] then
    begin
      Dm1.tPedido.Close;
      Dm1.tPedidoIt.Close;
      if BitBtn1.Tag = 1 then
        begin
          Dm1.Pedido.ParamByName('Codigo').AsInteger    := 0;
          Dm1.PedidoIt.ParamByName('Codigo').AsInteger  := 0;
        end
      else
        begin
          Dm1.Pedido.ParamByName('Codigo').AsInteger    := DmCons.qPedidoNUMLACTO.AsInteger;
          Dm1.PedidoIt.ParamByName('Codigo').AsInteger  := DmCons.qPedidoNUMLACTO.AsInteger;
        end;
      Dm1.tPedido.Open;
      Dm1.tPedidoIt.Open;
    end;
end;

procedure TfOS.Consulta;
begin
  DmCons.qPedido.Close;       
  DmCons.Pedido.SQL.Clear;
  DmCons.Pedido.SQL.Add('Select PEDIDO.*, PESSOA.NOME NOMECLIENTE,  NATOPERACAO.CODIGO CODFISCALNATOPER, CONDPGTO.NOME NOMECONDPGTO');
  DmCons.Pedido.SQL.Add('from PEDIDO');
  DmCons.Pedido.SQL.Add('full join PESSOA on');
  DmCons.Pedido.SQL.Add('(PESSOA.ID = PEDIDO.CODCLIENTE)');
  DmCons.Pedido.SQL.Add('full join NATOPERACAO on');
  DmCons.Pedido.SQL.Add('(NATOPERACAO.ID = PEDIDO.CODNATOPER)');
  DmCons.Pedido.SQL.Add('full join CONDPGTO on');
  DmCons.Pedido.SQL.Add('(CONDPGTO.ID = PEDIDO.CODCONDPGTO)');
  DmCons.Pedido.SQL.Add('where PEDIDO.TIPO = :Tipo');
  DmCons.Pedido.Params[0].AsString := 'O';
  DmCons.qPedido.Open;
end;

procedure TfOS.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DmCons.qNatOperacao.Close;
  DmCons.qCliente.Close;
  DmCons.qVendedor.Close;
  DmCons.qCondPgto.Close;
  DmCons.qProduto.Close;
  Action := Cafree;
end;

procedure TfOS.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  BitBtn2.Tag := 0;
  PageControl1.ActivePageIndex := 1;
  Habilita;
  Atualiza;
  Dm1.tPedido.Insert;
  DM1.tPedidoTIPO.AsString := 'O';
  JvDBLookupCombo4.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfOS.BitBtn2Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 1) and (DBEdit1.Text = '') then
    ShowMessage('Registro vazio, não pode ser alterado!')
  else
  if (DmCons.qPedidoNUMLACTO.AsInteger > 0) then
    begin    
      BitBtn2.Tag := 1;
      PageControl1.ActivePageIndex := 1;
      Dm1.tPedido.Edit;
      Habilita;
      JvDBLookupCombo4.SetFocus;
    end;
end;

procedure TfOS.BitBtn3Click(Sender: TObject);
begin
  Dm1.tPedido.Cancel;
  Dm1.tPedidoIt.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfOS.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Consulta;
  DmCons.qNatOperacao.Open;
  DmCons.qCliente.Open;
  DmCons.qVendedor.Open;
  DmCons.qCondPgto.Open;
  DmCons.qProduto.Open;
end;

procedure TfOS.BitBtn5Click(Sender: TObject);
//var
//  TD : TTransactionDesc;
//  vCodigo : Integer;
begin
{  if (DM1.tPedidoCODCLIENTE.AsInteger > 0) and (JvDBDateEdit2.Text <> '') then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Dm1.Conexao.StartTransaction(TD);
      if Dm1.tPedido.State = dsInsert then
        begin
          vCodigo := Dm1.Incrementa('NUMLACTO','PEDIDO');
          Dm1.tPedidoNUMOS.AsInteger := Dm1.Incrementa('NUMOS','PEDIDO');
          Dm1.tPedidoIt.Last;
          while not Dm1.tPedidoIt.Bof do
            begin
              Dm1.tPedidoIt.Edit;
              Dm1.tPedidoItNUMLACTO.AsInteger := vCodigo;
              Dm1.tPedidoIt.Prior;
            end;
          if Dm1.tPedidoIt.State in [dsEdit,dsInsert] then
            Dm1.PedidoIt.Post;
          Dm1.tPedidoNUMLACTO.AsInteger := vCodigo;
        end;
      Dm1.tPedido.Post;
      Dm1.tPedidoIt.ApplyUpdates(0);
      Dm1.tPedido.ApplyUpdates(0);
      Dm1.Conexao.Commit(TD);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
      except
      Dm1.Conexao.Rollback(TD);
      end;
    end
  else
    ShowMessage('Esta faltando o Cliente ou Data Emissão!');}
end;

procedure TfOS.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Dm1.Conexao.StartTransaction(TD);
      Atualiza;
      DM1.tPedidoIt.First;
      while not DM1.tPedidoIt.Eof do
        DM1.tPedidoIt.Delete;
      Dm1.tPedido.Delete;
      Dm1.tPedidoIt.ApplyUpdates(0);
      Dm1.tPedido.ApplyUpdates(0);
      Consulta;
      Dm1.Conexao.Commit(TD);
      Consulta;
      except
      Dm1.Conexao.Rollback(TD);
      end;
    end;
end;

procedure TfOS.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
  PageControl2.ActivePageIndex := 0;
end;

procedure TfOS.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfOS.JvDBLookupCombo1Change(Sender: TObject);
begin
  Consulta;
end;

procedure TfOS.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
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

procedure TfOS.StaticText1Click(Sender: TObject);
begin
{  if BitBtn3.Enabled then
    begin
      if Dm1.tPedidoCODCLIENTE.AsInteger < 1 then
        ShowMessage('Falta informar o número cliente!')
      else
        begin
          vAlteraORC        := 'I';
          if PageControl2.ActivePageIndex = 0 then
            vTabSheet := 'TSProdutos';
          fOSIt := TfOSIt.Create(Self);
          fOSIt.ShowModal;
        end;
    end;}
end;

procedure TfOS.StaticText2Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 0) and (Dm1.tPedidoIt.RecordCount < 1)) then
        ShowMessage('Tabela Vazia!')
      else
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          if PageControl2.ActivePageIndex = 0 then
            begin
              DM1.tPedidoVLRTOTAL.AsFloat := DM1.tPedidoVLRTOTAL.AsFloat - Dm1.tPedidoItVLRTOTAL.AsFloat;
              Dm1.tPedidoIt.Delete;
            end;
        end;
    end;
end;

procedure TfOS.StaticText3Click(Sender: TObject);
begin
{  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 0) and (Dm1.tPedidoIt.IsEmpty) then
        ShowMessage('Tabela vazia!')
      else
        begin
          vAlteraORC     := 'A';
          if PageControl2.ActivePageIndex = 0 then
            vTabSheet := 'TSProdutos';
          fOSIt := TfOSIt.Create(Self);
          fOSIt.ShowModal;
        end;
    end;}
end;

procedure TfOS.JvDBGrid2DblClick(Sender: TObject);
begin
{  if Dm1.tPedidoIt.IsEmpty then
    ShowMessage('Tabela vazia!')
  else
    begin
      vAlteraORC := 'C';
      vTabSheet  := 'TSProdutos';
      fOSIt := TfOSIt.Create(Self);
      fOSIt.ShowModal;
    end;}
end;

procedure TfOS.Label4Click(Sender: TObject);
begin
  DmCons.qCliente.Close;
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
  DmCons.qCliente.Open;
end;

procedure TfOS.Label7Click(Sender: TObject);
begin
  fNatOperacao := TfNatOperacao.Create(Self);
  fNatOperacao.ShowModal;
  DmCons.qNatOperacao.Close;
  DmCons.qNatOperacao.Open;
end;

procedure TfOS.StaticText4Click(Sender: TObject);
begin
  if PageControl2.ActivePageIndex = 0 then
    JvDBGrid2DblClick(Sender);
end;

procedure TfOS.Label24Click(Sender: TObject);
begin
  DmCons.qCondPgto.Close;
  fCondPgto := TfCondPgto.Create(Self);
  fCondPgto.ShowModal;
  DmCons.qCondPgto.Open;
end;

procedure TfOS.Edit1Change(Sender: TObject);
begin
  DmCons.qPedido.Close;
  DmCons.Pedido.SQL.Clear;
  DmCons.Pedido.SQL.Add('Select PEDIDO.*, PESSOA.NOME NOMECLIENTE,  NATOPERACAO.CODIGO CODFISCALNATOPER,  CONDPGTO.NOME NOMECONDPGTO');
  DmCons.Pedido.SQL.Add('from PEDIDO');
  DmCons.Pedido.SQL.Add('inner join PESSOA on');
  DmCons.Pedido.SQL.Add('(PESSOA.ID = PEDIDO.CODCLIENTE)');
  DmCons.Pedido.SQL.Add('left join NATOPERACAO on');
  DmCons.Pedido.SQL.Add('(NATOPERACAO.ID = PEDIDO.CODNATOPER)');
  DmCons.Pedido.SQL.Add('left join CONDPGTO on');
  DmCons.Pedido.SQL.Add('(CONDPGTO.ID = PEDIDO.CODCONDPGTO)');
  DmCons.Pedido.SQL.Add('where PEDIDO.TIPO = ''O'' ');
  case JvComboBox1.ItemIndex of
    0 : DmCons.Pedido.SQL.Add(' and PEDIDO.NUMOS LIKE ''%' + Edit1.Text + '%''');
    1 : DmCons.Pedido.SQL.Add(' and PESSOA.NOME LIKE ''%' + Edit1.Text + '%''');
    2 : begin
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.Pedido.SQL.Add(' and PEDIDO.DTPREVENTREGA >= :D1');
              DmCons.Pedido.ParamByName('D1').AsDate := JvDateEdit1.Date;
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.Pedido.SQL.Add(' and PEDIDO.DTPREVENTREGA <= :D2');
              DmCons.Pedido.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
    3 : begin
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.Pedido.SQL.Add(' and PEDIDO.DTENTREGA >= :D1');
              DmCons.Pedido.ParamByName('D1').AsDate := JvDateEdit1.Date;
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.Pedido.SQL.Add(' and PEDIDO.DTENTREGA <= :D2');
              DmCons.Pedido.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
    4 : begin
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.Pedido.SQL.Add(' and PEDIDO.DTPEDIDO >= :D1');
              DmCons.Pedido.ParamByName('D1').AsDate := JvDateEdit1.Date;
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.Pedido.SQL.Add(' and PEDIDO.DTPEDIDO <= :D2');
              DmCons.Pedido.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
  end;
  DmCons.qPedido.Open;
end;

procedure TfOS.JvDBGrid1TitleClick(Column: TColumn);
var
  i : Integer;
begin
  DmCons.qPedido.IndexFieldNames := Column.FieldName;
  Column.Color := clInfoBK;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Color := clWhite;
end;

procedure TfOS.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
end;

procedure TfOS.JvComboBox1Change(Sender: TObject);
begin
  case JvComboBox1.ItemIndex of
    0,1   : begin
              Edit1.Visible := True;
              Label9.Caption := '';
              Label10.Caption := '';
              JvDateEdit1.Visible := False;
              JvDateEdit2.Visible := False;
            end;
    2,3,4 : begin
              Edit1.Visible := False;
              Label9.Caption  := 'Data Inicial:';
              Label10.Caption := 'Data Final:';
              JvDateEdit1.Visible := True;
              JvDateEdit2.Visible := True;
            end;
  end;
end;

procedure TfOS.Label11Click(Sender: TObject);
begin
  DmCons.qVendedor.Close;
  fPessoa := TfPessoa.Create(Self);
  fPessoa.ShowModal;
  DmCons.qVendedor.Open;
end;

procedure TfOS.DBEdit2Exit(Sender: TObject);
begin
{  if not Dm1.tPedidoIt.IsEmpty then
    begin
      if DBEdit2.Text <> '' then
        begin
          Dm1.tPedidoVLRTOTAL.AsFloat := Dm1.tPedidoVLRTOTAL.AsFloat - (Dm1.tPedidoVLRTOTAL.AsFloat * Dm1.tPedidoPERCDESCONTO.AsFloat / 100);
          Dm1.tPedidoVLRDESCONTO.AsFloat := (Dm1.tPedidoVLRTOTAL.AsFloat * Dm1.tPedidoPERCDESCONTO.AsFloat / 100);
      end;
    end}
end;

procedure TfOS.DBEdit2Enter(Sender: TObject);
begin
{  if not Dm1.tPedidoIt.IsEmpty then
    begin
      if DBEdit2.Text <> '' then
        Dm1.tPedidoVLRTOTAL.AsFloat := Dm1.tPedidoVLRTOTAL.AsFloat + Dm1.tPedidoVLRDESCONTO.AsFloat;
    end
  else
    ShowMessage('Deve haver itens no orçamento para ser efetuado o desconto!');}
end;

procedure TfOS.DBEdit11Exit(Sender: TObject);
begin
  PageControl2.SetFocus;
end;

end.
