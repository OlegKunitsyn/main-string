       *>**
       *>  Mainframe library: string
       *>
       *>  @author Olegs Kunicins
       *>  @license LGPL-3.0
       *>
       *>  This library is free software; you can redistribute it and/or
       *>  modify it under the terms of the GNU Lesser General Public
       *>  License as published by the Free Software Foundation; either
       *>  version 3.0 of the License, or (at your option) any later 
       *>  version.
       *>  
       *>  This library is distributed in the hope that it will be 
       *>  useful, but WITHOUT ANY WARRANTY; without even the implied 
       *>  warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
       *>  PURPOSE.  See the GNU Lesser General Public License for more
       *>  details.
       *>  
       *>  You should have received a copy of the GNU Lesser General 
       *>  Public License along with this library.
       *>**


       *>*
       *> Find the position of the first occurrence of a substring.
       *> Case-sensitive.
       *> 
       *> @param l-haystack String to search in
       *> @param l-h-len Size of l-haystack in bytes
       *> @param l-needle String to search for
       *> @param l-n-len Size of l-needle in bytes
       *> @return Position where the needle exists relative to the
       *> beginnning of l-haystack. Returns 0 if not found.
       *>*
       identification division.
       program-id. strpos.
       data division.
       working-storage section.
        01 haystack-idx pic 9(9) usage binary value 1.
        01 needle-idx pic 9(9) usage binary value 1.
       linkage section.
        01 l-haystack.
           05 l-h pic x occurs 1 to unbounded depending on l-h-len.
        77 l-h-len pic 9(9) usage binary.
        01 l-needle.
           05 l-n pic x occurs 1 to unbounded depending on l-n-len.   
        77 l-n-len pic 9(9) usage binary.
        01 l-result pic 9(9) usage binary value 0.
       procedure division
           using l-haystack, l-h-len, l-needle, l-n-len
           returning l-result.
           
           initialize haystack-idx, needle-idx, l-result all to value.

           if l-h-len < l-n-len
              goback
           end-if.

           perform until haystack-idx > l-h-len
               if l-haystack(haystack-idx:1) = l-needle(needle-idx:1)
                  if needle-idx = l-n-len
                      compute l-result = haystack-idx - needle-idx + 1
                      exit perform
                  end-if
                  add 1 to needle-idx
               else
                  initialize needle-idx all to value
               end-if
               add 1 to haystack-idx
           end-perform.
       end program strpos.


       *>*
       *> Find the position of the first occurrence of a substring.
       *> Case-insensitive.
       *> 
       *> @param l-haystack String to search in
       *> @param l-h-len Size of l-haystack in bytes
       *> @param l-needle String to search for
       *> @param l-n-len Size of l-needle in bytes
       *> @return Position where the needle exists relative to the
       *> beginnning of l-haystack. Returns 0 if not found.
       *>*
       identification division.
       program-id. stripos.
       data division.
       working-storage section.
        01 haystack-idx pic 9(9) usage binary value 1.
        01 needle-idx pic 9(9) usage binary value 1.
        01 ws-idx pic 9(9) usage binary value 1.
        01 ws-char pic x.
       linkage section.
        01 l-haystack.
           05 l-h pic x occurs 1 to unbounded depending on l-h-len.
        77 l-h-len pic 9(9) usage binary.
        01 l-needle.
           05 l-n pic x occurs 1 to unbounded depending on l-n-len.   
        77 l-n-len pic 9(9) usage binary.
        01 l-result pic 9(9) usage binary value 0.
       procedure division
           using l-haystack, l-h-len, l-needle, l-n-len
           returning l-result.
           
           initialize haystack-idx, needle-idx, l-result all to value.

           if l-h-len < l-n-len
              goback
           end-if.

           perform varying ws-idx from 1 by 1 until ws-idx > l-h-len
               move l-haystack(ws-idx:1) to ws-char 
               move function lower-case(ws-char) to l-haystack(ws-idx:1)
           end-perform.
           perform varying ws-idx from 1 by 1 until ws-idx > l-n-len
               move l-needle(ws-idx:1) to ws-char 
               move function lower-case(ws-char) to l-needle(ws-idx:1)
           end-perform.

           perform until haystack-idx > l-h-len
               if l-haystack(haystack-idx:1) = l-needle(needle-idx:1)
                  if needle-idx = l-n-len
                      compute l-result = haystack-idx - needle-idx + 1
                      exit perform
                  end-if
                  add 1 to needle-idx
               else
                  initialize needle-idx all to value
               end-if
               add 1 to haystack-idx
           end-perform.
       end program stripos.
