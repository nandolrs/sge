ALTER TABLE ORCORCAMENTOMESANO
    ADD CONSTRAINT ORCORCAMENTOMESANO_ORCORCAMENTO_FK FOREIGN KEY(ORCORCAMENTO_CD_ORCAMENTO)
        REFERENCES ORCORCAMENTO(CD_ORCAMENTO)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO