ALTER TABLE GEOENDERECO
    ADD CONSTRAINT GEOENDERECO_ITTPESSOA_FK FOREIGN KEY(CD_PESSOA)
        REFERENCES ITTPESSOA(CD_PESSOA)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO