import * as React from "react";
import Layout from "../components/layout/layout";
import TableOfContentsFull from "../components/table-of-contents/table-of-contents-full";

const TableOfContentsPage = () => {
  return (
    <Layout primary>
      <title>Dart book</title>
      <TableOfContentsFull />
    </Layout>
  );
};

export default TableOfContentsPage;
