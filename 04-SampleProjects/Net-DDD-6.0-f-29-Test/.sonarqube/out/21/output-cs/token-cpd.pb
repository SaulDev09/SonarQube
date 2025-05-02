†
xC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Application.Interface\IUsersApplication.cs
	namespace 	
Saul
 
. 
Test 
. 
Application 
.  
	Interface  )
{ 
public 

	interface 
IUsersApplication &
{ 
Response 
< 
UsersDto 
> 
Authenticate '
(' (
string( .
userName/ 7
,7 8
string9 ?
password@ H
)H I
;I J
}		 
}

 ž
|C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Application.Interface\ICustomersApplication.cs
	namespace 	
Saul
 
. 
Test 
. 
Application 
.  
	Interface  )
{		 
public

 

	interface

 !
ICustomersApplication

 *
{ 
Task 
< 
Response 
< 
bool 
> 
> 
Insert #
(# $
CustomersDto$ 0
customersDto1 =
)= >
;> ?
Task 
< 
Response 
< 
bool 
> 
> 
Update #
(# $
CustomersDto$ 0
customersDto1 =
)= >
;> ?
Task 
< 
Response 
< 
bool 
> 
> 
Delete #
(# $
string$ *

customerId+ 5
)5 6
;6 7
Task 
< 
Response 
< 
CustomersDto "
>" #
># $
Get% (
(( )
string) /

customerId0 :
): ;
;; <
Task 
< 
Response 
< 
IEnumerable !
<! "
CustomersDto" .
>. /
>/ 0
>0 1
GetAll2 8
(8 9
)9 :
;: ;
Task 
< 
ResponsePagination 
<  
IEnumerable  +
<+ ,
CustomersDto, 8
>8 9
>9 :
>: ; 
GetAllWithPagination< P
(P Q
intQ T

pageNumberU _
,_ `
inta d
pageSizee m
)m n
;n o
} 
} 