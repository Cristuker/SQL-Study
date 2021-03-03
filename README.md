# SQL-Study
Repo whit SQL exercises from college


```bash
# To create a sql server container
$ sudo docker pull mcr.microsoft.com/mssql/server:2019-latest

# To config container
$ sudo docker run -e "ACCEPT_EULA=Y" -e "SA_PASSWORD=<YourStrong@Passw0rd>" \
   -p 1433:1433 --name sql1 -h sql1 \
   -d mcr.microsoft.com/mssql/server:2019-latest

# To run
$ docker start sql1
```