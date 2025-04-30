# SonarQube

## Index

- [👨‍💻 01. Install SonarQube 7.2 (feature/01-Install-7.2)](#-01-install-sonarqube-72-feature01-install-72)
- [👨‍💻 02. Install SonarQube 8.4 and 9.7 (feature/02-Install-8.4-and-9.7)](#-02-install-sonarqube-84-and-97-feature02-install-84-and-97)



## 👨‍💻 01. Install SonarQube 7.2 (feature/01-Install-7.2)

**Setup Database**

Create user in MsSQL Server: sonar as SYSADMIN   
Create database sonar:   
Collation: SQL_Latin1_General_CP1_CS_AS   
Owner: sonar   

```
-- 1. Create login for user 'sonar' with specified password
CREATE LOGIN sonar WITH PASSWORD = 'sonar';
GO

-- 2. Grant sysadmin role to login (be careful with this!)
EXEC sp_addsrvrolemember 'sonar', 'sysadmin';
GO

-- 3. Create the database with the specified collation
CREATE DATABASE sonar
COLLATE SQL_Latin1_General_CP1_CS_AS;
GO

-- 4. (Optional) Map user in the database if needed
USE sonar;
CREATE USER sonar FOR LOGIN sonar;
GO
```

**Edit connection credentials**

Open `sonar.properties`

```
sonar.jdbc.username=sonar
sonar.jdbc.password=sonar
...
sonar.jdbc.url=jdbc:sqlserver://localhost;databaseName=sonar
```

**Start Service**

Go to C:\...\sonarqube-7.2.1\bin\windows-x86-64    
Open CMD as Administrator   
Exec bat files in the following order:   

1. `InstallNTService.bat` # create service in Windows
2. `StartNTService.bat` 
3. `StartSonar.bat` # Dashboard

http://localhost:9000/

Login: admin/admin




## 👨‍💻 02. Install SonarQube 8.4 and 9.7 (feature/02-Install-8.4-and-9.7)

Database

```
--**Create database sonar**
CREATE DATABASE sonar
GO

USE sonar
GO

SELECT CONVERT (VARCHAR(50), DATABASEPROPERTYEX('Sonar','collation'));
ALTER DATABASE Sonar COLLATE Latin1_General_CS_AS;
GO


--**Enable READ_COMMITTED_SNAPSHOT**

SELECT is_read_committed_snapshot_on FROM sys.databases WHERE name='sonar';
ALTER DATABASE sonar SET READ_COMMITTED_SNAPSHOT ON WITH ROLLBACK IMMEDIATE;
GO

--**Create Sonar user**

CREATE LOGIN sonar WITH PASSWORD = 'sonar';
GO

EXEC master..sp_addsrvrolemember @loginame = N'sonar', @rolename = N'sysadmin'
GO
```


```
docker pull sonarqube:8.4.1-community
docker pull sonarqube:9.7.1-community
```

```
docker --version
wsl -d docker-desktop
sysctl vm.max_map_count # 65530
sysctl -w vm.max_map_count=262144
exit
```

> [!CAUTION]
> To remove previous versions

```
docker rm <CONTAINER_ID>
docker volume rm <VOLUME_ID>
```


**Volumes**   
```
docker volume create --name sonarqube_data # Storage data and Elasticsearch indexes
docker volume create --name sonarqube_extensions # Storage extensions and analyzers
docker volume create --name sonarqube_logs # Storage accesses logs, engine performance, Elasticsearch
docker volume ls
```

**Container**   
```
docker image ls
docker container ls
docker run -d --name sonarqube -p 9000:9000 -e SONAR_JDBC_URL="jdbc:sqlserver://192.168.0.44\SQLEXPRESS;databaseName=sonar;encrypt=false" -e SONAR_JDBC_USERNAME=sonar -e SONAR_JDBC_PASSWORD=sonar -v sonarqube_data:/opt/sonarqube/data -v sonarqube_extensions:/opt/sonarqube/extensions -v sonarqube_logs:/opt/sonarqube/logs <IMAGE NAME>
docker container ls
docker logs [Container ID]
```

http://localhost:9000/

Login: admin/admin



