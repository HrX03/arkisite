import { GDCTheme } from "@/components/mobile_layout";
import path from "path";

export function splitPath(src: string): Array<string> {
  const cleanPath = src.startsWith(path.sep)
    ? src.substring(1, src.length)
    : src;

  switch (src) {
    case "":
      return [];
    default:
      return cleanPath.split(path.sep);
  }
}

/* export function escaper(strings: Array<string>, parameters: Array<string>): string {
    return parameters.reduce((acc: number, p: number, i: number): string => {
        let str = strings[i + 1]
        acc++ p++ 
        return str
    }, strings[0])
} */

export function conditionalWrapper(
  wrapper: (children: React.ReactElement) => React.ReactElement,
  children: React.ReactElement,
): React.ReactElement {
  return wrapper(children);
}

export function getClassForTheme(theme: GDCTheme): string {
  switch (theme) {
    case GDCTheme.Blank:
      return "";
    case GDCTheme.Orange:
      return "gdc-orange";
    case GDCTheme.Pink:
      return "gdc-pink";
    case GDCTheme.Cyan:
      return "gdc-cyan";
    case GDCTheme.Yellow:
      return "gdc-yellow";
    case GDCTheme.Black:
      return "gdc-black";
    case GDCTheme.Special:
      return "gdc-sp";
  }
}

export enum EventType {
  Party = "party",
  Conference = "conference",
  Cinema = "cinema",
  Workshop = "workshop",
  Contest = "contest",
}

export function getEventImage(event: EventType): {
  icon: string;
  alt: string;
} {
  switch (event) {
    case EventType.Party:
      return { icon: "party.svg", alt: "Festa" };
    case EventType.Conference:
      return { icon: "conference.svg", alt: "Conferenza" };
    case EventType.Cinema:
      return { icon: "cinema.svg", alt: "Cinemastria" };
    case EventType.Workshop:
      return { icon: "workshop.svg", alt: "Workshop" };
    case EventType.Contest:
      return { icon: "contest.svg", alt: "Contest" };
  }
}
