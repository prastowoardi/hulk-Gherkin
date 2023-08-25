Feature: Pemetaan CPL

    Background: 
        Given Admin login siakad internal release
        * "Admin" masuk ke modul "Akademik"


    Scenario: User melakukan pemetaan CPL
        When Admin menuju halaman manajemen OBE
        * Admin masuk ke detail manajemen obe
        * Admin pilih menu "pemetaan pl - cpl"
        * Admin melakukan checklist secara random
        * Admin pilih menu "pemetaan cpl - mk"
        * Admin melakukan checklist secara random