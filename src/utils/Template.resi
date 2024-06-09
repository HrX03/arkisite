type rec tparam = NL | Strong(tparam) | Header(tparam) | Link(string, tparam) | Img(string, string) | Str(string)
let template: (array<string>, array<tparam>) => React.element