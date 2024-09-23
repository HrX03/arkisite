import ActionBox, { ActionBoxType } from "@/components/action_box";
import InfoBox, { InfoRow } from "@/components/info_box";
import Meta from "@/components/meta";
import { GDCLayout, GDCTheme, PageLayout } from "@/components/mobile_layout";
import {
  conditionalWrapper,
  EventType,
  getClassForTheme,
  getEventImage,
} from "@/utils/utils";
import { GetStaticProps } from "next";
import Link from "next/link";
import React from "react";

type GDCPageCardProps = {
  title: string;
  subtitle: string;
  theme: GDCTheme;
  eventType?: EventType;
  image?: string;
  href?: string;
  objectAlignment?: string;
  extraText?: string;
};

function GDCPageCard({
  title,
  subtitle,
  theme,
  eventType,
  image,
  href,
  objectAlignment,
  extraText,
}: GDCPageCardProps): React.ReactElement {
  let themeClass = getClassForTheme(theme);
  return conditionalWrapper(
    (children: React.ReactElement): React.ReactElement => {
      let className = `w-full ${themeClass} flex flex-col`;
      if (href) {
        return (
          <Link href={href} className={className}>
            {children}
          </Link>
        );
      } else {
        return <div className={className}>{children}</div>;
      }
    },
    <>
      <div className="relative w-full h-36 ">
        {image ? (
          <img
            src={image}
            alt={`${title} cover`}
            className={`w-full h-36 absolute object-cover ${objectAlignment ?? ""}`}
          />
        ) : null}
        {eventType ? (
          (() => {
            let { icon, alt: title } = getEventImage(eventType);
            return (
              <div className="bg-background absolute top-[8px] right-[8px] w-16 aspect-square flex justify-center items-center rounded-full">
                <img
                  src={`/img/${icon}`}
                  alt={title}
                  className="icon w-4/5 h-4/5"
                />
              </div>
            );
          })()
        ) : (
          <div />
        )}
        {extraText ? (
          <div className="h-8 w-full absolute -bottom-1">
            <div className="h-full w-full relative">
              <img
                src="/img/gdc-band.svg"
                className="h-full w-[672px] absolute object-cover object-left"
              />
              <div className="absolute w-full h-full flex justify-start items-center px-4">
                <h3 className="absolute">{extraText}</h3>
              </div>
            </div>
          </div>
        ) : null}
      </div>
      <div className="flex bg-background text-foreground h-full items-center">
        <div className="flex flex-col p-4 flex-1 justify-center items-start h-full">
          <h1 className="text-[32px]">{title}</h1>
          <h2 className="text-[16px]">{subtitle}</h2>
        </div>
        {href ? (
          <div className="flex justify-center items-center h-full max-w-8 mx-4 content-stretch">
            <img src="/img/next.svg" className="icon w-full aspect-square" />
          </div>
        ) : null}
      </div>
    </>
  );
}

export const getStaticProps = (async (context) => {
  return {props: {pageLayout: GDCLayout(GDCTheme.Special)}}
}) satisfies GetStaticProps<{
  pageLayout?: PageLayout;
}>;

export default function GDCIndex(): React.ReactElement {
  return (
    <>
      <Meta
        siteName="Arkimastria GDC9.0"
        description="Homepage per l'evento annuale GDC di Arkimastria a.s.a.p.d!"
        ogImage="/img/gdc/GDC9.0_TitleCard.webp"
      />
      <div className="header w-full px-6 py-12 flex justify-center items-center">
        <img
          src="/img/gdc-ill.svg"
          alt="Illustrazione #RoadToGDC9"
          className="w-full max-w-[504px]"
        />
      </div>
      <ActionBox
        title="SCARICA IL PROGRAMMA"
        description="È stato pubblicato il programma definitivo con la descrizione di giornate, eventi, ospiti, concetti e molto altro! Dagli un’occhiata!!!"
        href="https://drive.google.com/uc?export=download&id=1ADDRXCkbZ7bo8P8gnCNPVnFFsYNbrTex"
        boxType={ActionBoxType.Download}
        shouldFloat={false}
      />
      <div className="h-2" />
      <div className="flex flex-col gap-2 pb-32">
        <GDCPageCard
          title="Ebanisteria Meccanica"
          subtitle="Free workshop Design Spartano"
          theme={GDCTheme.Pink}
          eventType={EventType.Workshop}
          image="/img/gdc/GDC9.0_DSWorkshop_Cover.webp"
          href="/gdc/workshop/dsworkshop"
          objectAlignment="object-top"
        />
        <GDCPageCard
          title="Linografia"
          subtitle="Free workshop"
          theme={GDCTheme.Yellow}
          eventType={EventType.Workshop}
          image="/img/gdc/GDC9.0_LinoCutPrint_Cover.webp"
          href="/gdc/workshop/linocutprint"
        />
        <GDCPageCard
          title="BlueFriday"
          subtitle="Free workshop cianotipia"
          theme={GDCTheme.Cyan}
          eventType={EventType.Workshop}
          image="/img/gdc/GDC9.0_BlueFriday_Cover.webp"
          href="/gdc/workshop/bluefriday"
          objectAlignment="object-bottom"
        />
        <GDCPageCard
          title="Ai Contest"
          subtitle="Architettura EFFIMERA"
          theme={GDCTheme.Orange}
          eventType={EventType.Contest}
          image="/img/gdc/GDC9.0_AI_Contest_Cover.webp"
          href="/gdc/contest/aicontest"
        />
        <GDCPageCard
          title="DS Contest"
          subtitle="Una tavola, Uno sgabello"
          theme={GDCTheme.Pink}
          eventType={EventType.Contest}
          image="/img/gdc/GDC9.0_DS_Contest_Cover.webp"
          href="/gdc/contest/dscontest"
          extraText="COMPLETATO!"
        />
      </div>
    </>
  );
}
