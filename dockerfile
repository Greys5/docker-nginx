#Image base
FROM nginx:1.21

#Copy index file
COPY index.html ./