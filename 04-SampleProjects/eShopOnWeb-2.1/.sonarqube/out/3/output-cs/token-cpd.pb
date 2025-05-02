µ
cC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Views\Manage\ManageNavPages.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Views! &
.& '
Manage' -
{ 
public 

static 
class 
ManageNavPages &
{ 
public		 
static		 
string		 
ActivePageKey		 *
=>		+ -
$str		. :
;		: ;
public 
static 
string 
Index "
=># %
$str& -
;- .
public 
static 
string 
ChangePassword +
=>, .
$str/ ?
;? @
public 
static 
string 
ExternalLogins +
=>, .
$str/ ?
;? @
public 
static 
string #
TwoFactorAuthentication 4
=>5 7
$str8 Q
;Q R
public 
static 
string 
IndexNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Indexa f
)f g
;g h
public 
static 
string "
ChangePasswordNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ChangePasswordj x
)x y
;y z
public 
static 
string "
ExternalLoginsNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ExternalLoginsj x
)x y
;y z
public 
static 
string +
TwoFactorAuthenticationNavClass <
(< =
ViewContext= H
viewContextI T
)T U
=>V X
PageNavClassY e
(e f
viewContextf q
,q r$
TwoFactorAuthentication	s ä
)
ä ã
;
ã å
public 
static 
string 
PageNavClass )
() *
ViewContext* 5
viewContext6 A
,A B
stringC I
pageJ N
)N O
{ 	
var 

activePage 
= 
viewContext (
.( )
ViewData) 1
[1 2
$str2 >
]> ?
as@ B
stringC I
;I J
return 
string 
. 
Equals  
(  !

activePage! +
,+ ,
page- 1
,1 2
StringComparison3 C
.C D
OrdinalIgnoreCaseD U
)U V
?W X
$strY a
:b c
nulld h
;h i
} 	
public!! 
static!! 
void!! 
AddActivePage!! (
(!!( )
this!!) -
ViewDataDictionary!!. @
viewData!!A I
,!!I J
string!!K Q

activePage!!R \
)!!\ ]
=>!!^ `
viewData!!a i
[!!i j
ActivePageKey!!j w
]!!w x
=!!y z

activePage	!!{ Ö
;
!!Ö Ü
}"" 
}## ™

jC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\PaginationInfoViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class #
PaginationInfoViewModel (
{ 
public 
int 

TotalItems 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 
ItemsPerPage 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 

ActualPage 
{ 
get  #
;# $
set% (
;( )
}* +
public 
int 

TotalPages 
{ 
get  #
;# $
set% (
;( )
}* +
public		 
string		 
Previous		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
string

 
Next

 
{

 
get

  
;

  !
set

" %
;

% &
}

' (
} 
} Ü
aC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\OrderViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class 
OrderViewModel 
{ 
public		 
int		 
OrderNumber		 
{		  
get		! $
;		$ %
set		& )
;		) *
}		+ ,
public

 
DateTimeOffset

 
	OrderDate

 '
{

( )
get

* -
;

- .
set

/ 2
;

2 3
}

4 5
public 
decimal 
Total 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Status 
{ 
get "
;" #
set$ '
;' (
}) *
public 
Address 
ShippingAddress &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
List 
< 
OrderItemViewModel &
>& '

OrderItems( 2
{3 4
get5 8
;8 9
set: =
;= >
}? @
=A B
newC F
ListG K
<K L
OrderItemViewModelL ^
>^ _
(_ `
)` a
;a b
} 
} ¶

eC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\OrderItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class 
OrderItemViewModel #
{ 
public		 
int		 
	ProductId		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
	UnitPrice  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
decimal 
Discount 
{  !
get" %
;% &
set' *
;* +
}, -
public 
int 
Units 
{ 
get 
; 
set  #
;# $
}% &
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} ¶
zC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\TwoFactorAuthenticationViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class ,
 TwoFactorAuthenticationViewModel 1
{ 
public 
bool 
HasAuthenticator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
RecoveryCodesLeft $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public		 
bool		 
Is2faEnabled		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
}

 
} è
nC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\SetPasswordViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class  
SetPasswordViewModel %
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* h
,h i
MinimumLengthj w
=x y
$numz {
){ |
]| }
[		 	
DataType			 
(		 
DataType		 
.		 
Password		 #
)		# $
]		$ %
[

 	
Display

	 
(

 
Name

 
=

 
$str

 &
)

& '
]

' (
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str .
). /
]/ 0
[ 	
Compare	 
( 
$str 
, 
ErrorMessage  ,
=- .
$str/ i
)i j
]j k
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} Ï
nC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\RemoveLoginViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class  
RemoveLoginViewModel %
{ 
public 
string 
LoginProvider #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
string 
ProviderKey !
{" #
get$ '
;' (
set) ,
;, -
}. /
} 
} ÿ
hC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\IndexViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class 
IndexViewModel 
{ 
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public		 
bool		 
IsEmailConfirmed		 $
{		% &
get		' *
;		* +
set		, /
;		/ 0
}		1 2
[ 	
Required	 
] 
[ 	
EmailAddress	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Phone	 
] 
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
string 
PhoneNumber !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ˇ
xC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\GenerateRecoveryCodesViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class *
GenerateRecoveryCodesViewModel /
{ 
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} ¨	
qC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\ExternalLoginsViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class #
ExternalLoginsViewModel (
{ 
public		 
IList		 
<		 
UserLoginInfo		 "
>		" #
CurrentLogins		$ 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
IList

 
<

  
AuthenticationScheme

 )
>

) *
OtherLogins

+ 6
{

7 8
get

9 <
;

< =
set

> A
;

A B
}

C D
public 
bool 
ShowRemoveButton $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} ∑
vC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\EnableAuthenticatorViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class (
EnableAuthenticatorViewModel -
{ 
[ 	
Required	 
] 
[		 	
StringLength			 
(		 
$num		 
,		 
ErrorMessage		 %
=		& '
$str		( f
,		f g
MinimumLength		h u
=		v w
$num		x y
)		y z
]		z {
[

 	
DataType

	 
(

 
DataType

 
.

 
Text

 
)

  
]

  !
[ 	
Display	 
( 
Name 
= 
$str +
)+ ,
], -
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
[ 	
ReadOnly	 
( 
true 
) 
] 
public 
string 
	SharedKey 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
AuthenticatorUri &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
} 
} ˘
qC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Manage\ChangePasswordViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Manage, 2
{ 
public 

class #
ChangePasswordViewModel (
{ 
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[		 	
Display			 
(		 
Name		 
=		 
$str		 *
)		* +
]		+ ,
public

 
string

 
OldPassword

 !
{

" #
get

$ '
;

' (
set

) ,
;

, -
}

. /
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* h
,h i
MinimumLengthj w
=x y
$numz {
){ |
]| }
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
string 
NewPassword !
{" #
get$ '
;' (
set) ,
;, -
}. /
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str .
). /
]/ 0
[ 	
Compare	 
( 
$str 
, 
ErrorMessage  ,
=- .
$str/ i
)i j
]j k
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
} 
} Â
gC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\CatalogItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class  
CatalogItemViewModel %
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

PictureUri  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
decimal 
Price 
{ 
get "
;" #
set$ '
;' (
}) *
}		 
}

 ±
hC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\CatalogIndexViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class !
CatalogIndexViewModel &
{ 
public 
IEnumerable 
<  
CatalogItemViewModel /
>/ 0
CatalogItems1 =
{> ?
get@ C
;C D
setE H
;H I
}J K
public		 
IEnumerable		 
<		 
SelectListItem		 )
>		) *
Brands		+ 1
{		2 3
get		4 7
;		7 8
set		9 <
;		< =
}		> ?
public

 
IEnumerable

 
<

 
SelectListItem

 )
>

) *
Types

+ 0
{

1 2
get

3 6
;

6 7
set

8 ;
;

; <
}

= >
public 
int 
? 
BrandFilterApplied &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public 
int 
? 
TypesFilterApplied &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
public #
PaginationInfoViewModel &
PaginationInfo' 5
{6 7
get8 ;
;; <
set= @
;@ A
}B C
} 
} ê
bC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\BasketViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class 
BasketViewModel  
{ 
public		 
int		 
Id		 
{		 
get		 
;		 
set		  
;		  !
}		" #
public

 
List

 
<

 
BasketItemViewModel

 '
>

' (
Items

) .
{

/ 0
get

1 4
;

4 5
set

6 9
;

9 :
}

; <
=

= >
new

? B
List

C G
<

G H
BasketItemViewModel

H [
>

[ \
(

\ ]
)

] ^
;

^ _
public 
string 
BuyerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
decimal 
Total 
( 
) 
{ 	
return 
Math 
. 
Round 
( 
Items #
.# $
Sum$ '
(' (
x( )
=>* ,
x- .
.. /
	UnitPrice/ 8
*9 :
x; <
.< =
Quantity= E
)E F
,F G
$numH I
)I J
;J K
} 	
} 
} ∆
fC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\BasketItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class 
BasketItemViewModel $
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
CatalogItemId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public 
decimal 
	UnitPrice  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
decimal		 
OldUnitPrice		 #
{		$ %
get		& )
;		) *
set		+ .
;		. /
}		0 1
public

 
int

 
Quantity

 
{

 
get

 !
;

! "
set

# &
;

& '
}

( )
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} •
kC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\BasketComponentViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
{ 
public 

class $
BasketComponentViewModel )
{ 
public 
int 

ItemsCount 
{ 
get  #
;# $
set% (
;( )
}* +
} 
} ä
qC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Account\ResetPasswordViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
{ 
public 

class "
ResetPasswordViewModel '
{ 
[ 	
Required	 
] 
[ 	
EmailAddress	 
] 
public		 
string		 
Email		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* h
,h i
MinimumLengthj w
=x y
$numz {
){ |
]| }
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str *
)* +
]+ ,
[ 	
Compare	 
( 
$str 
, 
ErrorMessage )
=* +
$str, b
)b c
]c d
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
string 
Code 
{ 
get  
;  !
set" %
;% &
}' (
} 
} 
lC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Account\RegisterViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
{ 
public 

class 
RegisterViewModel "
{ 
[ 	
Required	 
] 
[		 	
EmailAddress			 
]		 
[

 	
Display

	 
(

 
Name

 
=

 
$str

 
)

  
]

  !
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage '
=( )
$str* Y
,Y Z
MinimumLength[ h
=i j
$numk l
)l m
]m n
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str "
)" #
]# $
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
[ 	
Display	 
( 
Name 
= 
$str *
)* +
]+ ,
[ 	
Compare	 
( 
$str 
, 
ErrorMessage )
=* +
$str, b
)b c
]c d
public 
string 
ConfirmPassword %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
} 
} –
pC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Account\LoginWith2faViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
{ 
public 

class !
LoginWith2faViewModel &
{ 
[ 	
Required	 
] 
[ 	
StringLength	 
( 
$num 
, 
ErrorMessage %
=& '
$str( f
,f g
MinimumLengthh u
=v w
$numx y
)y z
]z {
[		 	
DataType			 
(		 
DataType		 
.		 
Text		 
)		  
]		  !
[

 	
Display

	 
(

 
Name

 
=

 
$str

 ,
)

, -
]

- .
public 
string 
TwoFactorCode #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	
Display	 
( 
Name 
= 
$str /
)/ 0
]0 1
public 
bool 
RememberMachine #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} §

iC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewModels\Account\LoginViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

ViewModels! +
.+ ,
Account, 3
{ 
public 

class 
LoginViewModel 
{ 
[ 	
Required	 
] 
[ 	
EmailAddress	 
] 
public		 
string		 
Email		 
{		 
get		 !
;		! "
set		# &
;		& '
}		( )
[ 	
Required	 
] 
[ 	
DataType	 
( 
DataType 
. 
Password #
)# $
]$ %
public 
string 
Password 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	
Display	 
( 
Name 
= 
$str &
)& '
]' (
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
} 
} ‡
]C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\ViewComponents\Basket.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
ViewComponents! /
{ 
public 

class 
Basket 
: 
ViewComponent '
{ 
private 
readonly #
IBasketViewModelService 0
_basketService1 ?
;? @
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
public 
Basket 
( #
IBasketViewModelService -
basketService. ;
,; <
SignInManager %
<% &
ApplicationUser& 5
>5 6
signInManager7 D
)D E
{ 	
_basketService 
= 
basketService *
;* +
_signInManager 
= 
signInManager *
;* +
} 	
public 
async 
Task 
<  
IViewComponentResult .
>. /
InvokeAsync0 ;
(; <
string< B
userNameC K
)K L
{ 	
var 
vm 
= 
new $
BasketComponentViewModel 1
(1 2
)2 3
;3 4
vm 
. 

ItemsCount 
= 
( 
await "#
GetBasketViewModelAsync# :
(: ;
); <
)< =
.= >
Items> C
.C D
SumD G
(G H
iH I
=>J L
iM N
.N O
QuantityO W
)W X
;X Y
return 
View 
( 
vm 
) 
; 
} 	
private   
async   
Task   
<   
BasketViewModel   *
>  * +#
GetBasketViewModelAsync  , C
(  C D
)  D E
{!! 	
if"" 
("" 
_signInManager"" 
."" 

IsSignedIn"" )
("") *
HttpContext""* 5
.""5 6
User""6 :
)"": ;
)""; <
{## 
return$$ 
await$$ 
_basketService$$ +
.$$+ ,$
GetOrCreateBasketForUser$$, D
($$D E
User$$E I
.$$I J
Identity$$J R
.$$R S
Name$$S W
)$$W X
;$$X Y
}%% 
string&& 
anonymousId&& 
=&&  !
GetBasketIdFromCookie&&! 6
(&&6 7
)&&7 8
;&&8 9
if'' 
('' 
anonymousId'' 
=='' 
null'' #
)''# $
return''% +
new'', /
BasketViewModel''0 ?
(''? @
)''@ A
;''A B
return(( 
await(( 
_basketService(( '
.((' ($
GetOrCreateBasketForUser((( @
(((@ A
anonymousId((A L
)((L M
;((M N
})) 	
private++ 
string++ !
GetBasketIdFromCookie++ ,
(++, -
)++- .
{,, 	
if-- 
(-- 
Request-- 
.-- 
Cookies-- 
.--  
ContainsKey--  +
(--+ ,
	Constants--, 5
.--5 6
BASKET_COOKIENAME--6 G
)--G H
)--H I
{.. 
return// 
Request// 
.// 
Cookies// &
[//& '
	Constants//' 0
.//0 1
BASKET_COOKIENAME//1 B
]//B C
;//C D
}00 
return11 
null11 
;11 
}22 	
}33 
}44 çc
OC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Startup.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
{ 
public 

class 
Startup 
{ 
private 
IServiceCollection "
	_services# ,
;, -
public 
Startup 
( 
IConfiguration %
configuration& 3
)3 4
{ 	
Configuration 
= 
configuration )
;) *
} 	
public 
IConfiguration 
Configuration +
{, -
get. 1
;1 2
}3 4
public 
void (
ConfigureDevelopmentServices 0
(0 1
IServiceCollection1 C
servicesD L
)L M
{   	&
ConfigureInMemoryDatabases"" &
(""& '
services""' /
)""/ 0
;""0 1
}&& 	
private(( 
void(( &
ConfigureInMemoryDatabases(( /
(((/ 0
IServiceCollection((0 B
services((C K
)((K L
{)) 	
services++ 
.++ 
AddDbContext++ !
<++! "
CatalogContext++" 0
>++0 1
(++1 2
c++2 3
=>++4 6
c,, 
.,, 
UseInMemoryDatabase,, %
(,,% &
$str,,& /
),,/ 0
),,0 1
;,,1 2
services// 
.// 
AddDbContext// !
<//! " 
AppIdentityDbContext//" 6
>//6 7
(//7 8
options//8 ?
=>//@ B
options00 
.00 
UseInMemoryDatabase00 +
(00+ ,
$str00, 6
)006 7
)007 8
;008 9
ConfigureServices22 
(22 
services22 &
)22& '
;22' (
}33 	
public55 
void55 '
ConfigureProductionServices55 /
(55/ 0
IServiceCollection550 B
services55C K
)55K L
{66 	
services:: 
.:: 
AddDbContext:: !
<::! "
CatalogContext::" 0
>::0 1
(::1 2
c::2 3
=>::4 6
c;; 
.;; 
UseSqlServer;; 
(;; 
Configuration;; ,
.;;, -
GetConnectionString;;- @
(;;@ A
$str;;A T
);;T U
);;U V
);;V W
;;;W X
services>> 
.>> 
AddDbContext>> !
<>>! " 
AppIdentityDbContext>>" 6
>>>6 7
(>>7 8
options>>8 ?
=>>>@ B
options?? 
.?? 
UseSqlServer?? $
(??$ %
Configuration??% 2
.??2 3
GetConnectionString??3 F
(??F G
$str??G [
)??[ \
)??\ ]
)??] ^
;??^ _
ConfigureServicesAA 
(AA 
servicesAA &
)AA& '
;AA' (
}BB 	
publicDD 
voidDD 
ConfigureServicesDD %
(DD% &
IServiceCollectionDD& 8
servicesDD9 A
)DDA B
{EE 	
servicesFF 
.FF 
AddIdentityFF  
<FF  !
ApplicationUserFF! 0
,FF0 1
IdentityRoleFF2 >
>FF> ?
(FF? @
)FF@ A
.GG $
AddEntityFrameworkStoresGG )
<GG) * 
AppIdentityDbContextGG* >
>GG> ?
(GG? @
)GG@ A
.HH $
AddDefaultTokenProvidersHH )
(HH) *
)HH* +
;HH+ ,
servicesJJ 
.JJ &
ConfigureApplicationCookieJJ /
(JJ/ 0
optionsJJ0 7
=>JJ8 :
{KK 
optionsLL 
.LL 
CookieLL 
.LL 
HttpOnlyLL '
=LL( )
trueLL* .
;LL. /
optionsMM 
.MM 
ExpireTimeSpanMM &
=MM' (
TimeSpanMM) 1
.MM1 2
	FromHoursMM2 ;
(MM; <
$numMM< =
)MM= >
;MM> ?
optionsNN 
.NN 
	LoginPathNN !
=NN" #
$strNN$ 5
;NN5 6
optionsOO 
.OO 

LogoutPathOO "
=OO# $
$strOO% 7
;OO7 8
optionsPP 
.PP 
CookiePP 
=PP  
newPP! $
CookieBuilderPP% 2
{QQ 
IsEssentialRR 
=RR  !
trueRR" &
}SS 
;SS 
}TT 
)TT 
;TT 
servicesVV 
.VV 
	AddScopedVV 
(VV 
typeofVV %
(VV% &
IRepositoryVV& 1
<VV1 2
>VV2 3
)VV3 4
,VV4 5
typeofVV6 <
(VV< =
EfRepositoryVV= I
<VVI J
>VVJ K
)VVK L
)VVL M
;VVM N
servicesWW 
.WW 
	AddScopedWW 
(WW 
typeofWW %
(WW% &
IAsyncRepositoryWW& 6
<WW6 7
>WW7 8
)WW8 9
,WW9 :
typeofWW; A
(WWA B
EfRepositoryWWB N
<WWN O
>WWO P
)WWP Q
)WWQ R
;WWR S
servicesYY 
.YY 
	AddScopedYY 
<YY 
ICatalogServiceYY .
,YY. / 
CachedCatalogServiceYY0 D
>YYD E
(YYE F
)YYF G
;YYG H
servicesZZ 
.ZZ 
	AddScopedZZ 
<ZZ 
IBasketServiceZZ -
,ZZ- .
BasketServiceZZ/ <
>ZZ< =
(ZZ= >
)ZZ> ?
;ZZ? @
services[[ 
.[[ 
	AddScoped[[ 
<[[ #
IBasketViewModelService[[ 6
,[[6 7"
BasketViewModelService[[8 N
>[[N O
([[O P
)[[P Q
;[[Q R
services\\ 
.\\ 
	AddScoped\\ 
<\\ 
IOrderService\\ ,
,\\, -
OrderService\\. :
>\\: ;
(\\; <
)\\< =
;\\= >
services]] 
.]] 
	AddScoped]] 
<]] 
IOrderRepository]] /
,]]/ 0
OrderRepository]]1 @
>]]@ A
(]]A B
)]]B C
;]]C D
services^^ 
.^^ 
	AddScoped^^ 
<^^ 
CatalogService^^ -
>^^- .
(^^. /
)^^/ 0
;^^0 1
services__ 
.__ 
	Configure__ 
<__ 
CatalogSettings__ .
>__. /
(__/ 0
Configuration__0 =
)__= >
;__> ?
services`` 
.`` 
AddSingleton`` !
<``! "
IUriComposer``" .
>``. /
(``/ 0
new``0 3
UriComposer``4 ?
(``? @
Configuration``@ M
.``M N
Get``N Q
<``Q R
CatalogSettings``R a
>``a b
(``b c
)``c d
)``d e
)``e f
;``f g
servicesbb 
.bb 
	AddScopedbb 
(bb 
typeofbb %
(bb% &

IAppLoggerbb& 0
<bb0 1
>bb1 2
)bb2 3
,bb3 4
typeofbb5 ;
(bb; <
LoggerAdapterbb< I
<bbI J
>bbJ K
)bbK L
)bbL M
;bbM N
servicescc 
.cc 
AddTransientcc !
<cc! "
IEmailSendercc" .
,cc. /
EmailSendercc0 ;
>cc; <
(cc< =
)cc= >
;cc> ?
servicesff 
.ff 
AddMemoryCacheff #
(ff# $
)ff$ %
;ff% &
serviceshh 
.hh 
AddMvchh 
(hh 
)hh 
.ii #
SetCompatibilityVersionii (
(ii( )

AspNetCoreii) 3
.ii3 4
Mvcii4 7
.ii7 8 
CompatibilityVersionii8 L
.iiL M
Version_2_1iiM X
)iiX Y
;iiY Z
	_serviceskk 
=kk 
serviceskk  
;kk  !
}ll 	
publicoo 
voidoo 
	Configureoo 
(oo 
IApplicationBuilderoo 1
appoo2 5
,oo5 6
IHostingEnvironmentpp 
envpp  #
)pp# $
{qq 	
ifrr 
(rr 
envrr 
.rr 
IsDevelopmentrr !
(rr! "
)rr" #
)rr# $
{ss 
apptt 
.tt %
UseDeveloperExceptionPagett -
(tt- .
)tt. /
;tt/ 0%
ListAllRegisteredServicesuu )
(uu) *
appuu* -
)uu- .
;uu. /
appvv 
.vv  
UseDatabaseErrorPagevv (
(vv( )
)vv) *
;vv* +
}ww 
elsexx 
{yy 
appzz 
.zz 
UseExceptionHandlerzz '
(zz' (
$strzz( 8
)zz8 9
;zz9 :
app{{ 
.{{ 
UseHsts{{ 
({{ 
){{ 
;{{ 
}|| 
app~~ 
.~~ 
UseHttpsRedirection~~ #
(~~# $
)~~$ %
;~~% &
app 
. 
UseStaticFiles 
( 
)  
;  !
app
ÄÄ 
.
ÄÄ 
UseAuthentication
ÄÄ !
(
ÄÄ! "
)
ÄÄ" #
;
ÄÄ# $
app
ÇÇ 
.
ÇÇ 
UseMvc
ÇÇ 
(
ÇÇ 
)
ÇÇ 
;
ÇÇ 
}
ÉÉ 	
private
ÖÖ 
void
ÖÖ '
ListAllRegisteredServices
ÖÖ .
(
ÖÖ. /!
IApplicationBuilder
ÖÖ/ B
app
ÖÖC F
)
ÖÖF G
{
ÜÜ 	
app
áá 
.
áá 
Map
áá 
(
áá 
$str
áá "
,
áá" #
builder
áá$ +
=>
áá, .
builder
áá/ 6
.
áá6 7
Run
áá7 :
(
áá: ;
async
áá; @
context
ááA H
=>
ááI K
{
àà 
var
ââ 
sb
ââ 
=
ââ 
new
ââ 
StringBuilder
ââ *
(
ââ* +
)
ââ+ ,
;
ââ, -
sb
ää 
.
ää 
Append
ää 
(
ää 
$str
ää 1
)
ää1 2
;
ää2 3
sb
ãã 
.
ãã 
Append
ãã 
(
ãã 
$str
ãã *
)
ãã* +
;
ãã+ ,
sb
åå 
.
åå 
Append
åå 
(
åå 
$str
åå T
)
ååT U
;
ååU V
sb
çç 
.
çç 
Append
çç 
(
çç 
$str
çç +
)
çç+ ,
;
çç, -
foreach
éé 
(
éé 
var
éé 
svc
éé  
in
éé! #
	_services
éé$ -
)
éé- .
{
èè 
sb
êê 
.
êê 
Append
êê 
(
êê 
$str
êê $
)
êê$ %
;
êê% &
sb
ëë 
.
ëë 
Append
ëë 
(
ëë 
$"
ëë  
$str
ëë  $
{
ëë$ %
svc
ëë% (
.
ëë( )
ServiceType
ëë) 4
.
ëë4 5
FullName
ëë5 =
}
ëë= >
$str
ëë> C
"
ëëC D
)
ëëD E
;
ëëE F
sb
íí 
.
íí 
Append
íí 
(
íí 
$"
íí  
$str
íí  $
{
íí$ %
svc
íí% (
.
íí( )
Lifetime
íí) 1
}
íí1 2
$str
íí2 7
"
íí7 8
)
íí8 9
;
íí9 :
sb
ìì 
.
ìì 
Append
ìì 
(
ìì 
$"
ìì  
$str
ìì  $
{
ìì$ %
svc
ìì% (
.
ìì( ) 
ImplementationType
ìì) ;
?
ìì; <
.
ìì< =
FullName
ìì= E
}
ììE F
$str
ììF K
"
ììK L
)
ììL M
;
ììM N
sb
îî 
.
îî 
Append
îî 
(
îî 
$str
îî %
)
îî% &
;
îî& '
}
ïï 
sb
ññ 
.
ññ 
Append
ññ 
(
ññ 
$str
ññ ,
)
ññ, -
;
ññ- .
await
óó 
context
óó 
.
óó 
Response
óó &
.
óó& '

WriteAsync
óó' 1
(
óó1 2
sb
óó2 4
.
óó4 5
ToString
óó5 =
(
óó= >
)
óó> ?
)
óó? @
;
óó@ A
}
òò 
)
òò 
)
òò 
;
òò 
}
ôô 	
}
öö 
}õõ ◊S
_C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Services\CatalogService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
{ 
public 

class 
CatalogService 
:  !
ICatalogService" 1
{ 
private 
readonly 
ILogger  
<  !
CatalogService! /
>/ 0
_logger1 8
;8 9
private 
readonly 
IRepository $
<$ %
CatalogItem% 0
>0 1
_itemRepository2 A
;A B
private 
readonly 
IAsyncRepository )
<) *
CatalogBrand* 6
>6 7
_brandRepository8 H
;H I
private 
readonly 
IAsyncRepository )
<) *
CatalogType* 5
>5 6
_typeRepository7 F
;F G
private 
readonly 
IUriComposer %
_uriComposer& 2
;2 3
public 
CatalogService 
( 
ILoggerFactory 
loggerFactory (
,( )
IRepository 
< 
CatalogItem #
># $
itemRepository% 3
,3 4
IAsyncRepository 
< 
CatalogBrand )
>) *
brandRepository+ :
,: ;
IAsyncRepository 
< 
CatalogType (
>( )
typeRepository* 8
,8 9
IUriComposer 
uriComposer $
)$ %
{   	
_logger!! 
=!! 
loggerFactory!! #
.!!# $
CreateLogger!!$ 0
<!!0 1
CatalogService!!1 ?
>!!? @
(!!@ A
)!!A B
;!!B C
_itemRepository"" 
="" 
itemRepository"" ,
;"", -
_brandRepository## 
=## 
brandRepository## .
;##. /
_typeRepository$$ 
=$$ 
typeRepository$$ ,
;$$, -
_uriComposer%% 
=%% 
uriComposer%% &
;%%& '
}&& 	
public(( 
async(( 
Task(( 
<(( !
CatalogIndexViewModel(( /
>((/ 0
GetCatalogItems((1 @
(((@ A
int((A D
	pageIndex((E N
,((N O
int((P S
	itemsPage((T ]
,((] ^
int((_ b
?((b c
brandId((d k
,((k l
int((m p
?((p q
typeId((r x
)((x y
{)) 	
_logger** 
.** 
LogInformation** "
(**" #
$str**# <
)**< =
;**= >
var,, 
filterSpecification,, #
=,,$ %
new,,& )&
CatalogFilterSpecification,,* D
(,,D E
brandId,,E L
,,,L M
typeId,,N T
),,T U
;,,U V
var-- 
root-- 
=-- 
_itemRepository-- &
.--& '
List--' +
(--+ ,
filterSpecification--, ?
)--? @
;--@ A
var// 

totalItems// 
=// 
root// !
.//! "
Count//" '
(//' (
)//( )
;//) *
var11 
itemsOnPage11 
=11 
root11 "
.22 
Skip22 
(22 
	itemsPage22 
*22  !
	pageIndex22" +
)22+ ,
.33 
Take33 
(33 
	itemsPage33 
)33  
.44 
ToList44 
(44 
)44 
;44 
itemsOnPage66 
.66 
ForEach66 
(66  
x66  !
=>66" $
{77 
x88 
.88 

PictureUri88 
=88 
_uriComposer88 +
.88+ ,
ComposePicUri88, 9
(889 :
x88: ;
.88; <

PictureUri88< F
)88F G
;88G H
}99 
)99 
;99 
var;; 
vm;; 
=;; 
new;; !
CatalogIndexViewModel;; .
(;;. /
);;/ 0
{<< 
CatalogItems== 
=== 
itemsOnPage== *
.==* +
Select==+ 1
(==1 2
i==2 3
=>==4 6
new==7 : 
CatalogItemViewModel==; O
(==O P
)==P Q
{>> 
Id?? 
=?? 
i?? 
.?? 
Id?? 
,?? 
Name@@ 
=@@ 
i@@ 
.@@ 
Name@@ !
,@@! "

PictureUriAA 
=AA  
iAA! "
.AA" #

PictureUriAA# -
,AA- .
PriceBB 
=BB 
iBB 
.BB 
PriceBB #
}CC 
)CC 
,CC 
BrandsDD 
=DD 
awaitDD 
	GetBrandsDD (
(DD( )
)DD) *
,DD* +
TypesEE 
=EE 
awaitEE 
GetTypesEE &
(EE& '
)EE' (
,EE( )
BrandFilterAppliedFF "
=FF# $
brandIdFF% ,
??FF- /
$numFF0 1
,FF1 2
TypesFilterAppliedGG "
=GG# $
typeIdGG% +
??GG, .
$numGG/ 0
,GG0 1
PaginationInfoHH 
=HH  
newHH! $#
PaginationInfoViewModelHH% <
(HH< =
)HH= >
{II 

ActualPageJJ 
=JJ  
	pageIndexJJ! *
,JJ* +
ItemsPerPageKK  
=KK! "
itemsOnPageKK# .
.KK. /
CountKK/ 4
,KK4 5

TotalItemsLL 
=LL  

totalItemsLL! +
,LL+ ,

TotalPagesMM 
=MM  
intMM! $
.MM$ %
ParseMM% *
(MM* +
MathMM+ /
.MM/ 0
CeilingMM0 7
(MM7 8
(MM8 9
(MM9 :
decimalMM: A
)MMA B

totalItemsMMB L
/MMM N
	itemsPageMMO X
)MMX Y
)MMY Z
.MMZ [
ToStringMM[ c
(MMc d
)MMd e
)MMe f
}NN 
}OO 
;OO 
vmQQ 
.QQ 
PaginationInfoQQ 
.QQ 
NextQQ "
=QQ# $
(QQ% &
vmQQ& (
.QQ( )
PaginationInfoQQ) 7
.QQ7 8

ActualPageQQ8 B
==QQC E
vmQQF H
.QQH I
PaginationInfoQQI W
.QQW X

TotalPagesQQX b
-QQc d
$numQQe f
)QQf g
?QQh i
$strQQj w
:QQx y
$strQQz |
;QQ| }
vmRR 
.RR 
PaginationInfoRR 
.RR 
PreviousRR &
=RR' (
(RR) *
vmRR* ,
.RR, -
PaginationInfoRR- ;
.RR; <

ActualPageRR< F
==RRG I
$numRRJ K
)RRK L
?RRM N
$strRRO \
:RR] ^
$strRR_ a
;RRa b
returnTT 
vmTT 
;TT 
}UU 	
publicWW 
asyncWW 
TaskWW 
<WW 
IEnumerableWW %
<WW% &
SelectListItemWW& 4
>WW4 5
>WW5 6
	GetBrandsWW7 @
(WW@ A
)WWA B
{XX 	
_loggerYY 
.YY 
LogInformationYY "
(YY" #
$strYY# 6
)YY6 7
;YY7 8
varZZ 
brandsZZ 
=ZZ 
awaitZZ 
_brandRepositoryZZ /
.ZZ/ 0
ListAllAsyncZZ0 <
(ZZ< =
)ZZ= >
;ZZ> ?
var\\ 
items\\ 
=\\ 
new\\ 
List\\  
<\\  !
SelectListItem\\! /
>\\/ 0
{]] 
new^^ 
SelectListItem^^ "
(^^" #
)^^# $
{^^% &
Value^^' ,
=^^- .
null^^/ 3
,^^3 4
Text^^5 9
=^^: ;
$str^^< A
,^^A B
Selected^^C K
=^^L M
true^^N R
}^^S T
}__ 
;__ 
foreach`` 
(`` 
CatalogBrand`` !
brand``" '
in``( *
brands``+ 1
)``1 2
{aa 
itemsbb 
.bb 
Addbb 
(bb 
newbb 
SelectListItembb ,
(bb, -
)bb- .
{bb/ 0
Valuebb1 6
=bb7 8
brandbb9 >
.bb> ?
Idbb? A
.bbA B
ToStringbbB J
(bbJ K
)bbK L
,bbL M
TextbbN R
=bbS T
brandbbU Z
.bbZ [
Brandbb[ `
}bba b
)bbb c
;bbc d
}cc 
returnee 
itemsee 
;ee 
}ff 	
publichh 
asynchh 
Taskhh 
<hh 
IEnumerablehh %
<hh% &
SelectListItemhh& 4
>hh4 5
>hh5 6
GetTypeshh7 ?
(hh? @
)hh@ A
{ii 	
_loggerjj 
.jj 
LogInformationjj "
(jj" #
$strjj# 5
)jj5 6
;jj6 7
varkk 
typeskk 
=kk 
awaitkk 
_typeRepositorykk -
.kk- .
ListAllAsynckk. :
(kk: ;
)kk; <
;kk< =
varll 
itemsll 
=ll 
newll 
Listll  
<ll  !
SelectListItemll! /
>ll/ 0
{mm 
newnn 
SelectListItemnn "
(nn" #
)nn# $
{nn% &
Valuenn' ,
=nn- .
nullnn/ 3
,nn3 4
Textnn5 9
=nn: ;
$strnn< A
,nnA B
SelectednnC K
=nnL M
truennN R
}nnS T
}oo 
;oo 
foreachpp 
(pp 
CatalogTypepp  
typepp! %
inpp& (
typespp) .
)pp. /
{qq 
itemsrr 
.rr 
Addrr 
(rr 
newrr 
SelectListItemrr ,
(rr, -
)rr- .
{rr/ 0
Valuerr1 6
=rr7 8
typerr9 =
.rr= >
Idrr> @
.rr@ A
ToStringrrA I
(rrI J
)rrJ K
,rrK L
TextrrM Q
=rrR S
typerrT X
.rrX Y
TyperrY ]
}rr^ _
)rr_ `
;rr` a
}ss 
returnuu 
itemsuu 
;uu 
}vv 	
}ww 
}xx ‰%
eC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Services\CachedCatalogService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
{		 
public

 

class

  
CachedCatalogService

 %
:

& '
ICatalogService

( 7
{ 
private 
readonly 
IMemoryCache %
_cache& ,
;, -
private 
readonly 
CatalogService '
_catalogService( 7
;7 8
private 
static 
readonly 
string  &

_brandsKey' 1
=2 3
$str4 <
;< =
private 
static 
readonly 
string  &
	_typesKey' 0
=1 2
$str3 :
;: ;
private 
static 
readonly 
string  &
_itemsKeyTemplate' 8
=9 :
$str; R
;R S
private 
static 
readonly 
TimeSpan  (!
_defaultCacheDuration) >
=? @
TimeSpanA I
.I J
FromSecondsJ U
(U V
$numV X
)X Y
;Y Z
public  
CachedCatalogService #
(# $
IMemoryCache$ 0
cache1 6
,6 7
CatalogService 
catalogService )
)) *
{ 	
_cache 
= 
cache 
; 
_catalogService 
= 
catalogService ,
;, -
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
SelectListItem& 4
>4 5
>5 6
	GetBrands7 @
(@ A
)A B
{ 	
return 
await 
_cache 
.  
GetOrCreateAsync  0
(0 1

_brandsKey1 ;
,; <
async= B
entryC H
=>I K
{ 
entry 
. 
SlidingExpiration /
=0 1!
_defaultCacheDuration2 G
;G H
return 
await $
_catalogService% 4
.4 5
	GetBrands5 >
(> ?
)? @
;@ A
}   
)   
;   
}!! 	
public## 
async## 
Task## 
<## !
CatalogIndexViewModel## /
>##/ 0
GetCatalogItems##1 @
(##@ A
int##A D
	pageIndex##E N
,##N O
int##P S
	itemsPage##T ]
,##] ^
int##_ b
?##b c
brandId##d k
,##k l
int##m p
?##p q
typeId##r x
)##x y
{$$ 	
string%% 
cacheKey%% 
=%% 
String%% $
.%%$ %
Format%%% +
(%%+ ,
_itemsKeyTemplate%%, =
,%%= >
	pageIndex%%? H
,%%H I
	itemsPage%%J S
,%%S T
brandId%%U \
,%%\ ]
typeId%%^ d
)%%d e
;%%e f
return&& 
await&& 
_cache&& 
.&&  
GetOrCreateAsync&&  0
(&&0 1
cacheKey&&1 9
,&&9 :
async&&; @
entry&&A F
=>&&G I
{'' 
entry(( 
.(( 
SlidingExpiration(( '
=((( )!
_defaultCacheDuration((* ?
;((? @
return)) 
await)) 
_catalogService)) ,
.)), -
GetCatalogItems))- <
())< =
	pageIndex))= F
,))F G
	itemsPage))H Q
