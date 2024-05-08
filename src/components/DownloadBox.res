@react.component
let make = (~title, ~description, ~href) => {
  let download = href->Utils.splitPath->Array.last
  <div key="downloadbox" className="w-full sticky bottom-0 p-2">
    <div key="text" className="bg-black text-white w-full flex flex-row">
      <div className="flex-1 m-4 gap-2 flex flex-col justify-start items-start">
        <h3> {React.string(title)} </h3>
        <p> {React.string(description)} </p>
      </div>
      <a
        key="download"
        href
        className="flex justify-center items-center w-20 bg-secondary self-stretch"
        ?download>
        <img src="/static/img/download-gdc.svg" alt="Download" />
      </a>
    </div>
  </div>
}
