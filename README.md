# Main String
Enterprise COBOL library with string functions

<p align="center">
  <img src="https://github.com/OlegKunitsyn/main-string/workflows/ci/badge.svg" />
</p>

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

# Documentation
See coboldoc [documentation](https://github.com/OlegKunitsyn/main-string/tree/master/coboldoc).
