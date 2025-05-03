µ
tC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Specifications\BaseSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
{ 
public 

abstract 
class 
BaseSpecification +
<+ ,
T, -
>- .
:/ 0
ISpecification1 ?
<? @
T@ A
>A B
{		 
	protected

 
BaseSpecification

 #
(

# $

Expression

$ .
<

. /
Func

/ 3
<

3 4
T

4 5
,

5 6
bool

7 ;
>

; <
>

< =
criteria

> F
)

F G
{ 	
Criteria 
= 
criteria 
;  
} 	
public 

Expression 
< 
Func 
< 
T  
,  !
bool" &
>& '
>' (
Criteria) 1
{2 3
get4 7
;7 8
}9 :
public 
List 
< 

Expression 
< 
Func #
<# $
T$ %
,% &
object' -
>- .
>. /
>/ 0
Includes1 9
{: ;
get< ?
;? @
}A B
=C D
newE H
ListI M
<M N

ExpressionN X
<X Y
FuncY ]
<] ^
T^ _
,_ `
objecta g
>g h
>h i
>i j
(j k
)k l
;l m
public 
List 
< 
string 
> 
IncludeStrings *
{+ ,
get- 0
;0 1
}2 3
=4 5
new6 9
List: >
<> ?
string? E
>E F
(F G
)G H
;H I
	protected 
virtual 
void 

AddInclude )
() *

Expression* 4
<4 5
Func5 9
<9 :
T: ;
,; <
object= C
>C D
>D E
includeExpressionF W
)W X
{ 	
Includes 
. 
Add 
( 
includeExpression *
)* +
;+ ,
} 	
	protected 
virtual 
void 

AddInclude )
() *
string* 0
includeString1 >
)> ?
{ 	
IncludeStrings 
. 
Add 
( 
includeString ,
), -
;- .
} 	
} 
} ¬
‡C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Specifications\CustomerOrdersWithItemsSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
{ 
public 

class 0
$CustomerOrdersWithItemsSpecification 5
:6 7
BaseSpecification8 I
<I J
OrderJ O
>O P
{ 
public 0
$CustomerOrdersWithItemsSpecification 3
(3 4
string4 :
buyerId; B
)B C
: 
base 
( 
o 
=> 
o 
. 
BuyerId !
==" $
buyerId% ,
), -
{		 	

AddInclude

 
(

 
o

 
=>

 
o

 
.

 

OrderItems

 (
)

( )
;

) *

AddInclude 
( 
$" 
{ 
nameof  
(  !
Order! &
.& '

OrderItems' 1
)1 2
}2 3
$str3 4
{4 5
nameof5 ;
(; <
	OrderItem< E
.E F
ItemOrderedF Q
)Q R
}R S
"S T
)T U
;U V
} 	
} 
} š

}C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Specifications\CatalogFilterSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
{ 
public 

class &
CatalogFilterSpecification +
:, -
BaseSpecification. ?
<? @
CatalogItem@ K
>K L
{ 
public &
CatalogFilterSpecification )
() *
int* -
?- .
brandId/ 6
,6 7
int8 ;
?; <
typeId= C
)C D
:		 
base		 
(		 
i		 
=>		 
(		 
!		 
brandId		 !
.		! "
HasValue		" *
||		+ -
i		. /
.		/ 0
CatalogBrandId		0 >
==		? A
brandId		B I
)		I J
&&		K M
(

 
!

 
typeId

 
.

 
HasValue

 !
||

" $
i

% &
.

& '
CatalogTypeId

' 4
==

5 7
typeId

8 >
)

> ?
)

? @
{ 	
} 	
} 
} ¤	
hC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Services\UriComposer.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Services- 5
{ 
public 

class 
UriComposer 
: 
IUriComposer +
{ 
private 
readonly 
CatalogSettings (
_catalogSettings) 9
;9 :
public

 
UriComposer

 
(

 
CatalogSettings

 *
catalogSettings

+ :
)

: ;
=>

< >
_catalogSettings

? O
=

P Q
catalogSettings

R a
;

a b
public 
string 
ComposePicUri #
(# $
string$ *
uriTemplate+ 6
)6 7
{ 	
return 
uriTemplate 
. 
Replace &
(& '
$str' J
,J K
_catalogSettingsL \
.\ ]
CatalogBaseUrl] k
)k l
;l m
} 	
} 
} ü
C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Specifications\BasketWithItemsSpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Specifications- ;
{ 
public 

sealed 
class (
BasketWithItemsSpecification 4
:5 6
BaseSpecification7 H
<H I
BasketI O
>O P
{ 
public (
BasketWithItemsSpecification +
(+ ,
int, /
basketId0 8
)8 9
: 
base 
( 
b 
=> 
b 
. 
Id 
== 
basketId '
)' (
{		 	

AddInclude

 
(

 
b

 
=>

 
b

 
.

 
Items

 #
)

# $
;

$ %
} 	
public (
BasketWithItemsSpecification +
(+ ,
string, 2
buyerId3 :
): ;
: 
base 
( 
b 
=> 
b 
. 
BuyerId  
==! #
buyerId$ +
)+ ,
{ 	

AddInclude 
( 
b 
=> 
b 
. 
Items #
)# $
;$ %
} 	
} 
} ¸ 
iC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Services\OrderService.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 
ApplicationCore		 ,
.		, -
Services		- 5
{

 
public 

class 
OrderService 
: 
IOrderService  -
{ 
private 
readonly 
IAsyncRepository )
<) *
Order* /
>/ 0
_orderRepository1 A
;A B
private 
readonly 
IAsyncRepository )
<) *
Basket* 0
>0 1
_basketRepository2 C
;C D
private 
readonly 
IAsyncRepository )
<) *
CatalogItem* 5
>5 6
_itemRepository7 F
;F G
public 
OrderService 
( 
IAsyncRepository ,
<, -
Basket- 3
>3 4
basketRepository5 E
,E F
IAsyncRepository 
< 
CatalogItem (
>( )
itemRepository* 8
,8 9
IAsyncRepository 
< 
Order "
>" #
orderRepository$ 3
)3 4
{ 	
_orderRepository 
= 
orderRepository .
;. /
_basketRepository 
= 
basketRepository  0
;0 1
_itemRepository 
= 
itemRepository ,
;, -
} 	
public 
async 
Task 
CreateOrderAsync *
(* +
int+ .
basketId/ 7
,7 8
Address9 @
shippingAddressA P
)P Q
{ 	
var 
basket 
= 
await 
_basketRepository 0
.0 1
GetByIdAsync1 =
(= >
basketId> F
)F G
;G H
Guard 
. 
Against 
. 

NullBasket $
($ %
basketId% -
,- .
basket/ 5
)5 6
;6 7
var 
items 
= 
new 
List  
<  !
	OrderItem! *
>* +
(+ ,
), -
;- .
foreach 
( 
var 
item 
in  
basket! '
.' (
Items( -
)- .
{   
var!! 
catalogItem!! 
=!!  !
await!!" '
_itemRepository!!( 7
.!!7 8
GetByIdAsync!!8 D
(!!D E
item!!E I
.!!I J
CatalogItemId!!J W
)!!W X
;!!X Y
var"" 
itemOrdered"" 
=""  !
new""" %
CatalogItemOrdered""& 8
(""8 9
catalogItem""9 D
.""D E
Id""E G
,""G H
catalogItem""I T
.""T U
Name""U Y
,""Y Z
catalogItem""[ f
.""f g

PictureUri""g q
)""q r
;""r s
var## 
	orderItem## 
=## 
new##  #
	OrderItem##$ -
(##- .
itemOrdered##. 9
,##9 :
item##; ?
.##? @
	UnitPrice##@ I
,##I J
item##K O
.##O P
Quantity##P X
)##X Y
;##Y Z
items$$ 
.$$ 
Add$$ 
($$ 
	orderItem$$ #
)$$# $
;$$$ %
}%% 
var&& 
order&& 
=&& 
new&& 
Order&& !
(&&! "
basket&&" (
.&&( )
BuyerId&&) 0
,&&0 1
shippingAddress&&2 A
,&&A B
items&&C H
)&&H I
;&&I J
await(( 
_orderRepository(( "
.((" #
AddAsync((# +
(((+ ,
order((, 1
)((1 2
;((2 3
})) 	
}** 
}++ ½G
jC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Services\BasketService.cs
	namespace

 	
	Microsoft


 
.

 
eShopWeb

 
.

 
ApplicationCore

 ,
.

, -
Services

- 5
{ 
public 

class 
BasketService 
:  
IBasketService! /
{ 
private 
readonly 
IAsyncRepository )
<) *
Basket* 0
>0 1
_basketRepository2 C
;C D
private 
readonly 
IUriComposer %
_uriComposer& 2
;2 3
private 
readonly 

IAppLogger #
<# $
BasketService$ 1
>1 2
_logger3 :
;: ;
private 
readonly 
IRepository $
<$ %
CatalogItem% 0
>0 1
_itemRepository2 A
;A B
public 
BasketService 
( 
IAsyncRepository -
<- .
Basket. 4
>4 5
basketRepository6 F
,F G
IRepository 
< 
CatalogItem #
># $
itemRepository% 3
,3 4
IUriComposer 
uriComposer $
,$ %

IAppLogger 
< 
BasketService $
>$ %
logger& ,
), -
{ 	
_basketRepository 
= 
basketRepository  0
;0 1
_uriComposer 
= 
uriComposer &
;& '
this 
. 
_logger 
= 
logger !
;! "
_itemRepository 
= 
itemRepository ,
;, -
} 	
public 
async 
Task 
AddItemToBasket )
() *
int* -
basketId. 6
,6 7
int8 ;
catalogItemId< I
,I J
decimalK R
priceS X
,X Y
intZ ]
quantity^ f
)f g
{ 	
var   
basket   
=   
await   
_basketRepository   0
.  0 1
GetByIdAsync  1 =
(  = >
basketId  > F
)  F G
;  G H
basket"" 
."" 
AddItem"" 
("" 
catalogItemId"" (
,""( )
price""* /
,""/ 0
quantity""1 9
)""9 :
;"": ;
await$$ 
_basketRepository$$ #
.$$# $
UpdateAsync$$$ /
($$/ 0
basket$$0 6
)$$6 7
;$$7 8
}%% 	
public'' 
async'' 
Task'' 
DeleteBasketAsync'' +
(''+ ,
int'', /
basketId''0 8
)''8 9
{(( 	
var)) 
basket)) 
=)) 
await)) 
_basketRepository)) 0
.))0 1
GetByIdAsync))1 =
())= >
basketId))> F
)))F G
;))G H
await++ 
_basketRepository++ #
.++# $
DeleteAsync++$ /
(++/ 0
basket++0 6
)++6 7
;++7 8
},, 	
public.. 
async.. 
Task.. 
<.. 
int.. 
>.. #
GetBasketItemCountAsync.. 6
(..6 7
string..7 =
userName..> F
)..F G
{// 	
Guard00 
.00 
Against00 
.00 
NullOrEmpty00 %
(00% &
userName00& .
,00. /
nameof000 6
(006 7
userName007 ?
)00? @
)00@ A
;00A B
var11 

basketSpec11 
=11 
new11  (
BasketWithItemsSpecification11! =
(11= >
userName11> F
)11F G
;11G H
var22 
basket22 
=22 
(22 
await22 
_basketRepository22  1
.221 2
	ListAsync222 ;
(22; <

basketSpec22< F
)22F G
)22G H
.22H I
FirstOrDefault22I W
(22W X
)22X Y
;22Y Z
if33 
(33 
basket33 
==33 
null33 
)33 
{44 
_logger55 
.55 
LogInformation55 &
(55& '
$"55' )
$str55) =
{55= >
userName55> F
}55F G
"55G H
)55H I
;55I J
return66 
$num66 
;66 
}77 
int88 
count88 
=88 
basket88 
.88 
Items88 $
.88$ %
Sum88% (
(88( )
i88) *
=>88+ -
i88. /
.88/ 0
Quantity880 8
)888 9
;889 :
_logger99 
.99 
LogInformation99 "
(99" #
$"99# %
$str99% 0
{990 1
userName991 9
}999 :
$str99: ?
{99? @
count99@ E
}99E F
$str99F M
"99M N
)99N O
;99O P
return:: 
count:: 
;:: 
};; 	
public== 
async== 
Task== 
SetQuantities== '
(==' (
int==( +
basketId==, 4
,==4 5

Dictionary==6 @
<==@ A
string==A G
,==G H
int==I L
>==L M

quantities==N X
)==X Y
{>> 	
Guard?? 
.?? 
Against?? 
.?? 
Null?? 
(?? 

quantities?? )
,??) *
nameof??+ 1
(??1 2

quantities??2 <
)??< =
)??= >
;??> ?
var@@ 
basket@@ 
=@@ 
await@@ 
_basketRepository@@ 0
.@@0 1
GetByIdAsync@@1 =
(@@= >
basketId@@> F
)@@F G
;@@G H
GuardAA 
.AA 
AgainstAA 
.AA 

NullBasketAA $
(AA$ %
basketIdAA% -
,AA- .
basketAA/ 5
)AA5 6
;AA6 7
foreachBB 
(BB 
varBB 
itemBB 
inBB  
basketBB! '
.BB' (
ItemsBB( -
)BB- .
{CC 
ifDD 
(DD 

quantitiesDD 
.DD 
TryGetValueDD *
(DD* +
itemDD+ /
.DD/ 0
IdDD0 2
.DD2 3
ToStringDD3 ;
(DD; <
)DD< =
,DD= >
outDD? B
varDDC F
quantityDDG O
)DDO P
)DDP Q
{EE 
_loggerFF 
.FF 
LogInformationFF *
(FF* +
$"FF+ -
$strFF- J
{FFJ K
itemFFK O
.FFO P
IdFFP R
}FFR S
$strFFS W
{FFW X
quantityFFX `
}FF` a
$strFFa b
"FFb c
)FFc d
;FFd e
itemGG 
.GG 
QuantityGG !
=GG" #
quantityGG$ ,
;GG, -
}HH 
}II 
awaitJJ 
_basketRepositoryJJ #
.JJ# $
UpdateAsyncJJ$ /
(JJ/ 0
basketJJ0 6
)JJ6 7
;JJ7 8
}KK 	
publicMM 
asyncMM 
TaskMM 
TransferBasketAsyncMM -
(MM- .
stringMM. 4
anonymousIdMM5 @
,MM@ A
stringMMB H
userNameMMI Q
)MMQ R
{NN 	
GuardOO 
.OO 
AgainstOO 
.OO 
NullOrEmptyOO %
(OO% &
anonymousIdOO& 1
,OO1 2
nameofOO3 9
(OO9 :
anonymousIdOO: E
)OOE F
)OOF G
;OOG H
GuardPP 
.PP 
AgainstPP 
.PP 
NullOrEmptyPP %
(PP% &
userNamePP& .
,PP. /
nameofPP0 6
(PP6 7
userNamePP7 ?
)PP? @
)PP@ A
;PPA B
varQQ 

basketSpecQQ 
=QQ 
newQQ  (
BasketWithItemsSpecificationQQ! =
(QQ= >
anonymousIdQQ> I
)QQI J
;QQJ K
varRR 
basketRR 
=RR 
(RR 
awaitRR 
_basketRepositoryRR  1
.RR1 2
	ListAsyncRR2 ;
(RR; <

basketSpecRR< F
)RRF G
)RRG H
.RRH I
FirstOrDefaultRRI W
(RRW X
)RRX Y
;RRY Z
ifSS 
(SS 
basketSS 
==SS 
nullSS 
)SS 
returnSS  &
;SS& '
basketTT 
.TT 
BuyerIdTT 
=TT 
userNameTT %
;TT% &
awaitUU 
_basketRepositoryUU #
.UU# $
UpdateAsyncUU$ /
(UU/ 0
basketUU0 6
)UU6 7
;UU7 8
}VV 	
}WW 
}XX —
kC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IUriComposer.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IUriComposer !
{ 
string 
ComposePicUri 
( 
string #
uriTemplate$ /
)/ 0
;0 1
} 
} ã
mC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\ISpecification.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
ISpecification #
<# $
T$ %
>% &
{ 

Expression		 
<		 
Func		 
<		 
T		 
,		 
bool		 
>		  
>		  !
Criteria		" *
{		+ ,
get		- 0
;		0 1
}		2 3
List

 
<

 

Expression

 
<

 
Func

 
<

 
T

 
,

 
object

  &
>

& '
>

' (
>

( )
Includes

* 2
{

3 4
get

5 8
;

8 9
}

: ;
List 
< 
string 
> 
IncludeStrings #
{$ %
get& )
;) *
}+ ,
} 
} ì
jC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IRepository.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IRepository  
<  !
T! "
>" #
where$ )
T* +
:, -

BaseEntity. 8
{ 
T 	
GetById
 
( 
int 
id 
) 
; 
T		 	
GetSingleBySpec		
 
(		 
ISpecification		 (
<		( )
T		) *
>		* +
spec		, 0
)		0 1
;		1 2
IEnumerable

 
<

 
T

 
>

 
ListAll

 
(

 
)

  
;

  !
IEnumerable 
< 
T 
> 
List 
( 
ISpecification *
<* +
T+ ,
>, -
spec. 2
)2 3
;3 4
T 	
Add
 
( 
T 
entity 
) 
; 
void 
Update 
( 
T 
entity 
) 
; 
void 
Delete 
( 
T 
entity 
) 
; 
} 
} Õ
lC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IOrderService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IOrderService "
{ 
Task 
CreateOrderAsync 
( 
int !
basketId" *
,* +
Address, 3
shippingAddress4 C
)C D
;D E
}		 
}

 €
oC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IOrderRepository.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IOrderRepository %
:& '
IRepository( 3
<3 4
Order4 9
>9 :
,: ;
IAsyncRepository< L
<L M
OrderM R
>R S
{ 
Order		 
GetByIdWithItems		 
(		 
int		 "
id		# %
)		% &
;		& '
Task

 
<

 
Order

 
>

 !
GetByIdWithItemsAsync

 )
(

) *
int

* -
id

. 0
)

0 1
;

1 2
} 
} ¿
nC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IIdentityParser.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IIdentityParser $
<$ %
T% &
>& '
{ 
T 	
Parse
 
( 

IPrincipal 
	principal $
)$ %
;% &
} 
}		 €
kC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IEmailSender.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IEmailSender !
{ 
Task 
SendEmailAsync 
( 
string "
email# (
,( )
string* 0
subject1 8
,8 9
string: @
messageA H
)H I
;I J
}		 
}

 ×
mC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IBasketService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IBasketService #
{ 
Task 
< 
int 
> #
GetBasketItemCountAsync )
() *
string* 0
userName1 9
)9 :
;: ;
Task		 
TransferBasketAsync		  
(		  !
string		! '
anonymousId		( 3
,		3 4
string		5 ;
userName		< D
)		D E
;		E F
Task

 
AddItemToBasket

 
(

 
int

  
basketId

! )
,

) *
int

+ .
catalogItemId

/ <
,

< =
decimal

> E
price

F K
,

K L
int

M P
quantity

Q Y
)

Y Z
;

Z [
Task 
SetQuantities 
( 
int 
basketId '
,' (

Dictionary) 3
<3 4
string4 :
,: ;
int< ?
>? @

quantitiesA K
)K L
;L M
Task 
DeleteBasketAsync 
( 
int "
basketId# +
)+ ,
;, -
} 
} ’
oC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IAsyncRepository.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IAsyncRepository %
<% &
T& '
>' (
where) .
T/ 0
:1 2

BaseEntity3 =
{ 
Task		 
<		 
T		 
>		 
GetByIdAsync		 
(		 
int		  
id		! #
)		# $
;		$ %
Task

 
<

 
List

 
<

 
T

 
>

 
>

 
ListAllAsync

 "
(

" #
)

# $
;

$ %
Task 
< 
List 
< 
T 
> 
> 
	ListAsync 
(  
ISpecification  .
<. /
T/ 0
>0 1
spec2 6
)6 7
;7 8
Task 
< 
T 
> 
AddAsync 
( 
T 
entity !
)! "
;" #
Task 
UpdateAsync 
( 
T 
entity !
)! "
;" #
Task 
DeleteAsync 
( 
T 
entity !
)! "
;" #
} 
} ‰
iC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IAppLogger.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 

IAppLogger 
<  
T  !
>! "
{ 
void		 
LogInformation		 
(		 
string		 "
message		# *
,		* +
params		, 2
object		3 9
[		9 :
]		: ;
args		< @
)		@ A
;		A B
void

 

LogWarning

 
(

 
string

 
message

 &
,

& '
params

( .
object

/ 5
[

5 6
]

6 7
args

8 <
)

< =
;

= >
} 
} ’
mC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Interfaces\IAggregateRoot.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Interfaces- 7
{ 
public 

	interface 
IAggregateRoot #
{ 
} 
} €
nC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Exceptions\GuardExtensions.cs
	namespace 	
Ardalis
 
. 
GuardClauses 
{ 
public 

static 
class 
BasketGuards $
{ 
public 
static 
void 

NullBasket %
(% &
this& *
IGuardClause+ 7
guardClause8 C
,C D
intE H
basketIdI Q
,Q R
BasketS Y
basketZ `
)` a
{		 	
if

 
(

 
basket

 
==

 
null

 
)

 
throw 
new #
BasketNotFoundException 1
(1 2
basketId2 :
): ;
;; <
} 	
} 
} ¬
vC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Exceptions\BasketNotFoundException.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -

Exceptions- 7
{ 
public 

class #
BasketNotFoundException (
:) *
	Exception+ 4
{ 
public #
BasketNotFoundException &
(& '
int' *
basketId+ 3
)3 4
:5 6
base7 ;
(; <
$"< >
$str> V
{V W
basketIdW _
}_ `
"` a
)a b
{ 	
}		 	
	protected #
