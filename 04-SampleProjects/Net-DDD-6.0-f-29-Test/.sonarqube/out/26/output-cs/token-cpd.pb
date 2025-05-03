«&
zC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Repository\UsersRepository.cs
	namespace 	
Saul
 
. 
Test 
. 
Infrastructure "
." #

Repository# -
{		 
public

 

class

 
UsersRepository

  
:

! "
IUsersRepository

# 3
{ 
private 
readonly 
DapperContext &
_context' /
;/ 0
public 
UsersRepository 
( 
DapperContext ,
context- 4
)4 5
{ 	
_context 
= 
context 
; 
} 	
public 
Users 
Authenticate !
(! "
string" (
userName) 1
,1 2
string3 9
password: B
)B C
{ 	
using 
( 
var 

connection !
=" #
_context$ ,
., -
CreateConnection- =
(= >
)> ?
)? @
{ 
var 
query 
= 
$str 7
;7 8
var 

parameters 
=  
new! $
DynamicParameters% 6
(6 7
)7 8
;8 9

parameters 
. 
Add 
( 
$str )
,) *
userName+ 3
)3 4
;4 5

parameters 
. 
Add 
( 
$str )
,) *
password+ 3
)3 4
;4 5
var 
user 
= 

connection %
.% &
QuerySingle& 1
<1 2
Users2 7
>7 8
(8 9
query9 >
,> ?
param@ E
:E F

parametersG Q
,Q R
commandTypeS ^
:^ _
System` f
.f g
Datag k
.k l
CommandTypel w
.w x
StoredProcedure	x á
)
á à
;
à â
return 
user 
; 
} 
}   	
public"" 
Task"" 
<"" 
bool"" 
>"" 
Delete""  
(""  !
string""! '
id""( *
)""* +
{## 	
throw$$ 
new$$ 
System$$ 
.$$ #
NotImplementedException$$ 4
($$4 5
)$$5 6
;$$6 7
}%% 	
public'' 
Task'' 
<'' 
Users'' 
>'' 
Get'' 
('' 
string'' %
id''& (
)''( )
{(( 	
throw)) 
new)) 
System)) 
.)) #
NotImplementedException)) 4
())4 5
)))5 6
;))6 7
}** 	
public,, 
Task,, 
<,, 
IEnumerable,, 
<,,  
Users,,  %
>,,% &
>,,& '
GetAll,,( .
(,,. /
),,/ 0
{-- 	
throw.. 
new.. 
System.. 
... #
NotImplementedException.. 4
(..4 5
)..5 6
;..6 7
}// 	
public11 
Task11 
<11 
bool11 
>11 
Insert11  
(11  !
Users11! &
entity11' -
)11- .
{22 	
throw33 
new33 
System33 
.33 #
NotImplementedException33 4
(334 5
)335 6
;336 7
}44 	
public66 
Task66 
<66 
bool66 
>66 
Update66  
(66  !
Users66! &
entity66' -
)66- .
{77 	
throw88 
new88 
System88 
.88 #
NotImplementedException88 4
(884 5
)885 6
;886 7
}99 	
public;; 
Task;; 
<;; 
IEnumerable;; 
<;;  
Users;;  %
>;;% &
>;;& ' 
GetAllWithPagination;;( <
(;;< =
int;;= @

pageNumber;;A K
,;;K L
int;;M P
pageSize;;Q Y
);;Y Z
{<< 	
throw== 
new== 
System== 
.== #
NotImplementedException== 4
(==4 5
)==5 6
;==6 7
}>> 	
public@@ 
Task@@ 
<@@ 
int@@ 
>@@ 
Count@@ 
(@@ 
)@@  
{AA 	
throwBB 
newBB 
SystemBB 
.BB #
NotImplementedExceptionBB 4
(BB4 5
)BB5 6
;BB6 7
}CC 	
}EE 
}FF ≈

uC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Repository\UnitOfWork.cs
	namespace 	
Saul
 
. 
Test 
. 
Infrastructure "
." #

Repository# -
{ 
public 

class 

UnitOfWork 
: 
IUnitOfWork )
{ 
public  
ICustomersRepository #
	Customers$ -
{. /
get0 3
;3 4
}5 6
public		 
IUsersRepository		 
Users		  %
{		& '
get		( +
;		+ ,
}		- .
public 

UnitOfWork 
(  
ICustomersRepository .
	customers/ 8
,8 9
IUsersRepository: J
usersK P
)P Q
{ 	
	Customers 
= 
	customers !
;! "
Users 
= 
users 
; 
} 	
public 
void 
Dispose 
( 
) 
{ 	
System 
. 
GC 
. 
SuppressFinalize &
(& '
this' +
)+ ,
;, -
} 	
} 
} ≈i
~C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Infrastructure.Repository\CustomersRepository.cs
	namespace		 	
Saul		
 
.		 
Test		 
.		 
Infrastructure		 "
.		" #

Repository		# -
{

 
public 

class 
CustomersRepository $
:% & 
ICustomersRepository' ;
{ 
private 
readonly 
DapperContext &
_context' /
;/ 0
public 
CustomersRepository "
(" #
DapperContext# 0
context1 8
)8 9
{ 	
_context 
= 
context 
; 
} 	
public 
async 
Task 
< 
bool 
> 
Insert  &
(& '
	Customers' 0
	customers1 :
): ;
{ 	
using 
( 
var 

connection !
=" #
_context$ ,
., -
CreateConnection- =
(= >
)> ?
)? @
{ 
var 
query 
= 
$str -
;- .
var 

parameters 
=  
new! $
DynamicParameters% 6
(6 7
)7 8
;8 9

parameters 
. 
Add 
( 
$str ,
,, -
	customers. 7
.7 8

CustomerId8 B
)B C
;C D

parameters 
. 
Add 
( 
$str -
,- .
	customers/ 8
.8 9
CompanyName9 D
)D E
;E F

parameters 
. 
Add 
( 
$str -
,- .
	customers/ 8
.8 9
ContactName9 D
)D E
;E F

parameters 
. 
Add 
( 
$str .
,. /
	customers0 9
.9 :
ContactTitle: F
)F G
;G H

parameters 
. 
Add 
( 
$str )
,) *
	customers+ 4
.4 5
Address5 <
)< =
;= >

parameters 
. 
Add 
( 
$str &
,& '
	customers( 1
.1 2
City2 6
)6 7
;7 8

parameters   
.   
Add   
(   
$str   (
,  ( )
	customers  * 3
.  3 4
Region  4 :
)  : ;
;  ; <

parameters!! 
.!! 
Add!! 
(!! 
$str!! ,
,!!, -
	customers!!. 7
.!!7 8

PostalCode!!8 B
)!!B C
;!!C D

parameters"" 
."" 
Add"" 
("" 
$str"" )
,"") *
	customers""+ 4
.""4 5
Country""5 <
)""< =
;""= >

parameters## 
.## 
Add## 
(## 
$str## '
,##' (
	customers##) 2
.##2 3
Phone##3 8
)##8 9
;##9 :

parameters$$ 
.$$ 
Add$$ 
($$ 
$str$$ %
,$$% &
	customers$$' 0
.$$0 1
Fax$$1 4
)$$4 5
;$$5 6
var&& 
result&& 
=&& 
await&& "

connection&&# -
.&&- .
ExecuteAsync&&. :
(&&: ;
query&&; @
,&&@ A

parameters&&B L
,&&L M
commandType&&N Y
:&&Y Z
CommandType&&[ f
.&&f g
StoredProcedure&&g v
)&&v w
;&&w x
return'' 
result'' 
>'' 
$num''  !
;''! "
}(( 
})) 	
public++ 
async++ 
Task++ 
<++ 
bool++ 
>++ 
Update++  &
(++& '
	Customers++' 0
	customers++1 :
)++: ;
{,, 	
using-- 
(-- 
var-- 

connection-- !
=--" #
_context--$ ,
.--, -
CreateConnection--- =
(--= >
)--> ?
)--? @
{.. 
var// 
query// 
=// 
$str// -
;//- .
var00 

parameters00 
=00  
new00! $
DynamicParameters00% 6
(006 7
)007 8
;008 9

parameters11 
.11 
Add11 
(11 
$str11 ,
,11, -
	customers11. 7
.117 8

CustomerId118 B
)11B C
;11C D

parameters22 
.22 
Add22 
(22 
$str22 -
,22- .
	customers22/ 8
.228 9
CompanyName229 D
)22D E
;22E F

parameters33 
.33 
Add33 
(33 
$str33 -
,33- .
	customers33/ 8
.338 9
ContactName339 D
)33D E
;33E F

parameters44 
.44 
Add44 
(44 
$str44 .
,44. /
	customers440 9
.449 :
ContactTitle44: F
)44F G
;44G H

parameters55 
.55 
Add55 
(55 
$str55 )
,55) *
	customers55+ 4
.554 5
Address555 <
)55< =
;55= >

parameters66 
.66 
Add66 
(66 
$str66 &
,66& '
	customers66( 1
.661 2
City662 6
)666 7
;667 8

parameters77 
.77 
Add77 
(77 
$str77 (
,77( )
	customers77* 3
.773 4
Region774 :
)77: ;
;77; <

parameters88 
.88 
Add88 
(88 
$str88 ,
,88, -
	customers88. 7
.887 8

PostalCode888 B
)88B C
;88C D

parameters99 
.99 
Add99 
(99 
$str99 )
,99) *
	customers99+ 4
.994 5
Country995 <
)99< =
;99= >

parameters:: 
.:: 
Add:: 
(:: 
$str:: '
,::' (
	customers::) 2
.::2 3
Phone::3 8
)::8 9
;::9 :

parameters;; 
.;; 
Add;; 
(;; 
$str;; %
,;;% &
	customers;;' 0
.;;0 1
Fax;;1 4
);;4 5
;;;5 6
var== 
result== 
=== 
await== "

connection==# -
.==- .
ExecuteAsync==. :
(==: ;
query==; @
,==@ A

parameters==B L
,==L M
commandType==N Y
:==Y Z
CommandType==[ f
.==f g
StoredProcedure==g v
)==v w
;==w x
return>> 
result>> 
>>> 
$num>>  !
;>>! "
}?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
boolBB 
>BB 
DeleteBB  &
(BB& '
stringBB' -

customerIdBB. 8
)BB8 9
{CC 	
usingDD 
(DD 
varDD 

connectionDD !
=DD" #
_contextDD$ ,
.DD, -
CreateConnectionDD- =
(DD= >
)DD> ?
)DD? @
{EE 
varFF 
queryFF 
=FF 
$strFF -
;FF- .
varGG 

parametersGG 
=GG  
newGG! $
DynamicParametersGG% 6
(GG6 7
)GG7 8
;GG8 9

parametersHH 
.HH 
AddHH 
(HH 
$strHH ,
,HH, -

customerIdHH. 8
)HH8 9
;HH9 :
varJJ 
resultJJ 
=JJ 
awaitJJ "

connectionJJ# -
.JJ- .
ExecuteAsyncJJ. :
(JJ: ;
queryJJ; @
,JJ@ A

parametersJJB L
,JJL M
commandTypeJJN Y
:JJY Z
CommandTypeJJ[ f
.JJf g
StoredProcedureJJg v
)JJv w
;JJw x
returnKK 
resultKK 
>KK 
$numKK  !
;KK! "
}LL 
}MM 	
publicOO 
asyncOO 
TaskOO 
<OO 
	CustomersOO #
>OO# $
GetOO% (
(OO( )
stringOO) /

customerIdOO0 :
)OO: ;
{PP 	
usingQQ 
(QQ 
varQQ 

connectionQQ !
=QQ" #
_contextQQ$ ,
.QQ, -
CreateConnectionQQ- =
(QQ= >
)QQ> ?
)QQ? @
{RR 
varSS 
querySS 
=SS 
$strSS .
;SS. /
varTT 

parametersTT 
=TT  
newTT! $
DynamicParametersTT% 6
(TT6 7
)TT7 8
;TT8 9

parametersUU 
.UU 
AddUU 
(UU 
$strUU ,
,UU, -

customerIdUU. 8
)UU8 9
;UU9 :
varWW 
resultWW 
=WW 
awaitWW "

connectionWW# -
.WW- .
QuerySingleAsyncWW. >
<WW> ?
	CustomersWW? H
>WWH I
(WWI J
queryWWJ O
,WWO P

parametersWWQ [
,WW[ \
commandTypeWW] h
:WWh i
CommandTypeWWj u
.WWu v
StoredProcedure	WWv Ö
)
WWÖ Ü
;
WWÜ á
returnXX 
resultXX 
;XX 
}YY 
}ZZ 	
public\\ 
async\\ 
Task\\ 
<\\ 
IEnumerable\\ %
<\\% &
	Customers\\& /
>\\/ 0
>\\0 1
GetAll\\2 8
(\\8 9
)\\9 :
{]] 	
using^^ 
(^^ 
var^^ 

connection^^ !
=^^" #
_context^^$ ,
.^^, -
CreateConnection^^- =
(^^= >
)^^> ?
)^^? @
{__ 
var`` 
query`` 
=`` 
$str`` +
;``+ ,
varaa 
resultaa 
=aa 
awaitaa "

connectionaa# -
.aa- .

QueryAsyncaa. 8
<aa8 9
	Customersaa9 B
>aaB C
(aaC D
queryaaD I
,aaI J
commandTypeaaK V
:aaV W
CommandTypeaaX c
.aac d
StoredProcedureaad s
)aas t
;aat u
returnbb 
resultbb 
;bb 
}cc 
}dd 	
publicff 
asyncff 
Taskff 
<ff 
IEnumerableff %
<ff% &
	Customersff& /
>ff/ 0
>ff0 1 
GetAllWithPaginationff2 F
(ffF G
intffG J

pageNumberffK U
,ffU V
intffW Z
pageSizeff[ c
)ffc d
{gg 	
usinghh 
(hh 
varhh 

connectionhh !
=hh" #
_contexthh$ ,
.hh, -
CreateConnectionhh- =
(hh= >
)hh> ?
)hh? @
{ii 
varjj 
queryjj 
=jj 
$strjj 9
;jj9 :
varkk 

parameterskk 
=kk  
newkk! $
DynamicParameterskk% 6
(kk6 7
)kk7 8
;kk8 9

parametersll 
.ll 
Addll 
(ll 
$strll ,
,ll, -

pageNumberll. 8
)ll8 9
;ll9 :

parametersmm 
.mm 
Addmm 
(mm 
$strmm *
,mm* +
pageSizemm, 4
)mm4 5
;mm5 6
varnn 
resultnn 
=nn 
awaitnn "

connectionnn# -
.nn- .

QueryAsyncnn. 8
<nn8 9
	Customersnn9 B
>nnB C
(nnC D
querynnD I
,nnI J

parametersnnK U
,nnU V
commandTypennW b
:nnb c
CommandTypennd o
.nno p
StoredProcedurennp 
)	nn Ä
;
nnÄ Å
returnoo 
resultoo 
;oo 
}pp 
}qq 	
publicss 
asyncss 
Taskss 
<ss 
intss 
>ss 
Countss $
(ss$ %
)ss% &
{tt 	
usinguu 
(uu 
varuu 

connectionuu !
=uu" #
_contextuu$ ,
.uu, -
CreateConnectionuu- =
(uu= >
)uu> ?
)uu? @
{vv 
varww 
queryww 
=ww 
$strww <
;ww< =
varxx 
countxx 
=xx 
awaitxx !

connectionxx" ,
.xx, -
ExecuteScalarAsyncxx- ?
<xx? @
intxx@ C
>xxC D
(xxD E
queryxxE J
,xxJ K
commandTypexxL W
:xxW X
CommandTypexxY d
.xxd e
Textxxe i
)xxi j
;xxj k
returnyy 
countyy 
;yy 
}{{ 
}|| 	
}}} 
}~~ 