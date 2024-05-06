type eventType = Party | Conference | Cinema | Workshop | Contest

@react.component
let make: (
  ~title: string,
  ~subtitle: string,
  ~image: string,
  ~eventType: eventType,
) => React.element