BasketNotFoundException )
() *
System* 0
.0 1
Runtime1 8
.8 9
Serialization9 F
.F G
SerializationInfoG X
infoY ]
,] ^
System_ e
.e f
Runtimef m
.m n
Serializationn {
.{ |
StreamingContext	| Œ
context
 ”
)
” •
:
– —
base
˜ œ
(
œ 
info
 ¡
,
¡ ¢
context
£ ª
)
ª «
{ 	
} 	
public #
BasketNotFoundException &
(& '
string' -
message. 5
)5 6
:7 8
base9 =
(= >
message> E
)E F
{ 	
} 	
public #
BasketNotFoundException &
(& '
string' -
message. 5
,5 6
	Exception7 @
innerExceptionA O
)O P
:Q R
baseS W
(W X
messageX _
,_ `
innerExceptiona o
)o p
{ 	
} 	
} 
} Õ
uC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\OrderAggregate\OrderItem.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
{ 
public 

class 
	OrderItem 
: 

BaseEntity '
{ 
public 
CatalogItemOrdered !
ItemOrdered" -
{. /
get0 3
;3 4
private5 <
set= @
;@ A
}B C
public		 
decimal		 
	UnitPrice		  
{		! "
get		# &
;		& '
private		( /
set		0 3
;		3 4
}		5 6
public

 
int

 
Units

 
{

 
get

 
;

 
private

  '
set

( +
;

+ ,
}

- .
private 
	OrderItem 
( 
) 
{ 	
} 	
public 
	OrderItem 
( 
CatalogItemOrdered +
itemOrdered, 7
,7 8
decimal9 @
	unitPriceA J
,J K
intL O
unitsP U
)U V
{ 	
ItemOrdered 
= 
itemOrdered %
;% &
	UnitPrice 
= 
	unitPrice !
;! "
Units 
= 
units 
; 
} 	
} 
} Æ
qC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\OrderAggregate\Order.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
{ 
public		 

class		 
Order		 
:		 

BaseEntity		 #
,		# $
IAggregateRoot		% 3
{

 
private 
Order 
( 
) 
{ 	
} 	
public 
Order 
( 
string 
buyerId #
,# $
Address% ,
shipToAddress- :
,: ;
List< @
<@ A
	OrderItemA J
>J K
itemsL Q
)Q R
{ 	
Guard 
. 
Against 
. 
NullOrEmpty %
(% &
buyerId& -
,- .
nameof/ 5
(5 6
buyerId6 =
)= >
)> ?
;? @
Guard 
. 
Against 
. 
Null 
( 
shipToAddress ,
,, -
nameof. 4
(4 5
shipToAddress5 B
)B C
)C D
;D E
Guard 
. 
Against 
. 
Null 
( 
items $
,$ %
nameof& ,
(, -
items- 2
)2 3
)3 4
;4 5
BuyerId 
= 
buyerId 
; 
ShipToAddress 
= 
shipToAddress )
;) *
_orderItems 
= 
items 
;  
} 	
public 
string 
BuyerId 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
DateTimeOffset 
	OrderDate '
{( )
get* -
;- .
private/ 6
set7 :
;: ;
}< =
=> ?
DateTimeOffset@ N
.N O
NowO R
;R S
public 
Address 
ShipToAddress $
{% &
get' *
;* +
private, 3
set4 7
;7 8
}9 :
private## 
readonly## 
List## 
<## 
	OrderItem## '
>##' (
_orderItems##) 4
=##5 6
new##7 :
List##; ?
<##? @
	OrderItem##@ I
>##I J
(##J K
)##K L
;##L M
public%% 
IReadOnlyCollection%% "
<%%" #
	OrderItem%%# ,
>%%, -

OrderItems%%. 8
=>%%9 ;
_orderItems%%< G
.%%G H

AsReadOnly%%H R
(%%R S
)%%S T
;%%T U
public++ 
decimal++ 
Total++ 
(++ 
)++ 
{,, 	
var-- 
total-- 
=-- 
$num-- 
;-- 
foreach.. 
(.. 
var.. 
item.. 
in..  
_orderItems..! ,
).., -
{// 
total00 
+=00 
item00 
.00 
	UnitPrice00 '
*00( )
item00* .
.00. /
Units00/ 4
;004 5
}11 
return22 
total22 
;22 
}33 	
}44 
}55 À
~C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\OrderAggregate\CatalogItemOrdered.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
{ 
public		 

class		 
CatalogItemOrdered		 #
{

 
public 
CatalogItemOrdered !
(! "
int" %
catalogItemId& 3
,3 4
string5 ;
productName< G
,G H
stringI O

pictureUriP Z
)Z [
{ 	
Guard 
. 
Against 
. 

OutOfRange $
($ %
catalogItemId% 2
,2 3
nameof4 :
(: ;
catalogItemId; H
)H I
,I J
$numK L
,L M
intN Q
.Q R
MaxValueR Z
)Z [
;[ \
Guard 
. 
Against 
. 
NullOrEmpty %
(% &
productName& 1
,1 2
nameof3 9
(9 :
productName: E
)E F
)F G
;G H
Guard 
. 
Against 
. 
NullOrEmpty %
(% &

pictureUri& 0
,0 1
nameof2 8
(8 9

pictureUri9 C
)C D
)D E
;E F
CatalogItemId 
= 
catalogItemId )
;) *
ProductName 
= 
productName %
;% &

PictureUri 
= 

pictureUri #
;# $
} 	
private 
CatalogItemOrdered "
(" #
)# $
{ 	
} 	
public 
int 
CatalogItemId  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
public 
string 
ProductName !
{" #
get$ '
;' (
private) 0
set1 4
;4 5
}6 7
public 
string 

PictureUri  
{! "
get# &
;& '
private( /
set0 3
;3 4
}5 6
} 
} Ê
sC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\OrderAggregate\Address.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
OrderAggregate6 D
{ 
public 

class 
Address 
{ 
public 
String 
Street 
{ 
get "
;" #
private$ +
set, /
;/ 0
}1 2
public		 
String		 
City		 
{		 
get		  
;		  !
private		" )
set		* -
;		- .
}		/ 0
public 
String 
State 
{ 
get !
;! "
private# *
set+ .
;. /
}0 1
public 
String 
Country 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
public 
String 
ZipCode 
{ 
get  #
;# $
private% ,
set- 0
;0 1
}2 3
private 
Address 
( 
) 
{ 
} 
public 
Address 
( 
string 
street $
,$ %
string& ,
city- 1
,1 2
string3 9
state: ?
,? @
stringA G
countryH O
,O P
stringQ W
zipcodeX _
)_ `
{ 	
Street 
= 
street 
; 
City 
= 
city 
; 
State 
= 
state 
; 
Country 
= 
country 
; 
ZipCode 
= 
zipcode 
; 
} 	
} 
} Ã
hC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\CatalogType.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
{ 
public 

class 
CatalogType 
: 

BaseEntity )
{ 
public 
string 
Type 
{ 
get  
;  !
set" %
;% &
}' (
} 
} ¡
hC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\CatalogItem.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
{ 
public 

class 
CatalogItem 
: 

BaseEntity )
{ 
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 
Description !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 

PictureUri  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
int		 
CatalogTypeId		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
CatalogType

 
CatalogType

 &
{

' (
get

) ,
;

, -
set

. 1
;

1 2
}

