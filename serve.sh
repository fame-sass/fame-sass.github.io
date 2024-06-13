#docker build --rm -t fame-sass:latest .
docker run --rm \
  -p 4000:4000   \
  --volume "$PWD:/srv/jekyll"   \
  jekyll/jekyll:4.2.0 \
  jekyll serve --trace
