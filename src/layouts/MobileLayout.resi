type gdcTheme = Blank | Orange | Pink | Cyan | Yellow
type pageLayout = Normal | GDC(gdcTheme)

@react.component
let make: (~path: list<string>, ~pageLayout: pageLayout, ~children: React.element) => React.element