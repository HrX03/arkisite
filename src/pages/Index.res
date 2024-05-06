module Shared = {
  @react.component
  let make = (~title, ~description) => {
    <div className="w-full px-8 py-16 flex flex-col justify-center items-start">
      <h1> {React.string(title)} </h1>
      <h2> {React.string(description)} </h2>
      <div className="h-20" />
      <a href="/gdc" className="link">
        <h2> {React.string("Clicca qui per tornare alla pagina della GDC 2024!")} </h2>
      </a>
    </div>
  }
}

let default = () => {
  <>
    <Meta
      siteName="Arkimastria"
      description="Homepage del sito ufficiale di Arkimastria a.s.a.p.d!"
    />
    <Shared title="Niente da vedere!!" description="C'è ancora un sacco di lavoro da fare, ancora qui è vuoto!" />
  </>
}
