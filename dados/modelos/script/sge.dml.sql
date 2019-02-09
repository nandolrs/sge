select a.cd_tarefa, a.ds_tarefa
,b.cd_tarefa, b.ds_tarefa
,c.cd_tarefa, c.ds_tarefa
from clbtarefa a
	join clbtarefa b on b.CD_TAREFA_PAI=a.cd_tarefa
	join clbtarefa c on c.CD_TAREFA_PAI=b.cd_tarefa

where a.CD_TAREFA=114
order by c.DS_TAREFA

