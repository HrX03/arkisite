type gdcTheme = {
  backgroundColor: string,
  secondaryColor: string,
  useLightForeground?: bool,
}
type gdcOptions = {
    theme: gdcTheme
}
type pageLayout = Normal | GDC(gdcOptions)

@react.component
let make: (~path: list<string>, ~pageLayout: pageLayout, ~children: React.element) => React.element

let blankGDC: gdcTheme
let orangeGDC: gdcTheme
let pinkGDC: gdcTheme
let cyanGDC: gdcTheme
let yellowGDC: gdcTheme