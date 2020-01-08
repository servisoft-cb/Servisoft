unit UAutorizacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, JvBitBtn, Mask, JvToolEdit,
  FMTBcd, DB, SqlExpr, Udm1, rsDBUtils;

type
  TfAutorizacao = class(TForm)
    Edit1: TEdit;
    Label1: TLabel;
    Image2: TImage;
    Image1: TImage;
    BitBtn5: TBitBtn;
    Label2: TLabel;
    JvDateEdit1: TJvDateEdit;
    Empresa: TSQLQuery;
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure JvDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn5Click(Sender: TObject);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Autoriza_Data;
  public
    { Public declarations }
  end;

var
  fAutorizacao: TfAutorizacao;

implementation

uses uMenu, uLogin;

{$R *.dfm}

procedure TfAutorizacao.Autoriza_Data;
var
  Digitos : Array[1..9] of integer;
  MesInicial, Ano, i : integer;
  Soma, Auto : string[15];
  Info : String[7];
begin
  Info       := FormatFloat('000',Fdm1.tEmpresaCODACESSO.AsInteger);
  Info       := Info + Copy(JvDateEdit1.Text,1,2) + Copy(JvDateEdit1.Text,4,2) + Copy(JvDateEdit1.Text,9,2);
  Auto       := '0';
  Soma       := '0';
  MesInicial := StrToInt(Copy(Info,4,3));
  Ano        := StrToInt(Copy(Info,7,3));
  Digitos[1] := StrToInt(Copy(Info,1,1));
  Digitos[2] := StrToInt(Copy(Info,2,1));
  Digitos[3] := StrToInt(Copy(Info,3,1));
  Digitos[4] := StrToInt(Copy(Info,4,1));
  Digitos[5] := StrToInt(Copy(Info,5,1));
  Digitos[6] := StrToInt(Copy(Info,4,1));
  Digitos[7] := StrToInt(Copy(Info,5,1));
  Digitos[8] := StrToInt(Copy(Info,6,1));
  Digitos[9] := StrToInt(Copy(Info,7,1));
  for i := 1 to 9 do
    begin
      Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) + (Digitos[i] * 3))),10,6);
      Soma := Copy(FormatFloat('000000000000000',StrToInt(Soma) + (Digitos[i] * i)),10,6);
    end;
  Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * StrToInt(Soma))),10,6);
  if Ano > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Ano)),10,6);
  if Digitos[7] > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Digitos[7])),10,6);
  Auto := IntToStr(StrToInt(Auto) * MesInicial);
  if Digitos[9] > 0 then
    Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) * Digitos[9])),10,6);
  if Edit1.Text <> Auto then
    begin
      ShowMessage('Data não confere com senha colocada!');
      Application.Terminate;
    end
  else
    begin
      Fdm1.tEmpresa.Edit;
      Fdm1.tEmpresaDATA.AsDateTime := JvDateEdit1.Date - 10;
      Fdm1.tEmpresa.Post;
      Fdm1.tEmpresa.ApplyUpdates(0);
    end;
  Close;
end;

procedure TfAutorizacao.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    JvDateEdit1.SetFocus;
end;

procedure TfAutorizacao.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Shift = [ssALt]) and (Key = vk_F4) then
    Application.Terminate;
end;

procedure TfAutorizacao.JvDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BitBtn5.Click;
end;

procedure TfAutorizacao.BitBtn5Click(Sender: TObject);
begin
  Autoriza_Data;
end;

end.