,))Q R
brandId))S Z
,))Z [
typeId))\ b
)))b c
;))c d
}** 
)** 
;** 
}++ 	
public-- 
async-- 
Task-- 
<-- 
IEnumerable-- %
<--% &
SelectListItem--& 4
>--4 5
>--5 6
GetTypes--7 ?
(--? @
)--@ A
{.. 	
return// 
await// 
_cache// 
.//  
GetOrCreateAsync//  0
(//0 1
	_typesKey//1 :
,//: ;
async//< A
entry//B G
=>//H J
{00 
entry11 
.11 
SlidingExpiration11 '
=11( )!
_defaultCacheDuration11* ?
;11? @
return22 
await22 
_catalogService22 ,
.22, -
GetTypes22- 5
(225 6
)226 7
;227 8
}33 
)33 
;33 
}44 	
}55 
}66 ¬/
gC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Services\BasketViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
{ 
public 

class "
BasketViewModelService '
:( )#
IBasketViewModelService* A
{ 
private 
readonly 
IAsyncRepository )
<) *
Basket* 0
>0 1
_basketRepository2 C
;C D
private 
readonly 
IUriComposer %
_uriComposer& 2
;2 3
private 
readonly 
IRepository $
<$ %
CatalogItem% 0
>0 1
_itemRepository2 A
;A B
public "
BasketViewModelService %
(% &
IAsyncRepository& 6
<6 7
Basket7 =
>= >
basketRepository? O
,O P
IRepository 
< 
CatalogItem #
># $
itemRepository% 3
,3 4
IUriComposer 
uriComposer $
)$ %
{ 	
_basketRepository 
= 
basketRepository  0
;0 1
_uriComposer 
= 
uriComposer &
;& '
_itemRepository 
= 
itemRepository ,
;, -
} 	
public 
async 
Task 
< 
BasketViewModel )
>) *$
GetOrCreateBasketForUser+ C
(C D
stringD J
userNameK S
)S T
{ 	
var 

basketSpec 
= 
new  (
BasketWithItemsSpecification! =
(= >
userName> F
)F G
;G H
var 
basket 
= 
( 
await 
_basketRepository  1
.1 2
	ListAsync2 ;
(; <

basketSpec< F
)F G
)G H
.H I
FirstOrDefaultI W
(W X
)X Y
;Y Z
if!! 
(!! 
basket!! 
==!! 
null!! 
)!! 
{"" 
return## 
await## 
CreateBasketForUser## 0
(##0 1
userName##1 9
)##9 :
;##: ;
}$$ 
return%% %
CreateViewModelFromBasket%% ,
(%%, -
basket%%- 3
)%%3 4
;%%4 5
}&& 	
private(( 
BasketViewModel(( %
CreateViewModelFromBasket((  9
(((9 :
Basket((: @
basket((A G
)((G H
{)) 	
var** 
	viewModel** 
=** 
new** 
BasketViewModel**  /
(**/ 0
)**0 1
;**1 2
	viewModel++ 
.++ 
Id++ 
=++ 
basket++ !
.++! "
Id++" $
;++$ %
	viewModel,, 
.,, 
BuyerId,, 
=,, 
basket,,  &
.,,& '
BuyerId,,' .
;,,. /
	viewModel-- 
.-- 
Items-- 
=-- 
basket-- $
.--$ %
Items--% *
.--* +
Select--+ 1
(--1 2
i--2 3
=>--4 6
{.. 
var// 
	itemModel// 
=// 
new//  #
BasketItemViewModel//$ 7
(//7 8
)//8 9
{00 
Id11 
=11 
i11 
.11 
Id11 
,11 
	UnitPrice22 
=22 
i22  !
.22! "
	UnitPrice22" +
,22+ ,
Quantity33 
=33 
i33  
.33  !
Quantity33! )
,33) *
CatalogItemId44 !
=44" #
i44$ %
.44% &
CatalogItemId44& 3
}66 
;66 
var77 
item77 
=77 
_itemRepository77 *
.77* +
GetById77+ 2
(772 3
i773 4
.774 5
CatalogItemId775 B
)77B C
;77C D
	itemModel88 
.88 

PictureUrl88 $
=88% &
_uriComposer88' 3
.883 4
ComposePicUri884 A
(88A B
item88B F
.88F G

PictureUri88G Q
)88Q R
;88R S
	itemModel99 
.99 
ProductName99 %
=99& '
item99( ,
.99, -
Name99- 1
;991 2
return:: 
	itemModel::  
;::  !
};; 
);; 
.<< 
ToList<< #
(<<# $
)<<$ %
;<<% &
return== 
	viewModel== 
;== 
}>> 	
private@@ 
async@@ 
Task@@ 
<@@ 
BasketViewModel@@ *
>@@* +
CreateBasketForUser@@, ?
(@@? @
string@@@ F
userId@@G M
)@@M N
{AA 	
varBB 
basketBB 
=BB 
newBB 
BasketBB #
(BB# $
)BB$ %
{BB& '
BuyerIdBB( /
=BB0 1
userIdBB2 8
}BB9 :
;BB: ;
awaitCC 
_basketRepositoryCC #
.CC# $
AddAsyncCC$ ,
(CC, -
basketCC- 3
)CC3 4
;CC4 5
returnEE 
newEE 
BasketViewModelEE &
(EE& '
)EE' (
{FF 
BuyerIdGG 
=GG 
basketGG  
.GG  !
BuyerIdGG! (
,GG( )
IdHH 
=HH 
basketHH 
.HH 
IdHH 
,HH 
ItemsII 
=II 
newII 
ListII  
<II  !
BasketItemViewModelII! 4
>II4 5
(II5 6
)II6 7
}JJ 
;JJ 
}KK 	
}LL 
}MM ™
OC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Program.cs
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
 
Web

  
{ 
public 

class 
Program 
{ 
public 
static 
void 
Main 
(  
string  &
[& '
]' (
args) -
)- .
{ 	
var 
host 
=  
CreateWebHostBuilder +
(+ ,
args, 0
)0 1
. 
Build 
( 
)  
;  !
using 
( 
var 
scope 
= 
host #
.# $
Services$ ,
., -
CreateScope- 8
(8 9
)9 :
): ;
{ 
var 
services 
= 
scope $
.$ %
ServiceProvider% 4
;4 5
var 
loggerFactory !
=" #
services$ ,
., -
GetRequiredService- ?
<? @
ILoggerFactory@ N
>N O
(O P
)P Q
;Q R
try 
{ 
var 
catalogContext &
=' (
services) 1
.1 2
GetRequiredService2 D
<D E
CatalogContextE S
>S T
(T U
)U V
;V W
CatalogContextSeed &
.& '
	SeedAsync' 0
(0 1
catalogContext1 ?
,? @
loggerFactoryA N
)N O
. 
Wait 
( 
) 
; 
var 
userManager #
=$ %
services& .
.. /
GetRequiredService/ A
<A B
UserManagerB M
<M N
ApplicationUserN ]
>] ^
>^ _
(_ `
)` a
;a b$
AppIdentityDbContextSeed ,
., -
	SeedAsync- 6
(6 7
userManager7 B
)B C
.C D
WaitD H
(H I
)I J
;J K
} 
catch   
(   
	Exception    
ex  ! #
)  # $
{!! 
var"" 
logger"" 
=""  
loggerFactory""! .
."". /
CreateLogger""/ ;
<""; <
Program""< C
>""C D
(""D E
)""E F
;""F G
logger## 
.## 
LogError## #
(### $
ex##$ &
,##& '
$str##( K
)##K L
;##L M
}$$ 
}%% 
host'' 
.'' 
Run'' 
('' 
)'' 
;'' 
}(( 	
public** 
static** 
IWebHostBuilder** % 
CreateWebHostBuilder**& :
(**: ;
string**; A
[**A B
]**B C
args**D H
)**H I
=>**J L
WebHost++ 
.++  
CreateDefaultBuilder++ (
(++( )
args++) -
)++- .
.,, 
UseUrls,, 
(,, 
$str,, .
),,. /
.-- 

UseStartup-- 
<-- 
Startup-- #
>--# $
(--$ %
)--% &
;--& '
}.. 
}// ä	
bC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Interfaces\ICatalogService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
{ 
public 

	interface 
ICatalogService $
{		 
Task

 
<

 !
CatalogIndexViewModel

 "
>

" #
GetCatalogItems

$ 3
(

3 4
int

4 7
	pageIndex

8 A
,

A B
int

C F
	itemsPage

G P
,

P Q
int

R U
?

U V
brandId

W ^
,

^ _
int

` c
?

c d
typeId

e k
)

k l
;

l m
Task 
< 
IEnumerable 
< 
SelectListItem '
>' (
>( )
	GetBrands* 3
(3 4
)4 5
;5 6
Task 
< 
IEnumerable 
< 
SelectListItem '
>' (
>( )
GetTypes* 2
(2 3
)3 4
;4 5
} 
} Õ
aC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Interfaces\IBasketService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !

Interfaces! +
{ 
public 

	interface #
IBasketViewModelService ,
{ 
Task 
< 
BasketViewModel 
> $
GetOrCreateBasketForUser 6
(6 7
string7 =
userName> F
)F G
;G H
}		 
}

 Ó
fC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Extensions\UrlHelperExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
{ 
public 

static 
class 
UrlHelperExtensions +
{ 
public 
static 
string !
EmailConfirmationLink 2
(2 3
this3 7

IUrlHelper8 B
	urlHelperC L
,L M
stringN T
userIdU [
,[ \
string] c
coded h
,h i
stringj p
schemeq w
)w x
{ 	
return		 
	urlHelper		 
.		 
Action		 #
(		# $
action

 
:

 
nameof

 
(

 
AccountController

 0
.

0 1
ConfirmEmail

1 =
)

= >
,

> ?

controller 
: 
$str %
,% &
values 
: 
new 
{ 
userId $
,$ %
code& *
}+ ,
,, -
protocol 
: 
scheme  
)  !
;! "
} 	
public 
static 
string %
ResetPasswordCallbackLink 6
(6 7
this7 ;

IUrlHelper< F
	urlHelperG P
,P Q
stringR X
userIdY _
,_ `
stringa g
codeh l
,l m
stringn t
schemeu {
){ |
{ 	
return 
	urlHelper 
. 
Action #
(# $
action 
: 
nameof 
( 
AccountController 0
.0 1
ResetPassword1 >
)> ?
,? @

controller 
: 
$str %
,% &
values 
: 
new 
{ 
userId $
,$ %
code& *
}+ ,
,, -
protocol 
: 
scheme  
)  !
;! "
} 	
} 
} ù	
hC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Extensions\EmailSenderExtensions.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Services! )
{ 
public 

static 
class !
EmailSenderExtensions -
{ 
public		 
static		 
Task		 &
SendEmailConfirmationAsync		 5
(		5 6
this		6 :
IEmailSender		; G
emailSender		H S
,		S T
string		U [
email		\ a
,		a b
string		c i
link		j n
)		n o
{

 	
return 
emailSender 
. 
SendEmailAsync -
(- .
email. 3
,3 4
$str5 I
,I J
$" 
$str N
{N O
HtmlEncoderO Z
.Z [
Default[ b
.b c
Encodec i
(i j
linkj n
)n o
}o p
$strp z
"z {
){ |
;| }
} 	
} 
} È3
cC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Controllers\OrderController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str "
)" #
]# $
public 

class 
OrderController  
:! "

Controller# -
{ 
private 
readonly 
IOrderRepository )
_orderRepository* :
;: ;
public 
OrderController 
( 
IOrderRepository /
orderRepository0 ?
)? @
{A B
_orderRepository 
= 
orderRepository .
;. /
} 	
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
)/ 0
{ 	
var 
orders 
= 
await 
_orderRepository /
./ 0
	ListAsync0 9
(9 :
new: =0
$CustomerOrdersWithItemsSpecification> b
(b c
Userc g
.g h
Identityh p
.p q
Nameq u
)u v
)v w
;w x
var 
	viewModel 
= 
orders "
. 
Select 
( 
o 
=> 
new  
OrderViewModel! /
(/ 0
)0 1
{ 
	OrderDate 
= 
o  !
.! "
	OrderDate" +
,+ ,

OrderItems 
=  
o! "
." #

OrderItems# -
?- .
.. /
Select/ 5
(5 6
oi6 8
=>9 ;
new< ?
OrderItemViewModel@ R
(R S
)S T
{   
Discount!!  
=!!! "
$num!!# $
,!!$ %

PictureUrl"" "
=""# $
oi""% '
.""' (
ItemOrdered""( 3
.""3 4

PictureUri""4 >
,""> ?
	ProductId## !
=##" #
oi##$ &
.##& '
ItemOrdered##' 2
.##2 3
CatalogItemId##3 @
,##@ A
ProductName$$ #
=$$$ %
oi$$& (
.$$( )
ItemOrdered$$) 4
.$$4 5
ProductName$$5 @
,$$@ A
	UnitPrice%% !
=%%" #
oi%%$ &
.%%& '
	UnitPrice%%' 0
,%%0 1
Units&& 
=&& 
oi&&  "
.&&" #
Units&&# (
}'' 
)'' 
.'' 
ToList'' 
('' 
)'' 
,''  
OrderNumber(( 
=((  !
o((" #
.((# $
Id(($ &
,((& '
ShippingAddress)) #
=))$ %
o))& '
.))' (
ShipToAddress))( 5
,))5 6
Status** 
=** 
$str** &
,**& '
Total++ 
=++ 
o++ 
.++ 
Total++ #
(++# $
)++$ %
}-- 
)-- 
;-- 
return.. 
View.. 
(.. 
	viewModel.. !
)..! "
;.." #
}// 	
[11 	
HttpGet11	 
(11 
$str11 
)11 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Detail22) /
(22/ 0
int220 3
orderId224 ;
)22; <
{33 	
var44 
customerOrders44 
=44  
await44! &
_orderRepository44' 7
.447 8
	ListAsync448 A
(44A B
new44B E0
$CustomerOrdersWithItemsSpecification44F j
(44j k
User44k o
.44o p
Identity44p x
.44x y
Name44y }
)44} ~
)44~ 
;	44 Ä
var55 
order55 
=55 
customerOrders55 &
.55& '
FirstOrDefault55' 5
(555 6
o556 7
=>558 :
o55; <
.55< =
Id55= ?
==55@ B
orderId55C J
)55J K
;55K L
if66 
(66 
order66 
==66 
null66 
)66 
{77 
return88 

BadRequest88 !
(88! "
$str88" F
)88F G
;88G H
}99 
var:: 
	viewModel:: 
=:: 
new:: 
OrderViewModel::  .
(::. /
)::/ 0
{;; 
	OrderDate<< 
=<< 
order<< !
.<<! "
	OrderDate<<" +
,<<+ ,

OrderItems== 
=== 
order== "
.==" #

OrderItems==# -
.==- .
Select==. 4
(==4 5
oi==5 7
=>==8 :
new==; >
OrderItemViewModel==? Q
(==Q R
)==R S
{>> 
Discount?? 
=?? 
$num??  
,??  !

PictureUrl@@ 
=@@  
oi@@! #
.@@# $
ItemOrdered@@$ /
.@@/ 0

PictureUri@@0 :
,@@: ;
	ProductIdAA 
=AA 
oiAA  "
.AA" #
ItemOrderedAA# .
.AA. /
CatalogItemIdAA/ <
,AA< =
ProductNameBB 
=BB  !
oiBB" $
.BB$ %
ItemOrderedBB% 0
.BB0 1
ProductNameBB1 <
,BB< =
	UnitPriceCC 
=CC 
oiCC  "
.CC" #
	UnitPriceCC# ,
,CC, -
UnitsDD 
=DD 
oiDD 
.DD 
UnitsDD $
}EE 
)EE 
.EE 
ToListEE 
(EE 
)EE 
,EE 
OrderNumberFF 
=FF 
orderFF #
.FF# $
IdFF$ &
,FF& '
ShippingAddressGG 
=GG  !
orderGG" '
.GG' (
ShipToAddressGG( 5
,GG5 6
StatusHH 
=HH 
$strHH "
,HH" #
TotalII 
=II 
orderII 
.II 
TotalII #
(II# $
)II$ %
}JJ 
;JJ 
returnKK 
ViewKK 
(KK 
	viewModelKK !
)KK! "
;KK" #
}LL 	
}MM 
}NN ±ˇ
dC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Controllers\ManageController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str "
)" #
]# $
public 

class 
ManageController !
:" #

Controller$ .
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
private 
readonly 

IAppLogger #
<# $
ManageController$ 4
>4 5
_logger6 =
;= >
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string !
AuthenicatorUriFormat 2
=3 4
$str5 l
;l m
public 
ManageController 
(  
UserManager
 
< 
ApplicationUser %
>% &
userManager' 2
,2 3
SignInManager
 
< 
ApplicationUser '
>' (
signInManager) 6
,6 7
IEmailSender  
 
emailSender   "
,  " #

IAppLogger!!
 
<!! 
ManageController!! %
>!!% &
logger!!' -
,!!- .

UrlEncoder""
 

urlEncoder"" 
)""  
{## 	
_userManager$$ 
=$$ 
userManager$$ &
;$$& '
_signInManager%% 
=%% 
signInManager%% *
;%%* +
_emailSender&& 
=&& 
emailSender&& &
;&&& '
_logger'' 
='' 
logger'' 
;'' 
_urlEncoder(( 
=(( 

urlEncoder(( $
;(($ %
})) 	
[++ 	
TempData++	 
]++ 
public,, 
string,, 
StatusMessage,, #
{,,$ %
get,,& )
;,,) *
set,,+ .
;,,. /
},,0 1
[.. 	
HttpGet..	 
].. 
public// 
async// 
Task// 
<// 
IActionResult// '
>//' (
Index//) .
(//. /
)/// 0
{00 	
var11 
user11 
=11 
await11 
_userManager11 )
.11) *
GetUserAsync11* 6
(116 7
User117 ;
)11; <
;11< =
if22 
(22 
user22 
==22 
null22 
)22 
{33 
throw44 
new44  
ApplicationException44 .
(44. /
$"44/ 1
$str441 N
{44N O
_userManager44O [
.44[ \
	GetUserId44\ e
(44e f
User44f j
)44j k
}44k l
$str44l n
"44n o
)44o p
;44p q
}55 
var77 
model77 
=77 
new77 
IndexViewModel77 *
{88 
Username99 
=99 
user99 
.99  
UserName99  (
,99( )
Email:: 
=:: 
user:: 
.:: 
Email:: "
,::" #
PhoneNumber;; 
=;; 
user;; "
.;;" #
PhoneNumber;;# .
,;;. /
IsEmailConfirmed<<  
=<<! "
user<<# '
.<<' (
EmailConfirmed<<( 6
,<<6 7
StatusMessage== 
=== 
StatusMessage==  -
}>> 
;>> 
return@@ 
View@@ 
(@@ 
model@@ 
)@@ 
;@@ 
}AA 	
[CC 	
HttpPostCC	 
]CC 
[DD 	$
ValidateAntiForgeryTokenDD	 !
]DD! "
publicEE 
asyncEE 
TaskEE 
<EE 
IActionResultEE '
>EE' (
IndexEE) .
(EE. /
IndexViewModelEE/ =
modelEE> C
)EEC D
{FF 	
ifGG 
(GG 
!GG 

ModelStateGG 
.GG 
IsValidGG #
)GG# $
{HH 
returnII 
ViewII 
(II 
modelII !
)II! "
;II" #
}JJ 
varLL 
userLL 
=LL 
awaitLL 
_userManagerLL )
.LL) *
GetUserAsyncLL* 6
(LL6 7
UserLL7 ;
)LL; <
;LL< =
ifMM 
(MM 
userMM 
==MM 
nullMM 
)MM 
{NN 
throwOO 
newOO  
ApplicationExceptionOO .
(OO. /
$"OO/ 1
$strOO1 N
{OON O
_userManagerOOO [
.OO[ \
	GetUserIdOO\ e
(OOe f
UserOOf j
)OOj k
}OOk l
$strOOl n
"OOn o
)OOo p
;OOp q
}PP 
varRR 
emailRR 
=RR 
userRR 
.RR 
EmailRR "
;RR" #
ifSS 
(SS 
modelSS 
.SS 
EmailSS 
!=SS 
emailSS $
)SS$ %
{TT 
varUU 
setEmailResultUU "
=UU# $
awaitUU% *
_userManagerUU+ 7
.UU7 8
SetEmailAsyncUU8 E
(UUE F
userUUF J
,UUJ K
modelUUL Q
.UUQ R
EmailUUR W
)UUW X
;UUX Y
ifVV 
(VV 
!VV 
setEmailResultVV #
.VV# $
	SucceededVV$ -
)VV- .
{WW 
throwXX 
newXX  
ApplicationExceptionXX 2
(XX2 3
$"XX3 5
$strXX5 o
{XXo p
userXXp t
.XXt u
IdXXu w
}XXw x
$strXXx z
"XXz {
)XX{ |
;XX| }
}YY 
}ZZ 
var\\ 
phoneNumber\\ 
=\\ 
user\\ "
.\\" #
PhoneNumber\\# .
;\\. /
if]] 
(]] 
model]] 
.]] 
PhoneNumber]] !
!=]]" $
phoneNumber]]% 0
)]]0 1
{^^ 
var__ 
setPhoneResult__ "
=__# $
await__% *
_userManager__+ 7
.__7 8
SetPhoneNumberAsync__8 K
(__K L
user__L P
,__P Q
model__R W
.__W X
PhoneNumber__X c
)__c d
;__d e
if`` 
(`` 
!`` 
setPhoneResult`` #
.``# $
	Succeeded``$ -
)``- .
{aa 
throwbb 
newbb  
ApplicationExceptionbb 2
(bb2 3
$"bb3 5
$strbb5 v
{bbv w
userbbw {
.bb{ |
Idbb| ~
}bb~ 
$str	bb Å
"
bbÅ Ç
)
bbÇ É
;
bbÉ Ñ
}cc 
}dd 
StatusMessageff 
=ff 
$strff ;
;ff; <
returngg 
RedirectToActiongg #
(gg# $
nameofgg$ *
(gg* +
Indexgg+ 0
)gg0 1
)gg1 2
;gg2 3
}hh 	
[jj 	
HttpPostjj	 
]jj 
[kk 	$
ValidateAntiForgeryTokenkk	 !
]kk! "
publicll 
asyncll 
Taskll 
<ll 
IActionResultll '
>ll' (!
SendVerificationEmailll) >
(ll> ?
IndexViewModelll? M
modelllN S
)llS T
{mm 	
ifnn 
(nn 
!nn 

ModelStatenn 
.nn 
IsValidnn #
)nn# $
{oo 
returnpp 
Viewpp 
(pp 
modelpp !
)pp! "
;pp" #
}qq 
varss 
userss 
=ss 
awaitss 
_userManagerss )
.ss) *
GetUserAsyncss* 6
(ss6 7
Userss7 ;
)ss; <
;ss< =
iftt 
(tt 
usertt 
==tt 
nulltt 
)tt 
{uu 
throwvv 
newvv  
ApplicationExceptionvv .
(vv. /
$"vv/ 1
$strvv1 N
{vvN O
_userManagervvO [
.vv[ \
	GetUserIdvv\ e
(vve f
Uservvf j
)vvj k
}vvk l
$strvvl n
"vvn o
)vvo p
;vvp q
}ww 
varyy 
codeyy 
=yy 
awaityy 
_userManageryy )
.yy) */
#GenerateEmailConfirmationTokenAsyncyy* M
(yyM N
useryyN R
)yyR S
;yyS T
varzz 
callbackUrlzz 
=zz 
Urlzz !
.zz! "!
EmailConfirmationLinkzz" 7
(zz7 8
userzz8 <
.zz< =
Idzz= ?
,zz? @
codezzA E
,zzE F
RequestzzG N
.zzN O
SchemezzO U
)zzU V
;zzV W
var{{ 
email{{ 
={{ 
user{{ 
.{{ 
Email{{ "
;{{" #
await|| 
_emailSender|| 
.|| &
SendEmailConfirmationAsync|| 9
(||9 :
email||: ?
,||? @
callbackUrl||A L
)||L M
;||M N
StatusMessage~~ 
=~~ 
$str~~ O
;~~O P
return 
RedirectToAction #
(# $
nameof$ *
(* +
Index+ 0
)0 1
)1 2
;2 3
}
ÄÄ 	
[
ÇÇ 	
HttpGet
ÇÇ	 
]
ÇÇ 
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
IActionResult
ÉÉ '
>
ÉÉ' (
ChangePassword
ÉÉ) 7
(
ÉÉ7 8
)
ÉÉ8 9
{
ÑÑ 	
var
ÖÖ 
user
ÖÖ 
=
ÖÖ 
await
ÖÖ 
_userManager
ÖÖ )
.
ÖÖ) *
GetUserAsync
ÖÖ* 6
(
ÖÖ6 7
User
ÖÖ7 ;
)
ÖÖ; <
;
ÖÖ< =
if
ÜÜ 
(
ÜÜ 
user
ÜÜ 
==
ÜÜ 
null
ÜÜ 
)
ÜÜ 
{
áá 
throw
àà 
new
àà "
ApplicationException
àà .
(
àà. /
$"
àà/ 1
$str
àà1 N
{
ààN O
_userManager
ààO [
.
àà[ \
	GetUserId
àà\ e
(
ààe f
User
ààf j
)
ààj k
}
ààk l
$str
ààl n
"
ààn o
)
àào p
;
ààp q
}
ââ 
var
ãã 
hasPassword
ãã 
=
ãã 
await
ãã #
_userManager
ãã$ 0
.
ãã0 1
HasPasswordAsync
ãã1 A
(
ããA B
user
ããB F
)
ããF G
;
ããG H
if
åå 
(
åå 
!
åå 
hasPassword
åå 
)
åå 
{
çç 
return
éé 
RedirectToAction
éé '
(
éé' (
nameof
éé( .
(
éé. /
SetPassword
éé/ :
)
éé: ;
)
éé; <
;
éé< =
}
èè 
var
ëë 
model
ëë 
=
ëë 
new
ëë %
ChangePasswordViewModel
ëë 3
{
ëë4 5
StatusMessage
ëë6 C
=
ëëD E
StatusMessage
ëëF S
}
ëëT U
;
ëëU V
return
íí 
View
íí 
(
íí 
model
íí 
)
íí 
;
íí 
}
ìì 	
[
ïï 	
HttpPost
ïï	 
]
ïï 
[
ññ 	&
ValidateAntiForgeryToken
ññ	 !
]
ññ! "
public
óó 
async
óó 
Task
óó 
<
óó 
IActionResult
óó '
>
óó' (
ChangePassword
óó) 7
(
óó7 8%
ChangePasswordViewModel
óó8 O
model
óóP U
)
óóU V
{
òò 	
if
ôô 
(
ôô 
!
ôô 

ModelState
ôô 
.
ôô 
IsValid
ôô #
)
ôô# $
{
öö 
return
õõ 
View
õõ 
(
õõ 
model
õõ !
)
õõ! "
;
õõ" #
}
úú 
var
ûû 
user
ûû 
=
ûû 
await
ûû 
_userManager
ûû )
.
ûû) *
GetUserAsync
ûû* 6
(
ûû6 7
User
ûû7 ;
)
ûû; <
;
ûû< =
if
üü 
(
üü 
user
üü 
==
üü 
null
üü 
)
üü 
{
†† 
throw
°° 
new
°° "
ApplicationException
°° .
(
°°. /
$"
°°/ 1
$str
°°1 N
{
°°N O
_userManager
°°O [
.
°°[ \
	GetUserId
°°\ e
(
°°e f
User
°°f j
)
°°j k
}
°°k l
$str
°°l n
"
°°n o
)
°°o p
;
°°p q
}
¢¢ 
var
§§ "
changePasswordResult
§§ $
=
§§% &
await
§§' ,
_userManager
§§- 9
.
§§9 :!
ChangePasswordAsync
§§: M
(
§§M N
user
§§N R
,
§§R S
model
§§T Y
.
§§Y Z
OldPassword
§§Z e
,
§§e f
model
§§g l
.
§§l m
NewPassword
§§m x
)
§§x y
;
§§y z
if
•• 
(
•• 
!
•• "
changePasswordResult
•• %
.
••% &
	Succeeded
••& /
)
••/ 0
{
¶¶ 
	AddErrors
ßß 
(
ßß "
changePasswordResult
ßß .
)
ßß. /
;
ßß/ 0
return
®® 
View
®® 
(
®® 
model
®® !
)
®®! "
;
®®" #
}
©© 
await
´´ 
_signInManager
´´  
.
´´  !
SignInAsync
´´! ,
(
´´, -
user
´´- 1
,
´´1 2
isPersistent
´´3 ?
:
´´? @
false
´´A F
)
´´F G
;
´´G H
_logger
¨¨ 
.
¨¨ 
LogInformation
¨¨ "
(
¨¨" #
$str
¨¨# N
)
¨¨N O
;
¨¨O P
StatusMessage
≠≠ 
=
≠≠ 
$str
≠≠ =
;
≠≠= >
return
ØØ 
RedirectToAction
ØØ #
(
ØØ# $
nameof
ØØ$ *
(
ØØ* +
ChangePassword
ØØ+ 9
)
ØØ9 :
)
ØØ: ;
;
ØØ; <
}
∞∞ 	
[
≤≤ 	
HttpGet
≤≤	 
]
≤≤ 
public
≥≥ 
async
≥≥ 
Task
≥≥ 
<
≥≥ 
IActionResult
≥≥ '
>
≥≥' (
SetPassword
≥≥) 4
(
≥≥4 5
)
≥≥5 6
{
¥¥ 	
var
µµ 
user
µµ 
=
µµ 
await
µµ 
_userManager
µµ )
.
µµ) *
GetUserAsync
µµ* 6
(
µµ6 7
User
µµ7 ;
)
µµ; <
;
µµ< =
if
∂∂ 
(
∂∂ 
user
∂∂ 
==
∂∂ 
null
∂∂ 
)
∂∂ 
{
∑∑ 
throw
∏∏ 
new
∏∏ "
ApplicationException
∏∏ .
(
∏∏. /
$"
∏∏/ 1
$str
∏∏1 N
{
∏∏N O
_userManager
∏∏O [
.
∏∏[ \
	GetUserId
∏∏\ e
(
∏∏e f
User
∏∏f j
)
∏∏j k
}
∏∏k l
$str
∏∏l n
"
∏∏n o
)
∏∏o p
;
∏∏p q
}
ππ 
var
ªª 
hasPassword
ªª 
=
ªª 
await
ªª #
_userManager
ªª$ 0
.
ªª0 1
HasPasswordAsync
ªª1 A
(
ªªA B
user
ªªB F
)
ªªF G
;
ªªG H
if
ΩΩ 
(
ΩΩ 
hasPassword
ΩΩ 
)
ΩΩ 
{
ææ 
return
øø 
RedirectToAction
øø '
(
øø' (
nameof
øø( .
(
øø. /
ChangePassword
øø/ =
)
øø= >
)
øø> ?
;
øø? @
}
¿¿ 
var
¬¬ 
model
¬¬ 
=
¬¬ 
new
¬¬ "
SetPasswordViewModel
¬¬ 0
{
¬¬1 2
StatusMessage
¬¬3 @
=
¬¬A B
StatusMessage
¬¬C P
}
¬¬Q R
;
¬¬R S
return
√√ 
View
√√ 
(
√√ 
model
√√ 
)
√√ 
;
√√ 
}
ƒƒ 	
[
∆∆ 	
HttpPost
∆∆	 
]
∆∆ 
[
«« 	&
ValidateAntiForgeryToken
««	 !
]
««! "
public
»» 
async
»» 
Task
»» 
<
»» 
IActionResult
»» '
>
»»' (
SetPassword
»») 4
(
»»4 5"
SetPasswordViewModel
»»5 I
model
»»J O
)
»»O P
{
…… 	
if
   
(
   
!
   

ModelState
   
.
   
IsValid
   #
)
  # $
{
ÀÀ 
return
ÃÃ 
View
ÃÃ 
(
ÃÃ 
model
ÃÃ !
)
ÃÃ! "
;
ÃÃ" #
}
ÕÕ 
var
œœ 
user
œœ 
=
œœ 
await
œœ 
_userManager
œœ )
.
œœ) *
GetUserAsync
œœ* 6
(
œœ6 7
User
œœ7 ;
)
œœ; <
;
œœ< =
if
–– 
(
–– 
user
–– 
==
–– 
null
–– 
)
–– 
{
—— 
throw
““ 
new
““ "
ApplicationException
““ .
(
““. /
$"
““/ 1
$str
““1 N
{
““N O
_userManager
““O [
.
““[ \
	GetUserId
““\ e
(
““e f
User
““f j
)
““j k
}
““k l
$str
““l n
"
““n o
)
““o p
;
““p q
}
”” 
var
’’ 
addPasswordResult
’’ !
=
’’" #
await
’’$ )
_userManager
’’* 6
.
’’6 7
AddPasswordAsync
’’7 G
(
’’G H
user
’’H L
,
’’L M
model
’’N S
.
’’S T
NewPassword
’’T _
)
’’_ `
;
’’` a
if
÷÷ 
(
÷÷ 
!
÷÷ 
addPasswordResult
÷÷ "
.
÷÷" #
	Succeeded
÷÷# ,
)
÷÷, -
{
◊◊ 
	AddErrors
ÿÿ 
(
ÿÿ 
addPasswordResult
ÿÿ +
)
ÿÿ+ ,
;
ÿÿ, -
return
ŸŸ 
View
ŸŸ 
(
ŸŸ 
model
ŸŸ !
)
ŸŸ! "
;
ŸŸ" #
}
⁄⁄ 
await
‹‹ 
_signInManager
‹‹  
.
‹‹  !
SignInAsync
‹‹! ,
(
‹‹, -
user
‹‹- 1
,
‹‹1 2
isPersistent
‹‹3 ?
:
‹‹? @
false
‹‹A F
)
‹‹F G
;
‹‹G H
StatusMessage
›› 
=
›› 
$str
›› 9
;
››9 :
return
ﬂﬂ 
RedirectToAction
ﬂﬂ #
(
ﬂﬂ# $
nameof
ﬂﬂ$ *
(
ﬂﬂ* +
SetPassword
ﬂﬂ+ 6
)
ﬂﬂ6 7
)
ﬂﬂ7 8
;
ﬂﬂ8 9
}
‡‡ 	
[
‚‚ 	
HttpGet
‚‚	 
]
‚‚ 
public
„„ 
async
„„ 
Task
„„ 
<
„„ 
IActionResult
„„ '
>
„„' (
ExternalLogins
„„) 7
(
„„7 8
)
„„8 9
{
‰‰ 	
var
ÂÂ 
user
ÂÂ 
=
ÂÂ 
await
ÂÂ 
_userManager
ÂÂ )
.
ÂÂ) *
GetUserAsync
ÂÂ* 6
(
ÂÂ6 7
User
ÂÂ7 ;
)
ÂÂ; <
;
ÂÂ< =
if
ÊÊ 
(
ÊÊ 
user
ÊÊ 
==
ÊÊ 
null
ÊÊ 
)
ÊÊ 
{
ÁÁ 
throw
ËË 
new
ËË "
ApplicationException
ËË .
(
ËË. /
$"
ËË/ 1
$str
ËË1 N
{
ËËN O
_userManager
ËËO [
.
ËË[ \
	GetUserId
ËË\ e
(
ËËe f
User
ËËf j
)
ËËj k
}
ËËk l
$str
ËËl n
"
ËËn o
)
ËËo p
;
ËËp q
}
ÈÈ 
var
ÎÎ 
model
ÎÎ 
=
ÎÎ 
new
ÎÎ %
ExternalLoginsViewModel
ÎÎ 3
{
ÎÎ4 5
CurrentLogins
ÎÎ6 C
=
ÎÎD E
await
ÎÎF K
_userManager
ÎÎL X
.
ÎÎX Y
GetLoginsAsync
ÎÎY g
(
ÎÎg h
user
ÎÎh l
)
ÎÎl m
}
ÎÎn o
;
ÎÎo p
model
ÏÏ 
.
ÏÏ 
OtherLogins
ÏÏ 
=
ÏÏ 
(
ÏÏ  !
await
ÏÏ! &
_signInManager
ÏÏ' 5
.
ÏÏ5 63
%GetExternalAuthenticationSchemesAsync
ÏÏ6 [
(
ÏÏ[ \
)
ÏÏ\ ]
)
ÏÏ] ^
.
ÌÌ 
Where
ÌÌ 
(
ÌÌ 
auth
ÌÌ 
=>
ÌÌ 
model
ÌÌ $
.
ÌÌ$ %
CurrentLogins
ÌÌ% 2
.
ÌÌ2 3
All
ÌÌ3 6
(
ÌÌ6 7
ul
ÌÌ7 9
=>
ÌÌ: <
auth
ÌÌ= A
.
ÌÌA B
Name
ÌÌB F
!=
ÌÌG I
ul
ÌÌJ L
.
ÌÌL M
LoginProvider
ÌÌM Z
)
ÌÌZ [
)
ÌÌ[ \
.
ÓÓ 
ToList
ÓÓ 
(
ÓÓ 
)
ÓÓ 
;
ÓÓ 
model
ÔÔ 
.
ÔÔ 
ShowRemoveButton
ÔÔ "
=
ÔÔ# $
await
ÔÔ% *
_userManager
ÔÔ+ 7
.
ÔÔ7 8
HasPasswordAsync
ÔÔ8 H
(
ÔÔH I
user
ÔÔI M
)
ÔÔM N
||
ÔÔO Q
model
ÔÔR W
.
ÔÔW X
CurrentLogins
ÔÔX e
.
ÔÔe f
Count
ÔÔf k
>
ÔÔl m
$num
ÔÔn o
;
ÔÔo p
model
 
.
 
StatusMessage
 
=
  !
StatusMessage
" /
;
/ 0
return
ÚÚ 
View
ÚÚ 
(
ÚÚ 
model
ÚÚ 
)
ÚÚ 
;
ÚÚ 
}
ÛÛ 	
[
ıı 	
HttpPost
ıı	 
]
ıı 
[
ˆˆ 	&
ValidateAntiForgeryToken
ˆˆ	 !
]
ˆˆ! "
public
˜˜ 
async
˜˜ 
Task
˜˜ 
<
˜˜ 
IActionResult
˜˜ '
>
˜˜' (
	LinkLogin
˜˜) 2
(
˜˜2 3
string
˜˜3 9
provider
˜˜: B
)
˜˜B C
{
¯¯ 	
await
˙˙ 
HttpContext
˙˙ 
.
˙˙ 
SignOutAsync
˙˙ *
(
˙˙* +
IdentityConstants
˙˙+ <
.
˙˙< =
ExternalScheme
˙˙= K
)
˙˙K L
;
˙˙L M
var
˝˝ 
redirectUrl
˝˝ 
=
˝˝ 
Url
˝˝ !
.
˝˝! "
Action
˝˝" (
(
˝˝( )
nameof
˝˝) /
(
˝˝/ 0
LinkLoginCallback
˝˝0 A
)
˝˝A B
)
˝˝B C
;
˝˝C D
var
˛˛ 

properties
˛˛ 
=
˛˛ 
_signInManager
˛˛ +
.
˛˛+ ,7
)ConfigureExternalAuthenticationProperties
˛˛, U
(
˛˛U V
provider
˛˛V ^
,
˛˛^ _
redirectUrl
˛˛` k
,
˛˛k l
_userManager
˛˛m y
.
˛˛y z
	GetUserId˛˛z É
(˛˛É Ñ
User˛˛Ñ à
)˛˛à â
)˛˛â ä
;˛˛ä ã
return
ˇˇ 
new
ˇˇ 
ChallengeResult
ˇˇ &
(
ˇˇ& '
provider
ˇˇ' /
,
ˇˇ/ 0

properties
ˇˇ1 ;
)
ˇˇ; <
;
ˇˇ< =
}
ÄÄ 	
[
ÇÇ 	
HttpGet
ÇÇ	 
]
ÇÇ 
public
ÉÉ 
async
ÉÉ 
Task
ÉÉ 
<
ÉÉ 
IActionResult
ÉÉ '
>
ÉÉ' (
LinkLoginCallback
ÉÉ) :
(
ÉÉ: ;
)
ÉÉ; <
{
ÑÑ 	
var
ÖÖ 
user
ÖÖ 
=
ÖÖ 
await
ÖÖ 
_userManager
ÖÖ )
.
ÖÖ) *
GetUserAsync
ÖÖ* 6
(
ÖÖ6 7
User
ÖÖ7 ;
)
ÖÖ; <
;
ÖÖ< =
if
ÜÜ 
(
ÜÜ 
user
ÜÜ 
==
ÜÜ 
null
ÜÜ 
)
ÜÜ 
{
áá 
throw
àà 
new
àà "
ApplicationException
àà .
(
àà. /
$"
àà/ 1
$str
àà1 N
{
ààN O
_userManager
ààO [
.
àà[ \
	GetUserId
àà\ e
(
ààe f
User
ààf j
)
ààj k
}
ààk l
$str
ààl n
"
ààn o
)
àào p
;
ààp q
}
ââ 
var
ãã 
info
ãã 
=
ãã 
await
ãã 
_signInManager
ãã +
.
ãã+ ,'
GetExternalLoginInfoAsync
ãã, E
(
ããE F
user
ããF J
.
ããJ K
Id
ããK M
)
ããM N
;
ããN O
if
åå 
(
åå 
info
åå 
==
åå 
null
åå 
)
åå 
{
çç 
throw
éé 
new
éé "
ApplicationException
éé .
(
éé. /
$"
éé/ 1
$str
éé1 y
{
ééy z
user
ééz ~
.
éé~ 
Idéé Å
}ééÅ Ç
$strééÇ Ñ
"ééÑ Ö
)ééÖ Ü
;ééÜ á
}
èè 
var
ëë 
result
ëë 
=
ëë 
await
ëë 
_userManager
ëë +
.
ëë+ ,
AddLoginAsync
ëë, 9
(
ëë9 :
user
ëë: >
,
ëë> ?
info
ëë@ D
)
ëëD E
;
ëëE F
if
íí 
(
íí 
!
íí 
result
íí 
.
íí 
	Succeeded
íí !
)
íí! "
{
ìì 
throw
îî 
new
îî "
ApplicationException
îî .
(
îî. /
$"
îî/ 1
$str
îî1 s
{
îîs t
user
îît x
.
îîx y
Id
îîy {
}
îî{ |
$str
îî| ~
"
îî~ 
)îî Ä
;îîÄ Å
}
ïï 
await
òò 
HttpContext
òò 
.
òò 
SignOutAsync
òò *
(
òò* +
IdentityConstants
òò+ <
.
òò< =
ExternalScheme
òò= K
)
òòK L
;
òòL M
StatusMessage
öö 
=
öö 
$str
öö ;
;
öö; <
return
õõ 
RedirectToAction
õõ #
(
õõ# $
nameof
õõ$ *
(
õõ* +
ExternalLogins
õõ+ 9
)
õõ9 :
)
õõ: ;
;
õõ; <
}
úú 	
[
ûû 	
HttpPost
ûû	 
]
ûû 
[
üü 	&
ValidateAntiForgeryToken
üü	 !
]
üü! "
public
†† 
async
†† 
Task
†† 
<
†† 
IActionResult
†† '
>
††' (
RemoveLogin
††) 4
(
††4 5"
RemoveLoginViewModel
††5 I
model
††J O
)
††O P
{
°° 	
var
¢¢ 
user
¢¢ 
=
¢¢ 
await
¢¢ 
_userManager
¢¢ )
.
¢¢) *
GetUserAsync
¢¢* 6
(
¢¢6 7
User
¢¢7 ;
)
¢¢; <
;
¢¢< =
if
££ 
(
££ 
user
££ 
==
££ 
null
££ 
)
££ 
{
§§ 
throw
•• 
new
•• "
ApplicationException
•• .
(
••. /
$"
••/ 1
$str
••1 N
{
••N O
_userManager
••O [
.
••[ \
	GetUserId
••\ e
(
••e f
User
••f j
)
••j k
}
••k l
$str
••l n
"
••n o
)
••o p
;
••p q
}
¶¶ 
var
®® 
result
®® 
=
®® 
await
®® 
_userManager
®® +
.
®®+ ,
RemoveLoginAsync
®®, <
(
®®< =
user
®®= A
,
®®A B
model
®®C H
.
®®H I
LoginProvider
®®I V
,
®®V W
model
®®X ]
.
®®] ^
ProviderKey
®®^ i
)
®®i j
;
®®j k
if
©© 
(
©© 
!
©© 
result
©© 
.
©© 
	Succeeded
©© !
)
©©! "
{
™™ 
throw
´´ 
new
´´ "
ApplicationException
´´ .
(
´´. /
$"
´´/ 1
$str
´´1 u
{
´´u v
user
´´v z
.
´´z {
Id
´´{ }
}
´´} ~
$str´´~ Ä
"´´Ä Å
)´´Å Ç
;´´Ç É
}
¨¨ 
await
ÆÆ 
_signInManager
ÆÆ  
.
ÆÆ  !
SignInAsync
ÆÆ! ,
(
ÆÆ, -
user
ÆÆ- 1
,
ÆÆ1 2
isPersistent
ÆÆ3 ?
:
ÆÆ? @
false
ÆÆA F
)
ÆÆF G
;
ÆÆG H
StatusMessage
ØØ 
=
ØØ 
$str
ØØ =
;
ØØ= >
return
∞∞ 
RedirectToAction
∞∞ #
(
∞∞# $
nameof
∞∞$ *
(
∞∞* +
ExternalLogins
∞∞+ 9
)
∞∞9 :
)
∞∞: ;
;
∞∞; <
}
±± 	
[
≥≥ 	
HttpGet
≥≥	 
]
≥≥ 
public
¥¥ 
async
¥¥ 
Task
¥¥ 
<
¥¥ 
IActionResult
¥¥ '
>
¥¥' (%
TwoFactorAuthentication
¥¥) @
(
¥¥@ A
)
¥¥A B
{
µµ 	
var
∂∂ 
user
∂∂ 
=
∂∂ 
await
∂∂ 
_userManager
∂∂ )
.
∂∂) *
GetUserAsync
∂∂* 6
(
∂∂6 7
User
∂∂7 ;
)
∂∂; <
;
∂∂< =
if
∑∑ 
(
∑∑ 
user
∑∑ 
==
∑∑ 
null
∑∑ 
)
∑∑ 
{
∏∏ 
throw
ππ 
new
ππ "
ApplicationException
ππ .
(
ππ. /
$"
ππ/ 1
$str
ππ1 N
{
ππN O
_userManager
ππO [
.
ππ[ \
	GetUserId
ππ\ e
(
ππe f
User
ππf j
)
ππj k
}
ππk l
$str
ππl n
"
ππn o
)
ππo p
;
ππp q
}
∫∫ 
var
ºº 
model
ºº 
=
ºº 
new
ºº .
 TwoFactorAuthenticationViewModel
ºº <
{
ΩΩ 
HasAuthenticator
ææ  
=
ææ! "
await
ææ# (
_userManager
ææ) 5
.
ææ5 6&
GetAuthenticatorKeyAsync
ææ6 N
(
ææN O
user
ææO S
)
ææS T
!=
ææU W
null
ææX \
,
ææ\ ]
Is2faEnabled
øø 
=
øø 
user
øø #
.
øø# $
TwoFactorEnabled
øø$ 4
,
øø4 5
RecoveryCodesLeft
¿¿ !
=
¿¿" #
await
¿¿$ )
_userManager
¿¿* 6
.
¿¿6 7%
CountRecoveryCodesAsync
¿¿7 N
(
¿¿N O
user
¿¿O S
)
¿¿S T
,
¿¿T U
}
¡¡ 
;
¡¡ 
return
√√ 
View
√√ 
(
√√ 
model
√√ 
)
√√ 
;
√√ 
}
ƒƒ 	
[
∆∆ 	
HttpGet
∆∆	 
]
∆∆ 
public
«« 
async
«« 
Task
«« 
<
«« 
IActionResult
«« '
>
««' (
Disable2faWarning
««) :
(
««: ;
)
««; <
{
»» 	
var
…… 
user
…… 
=
…… 
await
…… 
_userManager
…… )
.
……) *
GetUserAsync
……* 6
(
……6 7
User
……7 ;
)
……; <
;
……< =
if
   
(
   
user
   
==
   
null
   
)
   
{
ÀÀ 
throw
ÃÃ 
new
ÃÃ "
ApplicationException
ÃÃ .
(
ÃÃ. /
$"
ÃÃ/ 1
$str
ÃÃ1 N
{
ÃÃN O
_userManager
ÃÃO [
.
ÃÃ[ \
	GetUserId
ÃÃ\ e
(
ÃÃe f
User
ÃÃf j
)
ÃÃj k
}
ÃÃk l
$str
ÃÃl n
"
ÃÃn o
)
ÃÃo p
;
ÃÃp q
}
ÕÕ 
if
œœ 
(
œœ 
!
œœ 
user
œœ 
.
œœ 
TwoFactorEnabled
œœ &
)
œœ& '
{
–– 
throw
—— 
new
—— "
ApplicationException
—— .
(
——. /
$"
——/ 1
$str
——1 j
{
——j k
user
——k o
.
——o p
Id
——p r
}
——r s
$str
——s u
"
——u v
)
——v w
;
——w x
}
““ 
return
‘‘ 
View
‘‘ 
(
‘‘ 
nameof
‘‘ 
(
‘‘ 

Disable2fa
‘‘ )
)
‘‘) *
)
‘‘* +
;
‘‘+ ,
}
’’ 	
[
◊◊ 	
HttpPost
◊◊	 
]
◊◊ 
[
ÿÿ 	&
ValidateAntiForgeryToken
ÿÿ	 !
]
ÿÿ! "
public
ŸŸ 
async
ŸŸ 
Task
ŸŸ 
<
ŸŸ 
IActionResult
ŸŸ '
>
ŸŸ' (

Disable2fa
ŸŸ) 3
(
ŸŸ3 4
)
ŸŸ4 5
{
⁄⁄ 	
var
€€ 
user
€€ 
=
€€ 
await
€€ 
_userManager
€€ )
.
€€) *
GetUserAsync
€€* 6
(
€€6 7
User
€€7 ;
)
€€; <
;
€€< =
if
‹‹ 
(
‹‹ 
user
‹‹ 
==
‹‹ 
null
‹‹ 
)
‹‹ 
{
›› 
throw
ﬁﬁ 
new
ﬁﬁ "
ApplicationException
ﬁﬁ .
(
ﬁﬁ. /
$"
ﬁﬁ/ 1
$str
ﬁﬁ1 N
{
ﬁﬁN O
_userManager
ﬁﬁO [
.
ﬁﬁ[ \
	GetUserId
ﬁﬁ\ e
(
ﬁﬁe f
User
ﬁﬁf j
)
ﬁﬁj k
}
ﬁﬁk l
$str
ﬁﬁl n
"
ﬁﬁn o
)
ﬁﬁo p
;
ﬁﬁp q
}
ﬂﬂ 
var
·· 
disable2faResult
··  
=
··! "
await
··# (
_userManager
··) 5
.
··5 6&
SetTwoFactorEnabledAsync
··6 N
(
··N O
user
··O S
,
··S T
false
··U Z
)
··Z [
;
··[ \
if
‚‚ 
(
‚‚ 
!
‚‚ 
disable2faResult
‚‚ !
.
‚‚! "
	Succeeded
‚‚" +
)
‚‚+ ,
{
„„ 
throw
‰‰ 
new
‰‰ "
ApplicationException
‰‰ .
(
‰‰. /
$"
‰‰/ 1
$str
‰‰1 j
{
‰‰j k
user
‰‰k o
.
‰‰o p
Id
‰‰p r
}
‰‰r s
$str
‰‰s u
"
‰‰u v
)
‰‰v w
;
‰‰w x
}
ÂÂ 
_logger
ÁÁ 
.
ÁÁ 
LogInformation
ÁÁ "
(
ÁÁ" #
$str
ÁÁ# L
,
ÁÁL M
user
ÁÁN R
.
ÁÁR S
Id
ÁÁS U
)
ÁÁU V
;
ÁÁV W
return
ËË 
RedirectToAction
ËË #
(
ËË# $
nameof
ËË$ *
(
ËË* +%
TwoFactorAuthentication
ËË+ B
)
ËËB C
)
ËËC D
;
ËËD E
}
ÈÈ 	
[
ÎÎ 	
HttpGet
ÎÎ	 
]
ÎÎ 
public
ÏÏ 
async
ÏÏ 
Task
ÏÏ 
<
ÏÏ 
IActionResult
ÏÏ '
>
ÏÏ' (!
EnableAuthenticator
ÏÏ) <
(
ÏÏ< =
)
ÏÏ= >
{
ÌÌ 	
var
ÓÓ 
user
ÓÓ 
=
ÓÓ 
await
ÓÓ 
_userManager
ÓÓ )
.
ÓÓ) *
GetUserAsync
ÓÓ* 6
(
ÓÓ6 7
User
ÓÓ7 ;
)
ÓÓ; <
;
ÓÓ< =
if
ÔÔ 
(
ÔÔ 
user
ÔÔ 
==
ÔÔ 
null
ÔÔ 
)
ÔÔ 
{
 
throw
ÒÒ 
new
ÒÒ "
ApplicationException
ÒÒ .
(
ÒÒ. /
$"
ÒÒ/ 1
$str
ÒÒ1 N
{
ÒÒN O
_userManager
ÒÒO [
.
ÒÒ[ \
	GetUserId
ÒÒ\ e
(
ÒÒe f
User
ÒÒf j
)
ÒÒj k
}
ÒÒk l
$str
ÒÒl n
"
ÒÒn o
)
ÒÒo p
;
ÒÒp q
}
ÚÚ 
var
ÙÙ 
unformattedKey
ÙÙ 
=
ÙÙ  
await
ÙÙ! &
_userManager
ÙÙ' 3
.
ÙÙ3 4&
GetAuthenticatorKeyAsync
ÙÙ4 L
(
ÙÙL M
user
ÙÙM Q
)
ÙÙQ R
;
ÙÙR S
if
ıı 
(
ıı 
string
ıı 
.
ıı 
IsNullOrEmpty
ıı $
(
ıı$ %
unformattedKey
ıı% 3
)
ıı3 4
)
ıı4 5
{
ˆˆ 
await
˜˜ 
_userManager
˜˜ "
.
˜˜" #(
ResetAuthenticatorKeyAsync
˜˜# =
(
˜˜= >
user
˜˜> B
)
˜˜B C
;
˜˜C D
unformattedKey
¯¯ 
=
¯¯  
await
¯¯! &
_userManager
¯¯' 3
.
¯¯3 4&
GetAuthenticatorKeyAsync
¯¯4 L
(
¯¯L M
user
¯¯M Q
)
¯¯Q R
;
¯¯R S
}
˘˘ 
var
˚˚ 
model
˚˚ 
=
˚˚ 
new
˚˚ *
EnableAuthenticatorViewModel
˚˚ 8
{
¸¸ 
	SharedKey
˝˝ 
=
˝˝ 
	FormatKey
˝˝ %
(
˝˝% &
unformattedKey
˝˝& 4
)
˝˝4 5
,
˝˝5 6
AuthenticatorUri
˛˛  
=
˛˛! "
GenerateQrCodeUri
˛˛# 4
(
˛˛4 5
user
˛˛5 9
.
˛˛9 :
Email
˛˛: ?
,
˛˛? @
unformattedKey
˛˛A O
)
˛˛O P
}
ˇˇ 
;
ˇˇ 
return
ÅÅ 
View
ÅÅ 
(
ÅÅ 
model
ÅÅ 
)
ÅÅ 
;
ÅÅ 
}
ÇÇ 	
[
ÑÑ 	
HttpPost
ÑÑ	 
]
ÑÑ 
[
ÖÖ 	&
ValidateAntiForgeryToken
ÖÖ	 !
]
ÖÖ! "
public
ÜÜ 
async
ÜÜ 
Task
ÜÜ 
<
ÜÜ 
IActionResult
ÜÜ '
>
ÜÜ' (!
EnableAuthenticator
ÜÜ) <
(
ÜÜ< =*
EnableAuthenticatorViewModel
ÜÜ= Y
model
ÜÜZ _
)
ÜÜ_ `
{
áá 	
if
àà 
(
àà 
!
àà 

ModelState
àà 
.
àà 
IsValid
àà #
)
àà# $
{
ââ 
return
ää 
View
ää 
(
ää 
model
ää !
)
ää! "
;
ää" #
}
ãã 
var
çç 
user
çç 
=
çç 
await
çç 
_userManager
çç )
.
çç) *
GetUserAsync
çç* 6
(
çç6 7
User
çç7 ;
)
çç; <
;
çç< =
if
éé 
(
éé 
user
éé 
==
éé 
null
éé 
)
éé 
{
èè 
throw
êê 
new
êê "
ApplicationException
êê .
(
êê. /
$"
êê/ 1
$str
êê1 N
{
êêN O
_userManager
êêO [
.
êê[ \
	GetUserId
êê\ e
(
êêe f
User
êêf j
)
êêj k
}
êêk l
$str
êêl n
"
êên o
)
êêo p
;
êêp q
}
ëë 
var
îî 
verificationCode
îî  
=
îî! "
model
îî# (
.
îî( )
Code
îî) -
.
îî- .
Replace
îî. 5
(
îî5 6
$str
îî6 9
,
îî9 :
string
îî; A
.
îîA B
Empty
îîB G
)
îîG H
.
îîH I
Replace
îîI P
(
îîP Q
$str
îîQ T
,
îîT U
string
îîV \
.
îî\ ]
Empty
îî] b
)
îîb c
;
îîc d
var
ññ 
is2faTokenValid
ññ 
=
ññ  !
await
ññ" '
_userManager
ññ( 4
.
ññ4 5'
VerifyTwoFactorTokenAsync
ññ5 N
(
ññN O
user
óó 
,
óó 
_userManager
óó "
.
óó" #
Options
óó# *
.
óó* +
Tokens
óó+ 1
.
óó1 2(
AuthenticatorTokenProvider
óó2 L
,
óóL M
verificationCode
óóN ^
)
óó^ _
;
óó_ `
if
ôô 
(
ôô 
!
ôô 
is2faTokenValid
ôô  
)
ôô  !
{
öö 

ModelState
õõ 
.
õõ 
AddModelError
õõ (
(
õõ( )
$str
õõ) >
,
õõ> ?
$str
õõ@ _
)
õõ_ `
;
õõ` a
return
úú 
View
úú 
(
úú 
model
úú !
)
úú! "
;
úú" #
}
ùù 
await
üü 
_userManager
üü 
.
üü &
SetTwoFactorEnabledAsync
üü 7
(
üü7 8
user
üü8 <
,
üü< =
true
üü> B
)
üüB C
;
üüC D
_logger
†† 
.
†† 
LogInformation
†† "
(
††" #
$str
††# e
,
††e f
user
††g k
.
††k l
Id
††l n
)
††n o
;
††o p
return
°° 
RedirectToAction
°° #
(
°°# $
nameof
°°$ *
(
°°* +#
GenerateRecoveryCodes
°°+ @
)
°°@ A
)
°°A B
;
°°B C
}
¢¢ 	
[
§§ 	
HttpGet
§§	 
]
§§ 
public
•• 
IActionResult
•• '
ResetAuthenticatorWarning
•• 6
(
••6 7
)
••7 8
{
¶¶ 	
return
ßß 
View
ßß 
(
ßß 
nameof
ßß 
(
ßß  
ResetAuthenticator
ßß 1
)
ßß1 2
)
ßß2 3
;
ßß3 4
}
®® 	
[
™™ 	
HttpPost
™™	 
]
™™ 
[
´´ 	&
ValidateAntiForgeryToken
´´	 !
]
´´! "
public
¨¨ 
async
¨¨ 
Task
¨¨ 
<
¨¨ 
IActionResult
¨¨ '
>
¨¨' ( 
ResetAuthenticator
¨¨) ;
(
¨¨; <
)
¨¨< =
{
≠≠ 	
var
ÆÆ 
user
ÆÆ 
=
ÆÆ 
await
ÆÆ 
_userManager
ÆÆ )
.
ÆÆ) *
GetUserAsync
ÆÆ* 6
(
ÆÆ6 7
User
ÆÆ7 ;
)
ÆÆ; <
;
ÆÆ< =
if
ØØ 
(
ØØ 
user
ØØ 
==
ØØ 
null
ØØ 
)
ØØ 
{
∞∞ 
throw
±± 
new
±± "
ApplicationException
±± .
(
±±. /
$"
±±/ 1
$str
±±1 N
{
±±N O
_userManager
±±O [
.
±±[ \
	GetUserId
±±\ e
(
±±e f
User
±±f j
)
±±j k
}
±±k l
$str
±±l n
"
±±n o
)
±±o p
;
±±p q
}
≤≤ 
await
¥¥ 
_userManager
¥¥ 
.
¥¥ &
SetTwoFactorEnabledAsync
¥¥ 7
(
¥¥7 8
user
¥¥8 <
,
¥¥< =
false
¥¥> C
)
¥¥C D
;
¥¥D E
await
µµ 
_userManager
µµ 
.
µµ (
ResetAuthenticatorKeyAsync
µµ 9
(
µµ9 :
user
µµ: >
)
µµ> ?
;
µµ? @
_logger
∂∂ 
.
∂∂ 
LogInformation
∂∂ "
(
∂∂" #
$str
∂∂# d
,
∂∂d e
user
∂∂f j
.
∂∂j k
Id
∂∂k m
)
∂∂m n
;
∂∂n o
return
∏∏ 
RedirectToAction
∏∏ #
(
∏∏# $
nameof
∏∏$ *
(
∏∏* +!
EnableAuthenticator
∏∏+ >
)
∏∏> ?
)
∏∏? @
;
∏∏@ A
}
ππ 	
[
ªª 	
HttpGet
ªª	 
]
ªª 
public
ºº 
async
ºº 
Task
ºº 
<
ºº 
IActionResult
ºº '
>
ºº' (#
GenerateRecoveryCodes
ºº) >
(
ºº> ?
)
ºº? @
{
ΩΩ 	
var
ææ 
user
ææ 
=
ææ 
await
ææ 
_userManager
ææ )
.
ææ) *
GetUserAsync
ææ* 6
(
ææ6 7
User
ææ7 ;
)
ææ; <
;
ææ< =
if
øø 
(
øø 
user
øø 
==
øø 
null
øø 
)
øø 
{
¿¿ 
throw
¡¡ 
new
¡¡ "
ApplicationException
¡¡ .
(
¡¡. /
$"
¡¡/ 1
$str
¡¡1 N
{
¡¡N O
_userManager
¡¡O [
.
¡¡[ \
	GetUserId
¡¡\ e
(
¡¡e f
User
¡¡f j
)
¡¡j k
}
¡¡k l
$str
¡¡l n
"
¡¡n o
)
¡¡o p
;
¡¡p q
}
¬¬ 
if
ƒƒ 
(
ƒƒ 
!
ƒƒ 
user
ƒƒ 
.
ƒƒ 
TwoFactorEnabled
ƒƒ &
)
ƒƒ& '
{
≈≈ 
throw
∆∆ 
new
∆∆ "
ApplicationException
∆∆ .
(
∆∆. /
$"
∆∆/ 1
$str
∆∆1 b
{
∆∆b c
user
∆∆c g
.
∆∆g h
Id
∆∆h j
}
∆∆j k
$str∆∆k ç
"∆∆ç é
)∆∆é è
;∆∆è ê
}
«« 
var
…… 
recoveryCodes
…… 
=
…… 
await
……  %
_userManager
……& 2
.
……2 34
&GenerateNewTwoFactorRecoveryCodesAsync
……3 Y
(
……Y Z
user
……Z ^
,
……^ _
$num
……` b
)
……b c
;
……c d
var
   
model
   
=
   
new
   ,
GenerateRecoveryCodesViewModel
   :
{
  ; <
RecoveryCodes
  = J
=
  K L
recoveryCodes
  M Z
.
  Z [
ToArray
  [ b
(
  b c
)
  c d
}
  e f
;
  f g
_logger
ÃÃ 
.
ÃÃ 
LogInformation
ÃÃ "
(
ÃÃ" #
$str
ÃÃ# `
,
ÃÃ` a
user
ÃÃb f
.
ÃÃf g
Id
ÃÃg i
)
ÃÃi j
;
ÃÃj k
return
ŒŒ 
View
ŒŒ 
(
ŒŒ 
model
ŒŒ 
)
ŒŒ 
;
ŒŒ 
}
œœ 	
private
—— 
void
—— 
	AddErrors
—— 
(
—— 
IdentityResult
—— -
result
——. 4
)
——4 5
{
““ 	
foreach
”” 
(
”” 
var
”” 
error
”” 
in
”” !
result
””" (
.
””( )
Errors
””) /
)
””/ 0
{
‘‘ 

ModelState
’’ 
.
’’ 
AddModelError
’’ (
(
’’( )
string
’’) /
.
’’/ 0
Empty
’’0 5
,
’’5 6
error
’’7 <
.
’’< =
Description
’’= H
)
’’H I
;
’’I J
}
÷÷ 
}
◊◊ 	
private
ŸŸ 
string
ŸŸ 
	FormatKey
ŸŸ  
(
ŸŸ  !
string
ŸŸ! '
unformattedKey
ŸŸ( 6
)
ŸŸ6 7
{
⁄⁄ 	
var
€€ 
result
€€ 
=
€€ 
new
€€ 
StringBuilder
€€ *
(
€€* +
)
€€+ ,
;
€€, -
int
‹‹ 
currentPosition
‹‹ 
=
‹‹  !
$num
‹‹" #
;
‹‹# $
while
›› 
(
›› 
currentPosition
›› "
+
››# $
$num
››% &
<
››' (
unformattedKey
››) 7
.
››7 8
Length
››8 >
)
››> ?
{
ﬁﬁ 
result
ﬂﬂ 
.
ﬂﬂ 
Append
ﬂﬂ 
(
ﬂﬂ 
unformattedKey
ﬂﬂ ,
.
ﬂﬂ, -
	Substring
ﬂﬂ- 6
(
ﬂﬂ6 7
currentPosition
ﬂﬂ7 F
,
ﬂﬂF G
$num
ﬂﬂH I
)
ﬂﬂI J
)
ﬂﬂJ K
.
ﬂﬂK L
Append
ﬂﬂL R
(
ﬂﬂR S
$str
ﬂﬂS V
)
ﬂﬂV W
;
ﬂﬂW X
currentPosition
‡‡ 
+=
‡‡  "
$num
‡‡# $
;
‡‡$ %
}
·· 
if
‚‚ 
(
‚‚ 
currentPosition
‚‚ 
<
‚‚  !
unformattedKey
‚‚" 0
.
‚‚0 1
Length
‚‚1 7
)
‚‚7 8
{
„„ 
result
‰‰ 
.
‰‰ 
Append
‰‰ 
(
‰‰ 
unformattedKey
‰‰ ,
.
‰‰, -
	Substring
‰‰- 6
(
‰‰6 7
currentPosition
‰‰7 F
)
‰‰F G
)
‰‰G H
;
‰‰H I
}
ÂÂ 
return
ÁÁ 
result
ÁÁ 
.
ÁÁ 
ToString
ÁÁ "
(
ÁÁ" #
)
ÁÁ# $
.
ÁÁ$ %
ToLowerInvariant
ÁÁ% 5
(
ÁÁ5 6
)
ÁÁ6 7
;
ÁÁ7 8
}
ËË 	
private
ÍÍ 
string
ÍÍ 
GenerateQrCodeUri
ÍÍ (
(
ÍÍ( )
string
ÍÍ) /
email
ÍÍ0 5
,
ÍÍ5 6
string
ÍÍ7 =
unformattedKey
ÍÍ> L
)
ÍÍL M
{
ÎÎ 	
return
ÏÏ 
string
ÏÏ 
.
ÏÏ 
Format
ÏÏ  
(
ÏÏ  !#
AuthenicatorUriFormat
ÌÌ %
,
ÌÌ% &
_urlEncoder
ÓÓ 
.
ÓÓ 
Encode
ÓÓ "
(
ÓÓ" #
$str
ÓÓ# /
)
ÓÓ/ 0
,
ÓÓ0 1
_urlEncoder
ÔÔ 
.
ÔÔ 
Encode
ÔÔ "
(
ÔÔ" #
email
ÔÔ# (
)
ÔÔ( )
,
ÔÔ) *
unformattedKey
 
)
 
;
  
}
ÒÒ 	
}
ÚÚ 
}ÛÛ ‹
eC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Controllers\CatalogController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
{ 
[ 
Route 

(
 
$str 
) 
] 
public 

class 
CatalogController "
:# $

Controller% /
{		 
private

 
readonly

 
ICatalogService

 (
_catalogService

) 8
;

8 9
public 
CatalogController  
(  !
ICatalogService! 0
catalogService1 ?
)? @
=>A C
_catalogServiceD S
=T U
catalogServiceV d
;d e
[ 	
HttpGet	 
] 
[ 	
HttpPost	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
Index) .
(. /
int/ 2
?2 3
brandFilterApplied4 F
,F G
intH K
?K L
typesFilterAppliedM _
,_ `
inta d
?d e
pagef j
)j k
{ 	
var 
	itemsPage 
= 
$num 
; 
var 
catalogModel 
= 
await $
_catalogService% 4
.4 5
GetCatalogItems5 D
(D E
pageE I
??J L
$numM N
,N O
	itemsPageP Y
,Y Z
brandFilterApplied[ m
,m n
typesFilterApplied	o Å
)
Å Ç
;
Ç É
return 
View 
( 
catalogModel $
)$ %
;% &
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
IActionResult 
Error "
(" #
)# $
{ 	
return 
View 
( 
) 
; 
} 	
} 
} ÜI
dC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Controllers\BasketController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
{ 
[ 
Route 

(
 
$str "
)" #
]# $
public 

class 
BasketController !
:" #

Controller$ .
{ 
private 
readonly 
IBasketService '
_basketService( 6
;6 7
private 
readonly 
IUriComposer %
_uriComposer& 2
;2 3
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 

IAppLogger #
<# $
BasketController$ 4
>4 5
_logger6 =
;= >
private 
readonly 
IOrderService &
_orderService' 4
;4 5
private 
readonly #
IBasketViewModelService 0#
_basketViewModelService1 H
;H I
public 
BasketController 
(  
IBasketService  .
basketService/ <
,< =#
IBasketViewModelService #"
basketViewModelService$ :
,: ;
IOrderService 
orderService &
,& '
IUriComposer 
uriComposer $
,$ %
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9

IAppLogger 
< 
BasketController '
>' (
logger) /
)/ 0
{   	
_basketService!! 
=!! 
basketService!! *
;!!* +
_uriComposer"" 
="" 
uriComposer"" &
;""& '
_signInManager## 
=## 
signInManager## *
;##* +
_logger$$ 
=$$ 
logger$$ 
;$$ 
_orderService%% 
=%% 
orderService%% (
;%%( )#
_basketViewModelService&& #
=&&$ %"
basketViewModelService&&& <
;&&< =
}'' 	
[)) 	
HttpGet))	 
])) 
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
Index**) .
(**. /
)**/ 0
{++ 	
var,, 
basketModel,, 
=,, 
await,, ##
GetBasketViewModelAsync,,$ ;
(,,; <
),,< =
;,,= >
return.. 
View.. 
(.. 
basketModel.. #
)..# $
;..$ %
}// 	
[11 	
HttpPost11	 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Index22) .
(22. /

Dictionary22/ 9
<229 :
string22: @
,22@ A
int22B E
>22E F
items22G L
)22L M
{33 	
var44 
basketViewModel44 
=44  !
await44" '#
GetBasketViewModelAsync44( ?
(44? @
)44@ A
;44A B
await55 
_basketService55  
.55  !
SetQuantities55! .
(55. /
basketViewModel55/ >
.55> ?
Id55? A
,55A B
items55C H
)55H I
;55I J
return77 
View77 
(77 
await77 #
GetBasketViewModelAsync77 5
(775 6
)776 7
)777 8
;778 9
}88 	
[<< 	
HttpPost<<	 
]<< 
public== 
async== 
Task== 
<== 
IActionResult== '
>==' (
AddToBasket==) 4
(==4 5 
CatalogItemViewModel==5 I
productDetails==J X
)==X Y
{>> 	
if?? 
(?? 
productDetails?? 
??? 
.??  
Id??  "
==??# %
null??& *
)??* +
{@@ 
returnAA 
RedirectToActionAA '
(AA' (
$strAA( /
,AA/ 0
$strAA1 :
)AA: ;
;AA; <
}BB 
varCC 
basketViewModelCC 
=CC  !
awaitCC" '#
GetBasketViewModelAsyncCC( ?
(CC? @
)CC@ A
;CCA B
awaitEE 
_basketServiceEE  
.EE  !
AddItemToBasketEE! 0
(EE0 1
basketViewModelEE1 @
.EE@ A
IdEEA C
,EEC D
productDetailsEEE S
.EES T
IdEET V
,EEV W
productDetailsEEX f
.EEf g
PriceEEg l
,EEl m
$numEEn o
)EEo p
;EEp q
returnGG 
RedirectToActionGG #
(GG# $
$strGG$ +
)GG+ ,
;GG, -
}HH 	
[JJ 	
HttpPostJJ	 
]JJ 
[KK 	
	AuthorizeKK	 
]KK 
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
CheckoutLL) 1
(LL1 2

DictionaryLL2 <
<LL< =
stringLL= C
,LLC D
intLLE H
>LLH I
itemsLLJ O
)LLO P
{MM 	
varNN 
basketViewModelNN 
=NN  !
awaitNN" '#
GetBasketViewModelAsyncNN( ?
(NN? @
)NN@ A
;NNA B
awaitOO 
_basketServiceOO  
.OO  !
SetQuantitiesOO! .
(OO. /
basketViewModelOO/ >
.OO> ?
IdOO? A
,OOA B
itemsOOC H
)OOH I
;OOI J
awaitQQ 
_orderServiceQQ 
.QQ  
CreateOrderAsyncQQ  0
(QQ0 1
basketViewModelQQ1 @
.QQ@ A
IdQQA C
,QQC D
newQQE H
AddressQQI P
(QQP Q
$strQQQ _
,QQ_ `
$strQQa g
,QQg h
$strQQi m
,QQm n
$strQQo ~
,QQ~ 
$str
QQÄ á
)
QQá à
)
QQà â
;
QQâ ä
awaitSS 
_basketServiceSS  
.SS  !
DeleteBasketAsyncSS! 2
(SS2 3
basketViewModelSS3 B
.SSB C
IdSSC E
)SSE F
;SSF G
returnUU 
ViewUU 
(UU 
$strUU "
)UU" #
;UU# $
}VV 	
privateXX 
asyncXX 
TaskXX 
<XX 
BasketViewModelXX *
>XX* +#
GetBasketViewModelAsyncXX, C
(XXC D
)XXD E
{YY 	
ifZZ 
(ZZ 
_signInManagerZZ 
.ZZ 

IsSignedInZZ )
(ZZ) *
HttpContextZZ* 5
.ZZ5 6
UserZZ6 :
)ZZ: ;
)ZZ; <
{[[ 
return\\ 
await\\ #
_basketViewModelService\\ 4
.\\4 5$
GetOrCreateBasketForUser\\5 M
(\\M N
User\\N R
.\\R S
Identity\\S [
.\\[ \
Name\\\ `
)\\` a
;\\a b
}]] 
string^^ 
anonymousId^^ 
=^^   
GetOrSetBasketCookie^^! 5
(^^5 6
)^^6 7
;^^7 8
return__ 
await__ #
_basketViewModelService__ 0
.__0 1$
GetOrCreateBasketForUser__1 I
(__I J
anonymousId__J U
)__U V
;__V W
}`` 	
privatebb 
stringbb  
GetOrSetBasketCookiebb +
(bb+ ,
)bb, -
{cc 	
ifdd 
(dd 
Requestdd 
.dd 
Cookiesdd 
.dd  
ContainsKeydd  +
(dd+ ,
	Constantsdd, 5
.dd5 6
BASKET_COOKIENAMEdd6 G
)ddG H
)ddH I
{ee 
returnff 
Requestff 
.ff 
Cookiesff &
[ff& '
	Constantsff' 0
.ff0 1
BASKET_COOKIENAMEff1 B
]ffB C
;ffC D
}gg 
stringhh 
anonymousIdhh 
=hh  
Guidhh! %
.hh% &
NewGuidhh& -
(hh- .
)hh. /
.hh/ 0
ToStringhh0 8
(hh8 9
)hh9 :
;hh: ;
varii 
cookieOptionsii 
=ii 
newii  #
CookieOptionsii$ 1
(ii1 2
)ii2 3
;ii3 4
cookieOptionsjj 
.jj 
Expiresjj !
=jj" #
DateTimejj$ ,
.jj, -
Todayjj- 2
.jj2 3
AddYearsjj3 ;
(jj; <
$numjj< >
)jj> ?
;jj? @
Responsekk 
.kk 
Cookieskk 
.kk 
Appendkk #
(kk# $
	Constantskk$ -
.kk- .
BASKET_COOKIENAMEkk. ?
,kk? @
anonymousIdkkA L
,kkL M
cookieOptionskkN [
)kk[ \
;kk\ ]
returnll 
anonymousIdll 
;ll 
}mm 	
}nn 
}oo ª
iC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Controllers\Api\CatalogController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
., -
Api- 0
{ 
public 

class 
CatalogController "
:# $
BaseApiController% 6
{ 
private		 
readonly		 
ICatalogService		 (
_catalogService		) 8
;		8 9
public 
CatalogController  
(  !
ICatalogService! 0
catalogService1 ?
)? @
=>A C
_catalogServiceD S
=T U
catalogServiceV d
;d e
[ 	
HttpGet	 
] 
public 
async 
Task 
< 
IActionResult '
>' (
List) -
(- .
int. 1
?1 2
brandFilterApplied3 E
,E F
intG J
?J K
typesFilterAppliedL ^
,^ _
int` c
?c d
pagee i
)i j
{ 	
var 
	itemsPage 
= 
$num 
; 
var 
catalogModel 
= 
await $
_catalogService% 4
.4 5
GetCatalogItems5 D
(D E
pageE I
??J L
$numM N
,N O
	itemsPageP Y
,Y Z
brandFilterApplied[ m
,m n
typesFilterApplied	o Å
)
Å Ç
;
Ç É
return 
Ok 
( 
catalogModel "
)" #
;# $
} 	
} 
} ™
iC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Controllers\Api\BaseApiController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
., -
Api- 0
{ 
[ 
Route 

(
 
$str &
)& '
]' (
public 

class 
BaseApiController "
:# $

Controller% /
{		 
}		 
}

 Üú
eC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Controllers\AccountController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
.  !
Controllers! ,
{ 
[ 
Route 

(
 
$str "
)" #
]# $
[ 
	Authorize 
] 
public 

class 
AccountController "
:# $

Controller% /
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
IBasketService '
_basketService( 6
;6 7
private 
readonly 

IAppLogger #
<# $
AccountController$ 5
>5 6
_logger7 >
;> ?
public 
AccountController  
(  !
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
IBasketService 
basketService (
,( )

IAppLogger 
< 
AccountController (
>( )
logger* 0
)0 1
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_basketService 
= 
basketService *
;* +
_logger 
= 
logger 
; 
}   	
[## 	
HttpGet##	 
]## 
[$$ 	
AllowAnonymous$$	 
]$$ 
public%% 
async%% 
Task%% 
<%% 
IActionResult%% '
>%%' (
SignIn%%) /
(%%/ 0
string%%0 6
	returnUrl%%7 @
=%%A B
null%%C G
)%%G H
{&& 	
await'' 
HttpContext'' 
.'' 
SignOutAsync'' *
(''* +
IdentityConstants''+ <
.''< =
ExternalScheme''= K
)''K L
;''L M
ViewData)) 
[)) 
$str))  
]))  !
=))" #
	returnUrl))$ -
