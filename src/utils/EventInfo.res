type eventType = Party | Conference | Cinema | Workshop | Contest

let getEventImage = (event) => switch event {
  | Party => ("party.svg", "Festa")
  | Conference => ("conference.svg", "Conferenza")
  | Cinema => ("cinema.svg", "Cinemastria")
  | Workshop => ("workshop.svg", "Workshop")
  | Contest => ("contest.svg", "Contest")
  }