ALTER TABLE GEOUF
    ADD CONSTRAINT GEOUF_GEOPAIS_FK FOREIGN KEY(CD_PAIS)
        REFERENCES GEOPAIS(CD_PAIS)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO