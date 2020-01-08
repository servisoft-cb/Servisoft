unit URelPessoas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport, UDm1, rsDBUtils;

type
  TfRelPessoas = class(TForm)
    RLReport1: TRLReport;
    RLBand6: TRLBand;
    RLDraw23: TRLDraw;
    RLDBText20: TRLDBText;
    RLSystemInfo5: TRLSystemInfo;
    RLSystemInfo6: TRLSystemInfo;
    RLLabel34: TRLLabel;
    RLLabel44: TRLLabel;
    RLLabel45: TRLLabel;
    RLDraw24: TRLDraw;
    RLLabel47: TRLLabel;
    RLLabel49: TRLLabel;
    RLDraw26: TRLDraw;
    RLLabel50: TRLLabel;
    RLDraw27: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw29: TRLDraw;
    RLLabel53: TRLLabel;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLDBText2: TRLDBText;
    RLDBText3: TRLDBText;
    RLDBText4: TRLDBText;
    RLDBText5: TRLDBText;
    RLDraw1: TRLDraw;
    RLLabel1: TRLLabel;
    RLDraw2: TRLDraw;
    RLDBText6: TRLDBText;
  private
    { Private declarations }
    Fdm1: Tdm1;
    procedure SetDM1(const Value: Tdm1);
  public
    { Public declarations }
    property Dm1: Tdm1 read Fdm1 write SetDM1;

  end;

var
  fRelPessoas: TfRelPessoas;

implementation

{$R *.dfm}

procedure TfRelPessoas.SetDM1(const Value: Tdm1);
begin
  Fdm1 := Value;
  oDBUtils.SetDataSourceProperties(Self, Fdm1);
end;

end.
