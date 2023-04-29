# kbs-typst

Folien für das [KunterBunteSeminar (KBS)](https://mafiasi.de/KBS) über [Typst](https://github.com/typst/typst).

## Dependencies

* `typst`
* `make`
* `pdf2svg`
* Schriftarten:
    * Latin Modern Sans (als Fallback wird DejaVu Sans benutzt, was built-in sein sollte, aber nicht so gut aussieht)
    * Comic Sans MS (fragt nicht)

## Bauen:

```bash
$ git clone https://github.com/felsenhower/kbs-typst.git
$ cd kbs-typst
$ git submodule update --init
$ make
```

## Anmerkungen:

* Dieses Repo enthält ein paar Submodules (in [`typst-modules`](typst-modules)), die zum Bauen benötigt werden.
* In [`examples`](examples) befinden sich ein paar Typst-Beispiele, die vor dem Bauen der Präsentation erst zu PDF kompiliert und zu SVG konvertiert werden müssen (`make` macht das automatisch).
* Da sich Typst derzeit schnell weiterentwickelt, ist es möglich, dass der Inhalt dieses Repos nur mit bestimmten Versionen von Typst baut.
