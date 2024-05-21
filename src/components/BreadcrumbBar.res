@react.component
let make = (~path: list<string>) => {
  <div className="flex flex-row gap-2">
    {React.array(
      path
      ->List.map(v => {
        <a href=`/${v}`>{React.string(v)}</a>
      })
      ->List.toArray,
    )}
  </div>
}
