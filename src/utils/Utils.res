let splitPath = path => {
  let path = if path->String.startsWith("/") {
    path->String.substring(~start=1, ~end=path->String.length)
  } else {
    path
  }

  switch path {
  | "" => []
  | _ => path->String.split("/")
  }
}

let escaper = (strings: array<string>, parameters: array<string>): string => {
  Array.reduceWithIndex(parameters, Array.getUnsafe(strings, 0), (acc, p, i) => {
    let str = Array.getUnsafe(strings, i + 1)
    acc ++ p ++ str
  })
}

let conditionalWrapper = (
  ~wrapper: React.element => React.element,
  ~children: React.element,
): React.element => {
  wrapper(children)
}
