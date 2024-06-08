module GDCPageCard = {
  @react.component
  let make = (
    ~title,
    ~subtitle,
    ~theme,
    ~eventType=?,
    ~image=?,
    ~href=?,
    ~objectAlignment=?,
    ~extraText=?,
  ) => {
    let themeClass = GDCUtils.getClassForTheme(theme)
    Utils.conditionalWrapper(
      ~wrapper=children => {
        let className = `w-full ${themeClass} flex flex-col`
        switch href {
        | None => <div className> children </div>
        | Some(href) => <Next.Link href className> children </Next.Link>
        }
      },
      ~children={
        <>
          <div className="relative w-full h-36 ">
            {switch image {
            | Some(image) =>
              <img
                src=image
                alt={`${title} cover`}
                className={`w-full h-36 absolute object-cover ${objectAlignment->Option.getOr("")}`}
              />
            | None => <div />
            }}
            {switch eventType {
            | Some(eventType) => {
                let (eventIcon, eventAlt) = EventInfo.getEventImage(eventType)
                <div
                  className="bg-background absolute top-[8px] right-[8px] w-16 aspect-square flex justify-center items-center rounded-full">
                  <img src={`/static/img/${eventIcon}`} alt=eventAlt className="icon w-4/5 h-4/5" />
                </div>
              }
            | None => <div />
            }}
            {switch extraText {
            | Some(txt) =>
              <div className="h-8 w-full absolute -bottom-1">
                <div className="h-full w-full relative">
                  <img
                    src="/static/img/gdc-band.svg"
                    className="h-full w-[672px] absolute object-cover object-left"
                  />
                  <div className="absolute w-full h-full flex justify-start items-center px-4">
                    <h3 className="absolute"> {React.string(txt)} </h3>
                  </div>
                </div>
              </div>
            | None => <div />
            }}
          </div>
          <div className="flex bg-background text-foreground h-full items-center">
            <div className="flex flex-col p-4 flex-1 justify-center items-start h-full">
              <h1 className="text-[32px]"> {React.string(title)} </h1>
              <h2 className="text-[16px]"> {React.string(subtitle)} </h2>
            </div>
            {if href != None {
              <div className="flex justify-center items-center h-full max-w-8 mx-4 content-stretch">
                <img src="/static/img/next.svg" className="icon w-full aspect-square" />
              </div>
            } else {
              <div />
            }}
          </div>
        </>
      },
    )
  }
}

@react.component
let default = () => {
  <>
    <Meta
      siteName="Arkimastria GDC9.0"
      description="Homepage per l'evento annuale GDC di Arkimastria a.s.a.p.d!"
      ogImage="/static/img/gdc/GDC9.0_TitleCard.webp"
    />
    <div className="header w-full px-6 py-12 flex justify-center items-center">
      <img
        src="/static/img/gdc-ill.svg"
        alt="Illustrazione #RoadToGDC9"
        className="w-full max-w-[504px]"
      />
    </div>
    <ActionBox
      title="SCARICA IL PROGRAMMA"
      description="È stato pubblicato il programma definitivo con la descrizione di giornate, eventi, ospiti, concetti e molto altro! Dagli un’occhiata!!!"
      href="https://drive.google.com/uc?export=download&id=1ADDRXCkbZ7bo8P8gnCNPVnFFsYNbrTex"
      boxType=ActionBox.Download
      shouldFloat=false
    />
    <div className="h-2" />
    <div className="flex flex-col gap-2 pb-32">
      <GDCPageCard
        title="Ebanisteria Meccanica"
        subtitle="Free workshop Design Spartano"
        theme=GDCUtils.Pink
        eventType=EventInfo.Workshop
        image="/static/img/gdc/GDC9.0_DSWorkshop_Cover.webp"
        href="/gdc/workshop/dsworkshop"
        objectAlignment="object-top"
      />
      <GDCPageCard
        title="Linografia"
        subtitle="Free workshop"
        theme=GDCUtils.Yellow
        eventType=EventInfo.Workshop
        image="/static/img/gdc/GDC9.0_LinoCutPrint_Cover.webp"
        href="/gdc/workshop/linocutprint"
      />
      <GDCPageCard
        title="BlueFriday"
        subtitle="Free workshop cianotipia"
        theme=GDCUtils.Cyan
        eventType=EventInfo.Workshop
        image="/static/img/gdc/GDC9.0_BlueFriday_Cover.webp"
        href="/gdc/workshop/bluefriday"
        objectAlignment="object-bottom"
      />
      <GDCPageCard
        title="Ai Contest"
        subtitle="Architettura EFFIMERA"
        theme=GDCUtils.Orange
        eventType=EventInfo.Contest
        image="/static/img/gdc/GDC9.0_AI_Contest_Cover.webp"
        href="/gdc/contest/aicontest"
      />
      <GDCPageCard
        title="DS Contest"
        subtitle="Una tavola, Uno sgabello"
        theme=GDCUtils.Pink
        eventType=EventInfo.Contest
        image="/static/img/gdc/GDC9.0_DS_Contest_Cover.webp"
        href="/gdc/contest/dscontest"
        extraText="COMPLETATO!"
      />
    </div>
  </>
}
