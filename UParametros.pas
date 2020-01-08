unit UParametros;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, DB, Dialogs, StdCtrls, Buttons, ExtCtrls,
  ComCtrls, Mask, JvToolEdit, JvLookup, DBCtrls, Grids, DBGrids, JvDBCtrl, UDm1, rsDBUtils;

type
  TfParametros = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    Label1: TLabel;
    JvDBLookupCombo1: TJvDBLookupCombo;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label4: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    Label6: TLabel;
    DBEdit5: TDBEdit;
    TabSheet3: TTabSheet;
    Panel3: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBMemo1: TDBMemo;
    DBMemo2: TDBMemo;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit8: TDBEdit;
    Label12: TLabel;
    DBEdit9: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
  public
    { Public declarations }
  end;

var
  fParametros: TfParametros;

implementation

uses UDmCons, UMenu;

{$R *.dfm}

procedure TfParametros.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Fdm1.tParametro.Close;
  DmCons.qPais.Close;
  Action := Cafree;
end;

procedure TfParametros.FormCreate(Sender: TObject);
begin

  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  PageControl1.ActivePageIndex := 0;
  Fdm1.tParametro.Open;
  DmCons.qPais.Open;
end;

procedure TfParametros.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  if Fdm1.tParametro.State in [dsEdit] then
  begin
    CanClose := False;
    case MessageDlg('Deseja gravar as alterações feitas no cadastro?',mtConfirmation,[mbOk,mbNo],0) of
      mrOk: begin
              BitBtn5.Click;
              if Fdm1.tParametro.State in [dsBrowse] then
                CanClose := True;
             end;
      mrNo: begin
              BitBtn3.Click;
              CanClose := true;
            end;
    end;
  end
  else
    CanClose := True;
end;

procedure TfParametros.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tParametro.Cancel;
  Close;
end;

procedure TfParametros.BitBtn5Click(Sender: TObject);
begin
  if Fdm1.tParametro.State in [dsEdit] then
  begin
    Fdm1.tParametro.Post;
    Fdm1.tParametro.ApplyUpdates(0);
  end;
  Close;
end;

procedure TfParametros.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
