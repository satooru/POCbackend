select b.categoria
  from ( select sum(case when valor < 0 then valor else 0 end) as total,
                categoria
           from movimentacao
       group by categoria
         having categoria is not null
       order by total) as b,
       ( select min(total) as valor
           from ( select sum(case when valor < 0 then valor else 0 end) as total,
                         categoria
                    from movimentacao
                group by categoria
                  having categoria is not null
                order by total) ) as a
 where a.valor = b.total