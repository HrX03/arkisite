module InfoRow: {
    @react.component
    let make: (~title: string, ~children: string) => React.element
}

@react.component
let make: (~title: string=?, ~children: React.element) => React.element