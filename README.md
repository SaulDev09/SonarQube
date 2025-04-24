# SonarQube

## Index

- [👨‍💻 01. Install SonarQube 7.2 (feature/01-Install-7.2)](#-01-install-sonarqube-72-feature01-install-72)




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



