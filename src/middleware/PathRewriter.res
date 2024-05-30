let redirectMap = [
  ("/gdc/aicontest", "/gdc/contest/aicontest"),
  ("/gdc/dscontest", "/gdc/contest/dscontest"),
  ("/gdc/workshop/bluefriday", "/404"),
  ("/gdc/workshop/linocutprint", "/404"),
]

let handler = async request => {
  let baseUrl = request->Next.Request.url
  let pathname = request->Next.Request.nextUrl->Next.NextUrl.pathname

  let redirect = redirectMap->Js.Array2.find(v => {
    let (src, _) = v
    pathname->String.startsWith(src)
  })

  switch redirect {
  | None => None
  | Some((_, redirect)) => Some(Next.Response.redirect(Webapi.Url.makeWith(redirect, ~base=baseUrl)))
  }
}

let config: MiddlewareTypes.config = {
  matcher: redirectMap->Js.Array2.map(v => {
    let (src, _) = v
    src
  }),
}

let middleware: MiddlewareTypes.middleware = {
  handler,
  config,
}
