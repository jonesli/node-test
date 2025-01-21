# 使用 Node.js 16 作为基础镜像
FROM node:16

# 设置工作目录
WORKDIR /usr/src/app

# 复制 package.json 和 package-lock.json 到工作目录
COPY package*.json./

# 安装项目依赖
RUN npm install

# 复制项目代码到工作目录
COPY..

# 暴露应用程序运行的端口，假设是 3000，你可以根据实际情况修改
EXPOSE 3000

# 运行应用程序
CMD ["node", "index.js"]
