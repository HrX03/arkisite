module Shared: {
    @react.component
    let make: (~title: string, ~description: string) => React.element
}

let default: unit => React.element