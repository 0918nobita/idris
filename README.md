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

## 参考文献

- [Documentation for the Idris Language](http://docs.idris-lang.org/en/latest/index.html)
- [Type-Driven Development with Idris](https://www.manning.com/books/type-driven-development-with-idris)
- [こわくない Idris (1) - Ryusei’s Notes (a.k.a. M59のブログ)](http://mandel59.hateblo.jp/entry/2013/09/02/184831)

## イントロダクション

従来のプログラミング言語では、型と値との間に明確な違いがあった。
例えば Haskell では、以下は 整数・文字・文字のリスト・何かしらのリストを表現している型である。

- `Int`, `Char`, `[Char]`, `[a]`

それと対応して、以下の値はこれらの型に対応する値の例である。

- `42`, `'a'`, `"Hello world!"`, `[2, 3, 4, 5, 6]`

しかし依存型のある言語では、その違いはあまり明確ではない。

Dependent types allow types to "depend" on values -- in other words, types are a first class language connstruct and can be manipulated like any other value.
The standard example is the type of lists of a given length, `Vect n a`, where `a` is the element type and `n` is the length of the list and can be an arbitrary term.
When types can contain values, and where those values describe properties, for example the legth of a list, the type of a function can begin to describe its own properties. Take for example the concatenation of two lists. This operation has the property that the resulting list's length is the sum of the lengths of the two input lists. We can therefore give the following type to the `app` function, which concateates vectors:

```idris
app : Vect n a -> Vect m a -> Vect (n + m) a
```

このチュートリアルでは、Idris という依存型のある汎用関数型言語について紹介する。
The goal of the Idris project is to build a dependently typed language suitable for verifiable general purpose programming. To this end, Idris is a compiled language which aims to generate efficient executable code. It also has a lightweight foreign function interface which allows easy interaction with external `C` libraries.

## 想定している読者

This tutorial is intended as a brief introduction to the language, and is aimed at readers already familiar with a functional language such as Haskell or OCaml. In particular, a certain amount of familiarity with Haskell syntax is assumed, although most concepts will at least be explained briefly. The reader is also assumed to have some intrest in using dependent types for writing and verifying systems software.

Idris をより詳細に説明し、ゆっくりとしたペースで進み、対話的なプログラム開発しをカバーし、より多くのコード例がある [Type-Driven Development with Idris](https://www.manning.com/books/type-driven-development-with-idris) (Edwin Brady 著) が [Manning](https://www.manning.com/) で入手可能である。

## コード例

This tutorial includes some example code, which has been tested with against Idris. These files are available with the Idris distribution, so that you can try them out easily. They can be found under `samples`. It is, however, strongly recommended that you type them in yourself, rather than simply loading and reading them.
