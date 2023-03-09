Opam repository of [Lambdapi](https://github.com/Deducteam/lambdapi) libraries
=====================================

Requires [Opam](https://opam.ocaml.org/).

To add this repository in your Opam environment, do once:

```bash
opam repository -a add lambdapi https://github.com/deducteam/opam-lambdapi-repository.git
```

To search available Lambdapi libraries, do:

```bash
opam search lambdapi
```

To get information about a Lambdapi library and know how to require it in your own developments, do:

```bash
opam info $libname
```

To install a Lambdapi library, do:

```bash
opam install $libname
```

To uninstall a Lambdapi library, do:

```bash
opam uninstall $libname
```

**How to add a new library in this repository?**

- fork the repository
- create a branch `$libname.$version`
- add a file `packages/lambdapi-$libname/lambdapi-$libname.$version/opam`
- commit and push
- make a pull request

[Example of Makefile](https://github.com/fblanqui/lib/blob/master/Makefile) to compile your library.

[Example of Github action workflow](https://github.com/fblanqui/lib/blob/master/.github/workflows/main.yml) to automatically check the versions of Lambdapi with which your library compiles.

[Example of opam file](https://github.com/Deducteam/opam-lambdapi-repository/blob/master/packages/lambdapi-blanqui-lib/lambdapi-blanqui-lib.0.0.0/opam) to include a new library in this repository.

[Script to generate the Opam metadata of your library](https://github.com/Deducteam/opam-lambdapi-repository/blob/master/opam-data.sh)