3 4
public 
int 
CatalogBrandId !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
CatalogBrand 
CatalogBrand (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
} 
} Æ
iC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\CatalogBrand.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
{ 
public 

class 
CatalogBrand 
: 

BaseEntity  *
{ 
public 
string 
Brand 
{ 
get !
;! "
set# &
;& '
}( )
} 
}		 µ
yC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\BuyerAggregate\PaymentMethod.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BuyerAggregate6 D
{ 
public 

class 
PaymentMethod 
:  

BaseEntity! +
{ 
public 
string 
Alias 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 
CardId 
{ 
get "
;" #
set$ '
;' (
}) *
public		 
string		 
Last4		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
}

 
} È
qC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\BuyerAggregate\Buyer.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BuyerAggregate6 D
{ 
public 

class 
Buyer 
: 

BaseEntity #
,# $
IAggregateRoot% 3
{		 
public

 
string

 
IdentityGuid

 "
{

# $
get

% (
;

( )
private

* 1
set

2 5
;

5 6
}

7 8
private 
List 
< 
PaymentMethod "
>" #
_paymentMethods$ 3
=4 5
new6 9
List: >
<> ?
PaymentMethod? L
>L M
(M N
)N O
;O P
public 
IEnumerable 
< 
PaymentMethod (
>( )
PaymentMethods* 8
=>9 ;
_paymentMethods< K
.K L

AsReadOnlyL V
(V W
)W X
;X Y
private 
Buyer 
( 
) 
{ 	
} 	
public 
Buyer 
( 
string 
identity $
)$ %
:& '
this( ,
(, -
)- .
{ 	
Guard 
. 
Against 
. 
NullOrEmpty %
(% &
identity& .
,. /
nameof0 6
(6 7
identity7 ?
)? @
)@ A
;A B
IdentityGuid 
= 
identity #
;# $
} 	
} 
} º
wC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\BasketAggregate\BasketItem.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BasketAggregate6 E
{ 
public 

class 

BasketItem 
: 

BaseEntity (
{ 
public 
decimal 
	UnitPrice  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
int 
CatalogItemId  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
}		 ù
sC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\BasketAggregate\Basket.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
.5 6
BasketAggregate6 E
{ 
public 

class 
Basket 
: 

BaseEntity $
,$ %
IAggregateRoot& 4
{ 
public		 
string		 
BuyerId		 
{		 
get		  #
;		# $
set		% (
;		( )
}		* +
private

 
readonly

 
List

 
<

 

BasketItem

 (
>

( )
_items

* 0
=

1 2
new

3 6
List

7 ;
<

; <

BasketItem

< F
>

F G
(

G H
)

H I
;

I J
public 
IReadOnlyCollection "
<" #

BasketItem# -
>- .
Items/ 4
=>5 7
_items8 >
.> ?

AsReadOnly? I
(I J
)J K
;K L
public 
void 
AddItem 
( 
int 
catalogItemId  -
,- .
decimal/ 6
	unitPrice7 @
,@ A
intB E
quantityF N
=O P
$numQ R
)R S
{ 	
if 
( 
! 
Items 
. 
Any 
( 
i 
=> 
i  !
.! "
CatalogItemId" /
==0 2
catalogItemId3 @
)@ A
)A B
{ 
_items 
. 
Add 
( 
new 

BasketItem )
() *
)* +
{ 
CatalogItemId !
=" #
catalogItemId$ 1
,1 2
Quantity 
= 
quantity '
,' (
	UnitPrice 
= 
	unitPrice  )
} 
) 
; 
return 
; 
} 
var 
existingItem 
= 
Items $
.$ %
FirstOrDefault% 3
(3 4
i4 5
=>6 8
i9 :
.: ;
CatalogItemId; H
==I K
catalogItemIdL Y
)Y Z
;Z [
existingItem 
. 
Quantity !
+=" $
quantity% -
;- .
} 	
} 
} Ô
cC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\CatalogSettings.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
{ 
public 

class 
CatalogSettings  
{ 
public 
string 
CatalogBaseUrl $
{% &
get' *
;* +
set, /
;/ 0
}1 2
} 
} •
gC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\ApplicationCore\Entities\BaseEntity.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
ApplicationCore ,
., -
Entities- 5
{ 
public 

class 

BaseEntity 
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
} 
}		 