unit UCondPgto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, ComCtrls, StdCtrls, Buttons,
  JvLookup, DBCtrls, Mask, DB, FMTBcd, SqlExpr, DBVGrids, DBXpress, UCBase,
  UDm1, rsDBUtils;

type
  TfCondPgto = class(TForm)
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
    Label6: TLabel;
    DBEdit3: TDBEdit;
    Label7: TLabel;
    DBEdit4: TDBEdit;
    DBRadioGroup1: TDBRadioGroup;
    DBCheckBox2: TDBCheckBox;
    GroupBox1: TGroupBox;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    VDBGrid1: TVDBGrid;
    Edit1: TEdit;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit5: TDBEdit;
    Label4: TLabel;
    UCControls1: TUCControls;
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
    procedure Edit1Change(Sender: TObject);
    procedure VDBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure StaticText1Click(Sender: TObject);
    procedure StaticText2Click(Sender: TObject);
    procedure StaticText3Click(Sender: TObject);
    procedure DBCheckBox1Click(Sender: TObject);
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
  fCondPgto: TfCondPgto;
  vAltera : String;

implementation

uses UDmCons, UCondPgtoIt, UMenu, DBClient;

{$R *.dfm}

procedure TfCondPgto.Atualiza;
begin
  if Fdm1.tCondPgto.State in [dsInactive,dsBrowse] then
    begin
      Fdm1.tCondPgto.Close;
      Fdm1.tCondPgtoIt.Close;
      if BitBtn1.Tag = 1 then
        begin
          Fdm1.CondPgto.ParamByName('Codigo').AsInteger := 0;
          Fdm1.CondPgtoIt.ParamByName('Codigo').AsInteger := 0;
        end
      else
        begin
          Fdm1.CondPgto.ParamByName('Codigo').AsInteger := DmCons.qCondPgtoID.AsInteger;
          Fdm1.CondPgtoIt.ParamByName('Codigo').AsInteger := DmCons.qCondPgtoID.AsInteger;
        end;
      Fdm1.tCondPgto.Open;
      Fdm1.tCondPgtoIt.Open;
    end;
end;

procedure TfCondPgto.Consulta;
begin
  DmCons.qCondPgto.Close;
  DmCons.CondPgto.SQL.Clear;
  DmCons.CondPgto.SQL.Add('SELECT *');
  DmCons.CondPgto.SQL.Add('FROM CONDPGTO');
  DmCons.CondPgto.SQL.Add('ORDER BY NOME');
  DmCons.qCondPgto.Open;
end;

procedure TfCondPgto.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  TabSheet1.TabVisible := not TabSheet1.TabVisible;
end;

procedure TfCondPgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdm1.tCondPgto.Close;
  Fdm1.tCondPgtoIt.Close;
  Action := Cafree;
end;

procedure TfCondPgto.BitBtn1Click(Sender: TObject);
begin
  BitBtn1.Tag := 1;
  PageControl1.ActivePageIndex := 1;
  Atualiza;
  Habilita;
  Fdm1.tCondPgto.Insert;
  DBEdit1.SetFocus;
  BitBtn1.Tag := 0;
end;

