»
nC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Domain.Interface\IUsersDomain.cs
	namespace 	
Saul
 
. 
Test 
. 
Domain 
. 
	Interface $
{ 
public 

	interface 
IUsersDomain !
{ 
Users 
Authenticate 
( 
string !
userName" *
,* +
string, 2
password3 ;
); <
;< =
} 
}		 ´
rC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Domain.Interface\ICustomersDomain.cs
	namespace 	
Saul
 
. 
Test 
. 
Domain 
. 
	Interface $
{ 
public 

	interface 
ICustomersDomain %
{ 
Task		 
<		 
bool		 
>		 
Insert		 
(		 
	Customers		 #
	customers		$ -
)		- .
;		. /
Task

 
<

 
bool

 
>

 
Update

 
(

 
	Customers

 #
	customers

$ -
)

- .
;

. /
Task 
< 
bool 
> 
Delete 
( 
string  

customerId! +
)+ ,
;, -
Task 
< 
	Customers 
> 
Get 
( 
string "

customerId# -
)- .
;. /
Task 
< 
IEnumerable 
< 
	Customers "
>" #
># $
GetAll% +
(+ ,
), -
;- .
Task 
< 
IEnumerable 
< 
	Customers "
>" #
># $ 
GetAllWithPagination% 9
(9 :
int: =

pageNumber> H
,H I
intJ M
pageSizeN V
)V W
;W X
Task 
< 
int 
> 
Count 
( 
) 
; 
} 
} 