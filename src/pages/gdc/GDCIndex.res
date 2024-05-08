module GDCPageCard = {
  @react.component
  let make = (~title, ~subtitle, ~theme, ~eventType, ~image, ~href) => {
  let (eventIcon, eventAlt) = EventInfo.getEventImage(eventType)

    let themeClass = GDCUtils.getClassForTheme(theme)
    <Next.Link href className=`w-full ${themeClass} flex flex-col`>
      <div className="relative">
        <div
          className="bg-background absolute top-[8px] right-[8px] w-16 aspect-square flex justify-center items-center rounded-full">
          <img src=`/static/img/${eventIcon}` alt=eventAlt className="icon w-4/5 h-4/5" />
        </div>
        <img src=image alt={`${title} cover`} className="w-full h-36 object-cover" />
      </div>
      <div className="flex bg-background text-foreground h-full items-center">
        <div className="flex flex-col p-4 flex-1 justify-center items-start h-full">
          <h1 className="text-[32px]"> {React.string(title)} </h1>
          <h2 className="text-[16px]"> {React.string(subtitle)} </h2>
        </div>
        <div className="flex justify-center items-center h-full max-w-8 mx-4 content-stretch">
          <img src="/static/img/next.svg" className="icon w-full aspect-square"/>
        </div>
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
    </div>
    <div className="flex flex-col gap-2 pb-32">
      <GDCPageCard
        title="Ai Contest"
        subtitle="Architettura EFFIMERA"
        theme=GDCUtils.Orange
        eventType=EventInfo.Contest
        image="/static/img/gdc/GDC9.0_AI_Contest_Cover.webp"
        href="/gdc/aicontest"
      />
      <GDCPageCard
        title="DS Contest"
        subtitle="Una tavola, Uno sgabello"
        theme=GDCUtils.Pink
        eventType=EventInfo.Contest
        image="/static/img/gdc/GDC9.0_DS_Contest_Cover.webp"
        href="/gdc/dscontest"
      />
    </div>
  </>
}
