type eventType = Party | Conference | Cinema | Workshop | Contest

@react.component
let make = (~title, ~subtitle, ~image: string, ~eventType: eventType) => {
  let (eventIcon, eventAlt) = switch eventType {
  | Party => ("party.svg", "Festa")
  | Conference => ("conference.svg", "Conferenza")
  | Cinema => ("cinema.svg", "Cinemastria")
  | Workshop => ("workshop.svg", "Workshop")
  | Contest => ("contest.svg", "Contest")
  }

  <div>
    <div className="w-full px-4 py-6">
      <h1> {React.string(title)} </h1>
      <h2 className="w-4/5"> {React.string(subtitle)} </h2>
    </div>
    <div className="relative">
      <div
        className="bg-background absolute top-0 right-0 w-1/4 aspect-square -translate-y-2/4 flex justify-center items-center rounded-full">
        <img src=`/static/img/${eventIcon}` alt=eventAlt className="icon w-4/5 h-4/5" />
      </div>
      <img src=image className="w-full h-full object-cover aspect-[3/2]" />
    </div>
  </div>
}
