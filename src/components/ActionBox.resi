type boxType = Download | WhatsappChat

@react.component
let make: (~title: string, ~description: string, ~href: string, ~boxType: boxType, ~shouldFloat: bool=?) => React.element
