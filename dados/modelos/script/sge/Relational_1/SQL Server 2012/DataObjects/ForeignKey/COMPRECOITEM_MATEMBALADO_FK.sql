ALTER TABLE COMPRECOITEM
    ADD CONSTRAINT COMPRECOITEM_MATEMBALADO_FK FOREIGN KEY(CD_EMBALADO)
        REFERENCES MATEMBALADO(CD_EMBALADO)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO