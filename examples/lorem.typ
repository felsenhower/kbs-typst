#let lorem(words) = {
  let lorem_ipsum = "Lorem ipsum [...]"
  let arr = lorem_ipsum.split(" ")
  let n = calc.ceil(words / arr.len())
  arr = n * arr
  arr = arr.slice(0, words)
  let text = arr.join(" ")
  if text.ends-with(",") {
    text = text.slice(0, -1)
  }
  if not text.ends-with(".") {
    text = text + "."
  }
  text
}
