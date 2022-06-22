# This is the type of container ,
FROM node:16-bullseye    

#this is the path
WORKDIR /usr/apps
# all command we use with respect to linux
# 1st    2nd  3rd creat todoapp
RUN npm i --location=global npm && npm install --location= create-react-app
RUN create-react-app todoapp

# localhost available in inside the container so for taking autside use expose
EXPOSE 3000

#working dir of new app 
WORKDIR /usr/apps/todoapp

# cmd is a commad we can use insaide file and it keep running 
CMD ["npm", "start"]
