# string.cbl

Mainframe library: string

author: Olegs Kunicins


License: LGPL-3.0
This library is free software; you can redistribute it and/or
modify it under the terms of the GNU Lesser General Public
License as published by the Free Software Foundation; either
version 3.0 of the License, or (at your option) any later 
version.

This library is distributed in the hope that it will be 
useful, but WITHOUT ANY WARRANTY; without even the implied 
warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR 
PURPOSE.  See the GNU Lesser General Public License for more
details.

You should have received a copy of the GNU Lesser General 
Public License along with this library.

## Module Summary

| Name | Description |
| ----------- | ----------- | 
| [strpos](#strpos) | Find the position of the first occurrence of a substring. Case-sensitive. | 
| [stripos](#stripos) | Find the position of the first occurrence of a substring. Case-insensitive. | 

## Module Details

### strpos

*CALL "strpos" USING l-haystack, l-h-len, l-needle, l-n-len.*

Find the position of the first occurrence of a substring.
Case-sensitive.



#### Parameters

> **l-haystack** String to search in 
> **l-h-len** Size of l-haystack in bytes 
> **l-needle** String to search for 
> **l-n-len** Size of l-needle in bytes 

#### Returns

> Position where the needle exists relative to the
beginnning of l-haystack. Returns 0 if not found.


### stripos

*CALL "stripos" USING l-haystack, l-h-len, l-needle, l-n-len.*

Find the position of the first occurrence of a substring.
Case-insensitive.



#### Parameters

> **l-haystack** String to search in 
> **l-h-len** Size of l-haystack in bytes 
> **l-needle** String to search for 
> **l-n-len** Size of l-needle in bytes 

#### Returns

> Position where the needle exists relative to the
beginnning of l-haystack. Returns 0 if not found.

