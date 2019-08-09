select mes
  from ( select sum(case when valor < 0 then valor else 0 end) as total,
                month(data) as mes
           from movimentacao
       group by mes
       order by total) as b,
       ( select min(total) as valor
           from ( select sum(case when valor < 0 then valor else 0 end) as total,
                         month(data) as mes
                    from movimentacao
                group by mes
                order by total)) as a
 where a.valor = b.total