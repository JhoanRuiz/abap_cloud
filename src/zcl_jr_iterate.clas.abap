CLASS zcl_jr_iterate DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_jr_iterate IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.


  CONSTANTS max_count TYPE i VALUE 20.
  DATA numbers TYPE TABLE OF i.


  DO max_count TIMES.

   CASE sy-index.
      WHEN 1.
        APPEND 0 TO numbers.
      WHEN 2.
        APPEND 1 TO numbers.
      WHEN OTHERS.
          APPEND numbers[  sy-index - 2 ]
               + numbers[  sy-index - 1 ]
              TO numbers.
   ENDCASE.

  ENDDO.

  ENDMETHOD.
ENDCLASS.
