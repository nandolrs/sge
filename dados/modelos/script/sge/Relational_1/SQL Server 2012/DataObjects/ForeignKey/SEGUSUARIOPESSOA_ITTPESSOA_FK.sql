ALTER TABLE SEGUSUARIOPESSOA
    ADD CONSTRAINT SEGUSUARIOPESSOA_ITTPESSOA_FK FOREIGN KEY(ITTPESSOA_CD_PESSOA)
        REFERENCES ITTPESSOA(CD_PESSOA)
ON DELETE NO ACTION 
    ON UPDATE NO ACTION GO