unit UDctoEstoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, JvToolEdit, JvCurrEdit, DBXpress,
  DBClient, Provider, JvCombobox, JvxCtrls, JvDBComb;

type
  TfDctoEstoque = class(TForm)
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
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn1: TBitBtn;
    PageControl2: TPageControl;
    TSProdutos: TTabSheet;
    JvDBGrid2: TJvDBGrid;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    StaticText4: TStaticText;
    JvComboBox1: TJvComboBox;
    Label12: TLabel;
    JvDateEdit1: TJvDateEdit;
    Label13: TLabel;
    JvDateEdit2: TJvDateEdit;
    Edit1: TEdit;
    DctoEstoqueIt: TSQLQuery;
    DctoEstoqueItP: TDataSetProvider;
    tDctoEstoqueIt: TClientDataSet;
    NotaFiscal: TSQLQuery;
    NotaFiscalP: TDataSetProvider;
    qNotaFiscal: TClientDataSet;
    qNotaFiscalNUMNOTA: TIntegerField;
    DBEdit6: TDBEdit;
    StaticText8: TStaticText;
    Label2: TLabel;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    JvDBDateEdit1: TJvDBDateEdit;
    Label19: TLabel;
    JvDBComboBox2: TJvDBComboBox;
    tDctoEstoqueItNUMDOCTO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure JvDBGrid2DblClick(Sender: TObject);
    procedure StaticText4Click(Sender: TObject);
    procedure JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edit1Change(Sender: TObject);
    procedure JvComboBox1Change(Sender: TObject);
    procedure JvComboBox1Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
  private
    { Private declarations }
//    vEstoque : Boolean;
    procedure Habilita;
    procedure Atualiza;
    procedure Estoque(TipoEstoque : String);
    procedure Exclui_MovEst;
  public
    { Public declarations }
  end;

var
  fDctoEstoque: TfDctoEstoque;

implementation

uses UDm1, UDmCons, Math, StdConvs, UDctoEstoqueIt;

{$R *.dfm}

procedure TfDctoEstoque.Exclui_MovEst;
begin
  try
    begin
      tDctoEstoqueIt.First;
      while not tDctoEstoqueIt.Eof do
        begin
          Dm1.tEstoqueMov.Close;
          Dm1.EstoqueMov.ParamByName('Codigo').AsInteger := tDctoEstoqueItNUMDOCTO.AsInteger;
          Dm1.tEstoqueMov.Open;
          Dm1.tEstoqueMov.Delete;
          Dm1.tEstoqueMov.ApplyUpdates(0);
          tDctoEstoqueIt.Next;
        end;
    end;
  except
  end;
end;
procedure TfDctoEstoque.Estoque(TipoEstoque : String);
begin
  Dm1.tDctoEstoqueIt.First;
  while not Dm1.tDctoEstoqueIt.Eof do
    begin
       //*** Movimento do estoque
      Dm1.tEstoqueMov.Close;
      Dm1.EstoqueMov.ParamByName('Codigo').AsInteger := 0;
      Dm1.tEstoqueMov.Open;
      Dm1.tEstoqueMov.Insert;
      Dm1.tEstoqueMovNUMMOV.AsInteger     := Dm1.Incrementa('NUMMOV','ESTOQUEMOV');
      Dm1.tEstoqueMovCODPRODUTO.AsInteger := DM1.tDctoEstoqueItCODPRODUTO.AsInteger;
      DM1.tEstoqueMovTAMANHO.AsString     := DM1.tDctoEstoqueItTAMANHO.AsString;
      DM1.tEstoqueMovDTMOV.AsDateTime     := DM1.tDctoEstoqueDTMOV.AsDateTime;
      DM1.tEstoqueMovES.AsString          := TipoEstoque;
      DM1.tEstoqueMovTIPOMOV.AsString     := 'DOC';
      DM1.tEstoqueMovNUMDOCTO.AsInteger   := DM1.tDctoEstoqueNUMDOCTO.AsInteger;
      DM1.tEstoqueMovPRECOCUSTO.AsFloat   := DM1.tDctoEstoqueItPRECO.AsFloat;
      DM1.tEstoqueMovQTD.AsFloat          := DM1.tDctoEstoqueItQTD.AsFloat;
      if TipoEstoque = 'E' then
        DM1.tEstoqueMovQTD2.AsFloat          := DM1.tDctoEstoqueItQTD.AsFloat
      else
        DM1.tEstoqueMovQTD2.AsFloat          := DM1.tDctoEstoqueItQTD.AsFloat * -1;
      DM1.tEstoqueMovUNIDADE.AsString     := DM1.tDctoEstoqueItUM.AsString;
      Dm1.tEstoqueMov.Post;
      Dm1.tDctoEstoqueIt.Edit;
      Dm1.tDctoEstoqueItNUMMOVEST.AsInteger := Dm1.tEstoqueMovNUMMOV.AsInteger;
      Dm1.tDctoEstoqueIt.Post;
      DM1.tEstoqueMov.ApplyUpdates(0);
      Dm1.tDctoEstoqueIt.Next;
    end;
