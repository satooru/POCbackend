  select sum(case when valor < 0 then valor else 0 end) as total,
         categoria
    from movimentacao
group by categoria
  having categoria is not null
order by total