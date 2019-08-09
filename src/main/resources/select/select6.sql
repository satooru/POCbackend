select sum(case when valor > 0 then valor else 0 end) as recebimentos
  from movimentacao