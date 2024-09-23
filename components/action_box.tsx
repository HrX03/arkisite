import { splitPath } from "@/utils/utils";
import { match } from "ts-pattern";

export enum ActionBoxType {
    Download = "download",
    WhatsappChat = "wachat",
}

type ActionBoxProps = {
    title: string;
    description: string;
    href: string;
    boxType: ActionBoxType;
    shouldFloat?: boolean;
};

export default function ActionBox({
    title,
    description,
    href,
    boxType,
    shouldFloat = false,
}: ActionBoxProps): React.ReactElement {
    let { src, alt } = match(boxType)
        .returnType<{ src: string; alt: string }>()
        .with(ActionBoxType.Download, () => ({
            src: "/img/download-gdc.svg",
            alt: "Download",
        }))
        .with(ActionBoxType.WhatsappChat, () => ({
            src: "/img/whatsapp-gdc.svg",
            alt: "Chat WhatsApp",
        }))
        .otherwise(() => {
            throw new Error("WHAT");
        });

    let download = match(boxType)
        .with(ActionBoxType.Download, () => splitPath(href).at(-1))
        .otherwise(() => null);

    let className = shouldFloat ? "w-full sticky bottom-0 p-2" : "w-full";

    return (
        <div className={className}>
            <div className="bg-black text-white w-full flex flex-row">
                <div className="flex-1 m-4 gap-2 flex flex-col justify-start items-start">
                    <h3>{title}</h3>
                    <p>{description}</p>
                </div>
                <a
                    href={href}
                    className="flex justify-center items-center w-20 bg-secondary self-stretch"
                    download={download}
                >
                    <img src={src} alt={alt} />
                </a>
            </div>
        </div>
    );
}
