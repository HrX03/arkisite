type pageLayout = Normal | GDC(GDCUtils.gdcTheme)

@react.component
let make: (~path: list<string>, ~pageLayout: pageLayout, ~children: React.element) => React.element