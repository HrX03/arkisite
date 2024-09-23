import React from "react";

enum MarqueeDirection {
  Forward,
  Reverse,
}

function MarqueeGradient({
  direction = MarqueeDirection.Forward,
}: {
  direction?: MarqueeDirection;
}): React.ReactElement {
  let directionClass: string;

  switch (direction) {
    case MarqueeDirection.Forward:
      directionClass = "animate-marquee-gradient";
    case MarqueeDirection.Reverse:
      directionClass = "animate-marquee-gradient-re";
  }

  return (
    <div className="w-2xl relative h-4 whitespace-nowrap overflow-hidden">
      <img
        src="/img/gdc-band.svg"
        className="h-4 w-[672px] top-0 left-0 object-cover"
      />
      {/* <img src="/img/gdc-band.svg" className="h-6 w-2xl object-cover"/> */}
    </div>
  );
}

export type InfoRowProps = {
  title: string;
  children: React.ReactNode;
};

export function InfoRow({ title, children }: InfoRowProps): React.ReactElement {
  return (
    <div className="flex flex-row gap-2 items-baseline">
      <strong>{`${title.toUpperCase()}:`}</strong>
      <p>{children}</p>
    </div>
  );
}

export type InfoBoxProps = {
  title?: string;
  children: React.ReactElement | React.ReactElement[];
};

export default function InfoBox({
  title,
  children,
}: InfoBoxProps): React.ReactElement {
  return (
    <div className="bg-black">
      <MarqueeGradient />
      <div className="p-6 text-white flex flex-col gap-4">
        <h2>{title ?? "TOO LONG, WON'T READ"}</h2>
        <div className="flex flex-col">{children}</div>
      </div>
      <MarqueeGradient direction={MarqueeDirection.Reverse} />
    </div>
  );
}
