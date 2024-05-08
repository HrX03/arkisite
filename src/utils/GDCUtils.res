type gdcTheme = Blank | Orange | Pink | Cyan | Yellow | Special

let getClassForTheme = theme =>
  switch theme {
  | Blank => ""
  | Orange => "gdc-orange"
  | Pink => "gdc-pink"
  | Cyan => "gdc-cyan"
  | Yellow => "gdc-yellow"
  | Special => "gdc-sp"
  }
