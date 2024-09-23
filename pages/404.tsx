import FullscreenCenter from "@/components/fullscreen_center";
import Meta from "@/components/meta";
import Link from "next/link";
import React from "react";

export default function NotFound(): React.ReactElement {
  return (
    <>
      <Meta
        siteName="Errore 404"
        description="Non esiste alcuna pagina a questo indirizzo!"
      />
      <FullscreenCenter>
        <h1>Errore 404</h1>
        <div className="h-4" />
        <h3>Non esiste alcuna pagina a questo indirizzo!</h3>
        <div className="h-16" />
        <Link href="/gdc" className="link">
          <h3>Clicca qui per tornare alla pagina della GDC 2024!</h3>
        </Link>
      </FullscreenCenter>
    </>
  );
}
