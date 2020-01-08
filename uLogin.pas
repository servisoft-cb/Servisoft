unit uLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Buttons, JvBitBtn, uDm1, rsDBUtils;

type
  TfLogin = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Image2: TImage;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
    Fdm1: TDm1;
    procedure Atualizar;
  public
    { Public declarations }
    procedure Verifica_Data;
  end;

var
  fLogin: TfLogin;
  Fechar: Boolean;
  Auto : String[15];

implementation

uses uMenu, USenha;

{$R *.dfm}

procedure TfLogin.Verifica_Data;
var
  Digitos : Array[1..9] of integer;
  MesInicial, Ano, i : integer;
  Soma : string[15];
  Info : String[7];
  Data : TDateTime;
begin
  Data       := (Date - 10);
  Info       := FormatFloat('000',Fdm1.tEmpresaCODACESSO.AsInteger);
  Info       := Info + Copy(DateToStr(Data),4,2) + Copy(DateToStr(Data),9,2);
  Auto       := '0';
  Soma       := '0';
  MesInicial := StrToInt(Copy(Info,4,2));
  Ano        := StrToInt(Copy(Info,6,2));
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
      Auto := Copy(FormatFloat('000000000000000',(StrToInt(Auto) + (Digitos[i] * 4))),10,6);
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
  if Length(Auto) > 6 then
    Delete(Auto,1,Length(Auto)-6);
  if Fdm1.tEmpresaAUTORIZACAO.AsString <> Auto then
    begin
      ShowMessage('Digite a sua autorização no campo "Senha"!');
      fSenha := TfSenha.Create(Self);
      fSenha.ShowModal;
    end;
end;

procedure TfLogin.Atualizar;
//var
// DtLocal,DtRede: TDateTime;
// Mensagem, Arquivo: String;
begin
{  // DtLocal recebe a DataHora do arquivo local, isto é, o executável do usuário.
  DtLocal := FileDateToDateTime(FileAge('SisConta.exe'));
  // DtRede recebe a DataHora do arquivo da rede, isto é, o executável mais atualizado disponível no servidor.
  DtRede := FileDateToDateTime(FileAge(Fdm1.tRegistroCAMINHOATUALIZACAO.AsString + '\SisConta.exe'));

  Arquivo := 'Atualizador.exe';
  if DtLocal < DtRede then
    begin
      try
        WinExec(PChar(Arquivo),SW_SHOWNORMAL);
        Application.Terminate;
      except
        Mensagem := 'Não foi possível efetuar a atualização disponível.! ' +
                    #13 + #13 + 'Entre em contato com o Administrador do Sistema.';
        Application.MessageBox(PChar(Mensagem), 'Informação', MB_OK+MB_ICONINFORMATION);
        Application.Terminate;
      end;
   end; //Fim de procedimentos de Atualização}
end;

procedure TfLogin.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BitBtn1.Click;
end;

procedure TfLogin.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    Edit2.SetFocus;
end;

procedure TfLogin.FormCreate(Sender: TObject);
//var
//  Arquivo: String;
begin
{  Arquivo := 'Atualizador.exe';
  if FileExists(Arquivo) then
    begin
      Fdm1.tRegistro.Open;
      Arquivo := Fdm1.tRegistroCAMINHOATUALIZACAO.AsString + '\SisConta.exe';
      if FileExists(Arquivo) then
        Atualizar;
    end;}
end;

procedure TfLogin.BitBtn2Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TfLogin.BitBtn1Click(Sender: TObject);
begin
{  Verifica_Data;
  if Edit1.Text = '' then
    begin
      ShowMessage('Preencha o login do usuário!');
      Edit1.SetFocus;
      Exit;
    end;
  if Edit2.Text = '' then
    begin
      ShowMessage('Preencha a senha do usuário!');
      Edit2.SetFocus;
      Exit;
    end;
  Fdm1.tUsuario.Open;
  Fdm1.tUsuario.Filtered := False;
  Fdm1.tUsuario.Filter   := 'LOGIN = ''' + Edit1.Text + '''';
  Fdm1.tUsuario.Filtered := True;
  if Fdm1.tUsuario.IsEmpty then
    begin
      ShowMessage('Login de usuário não cadastrado!');
      Edit1.SetFocus;
      Exit;
    end;
  if Fdm1.tUsuarioSENHA.AsString <> Edit2.Text then
    begin
      ShowMessage('Senha inválida para este usuário!');
      Edit2.SetFocus;
      Exit;
    end;
{  if Fdm1.tUsuarioNIVEL.AsInteger > 0 then
    begin
      Usu   := Fdm1.tUsuarioID.AsInteger;
      fMenu := TfMenu.Create(SElf);
      fMenu.StatusBar1.Panels[0].Text := 'Bem vindo, ' + Fdm1.tUsuarioNOME.AsString;
      fMenu.Cadastro3.Visible := False;
      if Fdm1.tUsuarioNIVEL.AsInteger < 3 then
        fMenu.Cadastro3.Visible := True;
      Fdm1.tUsuario.Filtered := False;
      fLogin.Close;
//      fMenu.ShowModal;
      Fechar := True;
      Close;
    end
  else
    begin
      ShowMessage('Usuário inativo!');
      Exit;
    end;}
end;

procedure TfLogin.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  BitBtn1Click(Sender);
  CanClose := Fechar;
end;

end.
