      *-----------------------
       IDENTIFICATION DIVISION.
       PROGRAM-ID.    USERINFO
      *--------------------
       ENVIRONMENT DIVISION.
      *--------------------
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT USER-INFO   ASSIGN TO USERINFO.
      *-------------
       DATA DIVISION.
      *-------------
       FILE SECTION.
       FD USER-INFO RECORDING MODE F.
       01  USER-RECORD.
          05  IDENTIFIANT      PIC X(10).
          05  EMAIL            PIC X(50).
          05  PHONE            PIC X(22).
          05  DATE-TIME        PIC X(18).
      *
       WORKING-STORAGE SECTION.
       01  WS-EOF              PIC X VALUE 'N'.
           88  END-OF-FILE     VALUE 'Y'.
      *
      *------------------
       PROCEDURE DIVISION.
           OPEN INPUT USER-INFO
           PERFORM UNTIL END-OF-FILE
               READ USER-INFO INTO USER-RECORD
                   AT END
                       MOVE 'Y' TO WS-EOF
                   NOT AT END
                       DISPLAY USER-RECORD
               END-READ
           END-PERFORM
           CLOSE USER-INFO
           STOP RUN.