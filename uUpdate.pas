unit uUpdate;

interface
  procedure Atualiza(script: String);
  procedure Scripts();

implementation

uses UDm1;

procedure Atualiza(script: string);
begin
  try
    dm1.Gravar(1);
    dm1.CriaCampos.Close;
    dm1.CriaCampos.SQL.Text := script;
    dm1.CriaCampos.ExecSQL;
    dm1.Conexao.Commit(TD);
  except
    dm1.Conexao.Rollback(TD);
  end;
end;

procedure Scripts();
begin
//***versão 1.01.06
//  Atualiza('CREATE TABLE CUSTO_HOMEM (ID I NOT NULL, NOME V30, VALOR NUMERIC(15,2), PERCENTUAL C1, PERIODICIDADE  C1)');
//  Atualiza('ALTER TABLE CUSTO_HOMEM ADD CONSTRAINT PK_CUSTO_HOMEM PRIMARY KEY (ID)');
//  Atualiza('ALTER TABLE PEDIDO ADD LUCRO NUMERIC(15,2), ADD IMPOSTO NUMERIC(15,2)');
//  Atualiza('DESCRIBE FIELD PERCNETUAL TABLE CUSTO_HOMEM "0 - não (valor em R$)"' + #13 + '"1 - sim"');
//  Atualiza('DESCRIBE FIELD PERIODICIDADE TABLE CUSTO_HOMEM "1 - mensal"'+ #13 + '"2 - anual');
//  Atualiza('ALTER TABLE EMPRESA ADD FONE2 V8, ADD FONE3 V8');
end;

end.
