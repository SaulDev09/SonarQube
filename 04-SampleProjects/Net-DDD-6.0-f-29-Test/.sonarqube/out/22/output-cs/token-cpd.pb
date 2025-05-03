³
zC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Interface\IUsersRepository.cs
	namespace 	
Saul
 
. 
Test 
. 
Infrastructure "
." #
	Interface# ,
{ 
public 

	interface 
IUsersRepository %
:& '
IGenericRepository( :
<: ;
Users; @
>@ A
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
}		 š
uC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Interface\IUnitOfWork.cs
	namespace 	
Saul
 
. 
Test 
. 
Infrastructure "
." #
	Interface# ,
{ 
public 

	interface 
IUnitOfWork  
:! "
IDisposable# .
{  
ICustomersRepository 
	Customers &
{' (
get) ,
;, -
}. /
IUsersRepository 
Users 
{  
get! $
;$ %
}& '
}		 
}

 û
|C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Interface\IGenericRepository.cs
	namespace 	
Saul
 
. 
Test 
. 
Infrastructure "
." #
	Interface# ,
{ 
public 

	interface 
IGenericRepository '
<' (
T( )
>) *
where+ 0
T1 2
:3 4
class5 :
{ 
Task 
< 
bool 
> 
Insert 
( 
T 
entity "
)" #
;# $
Task		 
<		 
bool		 
>		 
Update		 
(		 
T		 
entity		 "
)		" #
;		# $
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
Delete

 
(

 
string

  
id

! #
)

# $
;

$ %
Task 
< 
T 
> 
Get 
( 
string 
id 
) 
; 
Task 
< 
IEnumerable 
< 
T 
> 
> 
GetAll #
(# $
)$ %
;% &
Task 
< 
IEnumerable 
< 
T 
> 
>  
GetAllWithPagination 1
(1 2
int2 5

pageNumber6 @
,@ A
intB E
pageSizeF N
)N O
;O P
Task 
< 
int 
> 
Count 
( 
) 
; 
} 
} ‚
~C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Interface\ICustomersRepository.cs
	namespace 	
Saul
 
. 
Test 
. 
Infrastructure "
." #
	Interface# ,
{ 
public 

	interface  
ICustomersRepository )
:* +
IGenericRepository, >
<> ?
	Customers? H
>H I
{ 
} 
}		 