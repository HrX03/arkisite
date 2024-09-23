/* eslint-disable react/jsx-key */
import Link from "next/link";
import { match, P } from "ts-pattern";
import { GDCLayout, GDCTheme, PageLayout } from "./mobile_layout";

type NavlinkProps = {
  icon: string;
  alt: string;
  sizeClass: string;
  href?: string;
  ignoreIconTheme: boolean;
};
function Navlink({
  icon,
  alt,
  sizeClass,
  href,
  ignoreIconTheme = false,
}: NavlinkProps): React.ReactElement {
  const iconTheme = ignoreIconTheme ? "" : "icon";

  if (href) {
    return (
      <Link href={href}>
        <img
          src={icon}
          alt={alt}
          className={`${iconTheme} ${sizeClass} w-auto`}
        />
      </Link>
    );
  }

  return <img src={icon} alt={alt} className={iconTheme} sizes={sizeClass} />;
}

type NavbarProps = {
  pageLayout: PageLayout;
};

export default function Navbar({
  pageLayout,
}: NavbarProps): React.ReactElement {
  const { gdc, gdcBg } = match(pageLayout)
    .with({ type: "gdc", variant: P.select() }, (theme) => ({
      gdc: true,
      gdcBg: match(theme)
        .with(GDCTheme.Special, GDCTheme.Black, () => true)
        .otherwise(() => false),
    }))
    .otherwise(() => ({ gdc: false, gdcBg: false }));

  const { centerLink, rightLink } = gdc
    ? {
        centerLink: (
          <Navlink
            icon="/img/gdc.svg"
            alt="GDC9.0 LOGO"
            href="/gdc"
            sizeClass="h-12"
            ignoreIconTheme={gdcBg}
          />
        ),
        rightLink: (
          <Navlink
            icon="/img/2024.svg"
            alt="GDC9.0 2024 LOGOTYPE"
            sizeClass="h-8"
            ignoreIconTheme={gdcBg}
          />
        ),
      }
    : {
        centerLink: (
          <Navlink
            icon="/img/arki-text.svg"
            alt="Arkimastria Logotype"
            href="/"
            sizeClass="h-6"
            ignoreIconTheme={gdcBg}
          />
        ),
        rightLink: (
          <Navlink
            icon="/img/arki.svg"
            alt="Arkimastria Logo"
            sizeClass="h-10"
            ignoreIconTheme={gdcBg}
          />
        ),
      };

  return (
    <nav className="sticky top-0 z-50 h-16 bg-background">
      {gdcBg ? (
        <img
          src="/img/gdc-navbar-strip.webp"
          alt="Gradient strip"
          className="-z-10 absolute top-0 bottom-0 w-full h-full object-cover"
        />
      ) : null}
      <div className="max-w-2xl m-auto relative h-full">
        <div className="flex justify-between h-full px-4 items-center">
          <Navlink
            icon="/img/arki.svg"
            alt="Arkimastria Logo"
            sizeClass="h-10"
            ignoreIconTheme={gdcBg}
          />
          {rightLink}
        </div>
        <div className="absolute top-0 flex justify-center w-full h-full items-center">
          {centerLink}
        </div>
      </div>
    </nav>
  );
}
