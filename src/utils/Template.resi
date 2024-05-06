type rec tparam = NL | Strong(tparam) | Header(tparam) | Link(string, tparam) | Str(string)
let template: (array<string>, array<tparam>) => React.element