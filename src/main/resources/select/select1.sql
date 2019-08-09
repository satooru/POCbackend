  select formatdatetime(data, 'dd-MM-yyyy') as data,
         descricao,
         concat(concat(moeda, ' '), valor) as valor,
         categoria
    from movimentacao
order by data, valor