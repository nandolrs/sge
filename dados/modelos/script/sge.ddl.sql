-- Gerado por Oracle SQL Developer Data Modeler 18.3.0.268.1156
--   em:        2019-01-27 17:14:56 BRST
--   site:      SQL Server 2012
--   tipo:      SQL Server 2012



CREATE TABLE GEOCONTINENTE(
    CD_CONTINENTE   CF_CODIGO NOT NULL,
    DS_CONTINENTE   CF_LITERAL_60 NOT NULL,
    DT_CADASTRO     CF_DATA_HORA NOT NULL,
    DT_EXCLUSAO     CF_DATA_HORA NULL,
    DT_ALTERACAO    CF_DATA_HORA NOT NULL
)

ALTER TABLE GEOCONTINENTE ADD CONSTRAINT GEOCONTINENTE_PK PRIMARY KEY CLUSTERED(CD_CONTINENTE ASC)

CREATE SEQUENCE GEOCONTINENTE_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 



CREATE TABLE GEOPAIS(
    CD_PAIS         CF_CODIGO NOT NULL,
    DS_PAIS         CF_LITERAL_60 NOT NULL,
    DT_CADASTRO     CF_DATA_HORA NOT NULL,
    DT_EXCLUSAO     CF_DATA_HORA NULL,
    CD_CONTINENTE   CF_CODIGO NOT NULL,
    DT_ALTERACAO    CF_DATA_HORA NOT NULL,
    CD_IBGE         CF_NUMERO_INTEIRO NULL
)

ALTER TABLE GEOPAIS ADD CONSTRAINT GEOPAIS_PK PRIMARY KEY CLUSTERED(CD_PAIS ASC)

CREATE SEQUENCE GEOPAIS_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 




ALTER TABLE GEOPAIS
    ADD CONSTRAINT GEOPAIS_GEOCONTINENTE_FK FOREIGN KEY(CD_CONTINENTE)
        REFERENCES GEOCONTINENTE(CD_CONTINENTE)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION 

	

CREATE TABLE GEOUF(
    CD_UF          CF_CODIGO NOT NULL,
    DS_UF          CF_LITERAL_60 NOT NULL,
    DT_CADASTRO    CF_DATA_HORA NOT NULL,
    DT_EXCLUSAO    CF_DATA_HORA NULL,
    CD_PAIS        CF_CODIGO NOT NULL,
    DT_ALTERACAO   CF_DATA_HORA NOT NULL,
    DS_SIGLA       CF_LITERAL_2 NULL
)
ALTER TABLE GEOUF ADD CONSTRAINT GEOUF_PK PRIMARY KEY CLUSTERED (CD_UF ASC)

ALTER TABLE GEOUF ADD CONSTRAINT GEOUF_CD_PAIS_CD_UF_DS_SIGLA_UN UNIQUE NONCLUSTERED(CD_PAIS ASC,CD_UF ASC,DS_SIGLA ASC)




ALTER TABLE GEOUF
    ADD CONSTRAINT GEOUF_GEOPAIS_FK FOREIGN KEY(CD_PAIS)
        REFERENCES GEOPAIS(CD_PAIS)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION 

CREATE SEQUENCE GEOUF_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 
	

CREATE TABLE GEOCIDADE(
    CD_CIDADE      CF_CODIGO NOT NULL,
    DS_CIDADE      CF_LITERAL_60 NOT NULL,
    DT_CADASTRO    CF_DATA_HORA NOT NULL,
    DT_ALTERACAO   CF_DATA_HORA NOT NULL,
    DT_EXCLUSAO    CF_DATA_HORA NULL,
    CD_UF          CF_CODIGO NOT NULL,
    CD_IBGE        CF_NUMERO_INTEIRO NULL
)

ALTER TABLE GEOCIDADE ADD CONSTRAINT GEOCIDADE_PK PRIMARY KEY CLUSTERED(CD_CIDADE ASC)

ALTER TABLE GEOCIDADE
    ADD CONSTRAINT GEOCIDADE_GEOUF_FK FOREIGN KEY(CD_UF)
        REFERENCES GEOUF(CD_UF)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION 

CREATE SEQUENCE GEOCIDADE_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 


	


CREATE TABLE ITTPESSOA(
    CD_PESSOA            CF_CODIGO NOT NULL,
    DS_NOME_PESSOA       CF_LITERAL_60 NOT NULL,
    DT_CADASTRO          CF_DATA_HORA NOT NULL,
    DT_ALTERACAO         CF_DATA_HORA NOT NULL,
    DT_EXCLUSAO          CF_DATA_HORA NULL,
    NR_CNPJ              CF_CNPJ NULL,
    NR_CPF               CF_CPF NULL,
    NR_IESTADUAL         CF_IESTADUAL NULL,
    NR_IMUNICIPAL        CF_LITERAL_15 NULL,
    NR_IESTRANGEIRO      CF_LITERAL_20 NULL,
    NR_ISUFRAMA          CF_NUMERO_INTEIRO NULL,
    NR_IEXPORTADOR       CF_LITERAL_60 NULL,
    NR_IFABRICANTE       CF_LITERAL_60 NULL,
    "DS_NOME-FANTASIA"   CF_LITERAL_60 NULL
)

