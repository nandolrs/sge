ALTER TABLE GEOPAIS
    ADD CONSTRAINT GEOPAIS_GEOCONTINENTE_FK FOREIGN KEY(CD_CONTINENTE)
        REFERENCES GEOCONTINENTE(CD_CONTINENTE)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO