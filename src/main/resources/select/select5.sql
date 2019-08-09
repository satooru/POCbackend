select sum(case when valor < 0 then valor else 0 end) as pagamentos
  from movimentacao