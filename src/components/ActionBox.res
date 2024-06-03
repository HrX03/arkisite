type boxType = Download | WhatsappChat

@react.component
let make = (~title, ~description, ~href, ~boxType, ~shouldFloat=false) => {
  let (src, alt) = switch boxType {
  | Download => ("/static/img/download-gdc.svg", "Download")
  | WhatsappChat => ("/static/img/whatsapp-gdc.svg", "Chat WhatsApp")
  }
  let download = switch boxType {
  | Download => href->Utils.splitPath->Array.last
  | _ => None
  }

  let className = switch shouldFloat {
  | true => "w-full sticky bottom-0 p-2"
  | false => "w-full"
  }

  <div className>
    <div className="bg-black text-white w-full flex flex-row">
      <div className="flex-1 m-4 gap-2 flex flex-col justify-start items-start">
        <h3> {React.string(title)} </h3>
        <p> {React.string(description)} </p>
      </div>
      <a href className="flex justify-center items-center w-20 bg-secondary self-stretch" ?download>
        <img src alt />
      </a>
    </div>
  </div>
}
