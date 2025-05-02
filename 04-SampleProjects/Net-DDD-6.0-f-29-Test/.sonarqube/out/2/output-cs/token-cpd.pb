™

vC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Transversal.Common\ResponsePagination.cs
	namespace 	
Saul
 
. 
Test 
. 
Transversal 
.  
Common  &
{ 
public 

class 
ResponsePagination #
<# $
T$ %
>% &
:' (
ResponseGeneric) 8
<8 9
T9 :
>: ;
{ 
public		 
int		 

PageNumber		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
int

 

TotalPages

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
int 

TotalCount 
{ 
get  #
;# $
set% (
;( )
}* +
public 
bool 
HasPreviousPage #
=>$ &

PageNumber' 1
>2 3
$num4 5
;5 6
public 
bool 
HasNextPage 
=>  "

PageNumber# -
<. /

TotalPages0 :
;: ;
} 
} Ö
sC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Transversal.Common\ResponseGeneric.cs
	namespace 	
Saul
 
. 
Test 
. 
Transversal 
.  
Common  &
{ 
public 

class 
ResponseGeneric  
<  !
T! "
>" #
{ 
public 
T 
Data 
{ 
get 
; 
set  
;  !
}" #
public		 
bool		 
	IsSuccess		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
public

 
string

 
Message

 
{

 
get

  #
;

# $
set

% (
;

( )
}

* +
public 
IEnumerable 
< 
ValidationFailure ,
>, -
Errors. 4
{5 6
get7 :
;: ;
set< ?
;? @
}A B
} 
} ü
lC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Transversal.Common\Response.cs
	namespace 	
Saul
 
. 
Test 
. 
Transversal 
.  
Common  &
{ 
public 

class 
Response 
< 
T 
> 
: 
ResponseGeneric .
<. /
T/ 0
>0 1
{ 
} 
} ü
rC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Transversal.Common\ILoggerManager.cs
	namespace 	
Saul
 
. 
Test 
. 
Transversal 
.  
Common  &
{ 
public 

	interface 
ILoggerManager #
{ 
void 
LogInfo 
( 
string 
message #
)# $
;$ %
void 
LogWarn 
( 
string 
message #
)# $
;$ %
void 
LogDebug 
( 
string 
message $
)$ %
;% &
void 
LogError 
( 
string 
message $
)$ %
;% &
}		 
}

 