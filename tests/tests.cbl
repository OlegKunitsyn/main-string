       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTALL.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 ws-haystack PIC X(128) VALUE "Crazy fox".
       01 ws-needle PIC X(2).
       01 expected pic 9(9) usage binary.
       01 actual pic 9(9) usage binary.
       PROCEDURE DIVISION.
      * STRPOS
           MOVE 4 TO expected.

           MOVE "zy" TO ws-needle.
           CALL "STRPOS" USING 
               BY REFERENCE ws-haystack
               BY CONTENT LENGTH OF ws-haystack
               BY REFERENCE ws-needle
               BY CONTENT LENGTH OF ws-needle 
               RETURNING actual.
           CALL "ECBLUEQ" USING BY VALUE expected, BY VALUE actual.
      
           MOVE "zY" TO ws-needle.
           CALL "STRPOS" USING 
               BY REFERENCE ws-haystack
               BY CONTENT LENGTH OF ws-haystack
               BY REFERENCE ws-needle
               BY CONTENT LENGTH OF ws-needle 
               RETURNING actual.
           CALL "ECBLUNEQ" USING BY VALUE expected, BY VALUE actual.

      * STRIPOS
           MOVE 7 TO expected.

           MOVE "Fo" TO ws-needle.
           CALL "STRIPOS" USING 
               BY REFERENCE ws-haystack
               BY CONTENT LENGTH OF ws-haystack
               BY REFERENCE ws-needle
               BY CONTENT LENGTH OF ws-needle 
               RETURNING actual.
           CALL "ECBLUEQ" USING BY VALUE expected, BY VALUE actual.

           MOVE "ff" TO ws-needle.
           CALL "STRIPOS" USING 
               BY REFERENCE ws-haystack
               BY CONTENT LENGTH OF ws-haystack
               BY REFERENCE ws-needle
               BY CONTENT LENGTH OF ws-needle 
               RETURNING actual.
           CALL "ECBLUNEQ" USING BY VALUE expected, BY VALUE actual.
           
           GOBACK.
       END PROGRAM TESTALL.
