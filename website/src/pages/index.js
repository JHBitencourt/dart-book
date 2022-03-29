import * as React from "react";
import Audience from "../components/audience/audience";
import Author from "../components/author/author";
import BookInfo from "../components/book-info/book-info";
import Github from "../components/github/github";
import Layout from "../components/layout/layout";
import TableOfContents from "../components/table-of-contents/table-of-contents";

const IndexPage = () => {
  return (
    <Layout>
      <title>O guia de Dart</title>
      <BookInfo />
      <Audience />
      <Author />
      <TableOfContents />
      <Github />
    </Layout>
  );
};

export default IndexPage;
