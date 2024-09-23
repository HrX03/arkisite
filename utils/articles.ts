import { EventType } from "./utils";
import { GDCTheme } from "@/components/mobile_layout";
import { ActionBoxType } from "@/components/action_box";

export type ArticleInfoResult =
  | { data: PostData; content: string }
  | ErrorCode
  | undefined;

export enum ErrorCode {
  NotFound = "NOT_FOUND",
  MalformedDataSection = "MALFORMED_DATA_SECTION",
}

export type ArticleData = {
  title: string;
  subtitle: string;
  image: string;
  partnerImage?: string | undefined;
  eventType: EventType;
  gdcTheme?: GDCTheme | undefined;
};
export type MetaData = {
  title: string;
  description: string;
  image?: string | undefined;
};
export type ActionBoxData = {
  title: string;
  description: string;
  link: string;
  type: ActionBoxType;
};
export type InfoBoxData = {
  title?: string;
  data:
    | {
        title: string;
        text: string;
      }[]
    | string[];
};

export interface PostData {
  article: ArticleData;
  meta: MetaData;
  action?: ActionBoxData | undefined;
  info?: InfoBoxData | undefined;
}
