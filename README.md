# SonarQube

## Index


- [👨‍💻 00. Basic Concepts (feature/00-BasicConcepts)](#-00-basic-concepts-feature00-basicconcepts)
- [👨‍💻 01. Install SonarQube 7.2 (feature/01-Install-7.2)](#-01-install-sonarqube-72-feature01-install-72)
- [👨‍💻 02. Install SonarQube 8.4 and 9.7 (feature/02-Install-8.4-and-9.7)](#-02-install-sonarqube-84-and-97-feature02-install-84-and-97)
- [👨‍💻 03. Install SonarQube 10.2 and 10.6 (feature/03-Install-10.2-and-10.6)](#-03-install-sonarqube-102-and-106-feature03-install-102-and-106)
- [👨‍💻 04. SonarQube and SonarScanner (feature/04-SonarQube-SonarScanner)](#-04-sonarqube-and-sonarscanner-feature04-sonarqube-sonarscanner)
- [👨‍💻 05. Coverage (feature/05-Coverage)](#-05-coverage-feature05-coverage)


## 👨‍💻 00. Basic Concepts (feature/00-BasicConcepts)

### Features

**1. Continuous Inspection**
- **Overall health:** View the code status on a single page: Code Smells (maintainability), Bugs (reliability), Vulnerability (security)
- **Leak Period** Quality of new and modified code should be monitored first
- **Quality Gate:** Don't make it worse
- **Drill down into issues:** Issue details, Person, when, Line
- **Hot Spots:** Highlight files indicating they need attention
- **History information**

**2. Detect difficult issues**   
- **Detect errors**   
- **Code Smells:** Code that is difficult to maintain, causing unintentional errors   
- **Vulnerability:** Track insecurities, SQL injection, etc.   
- Trigger necessary rules   
- Explore execution paths   

**3. Multi-language:** C, C++, Javascript, C#, VB.Net, Java, PHP, etc.   
**4. DevOps Integration:** Maven, Apache ANT, Gradle, MSBuild; Jenkins, TFS, AppVeyor; Pass Notifications, Pipelines   
**5. Centralize quality:**
- View and escalate code quality in a single view
- Share rules between users
- Unified Quality Gate, applying the same quality requirements across all projects
- Risk-based views, assessing reliability, security, and maintainability

### Metric Categories

- **Reliability**
  **Bugs:** Number of Bugs   
  **Remediation Effort:** Effort to solve all issues   

  | Rating | Value |
  |---|-------------|
  | A | 0 Bugs |
  | B | +1 Minor bug |
  | C | +1 Major bug |
  | D | +1 Critical bug |
  | E | +1 Blocking bug |

- **Security**   
  **Vulnerabilities:** number of vulnerability issues   
  **Hotspots:** number of critical security points   
  **Remediation Effort:** Effort to solve all security issues   

  | Rating | Value |
  |---|-------------|
  | A | >= 80% |
  | B | < 80% and >=70 |
  | C | < 70% and >=50 |
  | D | < 50% and >=30 |
  | E | < 30% |

- **Maintainability:**   
  **Code Smells:** Total number of Issues affecting maintainability   
  **Technical Debt:** Sum of the costs of remediating code smells   

  | Rating | Value |
  |---|-------------|
  | A | 0.00 - 0.05 |
  | B | 0.06 - 0.10 |
  | C | 0.11 - 0.20 |
  | D | 0.21 - 0.50 |
  | E | 0.51 - 1.00 |

- **Coverage:**   
  **Line Coverage:** Density of lines of code covered by unit tests   
  **Uncovered Lines:** Number of lines of code uncovered by unit tests   
  **Unit tests:** Number of unit tests  
  **Uncovered conditions:** Number of conditions not covered by unit tests  
  **Unit Test Errors:** The number of unit tests that have failed  
- **Duplications:** Blocks, files, lines, %  
- **Complexity:**   
  **Cyclomatic Complexity:** Quantitative metric used to calculate the number of paths traversed by the code.   
  **Cognitive complexity:** Metric that allows you to rate how difficult it is to understand the control flow of the code.   
- **Size**   
  **Classes:** Number of classes (nested, interfaces, enums, annotations)   
  **Commented Lines:** Comments and commented code   
  % Comments, Files, Lines of code, Functions, Projects   
- **Issues:** New Issues, Issues, False Positive Issues, Open Issues, Accepted Issues, Reopened Issues   

**Dashboard**  
 1. **Projects:**  
  Global vision  
  Quality Gates  
  Security (Vulnerability)  
  Reliability (Bugs)  
  Maintainability (Code Smells)  
  Hotspots Reviewed  
  Coverage  
  Duplications  

2. **Issues:** Problems by project
3. **Rules:** Rules by programming language
4. **Quality Profiles:** Custom rules
5. **Quality Gates:** Acceptable thresholds to determine whether the project passes or fails
6. **Administration:** Users, Roles, Security, Project, Configurations, Marketplace



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



## 👨‍💻 03. Install SonarQube 10.2 and 10.6 (feature/03-Install-10.2-and-10.6)

Search: sonarqube setup and upgrade Install the server > Install the server > Example Docker Compose configuration    
Copy and Save the docker-compose.yml file example   

After "SONAR_JDBC_PASSWORD: sonar", add:   
```
SONAR_SEARCH_JAVAADDITIONALOPTS: "-Dnode.store.allow_mmap=false -Ddiscovery.type=single-node"
```

After "postgresql_data:/var/lib/postgresql/data", add:   
```
    ports:
    - "5432:5432"
```  

For version 10.6:
```
image: sonarqube:10.6.0-community

...

image: postgres:14-alpine
```


Like this:
```
version: "3"

services:
  sonarqube:
    image: sonarqube:10.2-community
    depends_on:
      - db
    environment:
      SONAR_JDBC_URL: jdbc:postgresql://db:5432/sonar
      SONAR_JDBC_USERNAME: sonar
      SONAR_JDBC_PASSWORD: sonar
      SONAR_SEARCH_JAVAADDITIONALOPTS: "-Dnode.store.allow_mmap=false -Ddiscovery.type=single-node"
    volumes:
      - sonarqube_data:/opt/sonarqube/data
      - sonarqube_extensions:/opt/sonarqube/extensions
      - sonarqube_logs:/opt/sonarqube/logs
    ports:
      - "9000:9000"
  db:
    image: postgres:12
    environment:
      POSTGRES_USER: sonar
      POSTGRES_PASSWORD: sonar
    volumes:
      - postgresql:/var/lib/postgresql
      - postgresql_data:/var/lib/postgresql/data
    ports:
    - "5432:5432"

volumes:
  sonarqube_data:
  sonarqube_extensions:
  sonarqube_logs:
  postgresql:
  postgresql_data:
```

Open Powershell and go to `docker-compose.yml` folder: `cd D:\...\03-SonarQube-10.2-10.6\10.2` or `cd D:\...\03-SonarQube-10.2-10.6\10.6`   
```
docker compose up -d
docker container ls
```

http://localhost:9000/

Login: admin/admin

`docker compose down`


## 👨‍💻 04. SonarQube and SonarScanner (feature/04-SonarQube-SonarScanner)

**SonarQube Scanner with SonarQube Server v10.6 | Locally**   
Initial Configuration
1. Set JAVA_HOME as Environment variable
2. Search, Download and Configure Sonar-scanner-msbuild /  Sonar-scanner-msbuild-netcoreapp / dotnet-sonarscanner and SDK (x64)

    2.1. **.NET Framework Version**   
        Search: `SonarScanner for .NET`   
        Download: `.NET Framework 4.6.2+`   
        Add the directory containing SonarScanner.MSBuild.exe to the %PATH% environment variable > Path (Modify)   

    2.2. **.NET Core Version**       
        `dotnet tool install --global dotnet-sonarscanner`

3. Create project in Dashboard   
    http://localhost:9000/   
    Administration > Projects > Management > Create Project >   
      Project display name* / Project key* (`name + Id`) / Main branch name*, Next >   
      Use the global setting > Create project   
      Analysis Method: Locally   
      Analyze your project: Generate a project token or Use existing token > Continue > ".Net" > .Net Core | .Net Framework

4. Sonar Scanner:
    Execute the following commands at the root of your solution.    

    4.1. **.NET Framework Version**   
    `cd D:\...\04-SampleProject\ContosoUniversity-4.8`   
    Use `Developer Command Prompt`
    `SonarScanner.MSBuild.exe begin /k:"PROJECT_ID"  /d:sonar.token="your_generated_token_here"`

    ```    
    SonarScanner.MSBuild.exe begin /k:"AppContosoUnivID" /d:sonar.host.url="http://localhost:9000" /d:sonar.token="sqa_e333ace7e65fe9c4c78fe94658ec53aa8fa87785"
    MSBuild.exe /t:Rebuild
    SonarScanner.MSBuild.exe end /d:sonar.token="sqa_e333ace7e65fe9c4c78fe94658ec53aa8fa87785"
    ```

    4.2. ** .NET Core Version**   
    `cd D:\...\04-SampleProject\eShopOnWeb-2.1`   
    `cd D:\...\04-SampleProject\Net-DDD-6.0-f-29-Test`   
    The following commands are not exclusive to the `Developer Command Prompt`   
    `dotnet sonarscanner begin /k:"ProjectKey" /d:sonar.host.url="http://localhost:9000" /d:sonar.token="your_generated_token_here"`

    ```
    dotnet sonarscanner begin /k:"eShopOnWebId" /d:sonar.host.url="http://localhost:9000"  /d:sonar.token="sqa_e333ace7e65fe9c4c78fe94658ec53aa8fa87785"
    dotnet sonarscanner begin /k:"Net-DDDId" /d:sonar.host.url="http://localhost:9000"  /d:sonar.token="sqa_e333ace7e65fe9c4c78fe94658ec53aa8fa87785"
    dotnet build
    dotnet sonarscanner end /d:sonar.token="sqa_e333ace7e65fe9c4c78fe94658ec53aa8fa87785"
    ```
    
    Go to Dashboard `http://localhost:9000"`

4. Inspect Source code
5. Interpret results in the Dashboard
6. Fix and try again
7. Review and compare results in the Dashboard


## 👨‍💻 05. Coverage (feature/05-Coverage)

### SonarServer ###
1. Run Docker Desktop
2. Run SonarServer
    ```
    cd D:\...\03-SonarQube-10.2-10.6\10.6
    docker compose up -d
    ```

3. Create project:
http://localhost:9000 > Administration > Projects > Management > Create Project

### Coverage ###
dotnet tool install --global dotnet-coverage --version 17.14.2

Add:
```
/d: sonar.cs.vscoveragexml.reportsPaths=coverage.xml
...
dotnet-coverage collect 'dotnet test' -f xml -o 'coverage.xml'
```


Execute the following commands at the root of your solution.    
```
cd D:\...\04-SampleProject\Net-DDD-6.0-f-29-Test
dotnet sonarscanner begin /k:"Net-DDD-CoverageId" /d:sonar.host.url="http://localhost:9000"  /d:sonar.token="sqa_e333ace7e65fe9c4c78fe94658ec53aa8fa87785" /d:sonar.cs.vscoveragexml.reportsPaths=coverage.xml
dotnet build --no-incremental
dotnet-coverage collect 'dotnet test' -f xml -o 'coverage.xml'
dotnet sonarscanner end /d:sonar.token="sqa_e333ace7e65fe9c4c78fe94658ec53aa8fa87785"
```




