       IDENTIFICATION DIVISION. 
       PROGRAM-ID. KYC-ANALYSE-RISQUES.

       DATA DIVISION. 
       WORKING-STORAGE SECTION. 

       01 CLIENT-TABLE.
          05 CLIENT OCCURS 5 TIMES.
             10 NOM           PIC X(20).
             10 REVENU-EUR    PIC 9(6). 
             10 SCORE-CREDIT  PIC 9(3).

       01 I                   PIC 9(1)   VALUE 1.
       01 RISQUE              PIC 9V9(2).
       01 CATEGORIE           PIC X(10).

       PROCEDURE DIVISION.
       MAIN-PROGRAM.
           DISPLAY "Evaluation des Risques Clients"
           PERFORM INITIALISER-CLIENTS
           PERFORM ANALYSER-CLIENTS
           STOP RUN.

       INITIALISER-CLIENTS.
           MOVE "Dupont Jean" TO NOM(1).
           MOVE 50000 TO REVENU-EUR(1).
           MOVE 85 TO SCORE-CREDIT(1).

           MOVE "Martin Alice" TO NOM(2).
           MOVE 30000 TO REVENU-EUR(2).
           MOVE 60 TO SCORE-CREDIT(2).

           MOVE "Durand Paul" TO NOM(3).
           MOVE 80000 TO REVENU-EUR(3).
           MOVE 90 TO SCORE-CREDIT(3).

           MOVE "Bernard Sophie" TO NOM(4).
           MOVE 25000 TO REVENU-EUR(4).
           MOVE 40 TO SCORE-CREDIT(4).

           MOVE "Leroy Thomas" TO NOM(5).
           MOVE 70000 TO REVENU-EUR(5).
           MOVE 75 TO SCORE-CREDIT(5).

       ANALYSER-CLIENTS.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 5
                   COMPUTE RISQUE =(100 - SCORE-CREDIT(I)) /
                      (REVENU-EUR(I)
                      / 1000)
               
                   IF RISQUE < 0.5 THEN
                      MOVE "Faible" TO CATEGORIE
                   ELSE
                      IF RISQUE >= 0.5 AND RISQUE < 2 THEN
                         MOVE "Moyen" TO CATEGORIE
                      ELSE
                         MOVE "Eleve" TO CATEGORIE
                      END-IF
                   END-IF
                       
                   DISPLAY "--------------------------"
                   DISPLAY "Client:    " NOM(I)
                   DISPLAY "Risque:    " RISQUE
                   DISPLAY "Catégorie: " CATEGORIE
           END-PERFORM.
           