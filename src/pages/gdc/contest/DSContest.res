let contents = {
  open Template

  {template`
  Arkimastria, in occasione della Giornata del Colore 9.0, lancia il primo Contest dedicato alla progettazione di un elemento d'arredo in collaborazione con Diego Moretti di ${Strong(Str("Ebanisteria Meccanica"))}, una affermata realt${Str("à")} attiva da tre generazioni in continua evoluzione, da sempre impegnata nella promozione dell'artigianalit${Str("à")}. L'oggetto del contest ${Str("è")} uno sgabello, che incarna l'anima nomade dell'evento, semplice da costruire e da trasportare
  ${NL}
  ${NL}
  ${Header(Str("IL TEMA"))}
  Il ${Strong(Str("tema"))} scelto per la GDC di quest'anno ${Str("è")} riassunto nel titolo "${Strong(Str("noMADE"))}" in doppia accezione italiana e inglese (nomade e non fatto/abbandonato). Caratteristica del nomadismo ${Str("è")} l'esistenza transitoria dell'individuo attraverso gli spazi ed i luoghi.
  ${NL}
  ${NL}
  In questo senso, il contest si propone di esplorare il progetto architettonico attraverso un arredo che ridisegna e colonizza lo spazio. Un oggetto versatile, che ti accompagna nel viaggio e ti permette di abitare gli spazi anche se in maniera temporanea. Abitare, in una prospettiva nomade, significa caratterizzare un luogo per un tempo limitato e modificarne il paesaggio, sentirlo proprio, viverlo con i propri modi e le proprie abitudini. In quest'ottica, si sviluppa un senso di appartenenza al luogo che contribuisce ad esprimerne e realizzarne il potenziale. La comunit${Str("à")} studentesca non ${Str("è")} nomade nel senso letterale del termine, ma ${Str("è")} pi${Str("ù")} un gruppo eterogeneo di individui che compie una parte del proprio percorso insieme.
  ${NL}
  Una comunit${Str("à")} transitoria che con il proprio passaggio modifica le caratteristiche spaziali e percettive dei luoghi che abita. 
  ${NL}
  ${NL}
  ${Header(Str("A CHI E' RIVOLTO?"))}
  ${Str("•")} Il concorso ${Str("è")} aperto a tutti gli studenti e a tutti gli appassionati di architettura, designer, pianificatori, paesaggisti, artisti e creativi in generale.${NL}
  ${Str("•")} Non ${Str("è")} richiesta alcuna qualifica specifica ma solo passione e curiosit${Str("à")}.${NL}
  ${Str("•")} Le proposte di progettazione possono essere sviluppate individualmente o in team (massimo 2 membri).
  ${NL}
  ${NL}
  ${Header(Str("PREMI"))}
  ${Strong(Str("1° CLASSIFICATO:"))}${NL}
  Supporto nella realizzazione di una linea di tre arredi (sgabello, sedia e tavolo) in armonia con il tema e nel rispetto delle linee guida del contest "Spartano" nel laboratorio di Ebanisteria Meccanica.${NL}${NL}
  ${Strong(Str("2° CLASSIFICATO:"))}${NL}
  Set professionale di matite e chine per tradurre le tue idee in progetti, seguendo il principio di Gregotti che vede il disegno come strumento essenziale per il processo di progettazione.${NL}${NL}
  ${Strong(Str("3° CLASSIFICATO:"))}${NL}
  "Autoprogettazione" di Enzo Mari, un libro fondamentale che promuove il concetto di fare da s${Str("é")} nel design, fornendo le basi per la riscoperta delle proprie capacit${Str("à")} creative e manuali.${NL}${NL}
  ${Strong(Str("+ 1 Menzione d'onore"))}${NL}${NL}
  ${Strong(Str("Tutti e 4 i vincitori potranno realizzare il proprio progetto dal vivo durante il workshop di Ebanisteria meccanica per la GDC9.0 il 10/06 presso la sede di Arkimastria."))}
  ${NL}
  ${NL}
  ${Header(Str("INFO PER LA CONSEGNA"))}
  Deadline: ${Strong(Str("30 MAGGIO ORE 23:59"))}${NL}
  Indirizzo email: ${Link("mailto:asap.arkimastria@yahoo.it", Strong(Str("asap.arkimastria@yahoo.it")))}
  ${NL}
  ${NL}
  ${Header(Str("SCARICA IL BANDO ORA !!!"))}
  `}
}

let default = () => {
  <>
    <Meta
      key="meta"
      siteName="GDC9.0 Design Spartano Contest"
      description="Arkimastria, in occasione della Giornata del Colore 9.0, lancia il primo Contest dedicato alla progettazione di un elemento d'arredo in collaborazione con Ebanisteria Meccanica, una affermata realtà attiva da tre generazioni in continua evoluzione, da sempre impegnata nella promozione dell'artigianalità."
      ogImage="/static/img/gdc/GDC9.0_DS_Contest_Cover.webp"
    />
    <ArticleHeader
      key="header"
      title="Design Spartano Contest"
      subtitle="Una tavola, Uno sgabello"
      image="/static/img/gdc/GDC9.0_DS_Contest_Cover.webp"
      eventType=EventInfo.Contest
    />
    <div key="content" className="p-4"> contents </div>
    <DownloadBox
      key="downloadbox"
      title="Scarica il bando"
      description="Contiene tutte le informazioni per partecipare, scadenze e regole"
      href="https://drive.google.com/uc?export=download&id=1aE_6yhInGurtrEYovsQKQZbRRPADClU8"
    />
  </>
}