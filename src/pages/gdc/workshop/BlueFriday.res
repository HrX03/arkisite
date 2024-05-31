let contents = {
  open Template

  {template`
  BlueFriday ${Str("è")} il terzo workshop organizzato da Arkimastria in occasione della GDC9.0. Tenuto da Ginkgomag, ti insegner${Str("à")} ad utilizzare la tecnica della cianotipia per produrre stampe di alta qualit${Str("à")}.
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
  ${Header(Str("UN PAIO DI INFO"))}
  ${Str("•")} Il numero massimo di partecipanti ${Str("è")} limitato a ${Strong(Str("15 persone"))} per garantire un'esperienza interattiva e personalizzata.${NL}
  ${Str("•")} L'evento ${Str("è")} ${Strong(Str("gratuito"))}, ${Str("è")} comunque possibile fare una offerta libera e consapevole.${NL}
  ${Str("•")} ${Str("È")} possibile iscriversi inviando ${Strong(Str("\"BlueFriday\" nei DM"))} della page Instagram, oppure presso la nostra sede, piano terra del complesso Santa Chiara.${NL}
  ${Str("•")} Siete incoraggiati a ${Strong(Str("portare con voi oggetti di vario genere da cianotipare"))}, come fiori, chiavi, giocattoli, o qualsiasi altra cosa abbia uno spessore. ${Strong(Str("Se non avete nulla da portare, non preoccupatevi"))}: forniremo tutto il necessario per creare le vostre stampe uniche. ${NL}
  ${Str("•")} Il workshop si terr${Str("à")} dalle ${Strong(Str("15:30"))} alle ${Strong(Str("18:00"))} nel giardino dell'Asilo Sella, ${Strong(Str("Via Giuseppe Garibaldi 35 Alghero"))}.
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
      description="BlueFriday è il terzo workshop organizzato da Arkimastria in occasione della GDC9.0. Tenuto da Ginkgomag, ti insegnerà ad utilizzare la tecnica della cianotipia per produrre stampe di alta qualità."
      ogImage="/static/img/gdc/GDC9.0_BlueFriday_Cover.webp"
    />
    <ArticleHeader
      key="header"
      title="BlueFriday"
      subtitle="Workshop Cianotipia"
      image="/static/img/gdc/GDC9.0_BlueFriday_Cover.webp"
      eventType=EventInfo.Workshop
    />
    <InfoBox>
      <InfoBox.InfoRow title="Data">"14 Giugno 2024, Venerdì"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Ora">"Dalle 15:30 alle 18:00"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Luogo">"Giardino Asilo Sella, Via Giuseppe Garibaldi 35"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="N. Partecipanti">"15"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Organizzatore">"Ginkgo"</InfoBox.InfoRow>
    </InfoBox>
    <div key="content" className="p-4"> contents </div>
    <FloatBox
      key="downloadbox"
      title="Unisciti alla chat WhatsApp"
      description="Richiedi di entrare nella chat del workshop per prenotarti"
      href="https://chat.whatsapp.com/Hl1lQP97B6AKuAmTG9Unin"
      boxType=FloatBox.WhatsappChat
    />
  </>
}
