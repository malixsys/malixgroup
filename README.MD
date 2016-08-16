TO RECREATE:

```bash
mkdir malixgroup
cd malixgroup
git init
touch README.MD
touch Dockerfile
touch .dockerignore
mkdir files
cd files
touch processes.json
nvm use v6.3.1
npm i -g express-generator --registry "https://registry.npmjs.org/"
express --ejs --git --force
```

VISIT:

https://malixgroup-vihgqielwy.now.sh 