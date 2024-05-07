type pageProps

module PageComponent = {
  type t = React.component<pageProps>
}

type props = {
  @as("Component")
  component: PageComponent.t,
  pageProps: pageProps,
}

let default = (props: props): React.element => {
  let {component, pageProps} = props

  let router = Next.Router.useRouter()
  let content = React.createElement(component, pageProps)
  let path = router.asPath->Utils.splitPath->List.fromArray

  open MobileLayout
  let pageLayout = switch path {
  | list{"gdc", ...rest} =>
    switch rest {
    | list{"aicontest"} => GDC(Orange)
    | _ => GDC(Blank)
    }
  | _ => Normal
  }

  <MobileLayout path pageLayout> content </MobileLayout>
}
