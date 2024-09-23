import MobileLayout, { NormalLayout } from "@/components/mobile_layout";
import "@/styles/main.css";
import type { AppProps } from "next/app";
import React from "react";

export default function App({ Component, pageProps }: AppProps) {
  const content = <Component {...pageProps} />;
  const pageLayout = pageProps["pageLayout"] ?? NormalLayout;

  return <MobileLayout pageLayout={pageLayout}>{content}</MobileLayout>;
}