;))- .
if** 
(** 
!** 
String** 
.** 
IsNullOrEmpty** %
(**% &
	returnUrl**& /
)**/ 0
&&**1 3
	returnUrl++ 
.++ 
IndexOf++ !
(++! "
$str++" ,
,++, -
StringComparison++. >
.++> ?
OrdinalIgnoreCase++? P
)++P Q
>=++R T
$num++U V
)++V W
{,, 
ViewData-- 
[-- 
$str-- $
]--$ %
=--& '
$str--( 7
;--7 8
}.. 
return00 
View00 
(00 
)00 
;00 
}11 	
[44 	
HttpPost44	 
]44 
[55 	
AllowAnonymous55	 
]55 
[66 	$
ValidateAntiForgeryToken66	 !
]66! "
public77 
async77 
Task77 
<77 
IActionResult77 '
>77' (
SignIn77) /
(77/ 0
LoginViewModel770 >
model77? D
,77D E
string77F L
	returnUrl77M V
=77W X
null77Y ]
)77] ^
{88 	
if99 
(99 
!99 

ModelState99 
.99 
IsValid99 #
)99# $
{:: 
return;; 
View;; 
(;; 
model;; !
);;! "
;;;" #
}<< 
ViewData== 
[== 
$str==  
]==  !
===" #
	returnUrl==$ -
;==- .
var?? 
result?? 
=?? 
await?? 
_signInManager?? -
.??- .
PasswordSignInAsync??. A
(??A B
model??B G
.??G H
Email??H M
,??M N
model??O T
.??T U
Password??U ]
,??] ^
model??_ d
.??d e

