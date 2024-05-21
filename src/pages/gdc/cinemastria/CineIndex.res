let contents = {
    open Template

    {template`
    ${Header(Str("PERCHE' CINEMASTRIA?"))}
    Un luogo e momento per la popolazione studentesca; la volont${Str("à")} di dare l'occasione alla comunit${Str("à")} universitaria di ricomporsi; avere la possibilit${Str("à")} di usufruire degli spazi didattici come dei nuovi luoghi aperti al divertimento e alla spensieratezza di una serata trascorsa a guardare e commentare un film tra amici, oltre che colleghi. Cinemastria ${Str("è")} tutto questo, il prodotto di Arkimastria nella ricerca di unione e divertimento per gli studenti.
    ${NL}
    ${NL}
    ${Header(Str("PERCHE' I FILM?"))}
    Le pellicole sono un enorme concentrato di tecnica e presentano un'importante trasversalit${Str("à")} tra le discipline che abbracciano la rappresentazione, modellazione, animazione, composizione musicale e disegno dello spazio. Non solo i film sono un ottimo modo per apprendere dettagli riguardo il mondo della progettazione e rappresentazione, sono anche un veicolo culturale alla portata di chiunque, capaci di legare competenze e gesti tecnici alla sceneggiatura che coinvolge lo spettatore a livello emotivo. Arkimastria sceglie anche i film come mezzo di apprendimento, oltre che svago e divertimento per gli studenti. 
    `}
}

@react.component
let default = () => {
  <>
    <Meta
      siteName="GDC9.0 Cinemastria"
      description="Scopri le proiezioni cinematografiche targate GDC"
      ogImage="/static/img/gdc/GDC9.0_TitleCard.webp"
    />
    <ArticleHeader
      title="CINEMASTRIA"
      subtitle="Le proiezioni di Arkimastria, targate GDC"
      image="/static/img/gdc/GDC9.0_Cinemastria1.webp"
      eventType=EventInfo.Cinema
    />
    <div key="content" className="p-4"> contents </div>
  </>
}
