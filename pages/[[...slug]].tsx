import { splitPath } from "@/utils/utils";
import { GetStaticPaths, GetStaticProps, InferGetStaticPropsType } from "next";
import NotFound from "./404";
import { GDCLayout, PageLayout } from "@/components/mobile_layout";
import ActionBox from "@/components/action_box";
import ArticleHeader from "@/components/article_header";
import Meta from "@/components/meta";
import InfoBox, { InfoRow } from "@/components/info_box";
import { match, P } from "ts-pattern";
import Markdown from "react-markdown";
import remarkGfm from "remark-gfm";
import rehypeRaw from "rehype-raw";
import rehypeSlug from "rehype-slug";
import { ArticleInfoResult, ErrorCode } from "@/utils/articles";
import { getArticleInfo, getArticleList } from "@/utils/articles_server";
import FullscreenCenter from "@/components/fullscreen_center";
import remarkBreaks from "remark-breaks";

export const getStaticProps = ((context) => {
  const slug = (context.params ?? {})["slug"]!;
  let result = getArticleInfo(slug);

  return {
    props: {
      parsedData: result,
      pageLayout: match(result)
        .with({ data: P.select() }, (data) =>
          data.article.gdcTheme ? GDCLayout(data.article.gdcTheme) : null,
        )
        .otherwise(() => null),
    },
  };
}) satisfies GetStaticProps<{
  parsedData?: ArticleInfoResult;
  pageLayout?: PageLayout | null;
}>;

export const getStaticPaths = (() => {
  let files: string[] = getArticleList();
  let paths = files.map((v) => ({ params: { slug: splitPath(v) } }));

  return {
    paths: paths,
    fallback: true,
  };
}) satisfies GetStaticPaths;

export default function ArticlePage({
  parsedData,
}: InferGetStaticPropsType<typeof getStaticProps>) {
  if (parsedData === undefined) return <></>;
  if (typeof parsedData == "string") {
    switch (parsedData) {
      case ErrorCode.NotFound:
        return <NotFound />;
      default:
        return (
          <FullscreenCenter>
            <h1>Oops!</h1>
            <div className="h-4" />
            <h3>
              C'è stato un errore durante il rendering di questa pagina!
              <br />
              Contatta l'amministratore del sito menzionando l'url e questo
              codice:
            </h3>
            <div className="h-16" />
            <h3>{parsedData}</h3>
          </FullscreenCenter>
        );
    }
  }

  const {
    data: { article, meta, action, info },
    content,
  } = parsedData;

  return (
    <>
      <Meta
        key="meta"
        siteName={meta.title}
        description={meta.description}
        ogImage={meta.image ?? article.image}
      />
      <ArticleHeader
        key="header"
        title={article.title}
        subtitle={article.subtitle}
        image={article.image}
        eventType={article.eventType}
      />
      {info ? (
        <InfoBox key="infobox" title={info.title}>
          {info.data.map((v) =>
            match(v)
              .with(P.string, (v) => <p>{v}</p>)
              .with({ title: P.string, text: P.string }, (v) => (
                <InfoRow title={v.title}>{v.text}</InfoRow>
              ))
              .exhaustive(),
          )}
        </InfoBox>
      ) : null}
      {article.partnerImage ? (
        <>
          <div className="h-8" />
          <div className="flex justify-center items-center px-8">
            <img
              src={article.partnerImage}
              alt="Logo partner"
              className="w-full max-w-sm max-h-64 h-full"
            />
          </div>
        </>
      ) : null}
      <Markdown
        key="body"
        className={`p-4 prose ${article.partnerImage ? "pt-8" : ""}`}
        remarkPlugins={[remarkGfm, remarkBreaks]}
        rehypePlugins={[rehypeRaw, rehypeSlug]}
      >
        {content}
      </Markdown>
      {action ? (
        <ActionBox
          key="actionbox"
          title={action.title}
          description={action.description}
          href={action.link}
          boxType={action.type}
        />
      ) : null}
    </>
  );
}
