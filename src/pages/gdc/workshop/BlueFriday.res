let contents = {
  open Template

  {template`
  BlueFriday ${Str("è")} il secondo workshop organizzato da Arkimastria in occasione della GDC9.0. Tenuto da Ginkgomag, ti insegner${Str("à")} ad utilizzare la tecnica della cianotipia per produrre stampe di alta qualit${Str("à")}.
  ${NL}
  ${NL}
  ${Header(Str("COS'E' LA CIANOTIPIA?"))}
  La cianotipia ${Str("è")} una tecnica fotografica alternativa, sviluppata nel XIX secolo, che utilizza una soluzione fotosensibile a base di ferro e acqua per creare immagini di un blu intenso su supporti come carta o tessuto.${NL}
  In questo workshop, esploreremo i fondamenti di questa affascinante tecnica artistica, aprendo le porte alla vostra creativit${Str("à")}.
  ${NL}
  ${NL}
  ${Header(Str("COSA IMPARERAI:"))}
  ${Str("•")} Introduzione alla storia e alla tecnica della cianotipia.${NL}
  ${Str("•")} Applicazione su supporti forniti o personali${NL}
  ${Str("•")} Utilizzo di oggetti tridimensionali e/o negativi fotografici per ottenere stampe uniche.${NL}
  ${Str("•")} Esposizione e sviluppo delle stampe cianotipiche.
  ${NL}
  ${NL}
  ${Header(Str("POWERED BY"))}
  Ginkgo ${Str("è")} un collettivo interdisciplinare nato a Pistoia nel 2022 con lo scopo di creare nuovi spazi di connessione e dialogo e nuove modalit${Str("à")} di fruizione degli spazi gi${Str("à")} esistenti.${NL}
  Il primo progetto curato dal collettivo ${Str("è")} Ginkgomag, uno spazio editoriale aperto che affronta trimestralmente il tema della rigenerazione approcciandolo da un diverso punto di osservazione per ogni uscita.${NL}
  Inoltre, il gruppo cura e promuove progetti editoriali e iniziative artistiche e culturali. 
  `}
}

@react.component
let default = () => {
  <>
    <Meta
      key="meta"
      siteName="GDC9.0 BlueFriday"
      description="Arkimastria, in occasione della Giornata del Colore 9.0, lancia la seconda edizione del Arkificial Intelligence Contest, un concorso di idee per l'architettura, realizzate attraverso l'uso dei software di intelligenza artificiale generativa."
      ogImage="/static/img/gdc/GDC9.0_BlueFriday_Cover.webp"
    />
    <ArticleHeader
      key="header"
      title="BlueFriday"
      subtitle="Workshop Cianotipia"
      image="/static/img/gdc/GDC9.0_BlueFriday_Cover.webp"
      eventType=EventInfo.Workshop
    />
    <div className="h-4"/>
    <InfoBox>
      <InfoBox.InfoRow title="Data">"14 Giugno 2024, Venerdì"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Ora">"Dalle 15:30 alle 18:00"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Luogo">"Giardino Asilo Sella, Via Giuseppe Garibaldi 35"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="N. Partecipanti">"15"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Organizzatore">"Ginkgo"</InfoBox.InfoRow>
    </InfoBox>
    <div key="content" className="p-4"> contents </div>
    /* <DownloadBox
      key="downloadbox"
      title="Scarica il bando"
      description="Contiene tutte le informazioni per partecipare, scadenze e regole"
      href="https://drive.google.com/uc?export=download&id=1qbZkm9eHW9Zm375G69Kj4KW9Hx9u-JPr"
    /> */
  </>
}
