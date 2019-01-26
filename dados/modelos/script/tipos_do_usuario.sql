-- deleta os tipos

drop type CF_BINARIO 
go
drop type CF_BOLEANO
go
drop type CF_CNPJ
go
drop type CF_CODIGO
go
drop type CF_CPF
go
drop type CF_DATA_HORA
go
drop type CF_IESTADUAL
go
drop type CF_LITERAL_15
go
drop type CF_LITERAL_2
go
drop type CF_LITERAL_20
go
drop type CF_LITERAL_256
go
drop type CF_LITERAL_60
go
drop type CF_NUMERO_DECIMAL
go
drop type CF_NUMERO_INTEIRO

-- cria os tipos

create type CF_BINARIO from varchar(max)
go
create type CF_BOLEANO from int
go
create type CF_CNPJ from varchar(14)
go
create type CF_CODIGO from int
go
create type CF_CPF from varchar(11)
go
create type CF_DATA_HORA from datetime
go
create type CF_IESTADUAL from varchar(60)
go
create type CF_LITERAL_15 from varchar(15)
go
create type CF_LITERAL_2 from varchar(2)
go
create type CF_LITERAL_20 from varchar(20)
go
create type CF_LITERAL_256 from varchar(256)
go
create type CF_LITERAL_60 from varchar(60)
go
create type CF_NUMERO_DECIMAL from decimal(14,4)
go
create type CF_NUMERO_INTEIRO from int
