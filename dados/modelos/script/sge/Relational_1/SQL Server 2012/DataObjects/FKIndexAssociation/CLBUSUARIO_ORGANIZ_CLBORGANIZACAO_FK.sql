ALTER TABLE CLBUSUARIO_ORGANIZ
    ADD CONSTRAINT CLBUSUARIO_ORGANIZ_CLBORGANIZACAO_FK FOREIGN KEY(CD_ORGANIZACAO)
        REFERENCES CLBORGANIZACAO(CD_ORGANIZACAO)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO