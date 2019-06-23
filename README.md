# Idris

依存型を持つ純粋関数型プログラミング言語

## 処理系の導入方法

macOS

```bash
brew install idris
```

## 言語仕様について

- 正格評価
- 関数の型の記述が原則必須

## イントロダクション

In conventional programming language, there is a clear distinction between types and values.
For example, in Haskell, the following are types, representing integers, characters, lists of characters, ad lists of any value respectively:

- `Int`, `Char`, `[Char]`, `[a]`

Correspondingly, the following values are examples of inhabitants of those types:

- `42`, `'a'`, `"Hello world!"`, `[2, 3, 4, 5, 6]`

In a language with dependent types, however, the distinction is less clear.
Dependent types allow types to "depend" on values -- in other words, types are a first class language connstruct and can be manipulated like any other value.
The standard example is the type of lists of a given length, `Vect n a`, where `a` is the element type and `n` is the length of the list and can be an arbitrary term.
When types can contain values, and where those values describe properties, for example the legth of a list, the type of a function can begin to describe its own properties. Take for example the concatenation of two lists. This operation has the property that the resulting list's length is the sum of the lengths of the two input lists. We can therefore give the following type to the `app` function, which concateates vectors:

```idris
app: Vect n a -> Vect m a -> Vect (n + m) a
```

This tutorial introduces Idris, a general purpose functional programming language with dependent types. The goal of the Idris project is to build a dependently typed language suitable for verifiable general purpose programming. To this end, Idris is a compiled language which aims to generate efficient executable code. It also has a lightweight foreign function interface which allows easy interaction with external `C` libraries.
