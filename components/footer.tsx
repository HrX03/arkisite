import Link from "next/link";

export default function Footer(): React.ReactElement {
  return (
    <div className="py-6 flex justify-center items-center flex-col gap-6 bg-black">
      <img
        className="h-14"
        src="/img/arki-horizontal.svg"
        alt="Logo di Arkimastria A.S.A.P.D."
      />
      <div className="flex flex-row justify-center items-center gap-4">
        <Link href="https://chat.whatsapp.com/CdABpRtb7J7KWN1UZI7McL">
          <img
            className="h-8 icon-white"
            src="/img/whatsapp.svg"
            alt="Chat whatsapp Arkimastria"
          />
        </Link>
        <Link href="https://instagram.com/arkimastria">
          <img
            className="h-8 icon-white"
            src="/img/instagram.svg"
            alt="Instagram arkimastria"
          />
        </Link>
        <Link href="mailto:asap.arkimastria@yahoo.it">
          <img
            className="h-8 icon-white"
            src="/img/email.svg"
            alt="Contatta email Arkimastria"
          />
        </Link>
      </div>
    </div>
  );
}
