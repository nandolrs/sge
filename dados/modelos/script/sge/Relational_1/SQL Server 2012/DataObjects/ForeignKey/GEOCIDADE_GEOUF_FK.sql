ALTER TABLE GEOCIDADE
    ADD CONSTRAINT GEOCIDADE_GEOUF_FK FOREIGN KEY(CD_UF)
        REFERENCES GEOUF(CD_UF)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO