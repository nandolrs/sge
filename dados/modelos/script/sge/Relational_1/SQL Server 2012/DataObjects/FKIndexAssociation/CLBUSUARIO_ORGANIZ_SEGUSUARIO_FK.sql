ALTER TABLE CLBUSUARIO_ORGANIZ
    ADD CONSTRAINT CLBUSUARIO_ORGANIZ_SEGUSUARIO_FK FOREIGN KEY(CD_USUARIO)
        REFERENCES SEGUSUARIO(CD_USUARIO)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO