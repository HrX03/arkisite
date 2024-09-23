import fs from "fs";
import matter from "gray-matter";
import { join } from "path";
import { cwd } from "process";
import {
  ActionBoxData,
  ArticleData,
  ArticleInfoResult,
  ErrorCode,
  InfoBoxData,
  MetaData,
  PostData,
} from "./articles";
import { splitPath } from "./utils";

export function getArticleInfo(slug: string[] | string): ArticleInfoResult {
  let slugFix = typeof slug == "string" ? [slug] : slug;
  slugFix = [...slugFix.slice(0, slugFix.length - 1), `${slugFix.at(-1)!}.md`];
  const path = join(cwd(), "_posts", ...slugFix);
  if (!fs.existsSync(path)) {
    return ErrorCode.NotFound;
  }

  const file = fs.readFileSync(join(cwd(), "_posts", ...slugFix), {
    encoding: "utf-8",
  });
  const { data, content } = matter(file);

  if (!data || !isParsedData(data)) {
    return ErrorCode.MalformedDataSection;
  }

  return {
    data: data as PostData,
    content: content,
  };
}

export function getArticleList(): string[] {
  const files = fs.readdirSync(join(cwd(), "_posts"), { recursive: true });

  return files
    .filter((v) => typeof v == "string")
    .filter((v) => v.endsWith(".md"))
    .map((v) => splitPath(v).join("/"));
}

function isParsedData(data: Object): data is PostData {
  const { article, meta, action, info } = data as PostData;

  return (
    data &&
    isArticleData(article) &&
    isMetaData(meta) &&
    (action ? isActionBoxData(action) : true) &&
    (info ? isInfoBoxData(info) : true)
  );
}

function isArticleData(data: Object): data is ArticleData {
  return (
    data &&
    data.hasOwnProperty("title") &&
    data.hasOwnProperty("subtitle") &&
    data.hasOwnProperty("image") &&
    data.hasOwnProperty("eventType")
  );
}

function isMetaData(data: Object): data is MetaData {
  return (
    data && data.hasOwnProperty("title") && data.hasOwnProperty("description")
  );
}

function isActionBoxData(data: Object): data is ActionBoxData {
  return (
    data &&
    data.hasOwnProperty("title") &&
    data.hasOwnProperty("description") &&
    data.hasOwnProperty("link") &&
    data.hasOwnProperty("type")
  );
}

function isInfoBoxData(data: Object): data is InfoBoxData {
  return data && data.hasOwnProperty("data");
}
