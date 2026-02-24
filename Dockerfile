FROM hugomods/hugo:exts AS dev

EXPOSE 1313
WORKDIR /src

CMD ["hugo", "server", "--bind", "0.0.0.0", "--baseURL", "http://localhost:1313/"]
