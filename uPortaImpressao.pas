unit uPortaImpressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfPortaImpressao = class(TForm)
    ComboBox1: TComboBox;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPortaImpressao: TfPortaImpressao;

implementation

uses UContasReceber;

{$R *.dfm}

procedure TfPortaImpressao.BitBtn1Click(Sender: TObject);
begin
  Porta := ComboBox1.Text;
  fContasReceber.Tag := 0;
  Close;
end;

procedure TfPortaImpressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
