„

rC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Data\DapperContext.cs
	namespace 	
Saul
 
. 
Test 
. 
Infrastructure "
." #
Data# '
{ 
public 

class 
DapperContext 
{ 
private		 
readonly		 
IConfiguration		 '
_configuration		( 6
;		6 7
private

 
readonly

 
string

 
_connectionString

  1
;

1 2
public 
DapperContext 
( 
IConfiguration +
configuration, 9
)9 :
{ 	
_configuration 
= 
configuration *
;* +
_connectionString 
= 
_configuration  .
.. /
GetConnectionString/ B
(B C
$strC X
)X Y
;Y Z
} 	
public 
IDbConnection 
CreateConnection -
(- .
). /
=>0 2
new3 6
SqlConnection7 D
(D E
_connectionStringE V
)V W
;W X
} 
} 