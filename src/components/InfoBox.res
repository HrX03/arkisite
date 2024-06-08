type marqueeDirection = Forward | Reverse

module MarqueeGradient = {
  @react.component
  let make = (~direction=Forward) => {
    let directionClass = switch direction {
    | Forward => "animate-marquee-gradient"
    | Reverse => "animate-marquee-gradient-re"
    }

    <div className="w-2xl relative h-4 whitespace-nowrap overflow-hidden">
      <img src="/static/img/gdc-band.svg" className="h-4 w-[672px] top-0 left-0 object-cover" />
      // <img src="/static/img/gdc-band.svg" className=`h-6 w-2xl object-cover`/>
    </div>
  }
}

module InfoRow = {
  @react.component
  let make = (~title, ~children) => {
    <div className="flex flex-row gap-2 items-baseline">
      <strong> {React.string(title->String.toUpperCase ++ ":")} </strong>
      <p> {React.string(children)} </p>
    </div>
  }
}

@react.component
let make = (~title=?, ~children) => {
  <div className="bg-black">
    <MarqueeGradient />
    <div className="p-6 text-white flex flex-col gap-4">
      <h2>
        {React.string(
          switch title {
          | Some(title) => title
          | None => "TOO LONG, WON'T READ"
          },
        )}
      </h2>
      <div className="flex flex-col"> children </div>
    </div>
    <MarqueeGradient direction=Reverse />
  </div>
}
