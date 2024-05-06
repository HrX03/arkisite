type navlink = {
  icon: string,
  alt: string,
  sizeClass: string,
  href?: string,
}

let linkFromNavlink = (link: navlink) => {
  switch link.href {
  | Some(href) =>
    <Next.Link href>
      <img src=link.icon alt=link.alt className={`icon ${link.sizeClass}`} />
    </Next.Link>
  | None =>
    <div>
      <img src=link.icon alt=link.alt className={`icon ${link.sizeClass}`} />
    </div>
  }
}

@react.component
let make = (~path: list<string>) => {
  let (gdc, gdcBg) = switch path {
  | list{"gdc", ...rest} => (
      true,
      switch rest {
      | list{_} => false
      | list{}
      | _ => true
      },
    )
  | _ => (false, false)
  }

  let (centerLink, rightLink) = switch gdc {
  | true => (
      {
        icon: "/static/img/gdc.svg",
        alt: "GDC9.0 LOGO",
        href: "/gdc",
        sizeClass: "h-12",
      },
      {
        icon: "/static/img/2024.svg",
        alt: "GDC9.0 2024 LOGOTYPE",
        sizeClass: "h-8",
      },
    )
  | false => (
      {
        icon: "/static/img/arki-text.svg",
        alt: "Arkimastria Logotype",
        href: "/",
        sizeClass: "h-6",
      },
      {
        icon: "/static/img/arki.svg",
        alt: "Arkimastria Logo",
        sizeClass: "h-12",
      },
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
    <div className="flex justify-between h-full px-4 items-center">
      {linkFromNavlink({
        icon: "/static/img/arki.svg",
        alt: "Arkimastria Logo",
        sizeClass: "h-10",
      })}
      /* <button>
        <img src="/static/img/menu.svg" className="icon h-8" />
      </button> */
      {linkFromNavlink(rightLink)}
    </div>
    <div className="absolute top-0 flex justify-center w-full h-full items-center">
      {linkFromNavlink(centerLink)}
    </div>
  </nav>
}
