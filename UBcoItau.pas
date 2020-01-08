unit UBcoItau;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, JvDBComb, JvLookup, Mask, DBCtrls, ExtCtrls,
  Buttons, DB, JvToolEdit, JvDBCtrl, UDm1, rsDBUtils;

type
  TfBcoItau = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    BitBtn4: TBitBtn;
    BitBtn1: TBitBtn;
    Panel3: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label2: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label4: TLabel;
    Bevel1: TBevel;
    Label8: TLabel;
    DBEdit1: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit5: TDBEdit;
    JvDBLookupCombo1: TJvDBLookupCombo;
    JvDBComboBox1: TJvDBComboBox;
    JvDBComboBox2: TJvDBComboBox;
    JvDBComboBox3: TJvDBComboBox;
    JvDBComboBox4: TJvDBComboBox;
    JvDBComboBox5: TJvDBComboBox;
    Label9: TLabel;
    JvDBComboBox9: TJvDBComboBox;
    Label7: TLabel;
    JvDBDateEdit1: TJvDBDateEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBEdit7KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit5KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fBcoItau: TfBcoItau;

implementation

uses UGBoleto, UDmCons;

{$R *.dfm}


procedure TfBcoItau.Habilita;
begin
  BitBtn1.Enabled := not BitBtn1.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn4.Enabled := not BitBtn4.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
  Panel3.Enabled  := not Panel3.Enabled;
end;

procedure TfBcoItau.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Screen.FormCount < 3 then
    begin
      DmCons.qBanco.Close;;
      Fdm1.tBcoItau.Close;
      //Fdm1.tClienteAcc.Close;
      //Fdm1.tCReceberParc.Close;
      Fdm1.tCReceberHist.Close;
      Fdm1.tBanco.Close;
    end;
  Action := Cafree;
end;

procedure TfBcoItau.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  if Fdm1.tBcoItau.State in [dsEdit] then
    begin
      ShowMessage('Você deve Cancelar ou Confirmar antes de fechar a janela');
      CanClose := False;
    end
  else
    CanClose := True;

end;

procedure TfBcoItau.BitBtn2Click(Sender: TObject);
begin
  Fdm1.tBcoItau.Edit;
  if Fdm1.tBcoItauNOME.AsString = '' then
    begin
      Fdm1.tBcoItauNOME.AsString     := 'Remessa';
      Fdm1.tBcoItauEXTENSAO.AsString := 'TXT';
    end;
  Habilita;
  DBEdit1.SetFocus;

end;

procedure TfBcoItau.BitBtn1Click(Sender: TObject);
begin
  Fdm1.tBcoItau.Cancel;
  Habilita;

end;

procedure TfBcoItau.BitBtn5Click(Sender: TObject);
begin
//  Fdm1.tBcoItauNOME.AsString := DirectoryEdit1.Text;
  if Fdm1.tBcoItauNumCarteira.AsString = '147' then
    Fdm1.tBcoItauCarteira.AsString := 'E'
  else
  if Fdm1.tBcoItauNumCarteira.AsString = '166' then
    Fdm1.tBcoItauCarteira.AsString := 'F'
  else
  if Fdm1.tBcoItauNumCarteira.AsString = '168' then
    Fdm1.tBcoItauCarteira.AsString := '3'
  else
  if Fdm1.tBcoItauNumCarteira.AsString = '150' then
    Fdm1.tBcoItauCarteira.AsString := 'U'
  else
    Fdm1.tBcoItauCarteira.AsString := 'I';
  Fdm1.tBcoItau.Post;
  Fdm1.tBcoItau.ApplyUpdates(0);
  Habilita;

end;

procedure TfBcoItau.FormShow(Sender: TObject);
begin
  Fdm1.tBcoItau.Open;
  //Fdm1.tClienteAcc.Open;
  //Fdm1.tCReceberParc.Open;
  Fdm1.tCReceberHist.Open;
  Fdm1.tBanco.Open;
  Fdm1.tCidade.Open;
  Fdm1.tUF.Open;
  DmCons.qBanco.Open;
//  DirectoryEdit1.Text := Fdm1.tBcoItauCAMINHO.AsString;

end;

procedure TfBcoItau.DBEdit7KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    DBEdit7.ReadOnly := not(DBEdit7.ReadOnly);

end;

procedure TfBcoItau.DBEdit5KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssCtrl]) and (Key = 87) then
    DBEdit5.ReadOnly := not(DBEdit5.ReadOnly);

end;

procedure TfBcoItau.BitBtn4Click(Sender: TObject);
begin
  fGBoleto := TfGBoleto.Create(Self);

  fGBoleto.Dm1 := Fdm1;

  fGBoleto.ShowModal;
end;

procedure TfBcoItau.BitBtn3Click(Sender: TObject);
begin
  Close;
end;

procedure TfBcoItau.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfBcoItau.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
