FROM mhart/alpine-node

LABEL name "malixgroup"

WORKDIR /src
ADD ./files/package.json  .

# If you have native dependencies, you'll need extra tools
#RUN apk add --no-cache make gcc g++ python

RUN npm i -g pm2

# If you need npm, don't use a base tag
RUN npm i --production

# Add application files
ADD ./files  .

#Expose the port
EXPOSE 80

CMD ["pm2", "start", "processes.json", "--no-daemon"]

# voila!