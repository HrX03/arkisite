let contents = {
  open Template

  {template`
  Il workshop Design Spartano offre un approccio utile a porre le basi fondamentali per iniziare ad immergersi nel mondo della lavorazione del legno.${NL}L'intero percorso del workshop sar${Str("à")} guidato e supervisionato da Diego Moretti di Ebanisteria Meccanica. La parte teorica, incentrata sulla conoscenza della materia ${Str("è")} seguita da una parte pratica: la realizzazione dello sgabello spartano.${NL}I vincitori, annunciati proprio nel giorno del Workshop, potranno invece realizzare il loro sgabello.
  ${NL}
  ${NL}
  ${Header(Str("UN PAIO DI INFO"))}
  ${Str("•")} Il numero massimo di partecipanti ${Str("è")} limitato a ${Strong(Str("11 persone"))} per garantire un'esperienza interattiva e personalizzata. Sono presenti anche 4 posti extra per i vincitori del ${Link("/gdc/contest/dscontest", Str("Design Spartano Contest"))}.${NL}
  ${Str("•")} L'evento ${Str("è")} ${Strong(Str("gratuito"))}, ${Str("è")} comunque possibile fare una offerta libera e consapevole.${NL}
  ${Str("•")} ${Str("È")} possibile iscriversi inviando ${Strong(Str("\"DesignSpartano\" nei DM"))} della page Instagram, oppure presso la nostra sede, piano terra del complesso Santa Chiara.${NL}
  ${Str("•")} Il workshop si terr${Str("à")} dalle ${Strong(Str("09:00"))} alle ${Strong(Str("19:00"))} nello Student Hub di ${Strong(Str("Piazza Santa Croce, Alghero"))}.
  ${NL}
  ${NL}
  ${Header(Str("POWERED BY"))}
  Ebanisteria Meccanica ${Str("è")} un brand sardo che fonda la propria produzione sulla tradizione artigiana della lavorazione del legno, alla quale unisce principi meccanici e ingegneristici che impreziosiscono i prodotti.${NL}L'azienda progetta e realizza oggetti di design, arredo e utilità ponendo cura nei dettagli, nelle materie prime e nel processo, rigorosamente "fatto a mano".${NL}La produzione artigianale dell'Ebanisteria racconta non soltanto il territorio ma soprattutto la storia di una famiglia che crede nel lavoro delle mani come a un valore irrinunciabile.
  ${NL}
  ${NL}
  ${Header(Str("IL PROGRAMMA"))}
  ${NL}
  ${Strong(Str("MATTINA - PARTE 1: Arkitchen & Print"))}${NL}
  ${Strong(Str("9:00 - 9:30"))}: Accoglienza e presentazione dei partecipanti${NL}
  ${Strong(Str("9:30 - 10:15"))}: Presentazione di Diego Moretti, Ebanisteria Meccanica e introduzione al workshop${NL}
  ${Strong(Str("10:30 - 13:00"))}: Tinteggiatura arredi${NL}
  ${Strong(Str("13:00 - 15:00"))}: Pausa Pranzo - Asciugatura della tinteggiatura${NL}
  ${NL}
  ${Strong(Str("POMERIGGIO - PARTE 2: Una tavola, Uno sgabello \"Spartano\""))}${NL}
  ${Strong(Str("15:00 - 16:30"))}: Lezione sul legno, presentazione VINCITORE del contest "SPARTANO", presentazione dello sgabello di Ebanisteria Meccanica${NL}
  ${Strong(Str("16:30 - 19:00"))}: Realizzazione e costruzione dello sgabello con la supervisione di Diego Moretti${NL}
  ${NL}
  ${Strong(Str("SERA - PARTE 3: Finale + Evento sociale"))}${NL}
  ${Strong(Str("19:00"))}: Chiusura del workshop e saluti${NL}
  ${Strong(Str("Dalle 19:00 in poi"))}: Invito a tutti i partecipanti per un momento informale di socializzazione e celebrazione dell'evento con bevande e spuntini${NL}
  `}
}

@react.component
let default = () => {
  <>
    <Meta
      key="meta"
      siteName="GDC9.0 Ebanisteria Meccanica"
      description="Il workshop Design Spartano offre un approccio utile a porre le basi fondamentali per iniziare ad immergersi nel mondo della lavorazione del legno."
      ogImage="/static/img/gdc/GDC9.0_DSWorkshop_Cover.webp"
    />
    <ArticleHeader
      key="header"
      title="Ebanisteria Meccanica"
      subtitle="Free workshop Design Spartano"
      image="/static/img/gdc/GDC9.0_DSWorkshop_Cover.webp"
      eventType=EventInfo.Workshop
    />
    <InfoBox>
      <InfoBox.InfoRow title="Data">"10 Giugno 2024, Lunedì"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Ora">"Dalle 09:00 alle 19:00"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Luogo">"Student Hub, Piazza Santa Croce AHO"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="N. Partecipanti">"11 + 4 vincitori DS Contest"</InfoBox.InfoRow>
      <InfoBox.InfoRow title="Organizzatore">"Ebanisteria Meccanica"</InfoBox.InfoRow>
    </InfoBox>
    <div className="h-8" />
    <div className="flex justify-center items-center px-8">
      <img src="/static/img/ebanisteria-meccanica.svg" alt="Logo Ebanisteria Meccanica" className="w-full max-w-sm h-full"/>
    </div>
    <div key="content" className="p-4 pt-8"> contents </div>
    <FloatBox
      key="downloadbox"
      title="Unisciti alla chat WhatsApp"
      description="Richiedi di entrare nella chat del workshop per prenotarti"
      href="https://wikipedia.org/wiki/WhatsApp"
      boxType=FloatBox.WhatsappChat
    />
  </>
}