procedure TfCondPgto.BitBtn2Click(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
  Fdm1.tCondPgto.Edit;
  Habilita;
end;

procedure TfCondPgto.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tCondPgtoIt.Cancel;
  Fdm1.tCondPgto.Cancel;
  Atualiza;
  Habilita;
  PageControl1.ActivePage := TabSheet1;
end;

procedure TfCondPgto.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePageIndex := 0;
  DmCons.qCondPgto.Open;
end;

procedure TfCondPgto.BitBtn5Click(Sender: TObject);
var
  vCodigo : integer;
  TD : TTransactionDesc;
  vDelta1,
  vDelta2 : OleVariant;

  iflag : Integer;

  sBookMark1,
  sBookMark2 : string;


begin
  vCodigo := 0;
  if DBEdit1.Text <> '' then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      iflag := 0;

      if Fdm1.tCondPgto.State in [dsInsert] then
        begin
          vCodigo := Fdm1.Incrementa('ID','CONDPGTO');
          Fdm1.tCondPgtoIt.Last;
          while not Fdm1.tCondPgtoIt.Bof do
            begin
              Fdm1.tCondPgtoIt.Edit;
              Fdm1.tCondPgtoItCODCONDPGTO.AsInteger := vCodigo;
              Fdm1.tCondPgtoIt.Prior;
            end;
          if Fdm1.tCondPgtoIt.State in [dsEdit,dsInsert] then
            Fdm1.tCondPgtoIt.Post;
        end;
      if Fdm1.tCondPgto.State = dsInsert then
        Fdm1.tCondPgtoID.AsInteger := vCodigo;
      Fdm1.tCondPgto.Post;


      sBookMark1 := Fdm1.tCondPgto.Bookmark;
      sBookMark2 := Fdm1.tCondPgtoIt.Bookmark;

      vDelta1 := Fdm1.tCondPgto.Data;
      vDelta2 := Fdm1.tCondPgtoIt.Data;

      iflag := 1;

      if Fdm1.tCondPgto.ChangeCount > 0 then
        Fdm1.tCondPgto.ApplyUpdates(0);

      iflag := 2;
      if Fdm1.tCondPgtoIt.ChangeCount > 0 then
        Fdm1.tCondPgtoIt.ApplyUpdates(0);

      Fdm1.Conexao.Commit(TD);
      Habilita;
      Consulta;
      BitBtn1.SetFocus;
      PageControl1.ActivePage := TabSheet1;
      except
        on E: Exception do
          begin
            if iflag = 2 then
              Fdm1.tCondPgto.Data := vDelta1;

            Fdm1.tCondPgto.Bookmark := sBookMark1;
            Fdm1.tCondPgtoIt.Bookmark := sBookMark2;


            Fdm1.Conexao.Rollback(TD);
          end

      end;
    end
  else
    ShowMessage('Nome não pode ser vazio!');
end;

procedure TfCondPgto.BitBtn4Click(Sender: TObject);
var
  TD : TTransactionDesc;
  vDelta1,
  vDelta2 : OleVariant;

  iflag : Integer;

  sBookMark1,
  sBookMark2 : string;
begin
  if MessageDlg('Deseja realmente excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
    begin
      try
      TD.TransactionID  := 1;
      TD.IsolationLevel := xilREADCOMMITTED;
      Fdm1.Conexao.StartTransaction(TD);
      Atualiza;
      Fdm1.tCondPgtoIt.First;
      while not Fdm1.tCondPgtoIt.Eof do
        Fdm1.tCondPgtoIt.Delete;
      Fdm1.tCondPgto.Delete;

      sBookMark1 := Fdm1.tCondPgto.Bookmark;
      sBookMark2 := Fdm1.tCondPgtoIt.Bookmark;

      vDelta1 := Fdm1.tCondPgto.Data;
      vDelta2 := Fdm1.tCondPgtoIt.Data;

      iflag := 1;

      if Fdm1.tCondPgto.ChangeCount > 0 then
        Fdm1.tCondPgto.ApplyUpdates(0);

      iflag := 2;
      if Fdm1.tCondPgtoIt.ChangeCount > 0 then
        Fdm1.tCondPgtoIt.ApplyUpdates(0);

      Fdm1.Conexao.Commit(TD);
      Consulta;
      PageControl1.ActivePage := TabSheet1;
      except
        on E: Exception do
          begin
            if iflag = 2 then
              Fdm1.tCondPgto.Data := vDelta1;

            Fdm1.tCondPgto.Bookmark := sBookMark1;
            Fdm1.tCondPgtoIt.Bookmark := sBookMark2;


            Fdm1.Conexao.Rollback(TD);
          end
      end;
    end;
end;

procedure TfCondPgto.TabSheet2Show(Sender: TObject);
begin
  Atualiza;
end;

procedure TfCondPgto.JvDBGrid1DblClick(Sender: TObject);
begin
  PageControl1.ActivePageIndex := 1;
end;

procedure TfCondPgto.JvDBLookupCombo1Change(Sender: TObject);
begin
  Consulta;
end;

procedure TfCondPgto.Edit1Change(Sender: TObject);
begin
  DmCons.qCondPgto.Close;
  DmCons.CondPgto.SQL.Clear;
  DmCons.CondPgto.SQL.Add('SELECT * FROM CONDPGTO');
  if Edit1.Text <> '' then
    DmCons.CondPgto.SQL.Add('WHERE NOME LIKE ''%' + Edit1.Text + '%''');
  DmCons.CondPgto.SQL.Add('Order by NOME');
  DmCons.qCondPgto.Open;
end;

procedure TfCondPgto.VDBGrid1KeyDown(Sender: TObject; var Key: Word;
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

procedure TfCondPgto.StaticText1Click(Sender: TObject);
begin
  if BitBtn3.Enabled then
    begin
      fCondPgtoIt := TfCondPgtoIt.Create(Self);

      fCondPgtoIt.Dm1 := Fdm1;

      fCondPgtoIt.Tag := 1;
      fCondPgtoIt.ShowModal;
    end;
end;

procedure TfCondPgto.StaticText2Click(Sender: TObject);
begin
  if (BitBtn3.Enabled) and not(Fdm1.tCondPgtoIt.IsEmpty) then
    begin
      if MessageDlg('Deseja excluir este registro?',mtConfirmation,[mbOK,mbNO],0) = mrOK then
        Fdm1.tCondPgtoIt.Delete;
    end;
end;

procedure TfCondPgto.StaticText3Click(Sender: TObject);
begin
  if (BitBtn3.Enabled) and not(Fdm1.tCondPgtoIt.IsEmpty) then
    begin
      fCondPgtoIt := TfCondPgtoIt.Create(Self);

      fCondPgtoIt.Dm1 := Fdm1;

      fCondPgtoIt.Tag := 2;
      fCondPgtoIt.ShowModal;
    end;
end;

procedure TfCondPgto.DBCheckBox1Click(Sender: TObject);
begin
  case DBCheckBox1.Checked of
    True  : begin
              GroupBox1.Enabled := False;
              DBEdit5.ReadOnly  := False;
              DBEdit5.Color     := clWindow;
            end;
    False : begin
              GroupBox1.Enabled := True;
              DBEdit5.ReadOnly  := True;
              DBEdit5.Clear;
              DBEdit5.Color     := clInfoBk;
            end;
  end;
end;

procedure TfCondPgto.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
