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

  open GDCUtils
  let pageLayout = switch path {
  | list{"gdc", ...rest} =>
    switch rest {
    | list{"cinemastria"} => MobileLayout.GDC(Black)
    | list{"contest", "aicontest"} => MobileLayout.GDC(Orange)
    | list{"contest", "dscontest"} => MobileLayout.GDC(Pink)
    | list{} => MobileLayout.GDC(GDCUtils.Special)
    | _ => MobileLayout.GDC(Blank)
    }
  | _ => MobileLayout.Normal
  }

  <MobileLayout path pageLayout> content </MobileLayout>
}
