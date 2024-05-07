type gdcTheme = Blank | Orange | Pink | Cyan | Yellow
type pageLayout = Normal | GDC(gdcTheme)

@react.component
let make = (~path, ~pageLayout, ~children) => {
  let pageTheme = switch pageLayout {
  | Normal | GDC(Blank) => ""
  | GDC(theme) =>
    switch theme {
    | Blank => ""
    | Orange => "gdc-orange"
    | Pink => "gdc-pink"
    | Cyan => "gdc-cyan"
    | Yellow => "gdc-yellow"
    }
  }

  let fontClass = switch pageLayout {
  | Normal => ""
  | GDC(_) => "gdc-type"
  }

  <div key="body" className={`h-full bg-background text-foreground ${fontClass} ${pageTheme}`}>
    <Navbar key="navbar" path />
    <div key="content" className="min-h-screen max-w-2xl m-auto"> children </div>
    <Footer key="footer" />
  </div>
}
