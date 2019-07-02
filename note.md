## Subject

The process of type-driven development and constructuring programs interactively from a type

## Topics

- Fundamentals of dependent types
- How to use types to define programs interactively
- How to refine programs and types as your understanding of a problem evolves
- Real-world applications of type-driven development,  
  particularly in dealing with state, protocols, and concurrency

## Circumstances

- Program verification
- Language design with dependent types
- Immersed in the concept of programming with dependent types
- Needs a language for developers

## Roadmap

**(Part 1)**  Introduction : The concepts and the tour of the Idris programming language

1. Type-driven development and the Idris environment
2. The basis of Idris programming, including primitive types and structuring Idris programs

**(Part 2)**  The core language features of Idris

3. Interactive development using the Atom editor and how using more-precise type means that the type checker can help you write programs
4. Describe how to define your own data types and present a first example of writing a larger interactive program in the type-driven style
5. Interactive program in depth, including how to use types to help validate user inputs to interactive programs
6. Type-level programming (how to write functions that calculate types and how to use them in practice)
7. How to use interfaces to write programs with generic types
8. How you can use types to express relationships between data, particularly to describe properties of data and to guarantee that functions behave a certain way
9. How types can express contracts that functions must satisfy, including an example that shows how to use types to describe the state of a system
10. Views which are alternative ways of inspecting and traversing data structures

**(Part 3)**  Some applications of Idris to real-world software development, particularly working with state and interactive programs

11. How to work with potentially infinite data, such as streams, and how to write ad reason about interactive programs that could run indefinitely
12. How to write programs with state ad how to represent and manipulate complex state using records
13. How to express a state machine in an Idris type, and how to use the type to guarantee that programs follow protocols correctly
14. More-sophisticated state machines and how to handle errors and feedback from an environment, and how to represent security properties of a system in its type
15. Conclusion (with a worked example: type-driven development of a small library for concurrent programming)

## Chapter 1 Overview

types = a tool for constructuring programs  
compiler, type checker = an assistant who guides us to a complete and working program that satisfies the type

> TYPES AND TESTS  
> Writing tests helps establish a program's purpose and whether it satisfies some basic requirements.  
> Tests can usually only be used to show the presence of errors, types can show the absence of errors.  
> Types reduce the need for tests, but they rarely eliminate it entirely.

types = a _first-class_ language construct

Types can be manipulated, used, passed as arguments to functions, and returned from functions.

### 1.1 What is a type?

types = a means of classifying values

All modern programming languages classify values by type, although they differ enormously in when and how they do so.

Types serve several important roles:

- (For a _machine_) Describe how bit patterns in memory are to be interpreted
- (For a _compiler_ or _interpreter_) Help ensure that bit patterns are interpreted consistently when a program runs
- (For a _programmer_) Help name and organize concepts, aiding documentation and supporting interactive editing environments (**most important purpose**)

Types help programmers in several ways:

- By allowing for the naming and organization of concepts
- By providing explicit documentation of the purposes of variables, functions, and programs
- By driving code completion in an interactive editing environment

### 1.2 Introducing type-driven development

#### 1.2.1 Matrix arithmetic

#### 1.2.2 An automated teller machine

#### 1.2.3 Concurrent programming

#### 1.2.4 Type, define, refine: the process of type-driven development

#### 1.2.5 Dependent types

### 1.3 Pure functional programming

#### 1.3.1 Purity and referetial transparency

#### 1.3.2 Side-effecting programs

#### 1.3.3 Partial and total functions

### 1.4 A quick tour of Idris

#### 1.4.1 The interactive environment
