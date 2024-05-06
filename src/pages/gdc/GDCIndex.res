module GDCPageCard = {
  @react.component
  let make = (~title, ~subtitle, ~color, ~foregroundColor, ~image, ~href) => {
    <Next.Link href className="w-full">
      <div
        className="h-36 w-full flex flex-row"
        style={ReactDOM.Style.make(~backgroundColor=color, ~color=foregroundColor, ())}>
        <div className="flex flex-col p-4 flex-1 justify-center items-start">
          <h1 className="text-[32px]"> {React.string(title)} </h1>
          <h2 className="text-[16px]"> {React.string(subtitle)} </h2>
        </div>
        <img src=image alt={`${title} cover`} className="h-full aspect-[2/3] object-cover" />
      </div>
    </Next.Link>
  }
}

@react.component
let default = () => {
  <>
    <Meta
      siteName="Arkimastria GDC9.0"
      description="Homepage per l'evento annuale GDC di Arkimastria a.s.a.p.d!"
    />
    <div className="header w-full px-6 py-12 flex justify-center items-center">
      <img
        src="/static/img/gdc-ill.svg"
        alt="Illustrazione #RoadToGDC9"
        className="w-full max-w-[504px]"
      />
      // <h1> {React.string("STA ARRIVANDO!")} </h1>
      // <h2> {React.string("#RoadToGDC")} </h2>
    </div>
    <div className="flex gap-1">
      <GDCPageCard
        title="Ai Contest"
        subtitle="Architettura EFFIMERA"
        color="#E7401D"
        foregroundColor="#FFFFFF"
        image="/static/img/gdc/GDC9.0_AI Contest_Cover.webp"
        href="/gdc/aicontest"
      />
    </div>
  </>
}
