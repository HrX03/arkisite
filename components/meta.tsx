import Head from "next/head";
import { match, P } from "ts-pattern";

export type MetaProps = {
  siteName: string;
  keywords?: string[];
  description: string;
  canonical?: string;
  title?: string;
  ogLocale?: string;
  ogSiteName?: string;
  ogDescription?: string;
  ogTitle?: string;
  ogImage?: string;
};
export default function Meta({
  siteName,
  keywords = [],
  description,
  canonical,
  title,
  ogLocale = "it_IT",
  ogSiteName,
  ogDescription = description,
  ogTitle,
  ogImage,
}: MetaProps): React.ReactElement {
  const finalTitle = match(title)
    .with(undefined, "", () => siteName)
    .with(P._, (t) => t)
    .exhaustive();

  const finalOgSiteName = ogSiteName ?? siteName;

  const finalOgTitle = ogTitle ?? finalTitle;

  return (
    <Head>
      <title key="title">{finalTitle}</title>
      <meta charSet="utf-8" />
      <meta
        name="viewport"
        content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, minimal-ui"
      />
      <meta key="description" name="description" content={description} />
      <meta key="keywords" name="keywords" content={keywords.join(",")} />
      {canonical ? (
        <link key="canonical" href={canonical} rel="canonical" />
      ) : null}
      <link rel="icon" href="/favicon/favicon.ico" sizes="any" />
      <link
        rel="icon"
        href="/favicon/favicon.svg"
        type="image/svg.xml"
      />
      <link rel="apple-touch-icon" href="/favicon/favicon.png" />
      {/* // <link rel="manifest" href="/favicon/site.webmanifest" /> */}
      {/* OG link preview meta data */}
      <meta key="og:site_name" property="og:site_name" content={finalOgSiteName} />
      <meta key="og:locale" property="og:locale" content={ogLocale} />
      <meta key="og:title" property="og:title" content={finalOgTitle} />
      <meta
        key="og:description"
        property="og:description"
        content={ogDescription}
      />
      {ogImage ? (
        <meta key="og:image" property="og:image" content={ogImage} />
      ) : null}
      {/* Twitter Meta */}
      <meta key="twitter:title" name="twitter:title" content={finalTitle} />
      <meta
        key="twitter:description"
        name="twitter:description"
        content={description}
      />
      <meta key="twitter:site" name="twitter:site" content="@reasonml" />
      <meta
        key="twitter:creator"
        name="twitter:creator"
        content="@ReasonAssoc"
      />
      <meta property="og:image:type" content="image/webp" />
      <meta
        key="twitter:card"
        name="twitter:card"
        content="summary_large_image"
      />
      {/* TODO: Undo this later */}
      {/* <meta key="twitter:image" property="twitter:image" content={ogImage} /> */}
    </Head>
  );
}
