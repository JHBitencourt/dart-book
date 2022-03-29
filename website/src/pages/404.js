import * as React from "react";
import ErrorContent from "../components/layout/error";
import Layout from "../components/layout/layout";

const ErrorPage = () => {
  return (
    <Layout primary>
      <title>O guia de Dart</title>
      <ErrorContent />
    </Layout>
  );
};

export default ErrorPage;
