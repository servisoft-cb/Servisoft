unit UPessoaFichaRel;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RLReport;

type
  TfPessoaFichaRel = class(TForm)
    RLReport1: TRLReport;
    RLSubDetail1: TRLSubDetail;
    RLBand1: TRLBand;
    RLDBText1: TRLDBText;
    RLSystemInfo1: TRLSystemInfo;
    RLSystemInfo2: TRLSystemInfo;
    RLLabel1: TRLLabel;
    RLLabel2: TRLLabel;
    RLLabel3: TRLLabel;
    RLBand2: TRLBand;
    RLLabel4: TRLLabel;
    RLDBText2: TRLDBText;
    RLLabel5: TRLLabel;
    RLDBText3: TRLDBText;
    RLLabel6: TRLLabel;
    RLDBText4: TRLDBText;
    RLLabel7: TRLLabel;
    RLDBText5: TRLDBText;
    RLLabel8: TRLLabel;
    RLDBText6: TRLDBText;
    RLLabel9: TRLLabel;
    RLDBText7: TRLDBText;
    RLLabel10: TRLLabel;
    RLDBText8: TRLDBText;
    RLLabel11: TRLLabel;
    RLDBText9: TRLDBText;
    RLLabel12: TRLLabel;
    RLDBText10: TRLDBText;
    RLLabel13: TRLLabel;
    RLDBText11: TRLDBText;
    RLLabel14: TRLLabel;
    RLDBText12: TRLDBText;
    RLLabel15: TRLLabel;
    RLDBMemo1: TRLDBMemo;
    RLLabel16: TRLLabel;
    RLDBText13: TRLDBText;
    RLLabel17: TRLLabel;
    RLDBText14: TRLDBText;
    RLLabel18: TRLLabel;
    RLDBText15: TRLDBText;
    RLLabel19: TRLLabel;
    RLDBText16: TRLDBText;
    RLLabel20: TRLLabel;
    RLDBText17: TRLDBText;
    RLLabel21: TRLLabel;
    RLDBText18: TRLDBText;
    RLLabel22: TRLLabel;
    RLDBText19: TRLDBText;
    RLBand3: TRLBand;
    RLLabel23: TRLLabel;
    RLDraw1: TRLDraw;
    RLLabel24: TRLLabel;
    RLDBText20: TRLDBText;
    RLLabel25: TRLLabel;
    RLDBText21: TRLDBText;
    RLLabel26: TRLLabel;
    RLDBText22: TRLDBText;
    RLLabel27: TRLLabel;
    RLDBText23: TRLDBText;
    RLLabel28: TRLLabel;
    RLDBText24: TRLDBText;
    RLLabel29: TRLLabel;
    RLDBText25: TRLDBText;
    RLLabel30: TRLLabel;
    RLDBText26: TRLDBText;
    RLLabel31: TRLLabel;
    RLDBText27: TRLDBText;
    RLLabel32: TRLLabel;
    RLDBText28: TRLDBText;
    RLLabel33: TRLLabel;
    RLDBText29: TRLDBText;
    RLLabel34: TRLLabel;
    RLDBText30: TRLDBText;
    RLLabel35: TRLLabel;
    RLDBText31: TRLDBText;
    RLLabel36: TRLLabel;
    RLDBText32: TRLDBText;
    RLLabel37: TRLLabel;
    RLDBText33: TRLDBText;
    RLLabel38: TRLLabel;
    RLDBText34: TRLDBText;
    RLSubDetail2: TRLSubDetail;
    RLBand4: TRLBand;
    RLLabel39: TRLLabel;
    RLDraw2: TRLDraw;
    RLLabel40: TRLLabel;
    RLLabel41: TRLLabel;
    RLLabel42: TRLLabel;
    RLDraw3: TRLDraw;
    RLDraw4: TRLDraw;
    RLDraw5: TRLDraw;
    RLSubDetail3: TRLSubDetail;
    RLBand5: TRLBand;
    RLDBText35: TRLDBText;
    RLDBText36: TRLDBText;
    RLDBText37: TRLDBText;
    RLSubDetail4: TRLSubDetail;
    RLBand6: TRLBand;
    RLLabel43: TRLLabel;
    RLSubDetail5: TRLSubDetail;
    RLBand7: TRLBand;
    RLDraw6: TRLDraw;
    RLLabel44: TRLLabel;
    RLDraw7: TRLDraw;
    RLLabel45: TRLLabel;
    RLDraw8: TRLDraw;
    RLLabel46: TRLLabel;
    RLDraw9: TRLDraw;
    RLLabel47: TRLLabel;
    RLDraw10: TRLDraw;
    RLLabel48: TRLLabel;
    RLDraw11: TRLDraw;
    RLLabel49: TRLLabel;
    RLDraw12: TRLDraw;
    RLLabel50: TRLLabel;
    RLDraw13: TRLDraw;
    RLLabel51: TRLLabel;
    RLDraw14: TRLDraw;
    RLLabel52: TRLLabel;
    RLDraw15: TRLDraw;
    RLLabel53: TRLLabel;
    RLDBText38: TRLDBText;
    RLDBText39: TRLDBText;
    RLDBText40: TRLDBText;
    RLDBText41: TRLDBText;
    RLDBText42: TRLDBText;
    RLDBText43: TRLDBText;
    RLDBText44: TRLDBText;
    RLDBText45: TRLDBText;
    RLDBText46: TRLDBText;
    RLDBText47: TRLDBText;
    RLDraw16: TRLDraw;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RLBand3BeforePrint(Sender: TObject; var PrintIt: Boolean);
    procedure RLSubDetail2BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
    procedure RLSubDetail4BeforePrint(Sender: TObject;
      var PrintIt: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fPessoaFichaRel: TfPessoaFichaRel;

implementation

uses UDm1, UDmCons, UPessoa, DBClient;

{$R *.dfm}

procedure TfPessoaFichaRel.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := Cafree;
end;

procedure TfPessoaFichaRel.RLBand3BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  Dm1.tEmpresa.Open;
  if Dm1.tEmpresaSERVICO.AsString = 'S' then
    PrintIt := True
  else
    PrintIt := False;
end;

procedure TfPessoaFichaRel.RLSubDetail2BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := not Dm1.tTelefone.IsEmpty;
end;

procedure TfPessoaFichaRel.RLSubDetail4BeforePrint(Sender: TObject;
  var PrintIt: Boolean);
begin
  PrintIt := fPessoa.qCReceberCli.Active;
end;

end.
