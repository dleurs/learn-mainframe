       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLEBANK.
            
       DATA DIVISION.
       WORKING-STORAGE SECTION.
            
       01 BANK-ACCOUNT.
          05 ACCOUNT-NUMBER  PIC X(10)   VALUE "FR12345678".
          05 BALANCE         PIC 9(9)V99 VALUE 0.00.
        
       01 AMOUNT             PIC 9(9)V99.
        
        PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "=== Compte bancaire ===".
           DISPLAY "Testable sur onecompiler.com".
           DISPLAY "Compte numero: " ACCOUNT-NUMBER.
            
               *> Dépôt initial de 1000.00
           COMPUTE AMOUNT = 1000.00.
           PERFORM DEPOSIT.
            
               *> Dépôt supplémentaire de 2000.00
           COMPUTE AMOUNT = 2000.00.
           PERFORM DEPOSIT.
            
               *> Tentative de retrait de 500.00
           COMPUTE AMOUNT = 500.00.
           PERFORM WITHDRAW.
            
               *> Tentative de retrait de 5000.00
           COMPUTE AMOUNT = 5000.00.
           PERFORM WITHDRAW.
            
               *> Affichage du solde actuel
           PERFORM DISPLAY-BALANCE.
            
           STOP RUN.
            
       DEPOSIT.
           ADD AMOUNT TO BALANCE.
           DISPLAY "Depot de "
                   AMOUNT
                   " effectue. Solde actuel: "
                   BALANCE.
            
       WITHDRAW.
           IF AMOUNT > BALANCE THEN
              DISPLAY "Fonds insuffisants pour un retrait de " AMOUNT
           ELSE
              COMPUTE BALANCE = BALANCE - AMOUNT
              DISPLAY "Retrait de "
                      AMOUNT
                      " effectue. Solde actuel: "
                      BALANCE
           END-IF.
            
       DISPLAY-BALANCE.
           DISPLAY "Solde actuel: " BALANCE.