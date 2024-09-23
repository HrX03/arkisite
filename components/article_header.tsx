import { EventType, getEventImage } from "@/utils/utils";
import Link from "next/link";
import React from "react";

export type ArticleHeaderProps = {
    title: string;
    subtitle?: string;
    image: string;
    eventType: EventType;
};

export default function ArticleHeader({
    title,
    subtitle,
    image,
    eventType,
}: ArticleHeaderProps): React.ReactElement {
    let { icon, alt } = getEventImage(eventType);

    return (
        <div>
            <div className="w-full px-4 py-6">
                <h1 className="w-4/5">{title}</h1>
                {subtitle ? <h2 className="w-4/5">{subtitle}</h2> : null}
            </div>
            <div className="relative">
                <div className="bg-background absolute top-0 right-0 w-1/4 aspect-square -translate-y-2/4 flex justify-center items-center rounded-full">
                    <img
                        src={`/img/${icon}`}
                        alt={alt}
                        className="icon w-4/5 h-4/5"
                    />
                </div>
                <img
                    src={image}
                    className="w-full h-full object-cover aspect-[3/2]"
                />
            </div>
        </div>
    );
}
