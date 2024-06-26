module Navlink = {
  @react.component
  let make = (~icon, ~alt, ~sizeClass, ~href=?, ~ignoreIconTheme=false) => {
    let iconTheme = switch ignoreIconTheme {
      | true => ""
      | false => "icon"
    }

    switch href {
    | Some(href) =>
      <Next.Link href>
        <img src=icon alt className={`${iconTheme} ${sizeClass}`} />
      </Next.Link>
    | None => <img src=icon alt className={`${iconTheme} ${sizeClass}`} />
    }
  }
}

@react.component
let make = (~path: list<string>) => {
  let (gdc, gdcBg) = switch path {
  | list{"gdc", ...rest} => (
      true,
      switch rest {
      | list{"contest"}
      | list{"cinemastria"}
      | list{} => true
      | list{_, ..._} => false
      },
    )
  | _ => (false, false)
  }

  let (centerLink, rightLink) = switch gdc {
  | true => (
      <Navlink icon="/static/img/gdc.svg" alt="GDC9.0 LOGO" href="/gdc" sizeClass="h-12" ignoreIconTheme=gdcBg/>,
      <Navlink icon="/static/img/2024.svg" alt="GDC9.0 2024 LOGOTYPE" sizeClass="h-8" ignoreIconTheme=gdcBg/>,
    )
  | false => (
      <Navlink
        icon="/static/img/arki-text.svg" alt="Arkimastria Logotype" href="/" sizeClass="h-6" ignoreIconTheme=gdcBg
      />,
      <Navlink icon="/static/img/arki.svg" alt="Arkimastria Logo" sizeClass="h-10" ignoreIconTheme=gdcBg/>,
    )
  }

  <nav className="sticky top-0 z-50 h-16 bg-background">
    {if gdcBg {
      <img
        src="/static/img/gdc-navbar-strip.webp"
        className="-z-10 absolute top-0 bottom-0 w-full h-full object-cover"
      />
    } else {
      <div />
    }}
    <div className="max-w-2xl m-auto relative h-full">
      <div className="flex justify-between h-full px-4 items-center">
        <Navlink icon="/static/img/arki.svg" alt="Arkimastria Logo" sizeClass="h-10" ignoreIconTheme=gdcBg/>
        rightLink
      </div>
      <div className="absolute top-0 flex justify-center w-full h-full items-center">
        centerLink
      </div>
    </div>
  </nav>
}
