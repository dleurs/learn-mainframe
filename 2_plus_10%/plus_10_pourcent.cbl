       IDENTIFICATION DIVISION.
       PROGRAM-ID. EXEMPLE-PIC.
       DATA DIVISION.
       WORKING-STORAGE SECTION.

       01 PRIX         PIC S9(2)V99 VALUE 12.34.
       01 NOUVEAU-PRIX PIC S9(2)V99.

       PROCEDURE DIVISION.
           DISPLAY "Prix initial : " PRIX.
           COMPUTE NOUVEAU-PRIX = PRIX * 1.1.
           DISPLAY "Prix apres augmentation de 10 : " NOUVEAU-PRIX.
           STOP RUN.