unit USenha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, JvBitBtn, uDm1, rsDBUtils;

type
  TfSenha = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Image2: TImage;
    Image1: TImage;
    BitBtn5: TBitBtn;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
    Fdm1: Tdm1;

  public
    { Public declarations }
  end;

var
  fSenha: TfSenha;

implementation

uses uMenu, uLogin;

{$R *.dfm}

procedure TfSenha.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BitBtn5.Click;
end;

procedure TfSenha.BitBtn5Click(Sender: TObject);
begin
  if Edit1.Text = Auto then
    begin
      Fdm1.tEmpresa.Edit;
      Fdm1.tEmpresaAutorizacao.AsString := Auto;
      Fdm1.tEmpresa.Post;
      Fdm1.tEmpresa.ApplyUpdates(0);
    end
  else
    begin
      ShowMessage('Autorização incorreta!'+#13+#13+
                  'O programa será fechado!');
      Application.Terminate;
    end;
  Close;
end;

procedure TfSenha.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssALt]) and (Key = vk_F4) then
    Application.Terminate;
end;

procedure TfSenha.FormCreate(Sender: TObject);
begin
  Fdm1 := Tdm1.Create(Self);
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfSenha.FormDestroy(Sender: TObject);
begin
  FreeAndNil(Fdm1);
end;

end.
