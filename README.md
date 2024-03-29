# agtag

_A bespoke low-tech alternative to [ctags](https://linux.die.net/man/1/ctags) to generate tag files (i.e. symbol lookup tables) for large hybrid codebases like [Gutenberg](https://github.com/WordPress/gutenberg) and [WordPress](https://wordpress.org)._

`agtag` crawls a codebase in search for global symbols, such as exported identifiers in JavaScript, TypeScript interfaces, or named functions in PHP, and collects these symbols into an index known as a [tag file](https://en.wikipedia.org/wiki/Ctags#Tags_file_formats).

Tag files allow text editors to quickly jump to definitions across a codebase, provide rudimentary completion, etc. Though a blunt tool, tags generated by `agtag` can, in the right circumstances, provide better lookup capabilities than modern [LSP](https://en.wikipedia.org/wiki/Language_Server_Protocol)-powered editors.

## Usage

Generate a tag file for the current project:

```sh
$ agtag > tags
```

## Install

* Place `agtag` anywhere included in your shell's `$PATH`.
* Make sure it can be executed with `chmod +x agtag`.

## Requirements

* [ag, _aka_ the silver searcher](https://github.com/ggreer/the_silver_searcher)
* POSIX (awk, getopt, sort, sh)

## FAQ

* **I don't use `ag`; can I use `rg` / `ugrep` / `ack`?**

This script has only been used with `ag` and it assumes a series of `ag`-specific options, but you should be able to adapt it by overwriting the existing environment variables (`AG_FMT_OPTS`, `AG_JS_OPTS`, `AG_PHP_OPTS`). Meanwhile, we'll need a more suitable name than **ag** tag. ;-)
