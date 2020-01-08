unit UEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvLookup, Mask, DBCtrls, ExtCtrls, ComCtrls, db,
  JvToolEdit, UDm1, rsDBUtils;

type
  TfEmpresa = class(TForm)
    PageControl1: TPageControl;
    TabSheet2: TTabSheet;
    Panel3: TPanel;
    Label3: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    JvDBLookupCombo3: TJvDBLookupCombo;
    JvDBLookupCombo4: TJvDBLookupCombo;
    DBEdit8: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit25: TDBEdit;
    Panel2: TPanel;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn5: TBitBtn;
    DBCheckBox1: TDBCheckBox;
    Label1: TLabel;
    JvFilenameEdit1: TJvFilenameEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label4: TLabel;
    JvFilenameEdit2: TJvFilenameEdit;
    DBCheckBox2: TDBCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure JvDBLookupCombo3Exit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Habilita;
  public
    { Public declarations }
  end;

var
  fEmpresa: TfEmpresa;

implementation

uses UDmCons, UCidade, UMenu;

{$R *.dfm}

procedure TfEmpresa.Habilita;
begin
  Panel3.Enabled  := not Panel3.Enabled;
  BitBtn2.Enabled := not BitBtn2.Enabled;
  BitBtn3.Enabled := not BitBtn3.Enabled;
  BitBtn5.Enabled := not BitBtn5.Enabled;
end;

procedure TfEmpresa.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Fdm1.tCidade.Close;
  Action := Cafree;
end;

procedure TfEmpresa.BitBtn2Click(Sender: TObject);
begin
  Habilita;
  Fdm1.tEmpresa.Edit;
  DBEdit1.SetFocus;
end;

procedure TfEmpresa.BitBtn3Click(Sender: TObject);
begin
  Fdm1.tEmpresa.Cancel;
  Habilita;
end;

procedure TfEmpresa.BitBtn5Click(Sender: TObject);
var
  vTexto : String;
begin
  if DBEdit1.Text <> '' then
    begin
      if Fdm1.tEmpresa.State in [dsBrowse] then
        Fdm1.tEmpresa.Edit;
      vTexto := JvFilenameEdit1.Text;
      //Delete(vTexto,1,1);
      //Delete(vTexto,length(vTexto),1);
      Fdm1.tEmpresaLOGOEMPRESA.AsString := vTexto;
      vTexto := JvFilenameEdit2.Text;
      //Delete(vTexto,1,1);
      //Delete(vTexto,length(vTexto),1);
      Fdm1.tEmpresaLOGOEMPRESA2.AsString := vTexto;
      Fdm1.tEmpresa.Post;
      Fdm1.tEmpresa.ApplyUpdates(0);
      if Fdm1.tEmpresaLOGOEMPRESA.AsString <> '' then
        begin
//          fMenu.Image1.Picture.LoadFromFile(Fdm1.tEmpresaLOGOEMPRESA.AsString);
//          if Fdm1.tEmpresaSTRETCH.AsString = '1' then
//            fMenu.Image1.Stretch := True
//          else
//            fMenu.Image1.Stretch := False;
        end;
      Habilita;
    end
  else
    ShowMessage('Nome não pode ser vazio!');
end;

procedure TfEmpresa.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
  
  Fdm1.tCidade.Open;
  DmCons.qUF.Open;
  Fdm1.tEmpresa.Open;
  JvFilenameEdit1.Text := Fdm1.tEmpresaLOGOEMPRESA.AsString;
  JvFilenameEdit2.Text := Fdm1.tEmpresaLOGOEMPRESA2.AsString;
end;

procedure TfEmpresa.Label9Click(Sender: TObject);
begin
  if not Fdm1.tCidade.Active then
    Fdm1.tCidade.Open;
  fCidade := TfCidade.Create(Self);

  fCidade.Dm1 := Fdm1;

  Fdm1.tCidade.Insert;
  fCidade.ShowModal;
  fCidade.Free;
  Fdm1.tCidade.Close;
  Fdm1.tCidade.Open;
end;

procedure TfEmpresa.JvDBLookupCombo3Exit(Sender: TObject);
begin
  if JvDBLookupCombo3.Text <> '' then
    Fdm1.tEmpresaUF.AsString := Fdm1.tCidadeUF.AsString;
end;

procedure TfEmpresa.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
