       IDENTIFICATION DIVISION.
       PROGRAM-ID. SUDOKUFACILE.

       ENVIRONMENT DIVISION.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 SUDOKU-GRID.
          05 SUDOKU-ROW OCCURS 9 TIMES.
             10 SUDOKU-CELL OCCURS 9 TIMES
                             PIC 9    VALUE 0.

       01 ROW-INDEX          PIC 9(2).
       01 COL-INDEX          PIC 9(2).


       PROCEDURE DIVISION.
           PERFORM INITIALIZE-SUDOKU
           PERFORM DISPLAY-SUDOKU
           STOP RUN.

       INITIALIZE-SUDOKU. 
      *    Exemple depuis https://sudoku.com/fr/difficile/       
           MOVE 6 TO SUDOKU-CELL(1, 1)
           MOVE 4 TO SUDOKU-CELL(1, 4)
           MOVE 7 TO SUDOKU-CELL(1, 5)
           MOVE 1 TO SUDOKU-CELL(1, 7)
           MOVE 2 TO SUDOKU-CELL(1, 9)

           MOVE 7 TO SUDOKU-CELL(2, 1)
           MOVE 1 TO SUDOKU-CELL(2, 4)
           MOVE 9 TO SUDOKU-CELL(2, 8)

           MOVE 1 TO SUDOKU-CELL(3, 2)
           MOVE 5 TO SUDOKU-CELL(3, 4)
           MOVE 8 TO SUDOKU-CELL(3, 6)
           MOVE 7 TO SUDOKU-CELL(3, 7)
           MOVE 4 TO SUDOKU-CELL(3, 9)

           MOVE 2 TO SUDOKU-CELL(4, 2)
           MOVE 8 TO SUDOKU-CELL(4, 7)

           MOVE 5 TO SUDOKU-CELL(5, 2)
           MOVE 7 TO SUDOKU-CELL(5, 4)
           MOVE 2 TO SUDOKU-CELL(5, 5)
           MOVE 6 TO SUDOKU-CELL(5, 6)
           MOVE 9 TO SUDOKU-CELL(5, 9)

           MOVE 4 TO SUDOKU-CELL(6, 1)
           MOVE 7 TO SUDOKU-CELL(6, 2)

           MOVE 7 TO SUDOKU-CELL(7, 3)
           MOVE 5 TO SUDOKU-CELL(7, 5)
           MOVE 8 TO SUDOKU-CELL(7, 8)

           MOVE 4 TO SUDOKU-CELL(8, 2)
           MOVE 1 TO SUDOKU-CELL(8, 8)
           MOVE 5 TO SUDOKU-CELL(8, 9)

           MOVE 9 TO SUDOKU-CELL(9, 4)
           MOVE 2 TO SUDOKU-CELL(9, 8).

       DISPLAY-SUDOKU.
           PERFORM VARYING ROW-INDEX FROM 1 BY 1 UNTIL ROW-INDEX > 9
                   PERFORM VARYING COL-INDEX FROM 1 BY 1 UNTIL COL-INDEX
                      > 9
                           IF SUDOKU-CELL(ROW-INDEX, COL-INDEX) NOT = 0
                              DISPLAY SUDOKU-CELL(ROW-INDEX, COL-INDEX)
                                      " "
                                 WITH NO ADVANCING
                           ELSE
                              DISPLAY "." " " WITH NO ADVANCING
                           END-IF
                   END-PERFORM
                   DISPLAY " "
           END-PERFORM.