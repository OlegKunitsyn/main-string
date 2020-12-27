       *>**
       *> Tests
       *> @TODO assertions
       *> @TODO paragraphs
       *>**
       IDENTIFICATION DIVISION.
       PROGRAM-ID. TESTS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
        01 ws-haystack PIC X(128) VALUE 'Crazy fox'.
        01 ws-needle PIC X(2).
        01 ws-result PIC 9(9) USAGE BINARY.
       PROCEDURE DIVISION.
           MOVE 'zy' TO ws-needle.
           CALL 'strpos' USING 
               BY REFERENCE ws-haystack,
               BY CONTENT LENGTH OF ws-haystack, 
               BY REFERENCE ws-needle,
               BY CONTENT LENGTH OF ws-needle 
               RETURNING ws-result.
           DISPLAY ws-result " expected 4".

           MOVE 'Fo' TO ws-needle.
           CALL 'stripos' USING 
               BY REFERENCE ws-haystack,
               BY CONTENT LENGTH OF ws-haystack, 
               BY REFERENCE ws-needle,
               BY CONTENT LENGTH OF ws-needle 
               RETURNING ws-result.
           DISPLAY ws-result " expected 7".
           
           STOP RUN.
       END PROGRAM TESTS.
