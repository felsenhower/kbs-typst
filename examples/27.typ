#table(
  columns: 3,

  [Name], [Posten], [Gehalt],
  ..(json("sample.json").map(x => (
    x.vorname + " " + x.name,
    x.posten,
    str(x.gehalt) + " €")
  ).flatten())
)