end;

procedure TfDctoEstoque.Atualiza;
begin
  if Dm1.tDctoEstoque.State in [dsInactive,dsBrowse] then
    begin
      Dm1.tDctoEstoque.Close;
      Dm1.tDctoEstoqueIt.Close;
      if BitBtn1.Tag = 1 then
        begin
          Dm1.DctoEstoque.ParamByName('Codigo').AsInteger      := 0;
          Dm1.DctoEstoqueIt.ParamByName('Codigo').AsInteger    := 0;
        end
      else
        begin
          Dm1.DctoEstoque.ParamByName('Codigo').AsInteger      := DmCons.qDctoEstoqueNUMDOCTO.AsInteger;
          Dm1.DctoEstoqueIt.ParamByName('Codigo').AsInteger    := DmCons.qDctoEstoqueNUMDOCTO.AsInteger;
        end;
      Dm1.tDctoEstoque.Open;
      Dm1.tDctoEstoqueIt.Open;
    end;
end;

procedure TfDctoEstoque.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfDctoEstoque.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DM1.tDctoEstoque.Close;
  DM1.tDctoEstoqueIt.Close;
  DmCons.qDctoEstoque.Close;
  Action := Cafree;
end;

procedure TfDctoEstoque.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  PageControl1.ActivePageIndex := 0;
  Habilita;
  Atualiza;
  Dm1.tDctoEstoque.Insert;
  Dm1.tDctoEstoqueNUMDOCTO.AsInteger := Dm1.Incrementa('NUMDOCTO','DOCESTOQUE');
  DBEdit2.ReadOnly := False;
  JvDBDateEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfDctoEstoque.BitBtn2Click(Sender: TObject);
begin
  if (PageControl1.ActivePageIndex = 1) and (DBEdit1.Text = '') then
    ShowMessage('Registro vazio, não pode ser alterado!')
  else
  if (DmCons.qDctoEstoqueNUMDOCTO.AsInteger > 0) then
    begin
      BitBtn2.Tag := 1;
      PageControl1.ActivePageIndex := 1;
      Habilita;
      Dm1.tDctoEstoque.Edit;
      JvDBDateEdit1.SetFocus;
    end;
end;

procedure TfDctoEstoque.BitBtn3Click(Sender: TObject);
begin
  Dm1.tDctoEstoqueIt.Cancel;
  Dm1.tDctoEstoque.Cancel;
  Habilita;
  PageControl1.ActivePageIndex := 0;
end;

procedure TfDctoEstoque.FormCreate(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 0;
  Edit1Change(Sender);
end;

procedure TfDctoEstoque.BitBtn5Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  if (JvDBDateEdit1.Text <> '  /  /    ') and (JvDBComboBox2.Text <> '') then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Dm1.Conexao.StartTransaction(TD);
      Dm1.tDctoEstoque.Post;
      if tDctoEstoqueIt.Active then
        Exclui_MovEst;
      if Dm1.tDctoEstoqueES.AsString = 'S' then
        Estoque('S')
      else
        Estoque('E');
      Dm1.tDctoEstoqueIt.ApplyUpdates(0);
      Dm1.tDctoEstoque.ApplyUpdates(0);
      Dm1.Conexao.Commit(TD);
      Habilita;
      Edit1.OnChange(Sender);
      except
      Dm1.Conexao.Rollback(TD);
      end;
    end
  else
    ShowMessage('Data e tipo de estoque não pode ser vazio!');
end;

procedure TfDctoEstoque.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
begin
  PageControl2.Show;
  if (MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK) then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Dm1.Conexao.StartTransaction(TD);
      Atualiza;
      DM1.tDctoEstoqueIt.First;
      while not DM1.tDctoEstoqueIt.Eof do
        DM1.tDctoEstoqueIt.Delete;
      Dm1.tDctoEstoque.Delete;
      Dm1.tDctoEstoqueIt.ApplyUpdates(0);
      Dm1.tDctoEstoque.ApplyUpdates(0);
      Edit1Change(Sender);
      Dm1.Conexao.Commit(TD);
      except
      Dm1.Conexao.Rollback(TD);
      end;
    end
  else
    ShowMessage('Não foi possivel excluir a nota fiscal pois não é a ultima!');
end;

procedure TfDctoEstoque.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfDctoEstoque.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfDctoEstoque.JvDBGrid2KeyDown(Sender: TObject; var Key: Word;
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

procedure TfDctoEstoque.StaticText1Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      fDctoEstoqueIt := TfDctoEstoqueIt.Create(Self);
      fDctoEstoqueIt.Tag := 1;
      fDctoEstoqueIt.ShowModal;
    end;
end;

procedure TfDctoEstoque.StaticText2Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 1) and (Dm1.tDctoEstoqueIt.RecordCount < 1)) then
        ShowMessage('Tabela Vazia!')
      else
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        begin
          if PageControl2.ActivePageIndex = 0 then
            begin
              DM1.tDctoEstoqueVLRTOTAL.AsFloat := DM1.tDctoEstoqueVLRTOTAL.AsFloat - Dm1.tDctoEstoqueItPRECOTOTAL.AsFloat;
              Dm1.tDctoEstoqueIt.Delete;
            end;
        end;
    end;
