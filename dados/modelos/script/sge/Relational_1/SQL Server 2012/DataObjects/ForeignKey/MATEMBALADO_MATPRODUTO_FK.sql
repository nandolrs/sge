ALTER TABLE MATEMBALADO
    ADD CONSTRAINT MATEMBALADO_MATPRODUTO_FK FOREIGN KEY(CD_PRODUTO)
        REFERENCES MATPRODUTO(CD_PRODUTO)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO