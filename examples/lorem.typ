#let lorem(words) = {
  let lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum."
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
