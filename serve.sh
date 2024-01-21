docker build --rm -t fomo-school:latest .
docker run --rm \
  -p 4000:4000   \
  --volume "$PWD:/srv/jekyll"   \
  fomo-school \
  jekyll serve --trace