ALTER TABLE ITTPESSOA ADD CONSTRAINT ITTPESSOA_PK PRIMARY KEY CLUSTERED(CD_PESSOA ASC)


CREATE SEQUENCE ITTPESSOA_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 




CREATE TABLE GEOENDERECO(
    CD_ENDERECO      CF_CODIGO NOT NULL,
    DS_ENDERECO      CF_LITERAL_60 NOT NULL,
    DT_CADASTRO      CF_DATA_HORA NOT NULL,
    DT_ALTERACAO     CF_DATA_HORA NULL,
    DT_EXCLUSAO      CF_DATA_HORA NULL,
    DS_LOGRADOURO    CF_LITERAL_60 NULL,
    DS_NUMERO        CF_LITERAL_60 NULL,
    DS_COMPLEMENTO   CF_LITERAL_60 NULL,
    DS_BAIRRO        CF_LITERAL_60 NULL,
    NR_CEP           CF_NUMERO_INTEIRO NULL,
    CD_PESSOA        CF_CODIGO NOT NULL
)






ALTER TABLE GEOENDERECO ADD CONSTRAINT GEOENDERECO_PK PRIMARY KEY CLUSTERED(CD_ENDERECO ASC)

ALTER TABLE GEOENDERECO
    ADD CONSTRAINT GEOENDERECO_ITTPESSOA_FK FOREIGN KEY(CD_PESSOA)
        REFERENCES ITTPESSOA(CD_PESSOA)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION 

CREATE SEQUENCE GEOENDERECO_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 








CREATE TABLE SEGUSUARIO(
    CD_USUARIO             CF_CODIGO NOT NULL,
    DS_NOME_USUARIO        CF_LITERAL_60 NOT NULL,
    DT_CADASTRO            CF_DATA_HORA NOT NULL,
    DT_ALTERACAO           CF_DATA_HORA NOT NULL,
    DT_EXCLUSAO            CF_DATA_HORA NULL,
    DS_EMAIL               CF_LITERAL_256 NOT NULL,
    DT_CONFIRMACAO_EMAIL   CF_DATA_HORA NULL
)

ALTER TABLE SEGUSUARIO ADD CONSTRAINT SEGUSUARIO_PK PRIMARY KEY CLUSTERED (CD_USUARIO ASC)

ALTER TABLE SEGUSUARIO ADD CONSTRAINT SEGUSUARIO_DS_EMAIL_UN UNIQUE NONCLUSTERED(DS_EMAIL ASC)

CREATE SEQUENCE SEGUSUARIO_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 
		
	
CREATE TABLE CLBSITUACAO(
    CD_SITUACAO    CF_CODIGO NOT NULL,
    DS_SITUACAO    CF_LITERAL_60 NOT NULL,
    DT_CADASTRO    CF_DATA_HORA NOT NULL,
    DT_ALTERACAO   CF_DATA_HORA NOT NULL,
    DT_EXCLUSAO    CF_DATA_HORA NULL
)



ALTER TABLE CLBSITUACAO ADD CONSTRAINT CLBSITUACAO_PK PRIMARY KEY CLUSTERED(CD_SITUACAO ASC)

CREATE SEQUENCE CLBSITUACAO_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 

	CREATE TABLE CLBTAREFA(
    CD_TAREFA            CF_CODIGO NOT NULL,
    DS_TAREFA            CF_LITERAL_60 NOT NULL,
    DT_CADASTRO          CF_DATA_HORA NOT NULL,
    DT_ALTERACAO         CF_DATA_HORA NULL,
    DT_EXCLUSAO          CF_DATA_HORA NULL,
    DT_INICIO            CF_DATA_HORA NULL,
    DT_FIM               CF_DATA_HORA NULL,
    NR_DURACAO           CF_NUMERO_DECIMAL NULL,
    DS_UNIDADE_DURACAO   CF_LITERAL_60 NULL,
    CD_TAREFA_PAI        CF_CODIGO NULL,
    FLG_ESTEREOTIPO      CF_LITERAL_2 NULL,
    NR_NIVEL             CF_NUMERO_INTEIRO NULL,
    CD_SITUACAO          CF_CODIGO NOT NULL
)



ALTER TABLE CLBTAREFA ADD CONSTRAINT CLBTAREFA_PK PRIMARY KEY CLUSTERED(CD_TAREFA ASC)

ALTER TABLE CLBTAREFA
    ADD CONSTRAINT CLBTAREFA_CLBSITUACAO_FK FOREIGN KEY(CD_SITUACAO)
        REFERENCES CLBSITUACAO(CD_SITUACAO)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION 


CREATE SEQUENCE CLBTAREFA_SEQ 
    AS bigint 
    START WITH 1 INCREMENT BY 1 NO MINVALUE NO MAXVALUE NO CYCLE CACHE 

