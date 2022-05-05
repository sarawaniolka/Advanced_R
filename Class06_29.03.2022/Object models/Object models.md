# Object models


## S3 Object model
- No formal class definition
- Methods are dispatched through a system of generic functions (specific naming scheme)
- Generics dispatch methods on the first argument (no complete function signature)

### Typical functions
```is.object()```, ```isS4()```, ```is.R6()```, ```otype()```
```ftype()``` + code
```methods()```
```attributes(), attr(), structure()```
```UseMethod()```
