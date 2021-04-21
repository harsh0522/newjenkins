FROM mssql-2019
SETUPCLONING FULL customers C:\windocks\dbbackups\customerdatafull.bak
COPY cleanseData.sql .
RUN cleanseData.sql
ENV USE_DOCKERFILE_TO_CREATE_CONTAINER=1
RUN git.exe clone https://github.com/harsh0522/newjenkins 


