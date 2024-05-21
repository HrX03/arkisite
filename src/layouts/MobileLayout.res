type pageLayout = Normal | GDC(GDCUtils.gdcTheme)

@react.component
let make = (~path, ~pageLayout, ~children) => {
  let pageTheme = switch pageLayout {
  | Normal | GDC(GDCUtils.Blank) => ""
  | GDC(theme) => GDCUtils.getClassForTheme(theme)
  }

  let fontClass = switch pageLayout {
  | Normal => ""
  | GDC(_) => "gdc-type"
  }

  <div key="body" className={`h-full bg-background text-foreground ${fontClass} ${pageTheme}`}>
    <Navbar key="navbar" path />
    /* <div key="breadcrumb" className="p-4">
      <BreadcrumbBar path />
    </div> */
    <div key="content" className="min-h-screen max-w-2xl m-auto"> children </div>
    <Footer key="footer" />
  </div>
}
