@react.component
let make = () => {
  <div className="py-6 flex justify-center items-center flex-col gap-6 bg-black">
    <img className="h-14" src="/static/img/arki-horizontal.svg" />
    <div className="flex flex-row justify-center items-center gap-4">
      <Next.Link href="https://chat.whatsapp.com/CdABpRtb7J7KWN1UZI7McL">
        <img className="h-8 icon-white" src="/static/img/whatsapp.svg" alt="Chat whatsapp Arkimastria" />
      </Next.Link>
      <Next.Link href="https://instagram.com/arkimastria">
        <img className="h-8 icon-white" src="/static/img/instagram.svg" alt="Instagram arkimastria" />
      </Next.Link>
      <Next.Link href="mailto:asap.arkimastria@yahoo.it">
        <img className="h-8 icon-white" src="/static/img/email.svg" alt="Contatta email Arkimastria" />
      </Next.Link>
    </div>
  </div>
}
