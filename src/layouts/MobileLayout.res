type gdcTheme = {
  backgroundColor: string,
  secondaryColor: string,
  useLightForeground?: bool,
}
type gdcOptions = {theme: gdcTheme}
type pageLayout = Normal | GDC(gdcOptions)

let blankGDC = {
  backgroundColor: "#FFFFFF",
  secondaryColor: "#000000",
}
let orangeGDC = {
  backgroundColor: "#E7401D",
  secondaryColor: "#FBEA1B",
  useLightForeground: true,
}
let pinkGDC = {
  backgroundColor: "#F6B9C4",
  secondaryColor: "#D7E8DD",
}
let cyanGDC = {
  backgroundColor: "#D7E8DD",
  secondaryColor: "#E7401D",
}
let yellowGDC = {
  backgroundColor: "#FBEA1B",
  secondaryColor: "#F6B9C4",
}

let lightImageFilter = "invert(100%) sepia(100%) saturate(2%) hue-rotate(35deg) brightness(107%) contrast(101%)";

let buildPageTheme = theme => {
  let useLightForeground = switch theme.useLightForeground {
  | Some(true) => true
  | Some(false) | None => false
  }

  `
  :root {
    --background-color: ${theme.backgroundColor};
    --foreground-color: ${useLightForeground ? "#FFFFFF" : "#000000"};
    --secondary-color: ${theme.secondaryColor};
  }

  a {
    color: ${useLightForeground ? "#FFFFFF" : "#000000"};
  }

  img.icon {
    filter: ${useLightForeground ? lightImageFilter : "none"};
  }
  `
}

@react.component
let make = (~path, ~pageLayout, ~children) => {
  let pageTheme = switch pageLayout {
  | Normal => ""
  | GDC(options) => buildPageTheme(options.theme)
  }
  let useGDCFont = switch pageLayout {
    | Normal => false
    | GDC(_) => true
  }

  <>
    <style>
      {React.string(pageTheme)}
    </style>
    <div className=`h-full bg-background text-foreground ${useGDCFont ? "prose-gdc" : ""}`>
      <Navbar path/>
      <div className="min-h-screen"> children </div>
      <Footer />
    </div>
  </>
}
