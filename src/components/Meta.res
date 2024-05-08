module Head = Next.Head

@react.component
let make = (
  ~siteName,
  ~keywords: array<string>=[],
  ~description,
  ~canonical=?,
  ~title=?,
  ~ogLocale="it_IT",
  ~ogSiteName=?,
  ~ogDescription=description,
  ~ogTitle=?,
  ~ogImage=?,
) => {
  let title = switch title {
  | None
  | Some("") => siteName
  | Some(title) => title
  }

  let ogSiteName = switch ogSiteName {
  | Some(ogSiteName) => ogSiteName
  | None => siteName
  }

  let ogTitle = switch ogTitle {
  | Some(ogTitle) => ogTitle
  | None => title
  }

  <Head>
    <title key="title"> {React.string(title)} </title>
    <meta charSet="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, minimal-ui"
    />
    <meta key="description" name="description" content=description />
    <meta key="keywords" name="keywords" content={Js.Array2.joinWith(keywords, ",")} />
    {switch canonical {
    | Some(href) => <link key="canonical" href rel="canonical" />
    | None => React.null
    }}
    

    <link rel="icon" href="/static/favicon/favicon.ico" sizes="any"/>
    <link rel="icon" href="/static/favicon/favicon.svg" type_="image/svg.xml"/>
    <link rel="apple-touch-icon" href="/static/favicon/favicon.png"/>
    //<link rel="manifest" href="/static/favicon/site.webmanifest" />
    /* OG link preview meta data */
    <meta key="og:site_name" property="og:site_name" content=ogSiteName />
    <meta key="og:locale" property="og:locale" content=ogLocale />
    <meta key="og:title" property="og:title" content=ogTitle />
    <meta key="og:description" property="og:description" content=ogDescription />
    {switch ogImage {
    | Some(ogImage) => <meta key="og:image" property="og:image" content=ogImage />
    | None => React.null
    }}
    /* Twitter Meta */
    <meta key="twitter:title" name="twitter:title" content=title />
    <meta key="twitter:description" name="twitter:description" content=description />
    <meta key="twitter:site" name="twitter:site" content="@reasonml" />
    <meta key="twitter:creator" name="twitter:creator" content="@ReasonAssoc" />
    <meta property="og:image:type" content="image/webp" />
    <meta key="twitter:card" name="twitter:card" content="summary_large_image" />
    /* TODO: Undo this later */
    /* <meta key="twitter:image" property="twitter:image" content=ogImage /> */
  </Head>
}