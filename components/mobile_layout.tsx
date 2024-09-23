import { getClassForTheme, splitPath } from "@/utils/utils";
import { match, P } from "ts-pattern";
import Footer from "./footer";
import Navbar from "./navbar";
import BreadcrumbBar from "./breadcrumb_bar";
import { useRouter } from "next/router";

export enum GDCTheme {
  Blank = "blank",
  Orange = "orange",
  Pink = "pink",
  Cyan = "cyan",
  Yellow = "yellow",
  Black = "black",
  Special = "special",
}
export type PageLayout =
  | { type: "normal" }
  | { type: "gdc"; variant: GDCTheme };

export function GDCLayout(theme: GDCTheme): PageLayout {
  return { type: "gdc", variant: theme };
}

export const NormalLayout: PageLayout = { type: "normal" };

type MobileLayoutProps = {
  pageLayout: PageLayout;
  children: React.ReactElement | React.ReactElement[];
};

export default function MobileLayout({
  pageLayout,
  children,
}: MobileLayoutProps): React.ReactElement {
  const router = useRouter();
  const path = splitPath(router.asPath);

  let pageTheme: string = match(pageLayout)
    .with(
      { type: "normal" },
      { type: "gdc", variant: GDCTheme.Blank },
      () => "",
    )
    .with({ type: "gdc", variant: P.select() }, (theme) =>
      getClassForTheme(theme),
    )
    .exhaustive();

  let fontClass: string = match(pageLayout)
    .with({ type: "gdc" }, () => "gdc-type")
    .otherwise(() => "");

  return (
    <div
      key="body"
      className={`h-full bg-background text-foreground ${fontClass} ${pageTheme}`}
    >
      <Navbar key="navbar" pageLayout={pageLayout} />
      {/* <div key="breadcrumb" className="p-4">
        <BreadcrumbBar key="breadcrumb" path={path} />
      </div> */}
      <div key="content" className="min-h-screen max-w-2xl m-auto">
        {children}
      </div>
      <Footer key="footer" />
    </div>
  );
}
