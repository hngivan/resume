
   
FROM alpine
LABEL name=hngivan/jsonresume
LABEL maintainer="prokofev.ivan@gmail.com"

WORKDIR /data

# chromium is a dependency for puppeteer, required for arm build
RUN apk --no-cache add npm git chromium
RUN npm init -y
RUN npm install resume-cli@3.0.5
RUN npm install jsonresume-theme-kendall jsonresume-theme-kendall-ivan

# use sed to make the webserver available for the Docker container to map
RUN sed -i~ "s/localhost/0.0.0.0/g" \
    node_modules/resume-cli/build/main.js \
    node_modules/resume-cli/build/serve.js

ENTRYPOINT ["node", "/data/node_modules/resume-cli/build/main.js"]
