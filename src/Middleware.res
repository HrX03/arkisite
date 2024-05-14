let registry = [PathRewriter.middleware]

let middleware = async (request: Next.Request.t) => {
  let value = ref(None)
  for i in 0 to registry->Js.Array2.length - 1 {
    if value.contents == None {
      let entry = registry->Js.Array2.unsafe_get(i)
      value := (await entry.handler(request))
    }
  }

  switch value.contents {
  | None => Next.Response.next()
  | Some(res) => res
  }
}

let config: MiddlewareTypes.config = {
  matcher: {
    registry
    ->Js.Array2.map(v => v.config.matcher)
    ->Js.Array2.reduce((acc, i) => [...acc, ...i], [])
  },
}
