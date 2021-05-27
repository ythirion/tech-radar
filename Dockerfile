FROM jekyll/jekyll
ADD . /src
WORKDIR /src
RUN chown -R jekyll /src
RUN bundle update
ENTRYPOINT [ "sh", "-c", "JEKYLL_ENV=development bundle exec jekyll serve --host 0.0.0.0" ]
EXPOSE 4000