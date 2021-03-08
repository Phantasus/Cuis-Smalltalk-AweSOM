# AweSOM - The Simple Object Machine Smalltalk implemented in Smalltalk

## Introduction

[SOM] is a minimal Smalltalk dialect used to teach VM construction at the [Hasso
Plattner Institute][HPI]. It was originally built at the University of Århus
(Denmark) where it was used for teaching and as the foundation for [Resilient
Smalltalk][RS].

This repository contains the Smalltalk-based implementation of SOM, including
SOM's standard library and a number of examples. In addition to AweSOM, other
implementations exist for Java (SOM), C (CSOM), C++ (SOM++), and Python
(PySOM). Please see the [main project page][SOM] for links to other VM
implementations.

A simple Hello World looks like:

```Smalltalk
Hello = (
  run = (
    'Hello World!' println.
  )
)
```

This particular repository represents a fork of [AweSOM][AweSOM], which
was ported to [Cuis Smalltalk][Cuis].

## Setup

Install the core-lib submodule, which downloads the core library
of SOM, written in SOM. Which in turn is used by the Cuis implementation
inside the image for core libraries and testcases.

```Bash
git submodule update --init
```

Then install the packages contained in the repository in an image
and place the resulting image into the repository directory. This
needs to be done, so that the testcases and any SOM code can see
the core-lib.

For installing the packages do:

```Smalltalk
Feature require: 'AweSOM-Meta'.
Feature require: 'AweSOM-Test'.
Feature require: 'AweSOM-Compiler'.
Feature require: 'AweSOM-CoreObjects'.
Feature require: 'AweSOM-Interpreter'.
Feature require: 'AweSOM-VM'.
```

## Playing around

For printing "Hello World" on the transcript do-it in a Workspace:

```Smalltalk
universe := SOMUniverse new.
universe setupDefaultClasspath.

universe eval: '''Hello World'' println'.
```

AweSOM is a little bit "goatish" when it comes to searching the
class path. When a "message not found" error occurs on the
UndefinedObject, then it's very likely that the system didn't
find the `core-lib` class-path, there it needs to read from
the `Smalltalk` directory the base classes. When it doesn't
find them it ignores them silently and now the whole base
system is not defined.

Another way of running a Hello World example is to create
the class and then run it. This is what `#eval:` does
indirectly.

To do that by hand do-it the following in a Workspace:

```Smalltalk

universe := SOMUniverse new.
universe setupDefaultClasspath.

universe loadAndStoreFromSource: 'Hello = (
  run = (
    ''Hello World!'' println.
  )
)'.

universe start: {'Hello'}.
```

Which will print too in an open Transcript "Hello World".

## Links

 [Cuis]: https://github.com/Cuis-Smalltalk/Cuis-Smalltalk-Dev
 [AweSOM]: https://github.com/SOM-st/AweSOM
 [SOM]:    https://som-st.github.io/
 [HPI]:    http://www.hpi.uni-potsdam.de/hirschfeld/projects/som/
 [RS]:     http://dx.doi.org/10.1016/j.cl.2005.02.003
 [Pharo]:  https://pharo.org/
