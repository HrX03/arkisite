let contents = {
  open Template

  {template`
  Il secondo workshop organizzato da Arkimastria in occasione della GDC9.0 ${Str("è")} dedicato alla linografia, una tecnica che permette di creare timbri che possono poi essere utilizzati per la stampa di disegni su vari superfici. Seguito da Caterina Pirisi, tattoo artist di Balduf${Str("ù")}ra, il workshop ti insegner${Str("à")} le basi di questa antica tecnica.
  ${NL}
  ${NL}
  ${Header(Str("COS'E' LA LINOGRAFIA?"))}
  Il Lino Cutting and Printing ${Str("è")} una forma d'arte che combina la precisione del taglio del linoleum con la creativit${Str("à")} della stampa.${NL}In questo evento, esploreremo le tecniche di incisione e stampa su linoleum, aprendo nuove possibilit${Str("à")} espressive per gli artisti e gli appassionati di grafica. 
  ${NL}
  ${NL}
  ${Header(Str("COSA IMPARERAI:"))}
  ${Str("•")} Introduzione alla tecnica di taglio del linoleum e alle sue potenzialità artistiche.${NL}
  ${Str("•")} Tecniche di incisione e preparazione del blocco di linoleum.${NL}
  ${Str("•")} Utilizzo degli strumenti di taglio per creare disegni e pattern.${NL}
  ${Str("•")} Stampa dei disegni incisi su carta.
  ${NL}
  ${NL}
  ${Header(Str("UN PAIO DI INFO"))}
  ${Str("•")} Il numero massimo di partecipanti ${Str("è")} limitato a ${Strong(Str("12 persone"))} per garantire un'esperienza interattiva e personalizzata.${NL}
  ${Str("•")} L'evento ${Str("è")} ${Strong(Str("gratuito"))}, ${Str("è")} comunque possibile fare una offerta libera e consapevole.${NL}
  ${Str("•")} ${Str("È")} possibile iscriversi inviando ${Strong(Str("\"Linografia\" nei DM"))} della page Instagram, oppure presso la nostra sede, piano terra del complesso Santa Chiara.${NL}
  ${Str("•")} Il workshop si terr${Str("à")} dalle ${Strong(Str("16:30"))} alle ${Strong(Str("18:30"))} nello Student Hub di ${Strong(Str("Piazza Santa Croce, Alghero"))}.
  ${NL}
  ${NL}
  ${Header(Str("POWERED BY"))}
  Caterina Pirisi nasce a Montecchio Emilia nel 1990. Nel 2017 si diploma in Grafica d'Arte e Progettazione all'Accademia di Belle Arti di Sassari e nel 2018 consegue il Master di I livello in Illustrazione editoriale alla scuola Ars in Fabula di Macerata.${NL}Nel 2021 comincia a tatuare, proseguendo il percorso artistico tra acquerelli, stampa artigianale su carta e stoffa, lavori in legno e Das e qualsiasi altra tecnica creativa +stuzzichi la sua fantasia.
  `}
}

@react.component
let default = () => {
  <>
    <Meta
      key="meta"
      siteName="GDC9.0 Linografia"
      description="Il secondo workshop organizzato da Arkimastria in occasione della GDC9.0 è dedicato alla linografia, una tecnica che permette di creare timbri che possono poi essere utilizzati per la stampa di disegni su vari superfici. Seguito da Caterina Pirisi, tattoo artist di Baldufùra, il workshop ti insegnerà le basi di questa antica tecnica."
      ogImage="/static/img/gdc/GDC9.0_LinoCutPrint_Cover.webp"
    />
    <ArticleHeader
      key="header"
      title="Linografia"
      subtitle="Free workshop"
      image="/static/img/gdc/GDC9.0_LinoCutPrint_Cover.webp"
      eventType=EventInfo.Workshop
    />
    <InfoBox>
      <InfoBox.InfoRow title="Data">"12 Giugno 2024, Mercoledì"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Ora">"Dalle 16:30 alle 18:30"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Luogo">"Student Hub, Piazza Santa Croce AHO"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="N. Partecipanti">"12"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Organizzatore">"Caterina Pirisi"</InfoBox.InfoRow>
    </InfoBox>
    <div className="h-8" />
    <div className="flex justify-center items-center px-8">
      <img src="/static/img/mondodentro.svg" alt="Logo MondoDentro" className="w-full max-h-64 h-full"/>
    </div>
    <div key="content" className="p-4 pt-8"> contents </div>
    <ActionBox
      key="downloadbox"
      title="Unisciti alla chat WhatsApp"
      description="Richiedi di entrare nella chat del workshop per prenotarti"
      href="https://chat.whatsapp.com/Hl1lQP97B6AKuAmTG9Unin"
      boxType=ActionBox.WhatsappChat
    />
  </>
}
