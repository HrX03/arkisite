@react.component
let make: (
  ~title: string,
  ~subtitle: string,
  ~image: string,
  ~eventType: EventInfo.eventType,
) => React.element
