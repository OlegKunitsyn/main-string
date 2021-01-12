# Main String
Enterprise COBOL library with string functions

<p align="center">
  <img src="https://github.com/OlegKunitsyn/main-string/workflows/ci/badge.svg?branch=master" />
</p>

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


# Usage
Install and initialize [COBOL Package Manager](https://cobolget.com):
```
$ npm install -g cobolget
$ cobolget init
```
Add the package to the `Manifest`:
```
$ cobolget add main-string
$ cobolget update
```
Install the package and its dependencies:
```
$ cobolget install
....
Modules modules.cpy and modules.cbl updated.
```
Directory `modules` contains source-code of the package and `modules.cbl` ready for compliation and linking with your project.
