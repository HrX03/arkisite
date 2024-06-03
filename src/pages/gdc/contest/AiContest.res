let contents = {
  open Template
  open Utils

  {template`
  Arkimastria, in occasione della Giornata del Colore 9.0, lancia la seconda edizione del Arkificial Intelligence Contest, un concorso di idee per l'architettura, realizzate attraverso l'uso dei software di intelligenza artificiale generativa.
  ${NL}
  ${NL}
  ${Header(Str("IL TEMA"))}
  Il ${Strong(Str("tema"))} scelto per la GDC di quest'anno ${Str("è")} riassunto nel titolo "noMADE" in doppia accezione italiana e inglese (nomade e non fatto/abbandonato).
  ${NL}
  Caratteristica del nomadismo ${Str("è")} l'esistenza transitoria dell'individuo attraverso gli spazi ed i luoghi.
  ${NL}
  In questo senso, il contest si propone di esplorare il progetto di architettura attraverso i temi dell'effimero.${NL} ${Strong(Str("\"Effimero\""))} ${Str("è")} un termine che si riferisce a qualcosa di appunto transitorio, passeggero o di breve durata.
  ${NL}
  L'effimerit${Str("à")} pu${Str("ò")} essere associata a esperienze, oggetti o concetti che sono fugaci o temporanei, spesso caratterizzati dalla loro natura di passaggio e dalla loro tendenza a scomparire rapidamente, o ad essere dimenticati/ricordati nel tempo.
  ${NL}
  ${NL}
  ${Header(Str("A CHI E' RIVOLTO?"))}
  ${Str("•")} Il concorso ${Str("è")} ${Strong(Str("aperto a tutti"))} gli studenti e a tutti gli appassionati di architettura, designer, artisti e creativi in generale.${NL}
  ${Str("•")} ${Strong(Str({escaper`Non ${"è"} richiesta alcuna qualifica`}))} specifica ma solo passione e curiosit${Str("à")}.${NL}
  ${Str("•")} Si pu${Str("ò")} partecipare ${Strong(Str("individualmente o in team"))} (${Strong(Str("massimo 2"))} membri per team).
  ${NL}
  ${NL}
  ${Header(Str("PREMI"))}
  ${Strong(Str("1#"))} Ticket full pass 4 giorni Red Valley${NL}
  ${Strong(Str("2#"))} Buono tatuaggi di ${Str("€")}100 presso Baldufura${NL}
  ${Strong(Str("3#"))} Buono dal valore di ${Str("€")}50 per la libreria Il Labirinto${NL}
  ${Strong(Str("+ 1 Menzione d'onore"))}
  ${NL}
  ${NL}
  ${Header(Str("INFO PER LA CONSEGNA"))}
  Deadline: ${Strong(Str("2 GIUGNO ORE 23:59"))}${NL}
  Indirizzo email: ${Link("mailto:asap.arkimastria@yahoo.it", Strong(Str("asap.arkimastria@yahoo.it")))}
  ${NL}
  ${NL}
  ${Header(Str("SCARICA IL BANDO ORA !!!"))}
  ${NL}
  `
  }
}

let default = () => {
  <>
    <Meta
      key="meta"
      siteName="GDC9.0 AI Contest"
      description="Arkimastria, in occasione della Giornata del Colore 9.0, lancia la seconda edizione del Arkificial Intelligence Contest, un concorso di idee per l'architettura, realizzate attraverso l'uso dei software di intelligenza artificiale generativa."
      ogImage="/static/img/gdc/GDC9.0_AI_Contest_Cover.webp"
    />
    <ArticleHeader
      key="header"
      title="AI CONTEST"
      subtitle="Architettura EFFIMERA"
      image="/static/img/gdc/GDC9.0_AI_Contest_Cover.webp"
      eventType=EventInfo.Contest
    />
    <div key="content" className="p-4"> contents </div>
    <ActionBox
      key="downloadbox"
      title="Scarica il bando"
      description="Contiene tutte le informazioni per partecipare, scadenze e regole"
      href="https://drive.google.com/uc?export=download&id=1qbZkm9eHW9Zm375G69Kj4KW9Hx9u-JPr"
      boxType=ActionBox.Download
    />
  </>
}