end;

procedure TfDctoEstoque.StaticText3Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      if ((PageControl2.ActivePageIndex = 0) and (Dm1.tDctoEstoqueIt.RecordCount < 1)) then
        ShowMessage('Tabela Vazia!')
      else
        begin
          fDctoEstoqueIt := TfDctoEstoqueIt.Create(Self);
          fDctoEstoqueIt.Tag := 2;
          fDctoEstoqueIt.ShowModal;
        end;
    end;
end;

procedure TfDctoEstoque.JvDBGrid2DblClick(Sender: TObject);
begin
  if Dm1.tPedidoIt.RecordCount < 1 then
    ShowMessage('Tabela Vazia!')
  else
    begin
      fDctoEstoqueIt := TfDctoEstoqueIt.Create(Self);
      fDctoEstoqueIt.Tag := 3;
      fDctoEstoqueIt.ShowModal;
    end;
end;

procedure TfDctoEstoque.StaticText4Click(Sender: TObject);
begin
  if PageControl2.ActivePageIndex = 0 then
    JvDBGrid2DblClick(Sender)
end;

procedure TfDctoEstoque.JvDBGrid4KeyDown(Sender: TObject; var Key: Word;
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

procedure TfDctoEstoque.Edit1Change(Sender: TObject);
var
 vSeparador : String;
begin
  DmCons.qDctoEstoque.Close;
  DmCons.DctoEstoque.SQL.Clear;
  DmCons.DctoEstoque.SQL.Add('Select NUMDOCTO, DTMOV, ES, MOTIVO, VLRTOTAL');
  DmCons.DctoEstoque.SQL.Add('from DOCESTOQUE');
  case JvComboBox1.ItemIndex of
    0 : DmCons.DctoEstoque.SQL.Add(' WHERE NUMDOCTO LIKE ''%' + Edit1.Text + '%''');
    1 : begin
          vSeparador := 'WHERE';
          if (JvDateEdit1.Date > 1) then
            begin
              DmCons.DctoEstoque.SQL.Add(' WHERE DTMOV >= :D1');
              DmCons.DctoEstoque.ParamByName('D1').AsDate := JvDateEdit1.Date;
              vSeparador := ' AND ';
            end;
          if (JvDateEdit2.Date > 1) then
            begin
              DmCons.DctoEstoque.SQL.Add(vSeparador + ' DTMOV <= :D2');
              DmCons.DctoEstoque.ParamByName('D2').AsDate := JvDateEdit2.Date;
            end;
        end;
  end;
  DmCons.qDctoEstoque.Open;
end;

procedure TfDctoEstoque.JvComboBox1Change(Sender: TObject);
begin
  case JvComboBox1.ItemIndex of
    0   : begin
            Edit1.Visible := True;
            Label12.Caption := '';
            Label13.Caption := '';
            JvDateEdit1.Visible := False;
            JvDateEdit2.Visible := False;
          end;
    1   : begin
            Edit1.Visible := False;
            Label12.Caption := 'Data Inicial:';
            Label13.Caption := 'Data Final:';
            JvDateEdit1.Visible := True;
            JvDateEdit2.Visible := True;
          end;
  end;
end;

procedure TfDctoEstoque.JvComboBox1Enter(Sender: TObject);
begin
  Edit1.Clear;
  JvDateEdit1.Clear;
  JvDateEdit2.Clear;
end;

procedure TfDctoEstoque.DBEdit2Exit(Sender: TObject);
begin
  PageControl2.SetFocus;
end;

end.
