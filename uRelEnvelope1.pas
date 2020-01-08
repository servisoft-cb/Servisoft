unit uRelEnvelope1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, UDm1, rsDBUtils, Dialogs, RLReport;

type
  TfRelEnvelope1 = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLImage1: TRLImage;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText5: TRLDBText;
    RLDBText6: TRLDBText;
    RLDBText7: TRLDBText;
    RLDBText8: TRLDBText;
    RLDBText9: TRLDBText;
    RLDBText10: TRLDBText;
    RLDBText12: TRLDBText;
    procedure RLBand1BeforePrint(Sender: TObject; var PrintIt: Boolean);
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;
  end;

var
  fRelEnvelope1: TfRelEnvelope1;

implementation

uses UPessoa, UDmCons;

{$R *.dfm}

{ TfRelEnvelope1 }

procedure TfRelEnvelope1.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

procedure TfRelEnvelope1.RLBand1BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Fdm1.tCidade.Close;
  if not Fdm1.tPessoaCIDADE.IsNull then
    Fdm1.Cidade.CommandText := 'SELECT * FROM CIDADE WHERE ID = ' + Fdm1.tPessoaCIDADE.AsString;
  Fdm1.tCidade.Open;
end;

end.
