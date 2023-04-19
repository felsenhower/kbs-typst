# kbs-typst

Folien für das [KunterBunteSeminar (KBS)](https://mafiasi.de/KBS) über [Typst](https://github.com/typst/typst).

## Dependencies

* `typst`
* `make`
* `pdf2svg`

## Bauen:

```bash
$ git clone https://github.com/felsenhower/kbs-typst.git
$ cd kbs-typst
$ git submodule update --init
$ make
```

## Anmerkungen:

* Dieses Repo enthält ein paar Submodules (in [`typst-modules`](typst-modules)), die zum Bauen benötigt werden.
* In [`examples`](examples) befinden sich ein paar Typst-Beispiele, die zum Bauen der Präsentations benötigt werden (`make` macht das automatisch).
* Da sich Typst derzeit schnell weiterentwickelt, ist es möglich, dass der Inhalt dieses Repos nur mit bestimmten Versionen von Typst baut.
