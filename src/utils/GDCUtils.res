type gdcTheme = Blank | Orange | Pink | Cyan | Yellow | Black | Special

let getClassForTheme = theme =>
  switch theme {
  | Blank => ""
  | Orange => "gdc-orange"
  | Pink => "gdc-pink"
  | Cyan => "gdc-cyan"
  | Yellow => "gdc-yellow"
  | Black => "gdc-black"
  | Special => "gdc-sp"
  }
