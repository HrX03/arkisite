let pWrap = string => React.string(string)

type rec tparam = NL | Strong(tparam) | Header(tparam) | Link(string, tparam) | Str(string)
let rec resolveTParam = tparam => {
  switch tparam {
  | NL => <br />
  | Strong(inner) => <strong> {inner->resolveTParam} </strong>
  | Header(inner) => <h3> {inner->resolveTParam} </h3>
  | Link(href, inner) => <a href className="link"> {inner->resolveTParam} </a>
  | Str(str) => React.string(str)
  }
}

let template = (strings: array<string>, parameters: array<tparam>) => {
  switch strings {
  | [] => React.array([])
  | strings => {
      let items = ref(list{pWrap(Array.getUnsafe(strings, 0))})
      for i in 1 to strings->Array.length {
        let s = Array.getUnsafe(strings, i)
        let p = Array.getUnsafe(parameters, i - 1)
        items := list{...items.contents, p->resolveTParam, pWrap(s)}
      }

      React.array(items.contents->List.toArray)
    }
  }
}
