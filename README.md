# illusory0x0/clang

moonbit libclang binding (WIP)

## Install libclang 

### Ubuntu

```bash 
sudo apt install libclang-18-dev -y
export LLVM_HOME=/usr/lib/llvm-18
export MOON_HOME=~/.moon
export MOON_CC=gcc # in order to disable link to libmoonbitrun.o
# https://github.com/moonbitlang/moon/issues/755
```

## Overview
 * Index
 * TranslationUnit
 * Cursor
 * TargetInfo
 * Type
 * TypeKind 
 * CursorKind
 * SourceLocation
 * SourceRange
 * Token

## Common Usage

Use `Cursor::children` to traverse `C/CXX` AST.

`Cursor::spelling` return bytes encoding by `UTF8`, but this library doesn't provide return `String` method,
you can install `tonyfettes/encoding` to decode `UTF8` to `UTF16-LE`.

* `Cursor::enum_constant_decl_value` Get enum value 

* `Type::sizeof` Get size of type `T`

* `Cursor::type_` Get type of cursor 

* `Type::offsetof` Get struct field's offset, the return value is in **bits**

* `Type::pointee` Get the type which pointer point to.


## Reference


[libclang python binding](https://github.com/llvm/llvm-project/tree/main/clang/bindings/python)

[libclang implementation](https://github.com/llvm/llvm-project/tree/main/clang/tools/libclang)