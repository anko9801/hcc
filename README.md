# HCC
- hcc is a small toy compiler for C language.

## Roadmap

- [ ] support C11 features
  - [x] arithmetic operations
  - [x] pointer arithmetic
  - [x] arrays
  - [x] struct
    - [ ] a copy of struct
      - [ ] local assignment
      - [ ] argument
      - [ ] return value
  - [x] enum
  - [x] type checker
    - [ ] support type qualifiers
  - [x] implicit type conversions
  - [ ] initializers
    - [x] scalar
    - [x] array
    - [x] struct
    - [ ] designated initializers
  - [x] preprocessor
    - [x] include
    - [x] define
  - [ ] self-hosting
  - [ ] complex declarators
  - [x] alignment specifiers
  - [ ] float-point values
- [ ] optimizations
  - [ ] linear scan register allocation
  - [ ] naive mem2reg
  - [x] constant folding
  - [ ] copy propagation
  - [ ] dead code elimination
  - [ ] tail call optimization
  - [ ] loop unwinding
- [ ] misc
  - [ ] improved error messages
  - [ ] better support of debuggers
  - [ ] support targets other than x86_64

