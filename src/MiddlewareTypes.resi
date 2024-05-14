type handler = (Next.Request.t) => promise<option<Next.Response.t>>
type config = {matcher: array<string>}
type middleware = {
    handler: handler,
    config: config
}