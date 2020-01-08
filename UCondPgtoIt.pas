unit UCondPgtoIt;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, JvEdit, JvTypedEdit, UDm1, rsDBUtils;

type
  TfCondPgtoIt = class(TForm)
    Label1: TLabel;
    JvIntegerEdit1: TJvIntegerEdit;
    BitBtn5: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    Fdm1: Tdm1;
    { Private declarations }
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write Fdm1;
  end;

var
  fCondPgtoIt: TfCondPgtoIt;

implementation

uses UDmCons, UCondPgto;

{$R *.dfm}

procedure TfCondPgtoIt.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfCondPgtoIt.BitBtn5Click(Sender: TObject);
var
  vItem : Integer;
begin
  if JvIntegerEdit1.Value > 0 then
    begin
      if fCondPgtoIt.Tag = 2 then
        begin
          Fdm1.tCondPgtoIt.Edit;
          vItem := Fdm1.tCondPgtoItITEM.AsInteger;
        end
      else
        begin
          Fdm1.tCondPgtoIt.Last;
          vItem := Fdm1.tCondPgtoItITEM.AsInteger + 1;
          Fdm1.tCondPgtoIt.Insert;
        end;
      Fdm1.tCondPgtoItITEM.AsInteger := vItem;
      Fdm1.tCondPgtoItQTDDIAS.AsInteger := JvIntegerEdit1.Value;
      Fdm1.tCondPgtoIt.Post;
      JvIntegerEdit1.Clear;
      JvIntegerEdit1.SetFocus;
      if fCondPgtoIt.Tag = 2 then
        Close;
    end
  else
    ShowMessage('Dia não pode ser menor ou igual a zero!');
end;

procedure TfCondPgtoIt.FormShow(Sender: TObject);
begin
  oDBUtils.SetDataSourceProperties(Self, Fdm1);

  if fCondPgtoIt.Tag = 2  then
    JvIntegerEdit1.Value := Fdm1.tCondPgtoItQTDDIAS.AsInteger;
end;

end.
