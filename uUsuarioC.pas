unit uUsuarioC;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, JvDBCtrl, ExtCtrls, StdCtrls, Buttons,
  JvGradient, ComCtrls;

type
  TfUsuarioC = class(TForm)
    Panel1: TPanel;
    JvDBGrid1: TJvDBGrid;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Edit1: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    StatusBar1: TStatusBar;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure JvDBGrid1DblClick(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure JvDBGrid1TitleClick(Column: TColumn);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    ColunaOrdenada: String;
  public
    { Public declarations }
  end;

var
  fUsuarioC: TfUsuarioC;

implementation

uses uDm1, uUsuario;

{$R *.dfm}

procedure TfUsuarioC.FormCreate(Sender: TObject);
begin
  dm1.tUsuarios.Open;
  ColunaOrdenada := 'NOME';
end;

procedure TfUsuarioC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dm1.tUsuarios.Close;
  dm1.Usuarios.CommandText := 'SELECT * FROM USUARIOS ORDER BY NOME';
  dm1.tUsuarios.IndexFieldNames := '';
  Action := caFree;
end;

procedure TfUsuarioC.JvDBGrid1DblClick(Sender: TObject);
begin
  if not dm1.tUsuarios.IsEmpty then
    begin
      dm1.tUsuarios.Edit;
      fUsuario := TfUsuario.Create(Self);
      fUsuario.ShowModal;
    end;
end;

procedure TfUsuarioC.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
    begin
      dm1.tUsuarios.Close;
      dm1.Usuarios.CommandText := 'SELECT * FROM USUARIOS WHERE UPPER(' + ColunaOrdenada + ') LIKE UPPER(''%' + Edit1.Text + '%'')';
      dm1.tUsuarios.Open;
    end
  else
    begin
      dm1.tUsuarios.Close;
      dm1.Usuarios.CommandText := 'SELECT * FROM USUARIOS';
      dm1.tUsuarios.Open;
    end
end;

procedure TfUsuarioC.JvDBGrid1TitleClick(Column: TColumn);
var
  i: Word;
begin
  ColunaOrdenada := Column.FieldName;
  dm1.tUsuarios.IndexFieldNames := Column.FieldName;
  Column.Title.Color := clBtnShadow;
  for i := 0 to JvDBGrid1.Columns.Count - 1 do
    if not (JvDBGrid1.Columns.Items[I] = Column) then
      JvDBGrid1.Columns.Items[I].Title.Color := clBtnFace;
  Edit1.Clear;
end;

procedure TfUsuarioC.BitBtn1Click(Sender: TObject);
begin
  dm1.tUsuarios.Insert;
  dm1.tUsuariosNIVEL.AsInteger := 1;
  fUsuario := TfUsuario.Create(Self);
  fUsuario.ShowModal;
  fUsuario.Free;
end;

procedure TfUsuarioC.BitBtn2Click(Sender: TObject);
begin
  if not dm1.tUsuariosID.AsInteger > 2 then
    if messagebox(fUsuarioC.Handle, 'Deseja realmente excluir este registro?','Confirmação',4+32)=6 then
      begin
        dm1.tUsuarios.Delete;
        dm1.tUsuarios.ApplyUpdates(0);
      end;
end;

procedure TfUsuarioC.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then
    close;
end;

end.