RememberMe??e o
,??o p
lockoutOnFailure	??q Å
:
??Å Ç
false
??É à
)
??à â
;
??â ä
if@@ 
(@@ 
result@@ 
.@@ 
RequiresTwoFactor@@ (
)@@( )
{AA 
returnBB 
RedirectToActionBB '
(BB' (
nameofBB( .
(BB. /
LoginWith2faBB/ ;
)BB; <
,BB< =
newBB> A
{BBB C
	returnUrlBBD M
,BBM N
modelBBO T
.BBT U

RememberMeBBU _
}BB` a
)BBa b
;BBb c
}CC 
ifDD 
(DD 
resultDD 
.DD 
	SucceededDD  
)DD  !
{EE 
stringFF 
anonymousBasketIdFF (
=FF) *
RequestFF+ 2
.FF2 3
CookiesFF3 :
[FF: ;
	ConstantsFF; D
.FFD E
BASKET_COOKIENAMEFFE V
]FFV W
;FFW X
ifGG 
(GG 
!GG 
StringGG 
.GG 
IsNullOrEmptyGG )
(GG) *
anonymousBasketIdGG* ;
)GG; <
)GG< =
{HH 
awaitII 
_basketServiceII (
.II( )
TransferBasketAsyncII) <
(II< =
anonymousBasketIdII= N
,IIN O
modelIIP U
.IIU V
EmailIIV [
)II[ \
;II\ ]
ResponseJJ 
.JJ 
CookiesJJ $
.JJ$ %
DeleteJJ% +
(JJ+ ,
	ConstantsJJ, 5
.JJ5 6
BASKET_COOKIENAMEJJ6 G
)JJG H
;JJH I
}KK 
returnLL 
RedirectToLocalLL &
(LL& '
	returnUrlLL' 0
)LL0 1
;LL1 2
}MM 

ModelStateNN 
.NN 
AddModelErrorNN $
(NN$ %
stringNN% +
.NN+ ,
EmptyNN, 1
,NN1 2
$strNN3 K
)NNK L
;NNL M
returnOO 
ViewOO 
(OO 
modelOO 
)OO 
;OO 
}PP 	
[RR 	
HttpGetRR	 
]RR 
[SS 	
AllowAnonymousSS	 
]SS 
publicTT 
asyncTT 
TaskTT 
<TT 
IActionResultTT '
>TT' (
LoginWith2faTT) 5
(TT5 6
boolTT6 :

rememberMeTT; E
,TTE F
stringTTG M
	returnUrlTTN W
=TTX Y
nullTTZ ^
)TT^ _
{UU 	
varWW 
userWW 
=WW 
awaitWW 
_signInManagerWW +
.WW+ ,/
#GetTwoFactorAuthenticationUserAsyncWW, O
(WWO P
)WWP Q
;WWQ R
ifYY 
(YY 
userYY 
==YY 
nullYY 
)YY 
{ZZ 
throw[[ 
new[[  
ApplicationException[[ .
([[. /
$"[[/ 1
$str[[1 _
"[[_ `
)[[` a
;[[a b
}\\ 
var^^ 
model^^ 
=^^ 
new^^ !
LoginWith2faViewModel^^ 1
{^^2 3

RememberMe^^4 >
=^^? @

rememberMe^^A K
}^^L M
;^^M N
ViewData__ 
[__ 
$str__  
]__  !
=__" #
	returnUrl__$ -
;__- .
returnaa 
Viewaa 
(aa 
modelaa 
)aa 
;aa 
}bb 	
[dd 	
HttpPostdd	 
]dd 
[ee 	
AllowAnonymousee	 
]ee 
[ff 	$
ValidateAntiForgeryTokenff	 !
]ff! "
publicgg 
asyncgg 
Taskgg 
<gg 
IActionResultgg '
>gg' (
LoginWith2fagg) 5
(gg5 6!
LoginWith2faViewModelgg6 K
modelggL Q
,ggQ R
boolggS W

rememberMeggX b
,ggb c
stringggd j
	returnUrlggk t
=ggu v
nullggw {
)gg{ |
{hh 	
ifii 
(ii 
!ii 

ModelStateii 
.ii 
IsValidii #
)ii# $
{jj 
returnkk 
Viewkk 
(kk 
modelkk !
)kk! "
;kk" #
}ll 
varnn 
usernn 
=nn 
awaitnn 
_signInManagernn +
.nn+ ,/
#GetTwoFactorAuthenticationUserAsyncnn, O
(nnO P
)nnP Q
;nnQ R
ifoo 
(oo 
useroo 
==oo 
nulloo 
)oo 
{pp 
throwqq 
newqq  
ApplicationExceptionqq .
(qq. /
$"qq/ 1
$strqq1 N
{qqN O
_userManagerqqO [
.qq[ \
	GetUserIdqq\ e
(qqe f
Userqqf j
)qqj k
}qqk l
$strqql n
"qqn o
)qqo p
;qqp q
}rr 
vartt 
authenticatorCodett !
=tt" #
modeltt$ )
.tt) *
TwoFactorCodett* 7
.tt7 8
Replacett8 ?
(tt? @
$strtt@ C
,ttC D
stringttE K
.ttK L
EmptyttL Q
)ttQ R
.ttR S
ReplacettS Z
(ttZ [
$strtt[ ^
,tt^ _
stringtt` f
.ttf g
Emptyttg l
)ttl m
;ttm n
varvv 
resultvv 
=vv 
awaitvv 
_signInManagervv -
.vv- .-
!TwoFactorAuthenticatorSignInAsyncvv. O
(vvO P
authenticatorCodevvP a
,vva b

rememberMevvc m
,vvm n
modelvvo t
.vvt u
RememberMachine	vvu Ñ
)
vvÑ Ö
;
vvÖ Ü
ifxx 
(xx 
resultxx 
.xx 
	Succeededxx  
)xx  !
{yy 
_loggerzz 
.zz 
LogInformationzz &
(zz& '
$strzz' R
,zzR S
userzzT X
.zzX Y
IdzzY [
)zz[ \
;zz\ ]
return{{ 
RedirectToLocal{{ &
({{& '
	returnUrl{{' 0
){{0 1
;{{1 2
}|| 
else}} 
if}} 
(}} 
result}} 
.}} 
IsLockedOut}} '
)}}' (
{~~ 
_logger 
. 

LogWarning "
(" #
$str# N
,N O
userP T
.T U
IdU W
)W X
;X Y
return
ÄÄ 
RedirectToAction
ÄÄ '
(
ÄÄ' (
nameof
ÄÄ( .
(
ÄÄ. /
Lockout
ÄÄ/ 6
)
ÄÄ6 7
)
ÄÄ7 8
;
ÄÄ8 9
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
_logger
ÑÑ 
.
ÑÑ 

LogWarning
ÑÑ "
(
ÑÑ" #
$str
ÑÑ# b
,
ÑÑb c
user
ÑÑd h
.
ÑÑh i
Id
ÑÑi k
)
ÑÑk l
;
ÑÑl m

ModelState
ÖÖ 
.
ÖÖ 
AddModelError
ÖÖ (
(
ÖÖ( )
string
ÖÖ) /
.
ÖÖ/ 0
Empty
ÖÖ0 5
,
ÖÖ5 6
$str
ÖÖ7 T
)
ÖÖT U
;
ÖÖU V
return
ÜÜ 
View
ÜÜ 
(
ÜÜ 
)
ÜÜ 
;
ÜÜ 
}
áá 
}
àà 	
[
ää 	
HttpGet
ää	 
]
ää 
[
ãã 	
AllowAnonymous
ãã	 
]
ãã 
public
åå 
IActionResult
åå 
Lockout
åå $
(
åå$ %
)
åå% &
{
çç 	
return
éé 
View
éé 
(
éé 
)
éé 
;
éé 
}
èè 	
[
íí 	
HttpPost
íí	 
]
íí 
[
ìì 	&
ValidateAntiForgeryToken
ìì	 !
]
ìì! "
public
îî 
async
îî 
Task
îî 
<
îî 
ActionResult
îî &
>
îî& '
SignOut
îî( /
(
îî/ 0
)
îî0 1
{
ïï 	
await
ññ 
_signInManager
ññ  
.
ññ  !
SignOutAsync
ññ! -
(
ññ- .
)
ññ. /
;
ññ/ 0
return
òò 
RedirectToAction
òò #
(
òò# $
nameof
òò$ *
(
òò* +
CatalogController
òò+ <
.
òò< =
Index
òò= B
)
òòB C
,
òòC D
$str
òòE N
)
òòN O
;
òòO P
}
ôô 	
[
õõ 	
AllowAnonymous
õõ	 
]
õõ 
public
úú 
IActionResult
úú 
Register
úú %
(
úú% &
)
úú& '
{
ùù 	
return
ûû 
View
ûû 
(
ûû 
)
ûû 
;
ûû 
}
üü 	
[
°° 	
HttpPost
°°	 
]
°° 
[
¢¢ 	
AllowAnonymous
¢¢	 
]
¢¢ 
[
££ 	&
ValidateAntiForgeryToken
££	 !
]
££! "
public
§§ 
async
§§ 
Task
§§ 
<
§§ 
IActionResult
§§ '
>
§§' (
Register
§§) 1
(
§§1 2
RegisterViewModel
§§2 C
model
§§D I
,
§§I J
string
§§K Q
	returnUrl
§§R [
=
§§\ ]
null
§§^ b
)
§§b c
{
•• 	
if
¶¶ 
(
¶¶ 

ModelState
¶¶ 
.
¶¶ 
IsValid
¶¶ "
)
¶¶" #
{
ßß 
var
®® 
user
®® 
=
®® 
new
®® 
ApplicationUser
®® .
{
®®/ 0
UserName
®®1 9
=
®®: ;
model
®®< A
.
®®A B
Email
®®B G
,
®®G H
Email
®®I N
=
®®O P
model
®®Q V
.
®®V W
Email
®®W \
}
®®] ^
;
®®^ _
var
©© 
result
©© 
=
©© 
await
©© "
_userManager
©©# /
.
©©/ 0
CreateAsync
©©0 ;
(
©©; <
user
©©< @
,
©©@ A
model
©©B G
.
©©G H
Password
©©H P
)
©©P Q
;
©©Q R
if
™™ 
(
™™ 
result
™™ 
.
™™ 
	Succeeded
™™ $
)
™™$ %
{
´´ 
await
¨¨ 
_signInManager
¨¨ (
.
¨¨( )
SignInAsync
¨¨) 4
(
¨¨4 5
user
¨¨5 9
,
¨¨9 :
isPersistent
¨¨; G
:
¨¨G H
false
¨¨I N
)
¨¨N O
;
¨¨O P
return
≠≠ 
RedirectToLocal
≠≠ *
(
≠≠* +
	returnUrl
≠≠+ 4
)
≠≠4 5
;
≠≠5 6
}
ÆÆ 
	AddErrors
ØØ 
(
ØØ 
result
ØØ  
)
ØØ  !
;
ØØ! "
}
∞∞ 
return
≤≤ 
View
≤≤ 
(
≤≤ 
model
≤≤ 
)
≤≤ 
;
≤≤ 
}
≥≥ 	
[
µµ 	
HttpGet
µµ	 
]
µµ 
[
∂∂ 	
AllowAnonymous
∂∂	 
]
∂∂ 
public
∑∑ 
async
∑∑ 
Task
∑∑ 
<
∑∑ 
IActionResult
∑∑ '
>
∑∑' (
ConfirmEmail
∑∑) 5
(
∑∑5 6
string
∑∑6 <
userId
∑∑= C
,
∑∑C D
string
∑∑E K
code
∑∑L P
)
∑∑P Q
{
∏∏ 	
if
ππ 
(
ππ 
userId
ππ 
==
ππ 
null
ππ 
||
ππ !
code
ππ" &
==
ππ' )
null
ππ* .
)
ππ. /
{
∫∫ 
return
ªª 
RedirectToAction
ªª '
(
ªª' (
nameof
ªª( .
(
ªª. /
CatalogController
ªª/ @
.
ªª@ A
Index
ªªA F
)
ªªF G
,
ªªG H
$str
ªªI R
)
ªªR S
;
ªªS T
}
ºº 
var
ΩΩ 
user
ΩΩ 
=
ΩΩ 
await
ΩΩ 
_userManager
ΩΩ )
.
ΩΩ) *
FindByIdAsync
ΩΩ* 7
(
ΩΩ7 8
userId
ΩΩ8 >
)
ΩΩ> ?
;
ΩΩ? @
if
ææ 
(
ææ 
user
ææ 
==
ææ 
null
ææ 
)
ææ 
{
øø 
throw
¿¿ 
new
¿¿ "
ApplicationException
¿¿ .
(
¿¿. /
$"
¿¿/ 1
$str
¿¿1 N
{
¿¿N O
userId
¿¿O U
}
¿¿U V
$str
¿¿V X
"
¿¿X Y
)
¿¿Y Z
;
¿¿Z [
}
¡¡ 
var
¬¬ 
result
¬¬ 
=
¬¬ 
await
¬¬ 
_userManager
¬¬ +
.
¬¬+ ,
ConfirmEmailAsync
¬¬, =
(
¬¬= >
user
¬¬> B
,
¬¬B C
code
¬¬D H
)
¬¬H I
;
¬¬I J
return
√√ 
View
√√ 
(
√√ 
result
√√ 
.
√√ 
	Succeeded
√√ (
?
√√) *
$str
√√+ 9
:
√√: ;
$str
√√< C
)
√√C D
;
√√D E
}
ƒƒ 	
[
∆∆ 	
HttpGet
∆∆	 
]
∆∆ 
[
«« 	
AllowAnonymous
««	 
]
«« 
public
»» 
IActionResult
»» 
ResetPassword
»» *
(
»»* +
string
»»+ 1
code
»»2 6
=
»»7 8
null
»»9 =
)
»»= >
{
…… 	
if
   
(
   
code
   
==
   
null
   
)
   
{
ÀÀ 
throw
ÃÃ 
new
ÃÃ "
ApplicationException
ÃÃ .
(
ÃÃ. /
$str
ÃÃ/ \
)
ÃÃ\ ]
;
ÃÃ] ^
}
ÕÕ 
var
ŒŒ 
model
ŒŒ 
=
ŒŒ 
new
ŒŒ $
ResetPasswordViewModel
ŒŒ 2
{
ŒŒ3 4
Code
ŒŒ5 9
=
ŒŒ: ;
code
ŒŒ< @
}
ŒŒA B
;
ŒŒB C
return
œœ 
View
œœ 
(
œœ 
model
œœ 
)
œœ 
;
œœ 
}
–– 	
private
““ 
IActionResult
““ 
RedirectToLocal
““ -
(
““- .
string
““. 4
	returnUrl
““5 >
)
““> ?
{
”” 	
if
‘‘ 
(
‘‘ 
Url
‘‘ 
.
‘‘ 

IsLocalUrl
‘‘ 
(
‘‘ 
	returnUrl
‘‘ (
)
‘‘( )
)
‘‘) *
{
’’ 
return
÷÷ 
Redirect
÷÷ 
(
÷÷  
	returnUrl
÷÷  )
)
÷÷) *
;
÷÷* +
}
◊◊ 
else
ÿÿ 
{
ŸŸ 
return
⁄⁄ 
RedirectToAction
⁄⁄ '
(
⁄⁄' (
nameof
⁄⁄( .
(
⁄⁄. /
CatalogController
⁄⁄/ @
.
⁄⁄@ A
Index
⁄⁄A F
)
⁄⁄F G
,
⁄⁄G H
$str
⁄⁄I R
)
⁄⁄R S
;
⁄⁄S T
}
€€ 
}
‹‹ 	
private
ﬁﬁ 
void
ﬁﬁ 
	AddErrors
ﬁﬁ 
(
ﬁﬁ 
IdentityResult
ﬁﬁ -
result
ﬁﬁ. 4
)
ﬁﬁ4 5
{
ﬂﬂ 	
foreach
‡‡ 
(
‡‡ 
var
‡‡ 
error
‡‡ 
in
‡‡ !
result
‡‡" (
.
‡‡( )
Errors
‡‡) /
)
‡‡/ 0
{
·· 

ModelState
‚‚ 
.
‚‚ 
AddModelError
‚‚ (
(
‚‚( )
$str
‚‚) +
,
‚‚+ ,
error
‚‚- 2
.
‚‚2 3
Description
‚‚3 >
)
‚‚> ?
;
‚‚? @
}
„„ 
}
‰‰ 	
}
ÂÂ 
}ÊÊ ÿ
QC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\Web\Constants.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 
Web  
{ 
public 

static 
class 
	Constants !
{ 
public 
const 
string 
BASKET_COOKIENAME -
=. /
$str0 7
;7 8
} 
} 