ª

tC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\ViewModels\PaginationInfoViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (

ViewModels( 2
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
} ˆ
qC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\ViewModels\CatalogItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (

ViewModels( 2
{ 
public 

class  
CatalogItemViewModel %
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
string 
Name 
{ 
get  
;  !
set" %
;% &
}' (
public 
string 

PictureUri  
{! "
get# &
;& '
set( +
;+ ,
}- .
public		 
decimal		 
Price		 
{		 
get		 "
;		" #
set		$ '
;		' (
}		) *
}

 
} ¬
rC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\ViewModels\CatalogIndexViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (

ViewModels( 2
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
} °
lC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\ViewModels\BasketViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (

ViewModels( 2
{ 
public 

class 
BasketViewModel  
{		 
public

 
int

 
Id

 
{

 
get

 
;

 
set

  
;

  !
}

" #
public 
List 
< 
BasketItemViewModel '
>' (
Items) .
{/ 0
get1 4
;4 5
set6 9
;9 :
}; <
== >
new? B
ListC G
<G H
BasketItemViewModelH [
>[ \
(\ ]
)] ^
;^ _
public 
string 
BuyerId 
{ 
get  #
;# $
set% (
;( )
}* +
public 
decimal 
Total 
( 
) 
{ 	
return 
Math 
. 
Round 
( 
Items #
.# $
Sum$ '
(' (
x( )
=>* ,
x- .
.. /
	UnitPrice/ 8
*9 :
x; <
.< =
Quantity= E
)E F
,F G
$numH I
)I J
;J K
} 	
} 
} ◊
pC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\ViewModels\BasketItemViewModel.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (

ViewModels( 2
{ 
public 

class 
BasketItemViewModel $
{ 
public 
int 
Id 
{ 
get 
; 
set  
;  !
}" #
public 
int 
CatalogItemId  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
ProductName !
{" #
get$ '
;' (
set) ,
;, -
}. /
public		 
decimal		 
	UnitPrice		  
{		! "
get		# &
;		& '
set		( +
;		+ ,
}		- .
public

 
decimal

 
OldUnitPrice

 #
{

$ %
get

& )
;

) *
set

+ .
;

. /
}

0 1
public 
int 
Quantity 
{ 
get !
;! "
set# &
;& '
}( )
public 
string 

PictureUrl  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 
} Ñ
gC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\ViewComponents\Basket.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
ViewComponents( 6
{		 
public

 

class

 
Basket

 
:

 
ViewComponent

 '
{ 
private 
readonly 
IBasketService '
_basketService( 6
;6 7
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
public 
Basket 
( 
IBasketService $
basketService% 2
,2 3
SignInManager %
<% &
ApplicationUser& 5
>5 6
signInManager7 D
)D E
{ 	
_basketService 
= 
basketService *
;* +
_signInManager 
= 
signInManager *
;* +
} 	
public 
async 
Task 
<  
IViewComponentResult .
>. /
InvokeAsync0 ;
(; <
)< =
{ 	
var 
vm 
= 
new $
BasketComponentViewModel 1
(1 2
)2 3
;3 4
string 
userName 
= 
GetUsername )
() *
)* +
;+ ,
vm 
. 

ItemsCount 
= 
( 
await "
_basketService# 1
.1 2#
GetBasketItemCountAsync2 I
(I J
userNameJ R
)R S
)S T
;T U
return 
View 
( 
vm 
) 
; 
} 	
public 
class $
BasketComponentViewModel -
{ 	
public   
int   

ItemsCount   !
{  " #
get  $ '
;  ' (
set  ) ,
;  , -
}  . /
}!! 	
private## 
string## 
GetUsername## "
(##" #
)### $
{$$ 	
if%% 
(%% 
_signInManager%% 
.%% 

IsSignedIn%% )
(%%) *
HttpContext%%* 5
.%%5 6
User%%6 :
)%%: ;
)%%; <
{&& 
return'' 
User'' 
.'' 
Identity'' $
.''$ %
Name''% )
;'') *
}(( 
return)) !
GetBasketIdFromCookie)) (
())( )
)))) *
??))+ -
	Constants)). 7
.))7 8
DEFAULT_USERNAME))8 H
;))H I
}** 	
private,, 
string,, !
GetBasketIdFromCookie,, ,
(,,, -
),,- .
{-- 	
if.. 
(.. 
Request.. 
... 
Cookies.. 
...  
ContainsKey..  +
(..+ ,
	Constants.., 5
...5 6
BASKET_COOKIENAME..6 G
)..G H
)..H I
{// 
return00 
Request00 
.00 
Cookies00 &
[00& '
	Constants00' 0
.000 1
BASKET_COOKIENAME001 B
]00B C
;00C D
}11 
return22 
null22 
;22 
}33 	
}44 
}55 “h
YC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Startup.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
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
{   	$
ConfigureTestingServices"" $
(""$ %
services""% -
)""- .
;"". /
}'' 	
public(( 
void(( $
ConfigureTestingServices(( ,
(((, -
IServiceCollection((- ?
services((@ H
)((H I
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
services88 
.88 
AddDbContext88 !
<88! "
CatalogContext88" 0
>880 1
(881 2
c882 3
=>884 6
{99 
try:: 
{;; 
c>> 
.>> 
UseSqlServer>> "
(>>" #
Configuration>># 0
.>>0 1
GetConnectionString>>1 D
(>>D E
$str>>E X
)>>X Y
)>>Y Z
;>>Z [
}?? 
catch@@ 
(@@ 
System@@ 
.@@ 
	Exception@@ '
ex@@( *
)@@* +
{AA 
varBB 
messageBB 
=BB  !
exBB" $
.BB$ %
MessageBB% ,
;BB, -
}CC 
}DD 
)DD 
;DD 
servicesGG 
.GG 
AddDbContextGG !
<GG! " 
AppIdentityDbContextGG" 6
>GG6 7
(GG7 8
optionsGG8 ?
=>GG@ B
optionsHH 
.HH 
UseSqlServerHH $
(HH$ %
ConfigurationHH% 2
.HH2 3
GetConnectionStringHH3 F
(HHF G
$strHHG [
)HH[ \
)HH\ ]
)HH] ^
;HH^ _
ConfigureServicesJJ 
(JJ 
servicesJJ &
)JJ& '
;JJ' (
}KK 	
publicMM 
voidMM 
ConfigureServicesMM %
(MM% &
IServiceCollectionMM& 8
servicesMM9 A
)MMA B
{NN 	
servicesOO 
.OO 
AddIdentityOO  
<OO  !
ApplicationUserOO! 0
,OO0 1
IdentityRoleOO2 >
>OO> ?
(OO? @
)OO@ A
.PP $
AddEntityFrameworkStoresPP )
<PP) * 
AppIdentityDbContextPP* >
>PP> ?
(PP? @
)PP@ A
.QQ $
AddDefaultTokenProvidersQQ )
(QQ) *
)QQ* +
;QQ+ ,
servicesSS 
.SS &
ConfigureApplicationCookieSS /
(SS/ 0
optionsSS0 7
=>SS8 :
{TT 
optionsUU 
.UU 
CookieUU 
.UU 
HttpOnlyUU '
=UU( )
trueUU* .
;UU. /
optionsVV 
.VV 
ExpireTimeSpanVV &
=VV' (
TimeSpanVV) 1
.VV1 2
	FromHoursVV2 ;
(VV; <
$numVV< =
)VV= >
;VV> ?
optionsWW 
.WW 
	LoginPathWW !
=WW" #
$strWW$ 5
;WW5 6
optionsXX 
.XX 

LogoutPathXX "
=XX# $
$strXX% 7
;XX7 8
}YY 
)YY 
;YY 
services[[ 
.[[ 
	AddScoped[[ 
([[ 
typeof[[ %
([[% &
IRepository[[& 1
<[[1 2
>[[2 3
)[[3 4
,[[4 5
typeof[[6 <
([[< =
EfRepository[[= I
<[[I J
>[[J K
)[[K L
)[[L M
;[[M N
services\\ 
.\\ 
	AddScoped\\ 
(\\ 
typeof\\ %
(\\% &
IAsyncRepository\\& 6
<\\6 7
>\\7 8
)\\8 9
,\\9 :
typeof\\; A
(\\A B
EfRepository\\B N
<\\N O
>\\O P
)\\P Q
)\\Q R
;\\R S
services^^ 
.^^ 
	AddScoped^^ 
<^^ 
ICatalogService^^ .
,^^. / 
CachedCatalogService^^0 D
>^^D E
(^^E F
)^^F G
;^^G H
services__ 
.__ 
	AddScoped__ 
<__ 
IBasketService__ -
,__- .
BasketService__/ <
>__< =
(__= >
)__> ?
;__? @
services`` 
.`` 
	AddScoped`` 
<`` #
IBasketViewModelService`` 6
,``6 7"
BasketViewModelService``8 N
>``N O
(``O P
)``P Q
;``Q R
servicesaa 
.aa 
	AddScopedaa 
<aa 
IOrderServiceaa ,
,aa, -
OrderServiceaa. :
>aa: ;
(aa; <
)aa< =
;aa= >
servicesbb 
.bb 
	AddScopedbb 
<bb 
IOrderRepositorybb /
,bb/ 0
OrderRepositorybb1 @
>bb@ A
(bbA B
)bbB C
;bbC D
servicescc 
.cc 
	AddScopedcc 
<cc 
CatalogServicecc -
>cc- .
(cc. /
)cc/ 0
;cc0 1
servicesdd 
.dd 
	Configuredd 
<dd 
CatalogSettingsdd .
>dd. /
(dd/ 0
Configurationdd0 =
)dd= >
;dd> ?
servicesee 
.ee 
AddSingletonee !
<ee! "
IUriComposeree" .
>ee. /
(ee/ 0
newee0 3
UriComposeree4 ?
(ee? @
Configurationee@ M
.eeM N
GeteeN Q
<eeQ R
CatalogSettingseeR a
>eea b
(eeb c
)eec d
)eed e
)eee f
;eef g
servicesgg 
.gg 
	AddScopedgg 
(gg 
typeofgg %
(gg% &

IAppLoggergg& 0
<gg0 1
>gg1 2
)gg2 3
,gg3 4
typeofgg5 ;
(gg; <
LoggerAdaptergg< I
<ggI J
>ggJ K
)ggK L
)ggL M
;ggM N
serviceshh 
.hh 
AddTransienthh !
<hh! "
IEmailSenderhh" .
,hh. /
EmailSenderhh0 ;
>hh; <
(hh< =
)hh= >
;hh> ?
serviceskk 
.kk 
AddMemoryCachekk #
(kk# $
)kk$ %
;kk% &
servicesmm 
.mm 
AddMvcmm 
(mm 
)mm 
.nn #
SetCompatibilityVersionnn (
(nn( )

AspNetCorenn) 3
.nn3 4
Mvcnn4 7
.nn7 8 
CompatibilityVersionnn8 L
.nnL M
Version_2_1nnM X
)nnX Y
.oo  
AddRazorPagesOptionsoo %
(oo% &
optionsoo& -
=>oo. 0
{pp 
optionsqq 
.qq 
Conventionsqq '
.qq' (
AuthorizeFolderqq( 7
(qq7 8
$strqq8 @
)qq@ A
;qqA B
optionsrr 
.rr 
Conventionsrr '
.rr' (
AuthorizePagerr( 5
(rr5 6
$strrr6 H
)rrH I
;rrI J
}ss 
)ss 
;ss 
	_servicesuu 
=uu 
servicesuu  
;uu  !
}vv 	
publicyy 
voidyy 
	Configureyy 
(yy 
IApplicationBuilderyy 1
appyy2 5
,yy5 6
IHostingEnvironmentzz 
envzz  #
)zz# $
{{{ 	
if|| 
(|| 
env|| 
.|| 
IsDevelopment|| !
(||! "
)||" #
)||# $
{}} 
app~~ 
.~~ %
UseDeveloperExceptionPage~~ -
(~~- .
)~~. /
;~~/ 0%
ListAllRegisteredServices )
() *
app* -
)- .
;. /
app
ÄÄ 
.
ÄÄ "
UseDatabaseErrorPage
ÄÄ (
(
ÄÄ( )
)
ÄÄ) *
;
ÄÄ* +
}
ÅÅ 
else
ÇÇ 
{
ÉÉ 
app
ÑÑ 
.
ÑÑ !
UseExceptionHandler
ÑÑ '
(
ÑÑ' (
$str
ÑÑ( 8
)
ÑÑ8 9
;
ÑÑ9 :
app
ÖÖ 
.
ÖÖ 
UseHsts
ÖÖ 
(
ÖÖ 
)
ÖÖ 
;
ÖÖ 
}
ÜÜ 
app
àà 
.
àà !
UseHttpsRedirection
àà #
(
àà# $
)
àà$ %
;
àà% &
app
ââ 
.
ââ 
UseStaticFiles
ââ 
(
ââ 
)
ââ  
;
ââ  !
app
ää 
.
ää 
UseAuthentication
ää !
(
ää! "
)
ää" #
;
ää# $
app
åå 
.
åå 
UseMvc
åå 
(
åå 
)
åå 
;
åå 
}
çç 	
private
èè 
void
èè '
ListAllRegisteredServices
èè .
(
èè. /!
IApplicationBuilder
èè/ B
app
èèC F
)
èèF G
{
êê 	
app
ëë 
.
ëë 
Map
ëë 
(
ëë 
$str
ëë "
,
ëë" #
builder
ëë$ +
=>
ëë, .
builder
ëë/ 6
.
ëë6 7
Run
ëë7 :
(
ëë: ;
async
ëë; @
context
ëëA H
=>
ëëI K
{
íí 
var
ìì 
sb
ìì 
=
ìì 
new
ìì 
StringBuilder
ìì *
(
ìì* +
)
ìì+ ,
;
ìì, -
sb
îî 
.
îî 
Append
îî 
(
îî 
$str
îî 1
)
îî1 2
;
îî2 3
sb
ïï 
.
ïï 
Append
ïï 
(
ïï 
$str
ïï *
)
ïï* +
;
ïï+ ,
sb
ññ 
.
ññ 
Append
ññ 
(
ññ 
$str
ññ T
)
ññT U
;
ññU V
sb
óó 
.
óó 
Append
óó 
(
óó 
$str
óó +
)
óó+ ,
;
óó, -
foreach
òò 
(
òò 
var
òò 
svc
òò  
in
òò! #
	_services
òò$ -
)
òò- .
{
ôô 
sb
öö 
.
öö 
Append
öö 
(
öö 
$str
öö $
)
öö$ %
;
öö% &
sb
õõ 
.
õõ 
Append
õõ 
(
õõ 
$"
õõ  
$str
õõ  $
{
õõ$ %
svc
õõ% (
.
õõ( )
ServiceType
õõ) 4
.
õõ4 5
FullName
õõ5 =
}
õõ= >
$str
õõ> C
"
õõC D
)
õõD E
;
õõE F
sb
úú 
.
úú 
Append
úú 
(
úú 
$"
úú  
$str
úú  $
{
úú$ %
svc
úú% (
.
úú( )
Lifetime
úú) 1
}
úú1 2
$str
úú2 7
"
úú7 8
)
úú8 9
;
úú9 :
sb
ùù 
.
ùù 
Append
ùù 
(
ùù 
$"
ùù  
$str
ùù  $
{
ùù$ %
svc
ùù% (
.
ùù( ) 
ImplementationType
ùù) ;
?
ùù; <
.
ùù< =
FullName
ùù= E
}
ùùE F
$str
ùùF K
"
ùùK L
)
ùùL M
;
ùùM N
sb
ûû 
.
ûû 
Append
ûû 
(
ûû 
$str
ûû %
)
ûû% &
;
ûû& '
}
üü 
sb
†† 
.
†† 
Append
†† 
(
†† 
$str
†† ,
)
††, -
;
††- .
await
°° 
context
°° 
.
°° 
Response
°° &
.
°°& '

WriteAsync
°°' 1
(
°°1 2
sb
°°2 4
.
°°4 5
ToString
°°5 =
(
°°= >
)
°°> ?
)
°°? @
;
°°@ A
}
¢¢ 
)
¢¢ 
)
¢¢ 
;
¢¢ 
}
££ 	
}
§§ 
}•• ËS
iC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Services\CatalogService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Services( 0
{ 
public 

class 
CatalogService 
:  !
ICatalogService" 1
{ 
private 
readonly 
ILogger  
<  !
CatalogService! /
>/ 0
_logger1 8
;8 9
private 
readonly 
IRepository $
<$ %
CatalogItem% 0
>0 1
_itemRepository2 A
;A B
private 
readonly 
IAsyncRepository )
<) *
CatalogBrand* 6
>6 7
_brandRepository8 H
;H I
private 
readonly 
IAsyncRepository )
<) *
CatalogType* 5
>5 6
_typeRepository7 F
;F G
private 
readonly 
IUriComposer %
_uriComposer& 2
;2 3
public 
CatalogService 
( 
ILoggerFactory 
loggerFactory (
,( )
IRepository 
< 
CatalogItem #
># $
itemRepository% 3
,3 4
IAsyncRepository 
< 
CatalogBrand )
>) *
brandRepository+ :
,: ;
IAsyncRepository 
< 
CatalogType (
>( )
typeRepository* 8
,8 9
IUriComposer   
uriComposer   $
)  $ %
{!! 	
_logger"" 
="" 
loggerFactory"" #
.""# $
CreateLogger""$ 0
<""0 1
CatalogService""1 ?
>""? @
(""@ A
)""A B
;""B C
_itemRepository## 
=## 
itemRepository## ,
;##, -
_brandRepository$$ 
=$$ 
brandRepository$$ .
;$$. /
_typeRepository%% 
=%% 
typeRepository%% ,
;%%, -
_uriComposer&& 
=&& 
uriComposer&& &
;&&& '
}'' 	
public)) 
async)) 
Task)) 
<)) !
CatalogIndexViewModel)) /
>))/ 0
GetCatalogItems))1 @
())@ A
int))A D
	pageIndex))E N
,))N O
int))P S
	itemsPage))T ]
,))] ^
int))_ b
?))b c
brandId))d k
,))k l
int))m p
?))p q
typeId))r x
)))x y
{** 	
_logger++ 
.++ 
LogInformation++ "
(++" #
$str++# <
)++< =
;++= >
var-- 
filterSpecification-- #
=--$ %
new--& )&
CatalogFilterSpecification--* D
(--D E
brandId--E L
,--L M
typeId--N T
)--T U
;--U V
var.. 
root.. 
=.. 
_itemRepository.. &
...& '
List..' +
(..+ ,
filterSpecification.., ?
)..? @
;..@ A
var00 

totalItems00 
=00 
root00 !
.00! "
Count00" '
(00' (
)00( )
;00) *
var22 
itemsOnPage22 
=22 
root22 "
.33 
Skip33 
(33 
	itemsPage33 
*33  !
	pageIndex33" +
)33+ ,
.44 
Take44 
(44 
	itemsPage44 
)44  
.55 
ToList55 
(55 
)55 
;55 
itemsOnPage77 
.77 
ForEach77 
(77  
x77  !
=>77" $
{88 
x99 
.99 

PictureUri99 
=99 
_uriComposer99 +
.99+ ,
ComposePicUri99, 9
(999 :
x99: ;
.99; <

PictureUri99< F
)99F G
;99G H
}:: 
):: 
;:: 
var<< 
vm<< 
=<< 
new<< !
CatalogIndexViewModel<< .
(<<. /
)<</ 0
{== 
CatalogItems>> 
=>> 
itemsOnPage>> *
.>>* +
Select>>+ 1
(>>1 2
i>>2 3
=>>>4 6
new>>7 : 
CatalogItemViewModel>>; O
(>>O P
)>>P Q
{?? 
Id@@ 
=@@ 
i@@ 
.@@ 
Id@@ 
,@@ 
NameAA 
=AA 
iAA 
.AA 
NameAA !
,AA! "

PictureUriBB 
=BB  
iBB! "
.BB" #

PictureUriBB# -
,BB- .
PriceCC 
=CC 
iCC 
.CC 
PriceCC #
}DD 
)DD 
,DD 
BrandsEE 
=EE 
awaitEE 
	GetBrandsEE (
(EE( )
)EE) *
,EE* +
TypesFF 
=FF 
awaitFF 
GetTypesFF &
(FF& '
)FF' (
,FF( )
BrandFilterAppliedGG "
=GG# $
brandIdGG% ,
??GG- /
$numGG0 1
,GG1 2
TypesFilterAppliedHH "
=HH# $
typeIdHH% +
??HH, .
$numHH/ 0
,HH0 1
PaginationInfoII 
=II  
newII! $#
PaginationInfoViewModelII% <
(II< =
)II= >
{JJ 

ActualPageKK 
=KK  
	pageIndexKK! *
,KK* +
ItemsPerPageLL  
=LL! "
itemsOnPageLL# .
.LL. /
CountLL/ 4
,LL4 5

TotalItemsMM 
=MM  

totalItemsMM! +
,MM+ ,

TotalPagesNN 
=NN  
intNN! $
.NN$ %
ParseNN% *
(NN* +
MathNN+ /
.NN/ 0
CeilingNN0 7
(NN7 8
(NN8 9
(NN9 :
decimalNN: A
)NNA B

totalItemsNNB L
/NNM N
	itemsPageNNO X
)NNX Y
)NNY Z
.NNZ [
ToStringNN[ c
(NNc d
)NNd e
)NNe f
}OO 
}PP 
;PP 
vmRR 
.RR 
PaginationInfoRR 
.RR 
NextRR "
=RR# $
(RR% &
vmRR& (
.RR( )
PaginationInfoRR) 7
.RR7 8

ActualPageRR8 B
==RRC E
vmRRF H
.RRH I
PaginationInfoRRI W
.RRW X

TotalPagesRRX b
-RRc d
$numRRe f
)RRf g
?RRh i
$strRRj w
:RRx y
$strRRz |
;RR| }
vmSS 
.SS 
PaginationInfoSS 
.SS 
PreviousSS &
=SS' (
(SS) *
vmSS* ,
.SS, -
PaginationInfoSS- ;
.SS; <

ActualPageSS< F
==SSG I
$numSSJ K
)SSK L
?SSM N
$strSSO \
:SS] ^
$strSS_ a
;SSa b
returnUU 
vmUU 
;UU 
}VV 	
publicXX 
asyncXX 
TaskXX 
<XX 
IEnumerableXX %
<XX% &
SelectListItemXX& 4
>XX4 5
>XX5 6
	GetBrandsXX7 @
(XX@ A
)XXA B
{YY 	
_loggerZZ 
.ZZ 
LogInformationZZ "
(ZZ" #
$strZZ# 6
)ZZ6 7
;ZZ7 8
var[[ 
brands[[ 
=[[ 
await[[ 
_brandRepository[[ /
.[[/ 0
ListAllAsync[[0 <
([[< =
)[[= >
;[[> ?
var]] 
items]] 
=]] 
new]] 
List]]  
<]]  !
SelectListItem]]! /
>]]/ 0
{^^ 
new__ 
SelectListItem__ "
(__" #
)__# $
{__% &
Value__' ,
=__- .
null__/ 3
,__3 4
Text__5 9
=__: ;
$str__< A
,__A B
Selected__C K
=__L M
true__N R
}__S T
}`` 
;`` 
foreachaa 
(aa 
CatalogBrandaa !
brandaa" '
inaa( *
brandsaa+ 1
)aa1 2
{bb 
itemscc 
.cc 
Addcc 
(cc 
newcc 
SelectListItemcc ,
(cc, -
)cc- .
{cc/ 0
Valuecc1 6
=cc7 8
brandcc9 >
.cc> ?
Idcc? A
.ccA B
ToStringccB J
(ccJ K
)ccK L
,ccL M
TextccN R
=ccS T
brandccU Z
.ccZ [
Brandcc[ `
}cca b
)ccb c
;ccc d
}dd 
returnff 
itemsff 
;ff 
}gg 	
publicii 
asyncii 
Taskii 
<ii 
IEnumerableii %
<ii% &
SelectListItemii& 4
>ii4 5
>ii5 6
GetTypesii7 ?
(ii? @
)ii@ A
{jj 	
_loggerkk 
.kk 
LogInformationkk "
(kk" #
$strkk# 5
)kk5 6
;kk6 7
varll 
typesll 
=ll 
awaitll 
_typeRepositoryll -
.ll- .
ListAllAsyncll. :
(ll: ;
)ll; <
;ll< =
varmm 
itemsmm 
=mm 
newmm 
Listmm  
<mm  !
SelectListItemmm! /
>mm/ 0
{nn 
newoo 
SelectListItemoo "
(oo" #
)oo# $
{oo% &
Valueoo' ,
=oo- .
nulloo/ 3
,oo3 4
Textoo5 9
=oo: ;
$stroo< A
,ooA B
SelectedooC K
=ooL M
trueooN R
}ooS T
}pp 
;pp 
foreachqq 
(qq 
CatalogTypeqq  
typeqq! %
inqq& (
typesqq) .
)qq. /
{rr 
itemsss 
.ss 
Addss 
(ss 
newss 
SelectListItemss ,
(ss, -
)ss- .
{ss/ 0
Valuess1 6
=ss7 8
typess9 =
.ss= >
Idss> @
.ss@ A
ToStringssA I
(ssI J
)ssJ K
,ssK L
TextssM Q
=ssR S
typessT X
.ssX Y
TypessY ]
}ss^ _
)ss_ `
;ss` a
}tt 
returnvv 
itemsvv 
;vv 
}ww 	
}xx 
}yy ı%
oC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Services\CachedCatalogService.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 

RazorPages		 '
.		' (
Services		( 0
{

 
public 

class  
CachedCatalogService %
:& '
ICatalogService( 7
{ 
private 
readonly 
IMemoryCache %
_cache& ,
;, -
private 
readonly 
CatalogService '
_catalogService( 7
;7 8
private 
static 
readonly 
string  &

_brandsKey' 1
=2 3
$str4 <
;< =
private 
static 
readonly 
string  &
	_typesKey' 0
=1 2
$str3 :
;: ;
private 
static 
readonly 
string  &
_itemsKeyTemplate' 8
=9 :
$str; R
;R S
private 
static 
readonly 
TimeSpan  (!
_defaultCacheDuration) >
=? @
TimeSpanA I
.I J
FromSecondsJ U
(U V
$numV X
)X Y
;Y Z
public  
CachedCatalogService #
(# $
IMemoryCache$ 0
cache1 6
,6 7
CatalogService 
catalogService )
)) *
{ 	
_cache 
= 
cache 
; 
_catalogService 
= 
catalogService ,
;, -
} 	
public 
async 
Task 
< 
IEnumerable %
<% &
SelectListItem& 4
>4 5
>5 6
	GetBrands7 @
(@ A
)A B
{ 	
return 
await 
_cache 
.  
GetOrCreateAsync  0
(0 1

_brandsKey1 ;
,; <
async= B
entryC H
=>I K
{ 
entry 
. 
SlidingExpiration /
=0 1!
_defaultCacheDuration2 G
;G H
return   
await   $
_catalogService  % 4
.  4 5
	GetBrands  5 >
(  > ?
)  ? @
;  @ A
}!! 
)!! 
;!! 
}"" 	
public$$ 
async$$ 
Task$$ 
<$$ !
CatalogIndexViewModel$$ /
>$$/ 0
GetCatalogItems$$1 @
($$@ A
int$$A D
	pageIndex$$E N
,$$N O
int$$P S
	itemsPage$$T ]
,$$] ^
int$$_ b
?$$b c
brandID$$d k
,$$k l
int$$m p
?$$p q
typeId$$r x
)$$x y
{%% 	
string&& 
cacheKey&& 
=&& 
String&& $
.&&$ %
Format&&% +
(&&+ ,
_itemsKeyTemplate&&, =
,&&= >
	pageIndex&&? H
,&&H I
	itemsPage&&J S
,&&S T
brandID&&U \
,&&\ ]
typeId&&^ d
)&&d e
;&&e f
return'' 
await'' 
_cache'' 
.''  
GetOrCreateAsync''  0
(''0 1
cacheKey''1 9
,''9 :
async''; @
entry''A F
=>''G I
{(( 
entry)) 
.)) 
SlidingExpiration)) '
=))( )!
_defaultCacheDuration))* ?
;))? @
return** 
await** 
_catalogService** ,
.**, -
GetCatalogItems**- <
(**< =
	pageIndex**= F
,**F G
	itemsPage**H Q
,**Q R
brandID**S Z
,**Z [
typeId**\ b
)**b c
;**c d
}++ 
)++ 
;++ 
},, 	
public.. 
async.. 
Task.. 
<.. 
IEnumerable.. %
<..% &
SelectListItem..& 4
>..4 5
>..5 6
GetTypes..7 ?
(..? @
)..@ A
{// 	
return00 
await00 
_cache00 
.00  
GetOrCreateAsync00  0
(000 1
	_typesKey001 :
,00: ;
async00< A
entry00B G
=>00H J
{11 
entry22 
.22 
SlidingExpiration22 '
=22( )!
_defaultCacheDuration22* ?
;22? @
return33 
await33 
_catalogService33 ,
.33, -
GetTypes33- 5
(335 6
)336 7
;337 8
}44 
)44 
;44 
}55 	
}66 
}77 ”/
qC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Services\BasketViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Services( 0
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
(!! 
basket!! 
==!! 
null!! 
)!! 
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
}MM ª
YC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Program.cs
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
 

RazorPages

 '
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
}// Ω
jC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Order\Index.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 

RazorPages		 '
.		' (
Pages		( -
.		- .
Order		. 3
{

 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
IOrderRepository )
_orderRepository* :
;: ;
public 

IndexModel 
( 
IOrderRepository *
orderRepository+ :
): ;
{ 	
_orderRepository 
= 
orderRepository .
;. /
} 	
public 
List 
< 
OrderSummary  
>  !
Orders" (
{) *
get+ .
;. /
set0 3
;3 4
}5 6
=7 8
new9 <
List= A
<A B
OrderSummaryB N
>N O
(O P
)P Q
;Q R
public 
class 
OrderSummary !
{ 	
public 
int 
OrderNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTimeOffset !
	OrderDate" +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
decimal 
Total  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Status  
{! "
get# &
;& '
set( +
;+ ,
}- .
} 	
public 
async 
Task 
OnGet 
(  
)  !
{ 	
var   
orders   
=   
await   
_orderRepository   /
.  / 0
	ListAsync  0 9
(  9 :
new  : =0
$CustomerOrdersWithItemsSpecification  > b
(  b c
User  c g
.  g h
Identity  h p
.  p q
Name  q u
)  u v
)  v w
;  w x
Orders"" 
="" 
orders"" 
.## 
Select## 
(## 
o## 
=>## 
new##  
OrderSummary##! -
(##- .
)##. /
{$$ 
	OrderDate%% 
=%% 
o%%  !
.%%! "
	OrderDate%%" +
,%%+ ,
OrderNumber&& 
=&&  !
o&&" #
.&&# $
Id&&$ &
,&&& '
Status'' 
='' 
$str'' &
,''& '
Total(( 
=(( 
o(( 
.(( 
Total(( #
(((# $
)(($ %
}** 
)** 
.** 
ToList** 
(** 
)** 
;** 
}++ 	
},, 
}-- ø+
kC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Order\Detail.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 

RazorPages		 '
.		' (
Pages		( -
.		- .
Order		. 3
{

 
public 

class 
DetailModel 
: 
	PageModel (
{ 
private 
readonly 
IOrderRepository )
_orderRepository* :
;: ;
public 
DetailModel 
( 
IOrderRepository +
orderRepository, ;
); <
{ 	
_orderRepository 
= 
orderRepository .
;. /
} 	
public 
OrderViewModel 
OrderDetails *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
OrderViewModel? M
(M N
)N O
;O P
public 
class 
OrderViewModel #
{ 	
public 
int 
OrderNumber "
{# $
get% (
;( )
set* -
;- .
}/ 0
public 
DateTimeOffset !
	OrderDate" +
{, -
get. 1
;1 2
set3 6
;6 7
}8 9
public 
decimal 
Total  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Status  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
Address 
ShippingAddress *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
public 
List 
< 
OrderItemViewModel *
>* +

OrderItems, 6
{7 8
get9 <
;< =
set> A
;A B
}C D
=E F
newG J
ListK O
<O P
OrderItemViewModelP b
>b c
(c d
)d e
;e f
}   	
public"" 
class"" 
OrderItemViewModel"" '
{## 	
public$$ 
int$$ 
	ProductId$$  
{$$! "
get$$# &
;$$& '
set$$( +
;$$+ ,
}$$- .
public%% 
string%% 
ProductName%% %
{%%& '
get%%( +
;%%+ ,
set%%- 0
;%%0 1
}%%2 3
public&& 
decimal&& 
	UnitPrice&& $
{&&% &
get&&' *
;&&* +
set&&, /
;&&/ 0
}&&1 2
public'' 
decimal'' 
Discount'' #
{''$ %
get''& )
;'') *
set''+ .
;''. /
}''0 1
public(( 
int(( 
Units(( 
{(( 
get(( "
;((" #
set(($ '
;((' (
}(() *
public)) 
string)) 

PictureUrl)) $
{))% &
get))' *
;))* +
set)), /
;))/ 0
}))1 2
}** 	
public,, 
async,, 
Task,, 
OnGet,, 
(,,  
int,,  #
orderId,,$ +
),,+ ,
{-- 	
var.. 
order.. 
=.. 
await.. 
_orderRepository.. .
.... /!
GetByIdWithItemsAsync../ D
(..D E
orderId..E L
)..L M
;..M N
OrderDetails// 
=// 
new// 
OrderViewModel// -
(//- .
)//. /
{00 
	OrderDate11 
=11 
order11 !
.11! "
	OrderDate11" +
,11+ ,

OrderItems22 
=22 
order22 "
.22" #

OrderItems22# -
.22- .
Select22. 4
(224 5
oi225 7
=>228 :
new22; >
OrderItemViewModel22? Q
(22Q R
)22R S
{33 
Discount44 
=44 
$num44  
,44  !

PictureUrl55 
=55  
oi55! #
.55# $
ItemOrdered55$ /
.55/ 0

PictureUri550 :
,55: ;
	ProductId66 
=66 
oi66  "
.66" #
ItemOrdered66# .
.66. /
CatalogItemId66/ <
,66< =
ProductName77 
=77  !
oi77" $
.77$ %
ItemOrdered77% 0
.770 1
ProductName771 <
,77< =
	UnitPrice88 
=88 
oi88  "
.88" #
	UnitPrice88# ,
,88, -
Units99 
=99 
oi99 
.99 
Units99 $
}:: 
):: 
.:: 
ToList:: 
(:: 
):: 
,:: 
OrderNumber;; 
=;; 
order;; #
.;;# $
Id;;$ &
,;;& '
ShippingAddress<< 
=<<  !
order<<" '
.<<' (
ShipToAddress<<( 5
,<<5 6
Status== 
=== 
$str== "
,==" #
Total>> 
=>> 
order>> 
.>> 
Total>> #
(>># $
)>>$ %
}?? 
;?? 
}@@ 	
}AA 
}BB ¶
dC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Index.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
{ 
public		 

class		 

IndexModel		 
:		 
	PageModel		 '
{

 
private 
readonly 
ICatalogService (
_catalogService) 8
;8 9
public 

IndexModel 
( 
ICatalogService )
catalogService* 8
)8 9
{ 	
_catalogService 
= 
catalogService ,
;, -
} 	
public !
CatalogIndexViewModel $
CatalogModel% 1
{2 3
get4 7
;7 8
set9 <
;< =
}> ?
=@ A
newB E!
CatalogIndexViewModelF [
([ \
)\ ]
;] ^
public 
async 
Task 
OnGet 
(  !
CatalogIndexViewModel  5
catalogModel6 B
,B C
intD G
?G H
pageIdI O
)O P
{ 	
CatalogModel 
= 
await  
_catalogService! 0
.0 1
GetCatalogItems1 @
(@ A
pageIdA G
??H J
$numK L
,L M
	ConstantsN W
.W X
ITEMS_PER_PAGEX f
,f g
catalogModelh t
.t u
BrandFilterApplied	u á
,
á à
catalogModel
â ï
.
ï ñ 
TypesFilterApplied
ñ ®
)
® ©
;
© ™
} 	
} 
} É	
dC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Error.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
{ 
public 

class 

ErrorModel 
: 
	PageModel '
{ 
public 
string 
	RequestId 
{  !
get" %
;% &
set' *
;* +
}, -
public

 
bool

 
ShowRequestId

 !
=>

" $
!

% &
string

& ,
.

, -
IsNullOrEmpty

- :
(

: ;
	RequestId

; D
)

D E
;

E F
public 
void 
OnGet 
( 
) 
{ 	
	RequestId 
= 
Activity  
.  !
Current! (
?( )
.) *
Id* ,
??- /
HttpContext0 ;
.; <
TraceIdentifier< K
;K L
} 	
} 
} ≥7
kC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Basket\Index.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
.- .
Basket. 4
{ 
public 

class 

IndexModel 
: 
	PageModel '
{ 
private 
readonly 
IBasketService '
_basketService( 6
;6 7
private 
const 
string 
_basketSessionKey .
=/ 0
$str1 ;
;; <
private 
readonly 
IUriComposer %
_uriComposer& 2
;2 3
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
string 
	_username  
=! "
null# '
;' (
private 
readonly #
IBasketViewModelService 0#
_basketViewModelService1 H
;H I
public 

IndexModel 
( 
IBasketService (
basketService) 6
,6 7#
IBasketViewModelService #"
basketViewModelService$ :
,: ;
IUriComposer 
uriComposer $
,$ %
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
)8 9
{ 	
_basketService 
= 
basketService *
;* +
_uriComposer 
= 
uriComposer &
;& '
_signInManager 
= 
signInManager *
;* +#
_basketViewModelService   #
=  $ %"
basketViewModelService  & <
;  < =
}!! 	
public## 
BasketViewModel## 
BasketModel## *
{##+ ,
get##- 0
;##0 1
set##2 5
;##5 6
}##7 8
=##9 :
new##; >
BasketViewModel##? N
(##N O
)##O P
;##P Q
public%% 
async%% 
Task%% 
OnGet%% 
(%%  
)%%  !
{&& 	
await'' 
SetBasketModelAsync'' %
(''% &
)''& '
;''' (
}(( 	
public** 
async** 
Task** 
<** 
IActionResult** '
>**' (
OnPost**) /
(**/ 0 
CatalogItemViewModel**0 D
productDetails**E S
)**S T
{++ 	
if,, 
(,, 
productDetails,, 
?,, 
.,,  
Id,,  "
==,,# %
null,,& *
),,* +
{-- 
return.. 
RedirectToPage.. %
(..% &
$str..& .
)... /
;../ 0
}// 
await00 
SetBasketModelAsync00 %
(00% &
)00& '
;00' (
await22 
_basketService22  
.22  !
AddItemToBasket22! 0
(220 1
BasketModel221 <
.22< =
Id22= ?
,22? @
productDetails22A O
.22O P
Id22P R
,22R S
productDetails22T b
.22b c
Price22c h
,22h i
$num22j k
)22k l
;22l m
await44 
SetBasketModelAsync44 %
(44% &
)44& '
;44' (
return66 
RedirectToPage66 !
(66! "
)66" #
;66# $
}77 	
public99 
async99 
Task99 
OnPostUpdate99 &
(99& '

Dictionary99' 1
<991 2
string992 8
,998 9
int999 <
>99< =
items99> C
)99C D
{:: 	
await;; 
SetBasketModelAsync;; %
(;;% &
);;& '
;;;' (
await<< 
_basketService<<  
.<<  !
SetQuantities<<! .
(<<. /
BasketModel<</ :
.<<: ;
Id<<; =
,<<= >
items<<? D
)<<D E
;<<E F
await>> 
SetBasketModelAsync>> %
(>>% &
)>>& '
;>>' (
}?? 	
privateAA 
asyncAA 
TaskAA 
SetBasketModelAsyncAA .
(AA. /
)AA/ 0
{BB 	
ifCC 
(CC 
_signInManagerCC 
.CC 

IsSignedInCC )
(CC) *
HttpContextCC* 5
.CC5 6
UserCC6 :
)CC: ;
)CC; <
{DD 
BasketModelEE 
=EE 
awaitEE ##
_basketViewModelServiceEE$ ;
.EE; <$
GetOrCreateBasketForUserEE< T
(EET U
UserEEU Y
.EEY Z
IdentityEEZ b
.EEb c
NameEEc g
)EEg h
;EEh i
}FF 
elseGG 
{HH +
GetOrSetBasketCookieAndUserNameII /
(II/ 0
)II0 1
;II1 2
BasketModelJJ 
=JJ 
awaitJJ ##
_basketViewModelServiceJJ$ ;
.JJ; <$
GetOrCreateBasketForUserJJ< T
(JJT U
	_usernameJJU ^
)JJ^ _
;JJ_ `
}KK 
}LL 	
privateNN 
voidNN +
GetOrSetBasketCookieAndUserNameNN 4
(NN4 5
)NN5 6
{OO 	
ifPP 
(PP 
RequestPP 
.PP 
CookiesPP 
.PP  
ContainsKeyPP  +
(PP+ ,
	ConstantsPP, 5
.PP5 6
BASKET_COOKIENAMEPP6 G
)PPG H
)PPH I
{QQ 
	_usernameRR 
=RR 
RequestRR #
.RR# $
CookiesRR$ +
[RR+ ,
	ConstantsRR, 5
.RR5 6
BASKET_COOKIENAMERR6 G
]RRG H
;RRH I
}SS 
ifTT 
(TT 
	_usernameTT 
!=TT 
nullTT !
)TT! "
returnTT# )
;TT) *
	_usernameVV 
=VV 
GuidVV 
.VV 
NewGuidVV $
(VV$ %
)VV% &
.VV& '
ToStringVV' /
(VV/ 0
)VV0 1
;VV1 2
varWW 
cookieOptionsWW 
=WW 
newWW  #
CookieOptionsWW$ 1
(WW1 2
)WW2 3
;WW3 4
cookieOptionsXX 
.XX 
ExpiresXX !
=XX" #
DateTimeXX$ ,
.XX, -
TodayXX- 2
.XX2 3
AddYearsXX3 ;
(XX; <
$numXX< >
)XX> ?
;XX? @
ResponseYY 
.YY 
CookiesYY 
.YY 
AppendYY #
(YY# $
	ConstantsYY$ -
.YY- .
BASKET_COOKIENAMEYY. ?
,YY? @
	_usernameYYA J
,YYJ K
cookieOptionsYYL Y
)YYY Z
;YYZ [
}ZZ 	
}[[ 
}\\ ß3
nC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Basket\Checkout.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
.- .
Basket. 4
{ 
public 

class 
CheckoutModel 
:  
	PageModel! *
{ 
private 
readonly 
IBasketService '
_basketService( 6
;6 7
private 
readonly 
IUriComposer %
_uriComposer& 2
;2 3
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
IOrderService &
_orderService' 4
;4 5
private 
string 
	_username  
=! "
null# '
;' (
private 
readonly #
IBasketViewModelService 0#
_basketViewModelService1 H
;H I
public 
CheckoutModel 
( 
IBasketService +
basketService, 9
,9 :#
IBasketViewModelService #"
basketViewModelService$ :
,: ;
IUriComposer 
uriComposer $
,$ %
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
IOrderService 
orderService &
)& '
{ 	
_basketService 
= 
basketService *
;* +
_uriComposer   
=   
uriComposer   &
;  & '
_signInManager!! 
=!! 
signInManager!! *
;!!* +
_orderService"" 
="" 
orderService"" (
;""( )#
_basketViewModelService## #
=##$ %"
basketViewModelService##& <
;##< =
}$$ 	
public&& 
BasketViewModel&& 
BasketModel&& *
{&&+ ,
get&&- 0
;&&0 1
set&&2 5
;&&5 6
}&&7 8
=&&9 :
new&&; >
BasketViewModel&&? N
(&&N O
)&&O P
;&&P Q
public(( 
void(( 
OnGet(( 
((( 
)(( 
{)) 	
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (
OnPost--) /
(--/ 0

Dictionary--0 :
<--: ;
string--; A
,--A B
int--B E
>--E F
items--G L
)--L M
{.. 	
await// 
SetBasketModelAsync// %
(//% &
)//& '
;//' (
await11 
_basketService11  
.11  !
SetQuantities11! .
(11. /
BasketModel11/ :
.11: ;
Id11; =
,11= >
items11? D
)11D E
;11E F
await33 
_orderService33 
.33  
CreateOrderAsync33  0
(330 1
BasketModel331 <
.33< =
Id33= ?
,33? @
new33A D
Address33E L
(33L M
$str33M [
,33[ \
$str33] c
,33c d
$str33e i
,33i j
$str33k z
,33z {
$str	33| É
)
33É Ñ
)
33Ñ Ö
;
33Ö Ü
await55 
_basketService55  
.55  !
DeleteBasketAsync55! 2
(552 3
BasketModel553 >
.55> ?
Id55? A
)55A B
;55B C
return77 
RedirectToPage77 !
(77! "
)77" #
;77# $
}88 	
private:: 
async:: 
Task:: 
SetBasketModelAsync:: .
(::. /
)::/ 0
{;; 	
if<< 
(<< 
_signInManager<< 
.<< 

IsSignedIn<< )
(<<) *
HttpContext<<* 5
.<<5 6
User<<6 :
)<<: ;
)<<; <
{== 
BasketModel>> 
=>> 
await>> ##
_basketViewModelService>>$ ;
.>>; <$
GetOrCreateBasketForUser>>< T
(>>T U
User>>U Y
.>>Y Z
Identity>>Z b
.>>b c
Name>>c g
)>>g h
;>>h i
}?? 
else@@ 
{AA +
GetOrSetBasketCookieAndUserNameBB /
(BB/ 0
)BB0 1
;BB1 2
BasketModelCC 
=CC 
awaitCC ##
_basketViewModelServiceCC$ ;
.CC; <$
GetOrCreateBasketForUserCC< T
(CCT U
	_usernameCCU ^
)CC^ _
;CC_ `
}DD 
}EE 	
privateGG 
voidGG +
GetOrSetBasketCookieAndUserNameGG 4
(GG4 5
)GG5 6
{HH 	
ifII 
(II 
RequestII 
.II 
CookiesII 
.II  
ContainsKeyII  +
(II+ ,
	ConstantsII, 5
.II5 6
BASKET_COOKIENAMEII6 G
)IIG H
)IIH I
{JJ 
	_usernameKK 
=KK 
RequestKK #
.KK# $
CookiesKK$ +
[KK+ ,
	ConstantsKK, 5
.KK5 6
BASKET_COOKIENAMEKK6 G
]KKG H
;KKH I
}LL 
ifMM 
(MM 
	_usernameMM 
!=MM 
nullMM !
)MM! "
returnMM# )
;MM) *
	_usernameOO 
=OO 
GuidOO 
.OO 
NewGuidOO $
(OO$ %
)OO% &
.OO& '
ToStringOO' /
(OO/ 0
)OO0 1
;OO1 2
varPP 
cookieOptionsPP 
=PP 
newPP  #
CookieOptionsPP$ 1
(PP1 2
)PP2 3
;PP3 4
cookieOptionsQQ 
.QQ 
ExpiresQQ !
=QQ" #
DateTimeQQ$ ,
.QQ, -
TodayQQ- 2
.QQ2 3
AddYearsQQ3 ;
(QQ; <
$numQQ< >
)QQ> ?
;QQ? @
ResponseRR 
.RR 
CookiesRR 
.RR 
AppendRR #
(RR# $
	ConstantsRR$ -
.RR- .
BASKET_COOKIENAMERR. ?
,RR? @
	_usernameRRA J
,RRJ K
cookieOptionsRRL Y
)RRY Z
;RRZ [
}SS 	
}TT 
}UU æ4
mC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Signin.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
.- .
Account. 5
{ 
public 

class 
SigninModel 
: 
	PageModel (
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
IBasketService '
_basketService( 6
;6 7
public 
SigninModel 
( 
SignInManager (
<( )
ApplicationUser) 8
>8 9
signInManager: G
,G H
IBasketService 
basketService (
)( )
{ 	
_signInManager 
= 
signInManager *
;* +
_basketService 
= 
basketService *
;* +
} 	
[ 	
BindProperty	 
] 
public 
LoginViewModel 
LoginDetails *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
=9 :
new; >
LoginViewModel? M
(M N
)N O
;O P
public 
class 
LoginViewModel #
{ 	
[ 
Required 
] 
[ 
EmailAddress 
] 
public   
string   
Email   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
["" 
Required"" 
]"" 
[## 
DataType## 
(## 
DataType## 
.## 
Password## '
)##' (
]##( )
public$$ 
string$$ 
Password$$ "
{$$# $
get$$% (
;$$( )
set$$* -
;$$- .
}$$/ 0
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& *
)&&* +
]&&+ ,
public'' 
bool'' 

RememberMe'' "
{''# $
get''% (
;''( )
set''* -
;''- .
}''/ 0
}(( 	
public++ 
async++ 
Task++ 
OnGet++ 
(++  
string++  &
	returnUrl++' 0
=++1 2
null++3 7
)++7 8
{,, 	
await-- 
HttpContext-- 
.-- 
SignOutAsync-- *
(--* +
IdentityConstants--+ <
.--< =
ExternalScheme--= K
)--K L
;--L M
ViewData// 
[// 
$str//  
]//  !
=//" #
	returnUrl//$ -
;//- .
if00 
(00 
!00 
String00 
.00 
IsNullOrEmpty00 %
(00% &
	returnUrl00& /
)00/ 0
&&001 3
	returnUrl11 
.11 
IndexOf11 !
(11! "
$str11" ,
,11, -
StringComparison11. >
.11> ?
OrdinalIgnoreCase11? P
)11P Q
>=11R T
$num11U V
)11V W
{22 
ViewData33 
[33 
$str33 $
]33$ %
=33& '
$str33( 7
;337 8
}44 
}55 	
public66 
async66 
Task66 
<66 
IActionResult66 '
>66' (
OnPost66) /
(66/ 0
string660 6
	returnUrl667 @
=66A B
null66C G
)66G H
{77 	
if88 
(88 
!88 

ModelState88 
.88 
IsValid88 #
)88# $
{99 
return:: 
Page:: 
(:: 
):: 
;:: 
};; 
ViewData<< 
[<< 
$str<<  
]<<  !
=<<" #
	returnUrl<<$ -
;<<- .
var>> 
result>> 
=>> 
await>> 
_signInManager>> -
.>>- .
PasswordSignInAsync>>. A
(>>A B
LoginDetails>>B N
.>>N O
Email>>O T
,>>T U
LoginDetails?? 
.?? 
Password?? %
,??% &
LoginDetails??' 3
.??3 4

RememberMe??4 >
,??> ?
lockoutOnFailure??@ P
:??P Q
false??R W
)??W X
;??X Y
if@@ 
(@@ 
result@@ 
.@@ 
	Succeeded@@  
)@@  !
{AA 
stringBB 
anonymousBasketIdBB (
=BB) *
RequestBB+ 2
.BB2 3
CookiesBB3 :
[BB: ;
	ConstantsBB; D
.BBD E
BASKET_COOKIENAMEBBE V
]BBV W
;BBW X
ifCC 
(CC 
!CC 
StringCC 
.CC 
IsNullOrEmptyCC )
(CC) *
anonymousBasketIdCC* ;
)CC; <
)CC< =
{DD 
awaitEE 
_basketServiceEE (
.EE( )
TransferBasketAsyncEE) <
(EE< =
anonymousBasketIdEE= N
,EEN O
LoginDetailsEEP \
.EE\ ]
EmailEE] b
)EEb c
;EEc d
ResponseFF 
.FF 
CookiesFF $
.FF$ %
DeleteFF% +
(FF+ ,
	ConstantsFF, 5
.FF5 6
BASKET_COOKIENAMEFF6 G
)FFG H
;FFH I
}GG 
returnHH 
RedirectToPageHH %
(HH% &
	returnUrlHH& /
??HH0 2
$strHH3 ;
)HH; <
;HH< =
}II 
ifJJ 
(JJ 
resultJJ 
.JJ 
RequiresTwoFactorJJ (
)JJ( )
{KK 
returnLL 
RedirectToPageLL %
(LL% &
$strLL& 6
,LL6 7
newLL8 ;
{LL< =
	ReturnUrlLL> G
=LLH I
	returnUrlLLJ S
,LLS T

RememberMeLLU _
=LL` a
LoginDetailsLLb n
.LLn o

RememberMeLLo y
}LLz {
)LL{ |
;LL| }
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
PageOO 
(OO 
)OO 
;OO 
}PP 	
}QQ 
}RR Á+
oC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Register.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
.- .
Account. 5
{		 
public

 

class

 
RegisterModel

 
:

  
	PageModel

! *
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
public 
RegisterModel 
( 
SignInManager *
<* +
ApplicationUser+ :
>: ;
signInManager< I
,I J
UserManager #
<# $
ApplicationUser$ 3
>3 4
userManager5 @
) 
{ 	
_signInManager 
= 
signInManager *
;* +
_userManager 
= 
userManager &
;& '
} 	
[ 	
BindProperty	 
] 
public 
RegisterViewModel  
UserDetails! ,
{- .
get/ 2
;2 3
set4 7
;7 8
}9 :
public 
class 
RegisterViewModel &
{ 	
[ 
Required 
] 
[ 
EmailAddress 
] 
[ 
Display 
( 
Name 
= 
$str #
)# $
]$ %
public 
string 
Email 
{  !
get" %
;% &
set' *
;* +
}, -
[!! 
Required!! 
]!! 
["" 
StringLength"" 
("" 
$num"" 
,"" 
ErrorMessage"" +
="", -
$str"". ]
,""] ^
MinimumLength""_ l
=""m n
$num""o p
)""p q
]""q r
[## 
DataType## 
(## 
DataType## 
.## 
Password## '
)##' (
]##( )
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ &
)$$& '
]$$' (
public%% 
string%% 
Password%% "
{%%# $
get%%% (
;%%( )
set%%* -
;%%- .
}%%/ 0
['' 
DataType'' 
('' 
DataType'' 
.'' 
Password'' '
)''' (
]''( )
[(( 
Display(( 
((( 
Name(( 
=(( 
$str(( .
)((. /
]((/ 0
[)) 
Compare)) 
()) 
$str)) 
,))  
ErrorMessage))! -
=)). /
$str))0 f
)))f g
]))g h
public** 
string** 
ConfirmPassword** )
{*** +
get**, /
;**/ 0
set**1 4
;**4 5
}**6 7
}++ 	
public-- 
async-- 
Task-- 
<-- 
IActionResult-- '
>--' (
OnPost--) /
(--/ 0
string--0 6
	returnUrl--7 @
=--A B
$str--C K
)--K L
{.. 	
if// 
(// 

ModelState// 
.// 
IsValid// "
)//" #
{00 
var11 
user11 
=11 
new11 
ApplicationUser11 .
{11/ 0
UserName111 9
=11: ;
UserDetails11< G
.11G H
Email11H M
,11M N
Email11O T
=11U V
UserDetails11W b
.11b c
Email11c h
}11i j
;11j k
var22 
result22 
=22 
await22 "
_userManager22# /
.22/ 0
CreateAsync220 ;
(22; <
user22< @
,22@ A
UserDetails22B M
.22M N
Password22N V
)22V W
;22W X
if33 
(33 
result33 
.33 
	Succeeded33 $
)33$ %
{44 
await55 
_signInManager55 (
.55( )
SignInAsync55) 4
(554 5
user555 9
,559 :
isPersistent55; G
:55G H
false55I N
)55N O
;55O P
return66 
LocalRedirect66 (
(66( )
	returnUrl66) 2
)662 3
;663 4
}77 
	AddErrors88 
(88 
result88  
)88  !
;88! "
}99 
return:: 
Page:: 
(:: 
):: 
;:: 
};; 	
private== 
void== 
	AddErrors== 
(== 
IdentityResult== -
result==. 4
)==4 5
{>> 	
foreach?? 
(?? 
var?? 
error?? 
in?? !
result??" (
.??( )
Errors??) /
)??/ 0
{@@ 

ModelStateAA 
.AA 
AddModelErrorAA (
(AA( )
$strAA) +
,AA+ ,
errorAA- 2
.AA2 3
DescriptionAA3 >
)AA> ?
;AA? @
}BB 
}CC 	
}DD 
}EE º
ÖC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\TwoFactorAuthentication.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 

RazorPages		 '
.		' (
Pages		( -
.		- .
Account		. 5
.		5 6
Manage		6 <
{

 
public 

class (
TwoFactorAuthenticationModel -
:. /
	PageModel0 9
{ 
private 
const 
string !
AuthenicatorUriFormat 2
=3 4
$str5 c
;c d
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
ILogger  
<  !(
TwoFactorAuthenticationModel! =
>= >
_logger? F
;F G
public (
TwoFactorAuthenticationModel +
(+ ,
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
ILogger 
< (
TwoFactorAuthenticationModel 0
>0 1
logger2 8
)8 9
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
public 
bool 
HasAuthenticator $
{% &
get' *
;* +
set, /
;/ 0
}1 2
public 
int 
RecoveryCodesLeft $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[!! 	
BindProperty!!	 
]!! 
public"" 
bool"" 
Is2faEnabled""  
{""! "
get""# &
;""& '
set""( +
;""+ ,
}""- .
public$$ 
async$$ 
Task$$ 
<$$ 
IActionResult$$ '
>$$' (
OnGet$$) .
($$. /
)$$/ 0
{%% 	
var&& 
user&& 
=&& 
await&& 
_userManager&& )
.&&) *
GetUserAsync&&* 6
(&&6 7
User&&7 ;
)&&; <
;&&< =
if'' 
('' 
user'' 
=='' 
null'' 
)'' 
{(( 
throw)) 
new))  
ApplicationException)) .
()). /
$"))/ 1
$str))1 N
{))N O
_userManager))O [
.))[ \
	GetUserId))\ e
())e f
User))f j
)))j k
}))k l
$str))l n
"))n o
)))o p
;))p q
}** 
HasAuthenticator,, 
=,, 
await,, $
_userManager,,% 1
.,,1 2$
GetAuthenticatorKeyAsync,,2 J
(,,J K
user,,K O
),,O P
!=,,Q S
null,,T X
;,,X Y
Is2faEnabled-- 
=-- 
await--  
_userManager--! -
.--- .$
GetTwoFactorEnabledAsync--. F
(--F G
user--G K
)--K L
;--L M
RecoveryCodesLeft.. 
=.. 
await..  %
_userManager..& 2
...2 3#
CountRecoveryCodesAsync..3 J
(..J K
user..K O
)..O P
;..P Q
return00 
Page00 
(00 
)00 
;00 
}11 	
}22 
}33 ˙6
yC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\SetPassword.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 

RazorPages		 '
.		' (
Pages		( -
.		- .
Account		. 5
.		5 6
Manage		6 <
{

 
public 

class 
SetPasswordModel !
:" #
	PageModel$ -
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
public 
SetPasswordModel 
(  
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
)8 9
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public 
string 
StatusMessage #
{$ %
get& )
;) *
set+ .
;. /
}0 1
public 
class 

InputModel 
{ 	
[   
Required   
]   
[!! 
StringLength!! 
(!! 
$num!! 
,!! 
ErrorMessage!! +
=!!, -
$str!!. l
,!!l m
MinimumLength!!n {
=!!| }
$num!!~ 
)	!! Ä
]
!!Ä Å
["" 
DataType"" 
("" 
DataType"" 
."" 
Password"" '
)""' (
]""( )
[## 
Display## 
(## 
Name## 
=## 
$str## *
)##* +
]##+ ,
public$$ 
string$$ 
NewPassword$$ %
{$$& '
get$$( +
;$$+ ,
set$$- 0
;$$0 1
}$$2 3
[&& 
DataType&& 
(&& 
DataType&& 
.&& 
Password&& '
)&&' (
]&&( )
['' 
Display'' 
('' 
Name'' 
='' 
$str'' 2
)''2 3
]''3 4
[(( 
Compare(( 
((( 
$str(( "
,((" #
ErrorMessage(($ 0
=((1 2
$str((3 m
)((m n
]((n o
public)) 
string)) 
ConfirmPassword)) )
{))* +
get)), /
;))/ 0
set))1 4
;))4 5
}))6 7
}** 	
public,, 
async,, 
Task,, 
<,, 
IActionResult,, '
>,,' (

OnGetAsync,,) 3
(,,3 4
),,4 5
{-- 	
var.. 
user.. 
=.. 
await.. 
_userManager.. )
...) *
GetUserAsync..* 6
(..6 7
User..7 ;
)..; <
;..< =
if// 
(// 
user// 
==// 
null// 
)// 
{00 
throw11 
new11  
ApplicationException11 .
(11. /
$"11/ 1
$str111 N
{11N O
_userManager11O [
.11[ \
	GetUserId11\ e
(11e f
User11f j
)11j k
}11k l
$str11l n
"11n o
)11o p
;11p q
}22 
var44 
hasPassword44 
=44 
await44 #
_userManager44$ 0
.440 1
HasPasswordAsync441 A
(44A B
user44B F
)44F G
;44G H
if66 
(66 
hasPassword66 
)66 
{77 
return88 
RedirectToPage88 %
(88% &
$str88& 8
)888 9
;889 :
}99 
return;; 
Page;; 
(;; 
);; 
;;; 
}<< 	
public>> 
async>> 
Task>> 
<>> 
IActionResult>> '
>>>' (
OnPostAsync>>) 4
(>>4 5
)>>5 6
{?? 	
if@@ 
(@@ 
!@@ 

ModelState@@ 
.@@ 
IsValid@@ #
)@@# $
{AA 
returnBB 
PageBB 
(BB 
)BB 
;BB 
}CC 
varEE 
userEE 
=EE 
awaitEE 
_userManagerEE )
.EE) *
GetUserAsyncEE* 6
(EE6 7
UserEE7 ;
)EE; <
;EE< =
ifFF 
(FF 
userFF 
==FF 
nullFF 
)FF 
{GG 
throwHH 
newHH  
ApplicationExceptionHH .
(HH. /
$"HH/ 1
$strHH1 N
{HHN O
_userManagerHHO [
.HH[ \
	GetUserIdHH\ e
(HHe f
UserHHf j
)HHj k
}HHk l
$strHHl n
"HHn o
)HHo p
;HHp q
}II 
varKK 
addPasswordResultKK !
=KK" #
awaitKK$ )
_userManagerKK* 6
.KK6 7
AddPasswordAsyncKK7 G
(KKG H
userKKH L
,KKL M
InputKKN S
.KKS T
NewPasswordKKT _
)KK_ `
;KK` a
ifLL 
(LL 
!LL 
addPasswordResultLL "
.LL" #
	SucceededLL# ,
)LL, -
{MM 
foreachNN 
(NN 
varNN 
errorNN "
inNN# %
addPasswordResultNN& 7
.NN7 8
ErrorsNN8 >
)NN> ?
{OO 

ModelStatePP 
.PP 
AddModelErrorPP ,
(PP, -
stringPP- 3
.PP3 4
EmptyPP4 9
,PP9 :
errorPP; @
.PP@ A
DescriptionPPA L
)PPL M
;PPM N
}QQ 
returnRR 
PageRR 
(RR 
)RR 
;RR 
}SS 
awaitUU 
_signInManagerUU  
.UU  !
SignInAsyncUU! ,
(UU, -
userUU- 1
,UU1 2
isPersistentUU3 ?
:UU? @
falseUUA F
)UUF G
;UUG H
StatusMessageVV 
=VV 
$strVV 9
;VV9 :
returnXX 
RedirectToPageXX !
(XX! "
)XX" #
;XX# $
}YY 	
}ZZ 
}[[ Å
ÄC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\ResetAuthenticator.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 

RazorPages		 '
.		' (
Pages		( -
.		- .
Account		. 5
.		5 6
Manage		6 <
{

 
public 

class #
ResetAuthenticatorModel (
:) *
	PageModel+ 4
{ 
UserManager 
< 
ApplicationUser #
># $
_userManager% 1
;1 2
ILogger 
< #
ResetAuthenticatorModel '
>' (
_logger) 0
;0 1
public #
ResetAuthenticatorModel &
(& '
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
ILogger 
< #
ResetAuthenticatorModel +
>+ ,
logger- 3
)3 4
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
throw 
new  
ApplicationException .
(. /
$"/ 1
$str1 N
{N O
_userManagerO [
.[ \
	GetUserId\ e
(e f
Userf j
)j k
}k l
$strl n
"n o
)o p
;p q
} 
return 
Page 
( 
) 
; 
}   	
public"" 
async"" 
Task"" 
<"" 
IActionResult"" '
>""' (
OnPostAsync"") 4
(""4 5
)""5 6
{## 	
var$$ 
user$$ 
=$$ 
await$$ 
_userManager$$ )
.$$) *
GetUserAsync$$* 6
($$6 7
User$$7 ;
)$$; <
;$$< =
if%% 
(%% 
user%% 
==%% 
null%% 
)%% 
{&& 
throw'' 
new''  
ApplicationException'' .
(''. /
$"''/ 1
$str''1 N
{''N O
_userManager''O [
.''[ \
	GetUserId''\ e
(''e f
User''f j
)''j k
}''k l
$str''l n
"''n o
)''o p
;''p q
}(( 
await** 
_userManager** 
.** $
SetTwoFactorEnabledAsync** 7
(**7 8
user**8 <
,**< =
false**> C
)**C D
;**D E
await++ 
_userManager++ 
.++ &
ResetAuthenticatorKeyAsync++ 9
(++9 :
user++: >
)++> ?
;++? @
_logger,, 
.,, 
LogInformation,, "
(,," #
$str,,# d
,,,d e
user,,f j
.,,j k
Id,,k m
),,m n
;,,n o
return.. 
RedirectToPage.. !
(..! "
$str.." 9
)..9 :
;..: ;
}// 	
}00 
}11 Ñ
uC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\ManageNavPages.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{ 
public 

static 
class 
ManageNavPages &
{ 
public 
static 
string 
Index "
=># %
$str& -
;- .
public

 
static

 
string

 
ChangePassword

 +
=>

, .
$str

/ ?
;

? @
public 
static 
string 
ExternalLogins +
=>, .
$str/ ?
;? @
public 
static 
string #
TwoFactorAuthentication 4
=>5 7
$str8 Q
;Q R
public 
static 
string 
IndexNavClass *
(* +
ViewContext+ 6
viewContext7 B
)B C
=>D F
PageNavClassG S
(S T
viewContextT _
,_ `
Indexa f
)f g
;g h
public 
static 
string "
ChangePasswordNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ChangePasswordj x
)x y
;y z
public 
static 
string "
ExternalLoginsNavClass 3
(3 4
ViewContext4 ?
viewContext@ K
)K L
=>M O
PageNavClassP \
(\ ]
viewContext] h
,h i
ExternalLoginsj x
)x y
;y z
public 
static 
string +
TwoFactorAuthenticationNavClass <
(< =
ViewContext= H
viewContextI T
)T U
=>V X
PageNavClassY e
(e f
viewContextf q
,q r$
TwoFactorAuthentication	s ä
)
ä ã
;
ã å
public 
static 
string 
PageNavClass )
() *
ViewContext* 5
viewContext6 A
,A B
stringC I
pageJ N
)N O
{ 	
var 

activePage 
= 
viewContext (
.( )
ViewData) 1
[1 2
$str2 >
]> ?
as@ B
stringC I
?? 
System 
. 
IO 
. 
Path !
.! "'
GetFileNameWithoutExtension" =
(= >
viewContext> I
.I J
ActionDescriptorJ Z
.Z [
DisplayName[ f
)f g
;g h
return 
string 
. 
Equals  
(  !

activePage! +
,+ ,
page- 1
,1 2
StringComparison3 C
.C D
OrdinalIgnoreCaseD U
)U V
?W X
$strY a
:b c
nulld h
;h i
} 	
} 
} íL
sC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\Index.cshtml.cs
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
 

RazorPages

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

partial 
class 

IndexModel #
:$ %
	PageModel& /
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
IEmailSender %
_emailSender& 2
;2 3
public 

IndexModel 
( 
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
IEmailSender 
emailSender $
)$ %
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_emailSender 
= 
emailSender &
;& '
} 	
public 
string 
Username 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
bool 
IsEmailConfirmed $
{% &
get' *
;* +
set, /
;/ 0
}1 2
[   	
TempData  	 
]   
public!! 
string!! 
StatusMessage!! #
{!!$ %
get!!& )
;!!) *
set!!+ .
;!!. /
}!!0 1
[## 	
BindProperty##	 
]## 
public$$ 

InputModel$$ 
Input$$ 
{$$  !
get$$" %
;$$% &
set$$' *
;$$* +
}$$, -
public&& 
class&& 

InputModel&& 
{'' 	
[(( 
Required(( 
](( 
[)) 
EmailAddress)) 
])) 
public** 
string** 
Email** 
{**  !
get**" %
;**% &
set**' *
;*** +
}**, -
[,, 
Phone,, 
],, 
[-- 
Display-- 
(-- 
Name-- 
=-- 
$str-- *
)--* +
]--+ ,
public.. 
string.. 
PhoneNumber.. %
{..& '
get..( +
;..+ ,
set..- 0
;..0 1
}..2 3
}// 	
public11 
async11 
Task11 
<11 
IActionResult11 '
>11' (

OnGetAsync11) 3
(113 4
)114 5
{22 	
var33 
user33 
=33 
await33 
_userManager33 )
.33) *
GetUserAsync33* 6
(336 7
User337 ;
)33; <
;33< =
if44 
(44 
user44 
==44 
null44 
)44 
{55 
throw66 
new66  
ApplicationException66 .
(66. /
$"66/ 1
$str661 N
{66N O
_userManager66O [
.66[ \
	GetUserId66\ e
(66e f
User66f j
)66j k
}66k l
$str66l n
"66n o
)66o p
;66p q
}77 
Username99 
=99 
user99 
.99 
UserName99 $
;99$ %
Input;; 
=;; 
new;; 

InputModel;; "
{<< 
Email== 
=== 
user== 
.== 
Email== "
,==" #
PhoneNumber>> 
=>> 
user>> "
.>>" #
PhoneNumber>># .
}?? 
;?? 
IsEmailConfirmedAA 
=AA 
awaitAA $
_userManagerAA% 1
.AA1 2!
IsEmailConfirmedAsyncAA2 G
(AAG H
userAAH L
)AAL M
;AAM N
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (
OnPostAsyncFF) 4
(FF4 5
)FF5 6
{GG 	
ifHH 
(HH 
!HH 

ModelStateHH 
.HH 
IsValidHH #
)HH# $
{II 
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 
varMM 
userMM 
=MM 
awaitMM 
_userManagerMM )
.MM) *
GetUserAsyncMM* 6
(MM6 7
UserMM7 ;
)MM; <
;MM< =
ifNN 
(NN 
userNN 
==NN 
nullNN 
)NN 
{OO 
throwPP 
newPP  
ApplicationExceptionPP .
(PP. /
$"PP/ 1
$strPP1 N
{PPN O
_userManagerPPO [
.PP[ \
	GetUserIdPP\ e
(PPe f
UserPPf j
)PPj k
}PPk l
$strPPl n
"PPn o
)PPo p
;PPp q
}QQ 
ifSS 
(SS 
InputSS 
.SS 
EmailSS 
!=SS 
userSS #
.SS# $
EmailSS$ )
)SS) *
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
InputUUL Q
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
}ZZ 
if\\ 
(\\ 
Input\\ 
.\\ 
PhoneNumber\\ !
!=\\" $
user\\% )
.\\) *
PhoneNumber\\* 5
)\\5 6
{]] 
var^^ 
setPhoneResult^^ "
=^^# $
await^^% *
_userManager^^+ 7
.^^7 8
SetPhoneNumberAsync^^8 K
(^^K L
user^^L P
,^^P Q
Input^^R W
.^^W X
PhoneNumber^^X c
)^^c d
;^^d e
if__ 
(__ 
!__ 
setPhoneResult__ #
.__# $
	Succeeded__$ -
)__- .
{`` 
throwaa 
newaa  
ApplicationExceptionaa 2
(aa2 3
$"aa3 5
$straa5 v
{aav w
useraaw {
.aa{ |
Idaa| ~
}aa~ 
$str	aa Å
"
aaÅ Ç
)
aaÇ É
;
aaÉ Ñ
}bb 
}cc 
StatusMessageee 
=ee 
$stree ;
;ee; <
returnff 
RedirectToPageff !
(ff! "
)ff" #
;ff# $
}gg 	
publichh 
asynchh 
Taskhh 
<hh 
IActionResulthh '
>hh' (,
 OnPostSendVerificationEmailAsynchh) I
(hhI J
)hhJ K
{ii 	
ifjj 
(jj 
!jj 

ModelStatejj 
.jj 
IsValidjj #
)jj# $
{kk 
returnll 
Pagell 
(ll 
)ll 
;ll 
}mm 
varoo 
useroo 
=oo 
awaitoo 
_userManageroo )
.oo) *
GetUserAsyncoo* 6
(oo6 7
Useroo7 ;
)oo; <
;oo< =
ifpp 
(pp 
userpp 
==pp 
nullpp 
)pp 
{qq 
throwrr 
newrr  
ApplicationExceptionrr .
(rr. /
$"rr/ 1
$strrr1 N
{rrN O
_userManagerrrO [
.rr[ \
	GetUserIdrr\ e
(rre f
Userrrf j
)rrj k
}rrk l
$strrrl n
"rrn o
)rro p
;rrp q
}ss 
varuu 
codeuu 
=uu 
awaituu 
_userManageruu )
.uu) */
#GenerateEmailConfirmationTokenAsyncuu* M
(uuM N
useruuN R
)uuR S
;uuS T
varvv 
callbackUrlvv 
=vv 
Urlvv !
.vv! "!
EmailConfirmationLinkvv" 7
(vv7 8
uservv8 <
.vv< =
Idvv= ?
,vv? @
codevvA E
,vvE F
RequestvvG N
.vvN O
SchemevvO U
)vvU V
;vvV W
awaitww 
_emailSenderww 
.ww &
SendEmailConfirmationAsyncww 9
(ww9 :
userww: >
.ww> ?
Emailww? D
,wwD E
callbackUrlwwF Q
)wwQ R
;wwR S
StatusMessageyy 
=yy 
$stryy O
;yyO P
returnzz 
RedirectToPagezz !
(zz! "
)zz" #
;zz# $
}{{ 	
}|| 
}}}  
ÉC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\GenerateRecoveryCodes.cshtml.cs
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
 

RazorPages

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class &
GenerateRecoveryCodesModel +
:, -
	PageModel. 7
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
ILogger  
<  !&
GenerateRecoveryCodesModel! ;
>; <
_logger= D
;D E
public &
GenerateRecoveryCodesModel )
() *
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
ILogger 
< &
GenerateRecoveryCodesModel .
>. /
logger0 6
)6 7
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
string 
[ 
] 
RecoveryCodes %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
public 
async 
Task 
< 
IActionResult '
>' (

OnGetAsync) 3
(3 4
)4 5
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
throw   
new    
ApplicationException   .
(  . /
$"  / 1
$str  1 N
{  N O
_userManager  O [
.  [ \
	GetUserId  \ e
(  e f
User  f j
)  j k
}  k l
$str  l n
"  n o
)  o p
;  p q
}!! 
if## 
(## 
!## 
user## 
.## 
TwoFactorEnabled## &
)##& '
{$$ 
throw%% 
new%%  
ApplicationException%% .
(%%. /
$"%%/ 1
$str%%1 b
{%%b c
user%%c g
.%%g h
Id%%h j
}%%j k
$str	%%k ç
"
%%ç é
)
%%é è
;
%%è ê
}&& 
var(( 
recoveryCodes(( 
=(( 
await((  %
_userManager((& 2
.((2 32
&GenerateNewTwoFactorRecoveryCodesAsync((3 Y
(((Y Z
user((Z ^
,((^ _
$num((` b
)((b c
;((c d
RecoveryCodes)) 
=)) 
recoveryCodes)) )
.))) *
ToArray))* 1
())1 2
)))2 3
;))3 4
_logger++ 
.++ 
LogInformation++ "
(++" #
$str++# b
,++b c
user++d h
.++h i
Id++i k
)++k l
;++l m
return-- 
Page-- 
(-- 
)-- 
;-- 
}.. 	
}// 
}00 ”V
ÅC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\EnableAuthenticator.cshtml.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Pages( -
.- .
Account. 5
.5 6
Manage6 <
{ 
public 

class $
EnableAuthenticatorModel )
:* +
	PageModel, 5
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
ILogger  
<  !$
EnableAuthenticatorModel! 9
>9 :
_logger; B
;B C
private 
readonly 

UrlEncoder #
_urlEncoder$ /
;/ 0
private 
const 
string !
AuthenicatorUriFormat 2
=3 4
$str5 l
;l m
public $
EnableAuthenticatorModel '
(' (
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
ILogger 
< $
EnableAuthenticatorModel ,
>, -
logger. 4
,4 5

UrlEncoder 

urlEncoder !
)! "
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
_urlEncoder 
= 

urlEncoder $
;$ %
} 	
public   
string   
	SharedKey   
{    !
get  " %
;  % &
set  ' *
;  * +
}  , -
public"" 
string"" 
AuthenticatorUri"" &
{""' (
get"") ,
;"", -
set"". 1
;""1 2
}""3 4
[$$ 	
BindProperty$$	 
]$$ 
public%% 

InputModel%% 
Input%% 
{%%  !
get%%" %
;%%% &
set%%' *
;%%* +
}%%, -
public'' 
class'' 

InputModel'' 
{(( 	
[)) 
Required)) 
])) 
[** 
StringLength** 
(** 
$num** 
,** 
ErrorMessage** )
=*** +
$str**, j
,**j k
MinimumLength**l y
=**z {
$num**| }
)**} ~
]**~ 
[++ 
DataType++ 
(++ 
DataType++ 
.++ 
Text++ #
)++# $
]++$ %
[,, 
Display,, 
(,, 
Name,, 
=,, 
$str,, /
),,/ 0
],,0 1
public-- 
string-- 
Code-- 
{--  
get--! $
;--$ %
set--& )
;--) *
}--+ ,
}.. 	
public00 
async00 
Task00 
<00 
IActionResult00 '
>00' (

OnGetAsync00) 3
(003 4
)004 5
{11 	
var22 
user22 
=22 
await22 
_userManager22 )
.22) *
GetUserAsync22* 6
(226 7
User227 ;
)22; <
;22< =
if33 
(33 
user33 
==33 
null33 
)33 
{44 
throw55 
new55  
ApplicationException55 .
(55. /
$"55/ 1
$str551 N
{55N O
_userManager55O [
.55[ \
	GetUserId55\ e
(55e f
User55f j
)55j k
}55k l
$str55l n
"55n o
)55o p
;55p q
}66 
await88 *
LoadSharedKeyAndQrCodeUriAsync88 0
(880 1
user881 5
)885 6
;886 7
if99 
(99 
string99 
.99 
IsNullOrEmpty99 $
(99$ %
	SharedKey99% .
)99. /
)99/ 0
{:: 
await;; 
_userManager;; "
.;;" #&
ResetAuthenticatorKeyAsync;;# =
(;;= >
user;;> B
);;B C
;;;C D
await<< *
LoadSharedKeyAndQrCodeUriAsync<< 4
(<<4 5
user<<5 9
)<<9 :
;<<: ;
}== 
return?? 
Page?? 
(?? 
)?? 
;?? 
}@@ 	
publicBB 
asyncBB 
TaskBB 
<BB 
IActionResultBB '
>BB' (
OnPostAsyncBB) 4
(BB4 5
)BB5 6
{CC 	
varDD 
userDD 
=DD 
awaitDD 
_userManagerDD )
.DD) *
GetUserAsyncDD* 6
(DD6 7
UserDD7 ;
)DD; <
;DD< =
ifEE 
(EE 
userEE 
==EE 
nullEE 
)EE 
{FF 
throwGG 
newGG  
ApplicationExceptionGG .
(GG. /
$"GG/ 1
$strGG1 N
{GGN O
_userManagerGGO [
.GG[ \
	GetUserIdGG\ e
(GGe f
UserGGf j
)GGj k
}GGk l
$strGGl n
"GGn o
)GGo p
;GGp q
}HH 
ifJJ 
(JJ 
!JJ 

ModelStateJJ 
.JJ 
IsValidJJ #
)JJ# $
{KK 
awaitLL *
LoadSharedKeyAndQrCodeUriAsyncLL 4
(LL4 5
userLL5 9
)LL9 :
;LL: ;
returnMM 
PageMM 
(MM 
)MM 
;MM 
}NN 
varQQ 
verificationCodeQQ  
=QQ! "
InputQQ# (
.QQ( )
CodeQQ) -
.QQ- .
ReplaceQQ. 5
(QQ5 6
$strQQ6 9
,QQ9 :
stringQQ; A
.QQA B
EmptyQQB G
)QQG H
.QQH I
ReplaceQQI P
(QQP Q
$strQQQ T
,QQT U
stringQQV \
.QQ\ ]
EmptyQQ] b
)QQb c
;QQc d
varSS 
is2faTokenValidSS 
=SS  !
awaitSS" '
_userManagerSS( 4
.SS4 5%
VerifyTwoFactorTokenAsyncSS5 N
(SSN O
userTT 
,TT 
_userManagerTT "
.TT" #
OptionsTT# *
.TT* +
TokensTT+ 1
.TT1 2&
AuthenticatorTokenProviderTT2 L
,TTL M
verificationCodeTTN ^
)TT^ _
;TT_ `
ifVV 
(VV 
!VV 
is2faTokenValidVV  
)VV  !
{WW 

ModelStateXX 
.XX 
AddModelErrorXX (
(XX( )
$strXX) 5
,XX5 6
$strXX7 V
)XXV W
;XXW X
awaitYY *
LoadSharedKeyAndQrCodeUriAsyncYY 4
(YY4 5
userYY5 9
)YY9 :
;YY: ;
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
await]] 
_userManager]] 
.]] $
SetTwoFactorEnabledAsync]] 7
(]]7 8
user]]8 <
,]]< =
true]]> B
)]]B C
;]]C D
_logger^^ 
.^^ 
LogInformation^^ "
(^^" #
$str^^# g
,^^g h
user^^i m
.^^m n
Id^^n p
)^^p q
;^^q r
return__ 
RedirectToPage__ !
(__! "
$str__" ;
)__; <
;__< =
}`` 	
privatebb 
asyncbb 
Taskbb *
LoadSharedKeyAndQrCodeUriAsyncbb 9
(bb9 :
ApplicationUserbb: I
userbbJ N
)bbN O
{cc 	
varee 
unformattedKeyee 
=ee  
awaitee! &
_userManageree' 3
.ee3 4$
GetAuthenticatorKeyAsyncee4 L
(eeL M
usereeM Q
)eeQ R
;eeR S
ifff 
(ff 
!ff 
stringff 
.ff 
IsNullOrEmptyff %
(ff% &
unformattedKeyff& 4
)ff4 5
)ff5 6
{gg 
	SharedKeyhh 
=hh 
	FormatKeyhh %
(hh% &
unformattedKeyhh& 4
)hh4 5
;hh5 6
AuthenticatorUriii  
=ii! "
GenerateQrCodeUriii# 4
(ii4 5
userii5 9
.ii9 :
Emailii: ?
,ii? @
unformattedKeyiiA O
)iiO P
;iiP Q
}jj 
}kk 	
privatemm 
stringmm 
	FormatKeymm  
(mm  !
stringmm! '
unformattedKeymm( 6
)mm6 7
{nn 	
varoo 
resultoo 
=oo 
newoo 
StringBuilderoo *
(oo* +
)oo+ ,
;oo, -
intpp 
currentPositionpp 
=pp  !
$numpp" #
;pp# $
whileqq 
(qq 
currentPositionqq "
+qq# $
$numqq% &
<qq' (
unformattedKeyqq) 7
.qq7 8
Lengthqq8 >
)qq> ?
{rr 
resultss 
.ss 
Appendss 
(ss 
unformattedKeyss ,
.ss, -
	Substringss- 6
(ss6 7
currentPositionss7 F
,ssF G
$numssH I
)ssI J
)ssJ K
.ssK L
AppendssL R
(ssR S
$strssS V
)ssV W
;ssW X
currentPositiontt 
+=tt  "
$numtt# $
;tt$ %
}uu 
ifvv 
(vv 
currentPositionvv 
<vv  !
unformattedKeyvv" 0
.vv0 1
Lengthvv1 7
)vv7 8
{ww 
resultxx 
.xx 
Appendxx 
(xx 
unformattedKeyxx ,
.xx, -
	Substringxx- 6
(xx6 7
currentPositionxx7 F
)xxF G
)xxG H
;xxH I
}yy 
return{{ 
result{{ 
.{{ 
ToString{{ "
({{" #
){{# $
.{{$ %
ToLowerInvariant{{% 5
({{5 6
){{6 7
;{{7 8
}|| 	
private~~ 
string~~ 
GenerateQrCodeUri~~ (
(~~( )
string~~) /
email~~0 5
,~~5 6
string~~7 =
unformattedKey~~> L
)~~L M
{ 	
return
ÄÄ 
string
ÄÄ 
.
ÄÄ 
Format
ÄÄ  
(
ÄÄ  !#
AuthenicatorUriFormat
ÅÅ %
,
ÅÅ% &
_urlEncoder
ÇÇ 
.
ÇÇ 
Encode
ÇÇ "
(
ÇÇ" #
$str
ÇÇ# :
)
ÇÇ: ;
,
ÇÇ; <
_urlEncoder
ÉÉ 
.
ÉÉ 
Encode
ÉÉ "
(
ÉÉ" #
email
ÉÉ# (
)
ÉÉ( )
,
ÉÉ) *
unformattedKey
ÑÑ 
)
ÑÑ 
;
ÑÑ  
}
ÖÖ 	
}
ÜÜ 
}áá ¥%
xC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\Disable2fa.cshtml.cs
	namespace		 	
	Microsoft		
 
.		 
eShopWeb		 
.		 

RazorPages		 '
.		' (
Pages		( -
.		- .
Account		. 5
.		5 6
Manage		6 <
{

 
public 

class 
Disable2faModel  
:! "
	PageModel# ,
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
ILogger  
<  !
Disable2faModel! 0
>0 1
_logger2 9
;9 :
public 
Disable2faModel 
( 
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
ILogger 
< 
Disable2faModel #
># $
logger% +
)+ ,
{ 	
_userManager 
= 
userManager &
;& '
_logger 
= 
logger 
; 
} 	
public 
async 
Task 
< 
IActionResult '
>' (
OnGet) .
(. /
)/ 0
{ 	
var 
user 
= 
await 
_userManager )
.) *
GetUserAsync* 6
(6 7
User7 ;
); <
;< =
if 
( 
user 
== 
null 
) 
{ 
throw 
new  
ApplicationException .
(. /
$"/ 1
$str1 N
{N O
_userManagerO [
.[ \
	GetUserId\ e
(e f
Userf j
)j k
}k l
$strl n
"n o
)o p
;p q
} 
if   
(   
!   
await   
_userManager   #
.  # $$
GetTwoFactorEnabledAsync  $ <
(  < =
user  = A
)  A B
)  B C
{!! 
throw"" 
new""  
ApplicationException"" .
("". /
$"""/ 1
$str""1 V
{""V W
_userManager""W c
.""c d
	GetUserId""d m
(""m n
User""n r
)""r s
}""s t
$str	""t î
"
""î ï
)
""ï ñ
;
""ñ ó
}## 
return%% 
Page%% 
(%% 
)%% 
;%% 
}&& 	
public(( 
async(( 
Task(( 
<(( 
IActionResult(( '
>((' (
OnPostAsync(() 4
(((4 5
)((5 6
{)) 	
var** 
user** 
=** 
await** 
_userManager** )
.**) *
GetUserAsync*** 6
(**6 7
User**7 ;
)**; <
;**< =
if++ 
(++ 
user++ 
==++ 
null++ 
)++ 
{,, 
throw-- 
new--  
ApplicationException-- .
(--. /
$"--/ 1
$str--1 N
{--N O
_userManager--O [
.--[ \
	GetUserId--\ e
(--e f
User--f j
)--j k
}--k l
$str--l n
"--n o
)--o p
;--p q
}.. 
var00 
disable2faResult00  
=00! "
await00# (
_userManager00) 5
.005 6$
SetTwoFactorEnabledAsync006 N
(00N O
user00O S
,00S T
false00U Z
)00Z [
;00[ \
if11 
(11 
!11 
disable2faResult11 !
.11! "
	Succeeded11" +
)11+ ,
{22 
throw33 
new33  
ApplicationException33 .
(33. /
$"33/ 1
$str331 k
{33k l
_userManager33l x
.33x y
	GetUserId	33y Ç
(
33Ç É
User
33É á
)
33á à
}
33à â
$str
33â ã
"
33ã å
)
33å ç
;
33ç é
}44 
_logger66 
.66 
LogInformation66 "
(66" #
$str66# N
,66N O
_userManager66P \
.66\ ]
	GetUserId66] f
(66f g
User66g k
)66k l
)66l m
;66m n
return88 
RedirectToPage88 !
(88! "
$str88" =
)88= >
;88> ?
}99 	
}:: 
};; å1
|C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\LoginWithRecoveryCode.cshtml.cs
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
 

RazorPages

 '
.

' (
Pages

( -
.

- .
Account

. 5
{ 
public 

class &
LoginWithRecoveryCodeModel +
:, -
	PageModel. 7
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 

IAppLogger #
<# $&
LoginWithRecoveryCodeModel$ >
>> ?
_logger@ G
;G H
public &
LoginWithRecoveryCodeModel )
() *
SignInManager* 7
<7 8
ApplicationUser8 G
>G H
signInManagerI V
,V W

IAppLogger 
< &
LoginWithRecoveryCodeModel 1
>1 2
logger3 9
)9 :
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{ 	
[ 
BindProperty 
] 
[   
Required   
]   
[!! 
DataType!! 
(!! 
DataType!! 
.!! 
Text!! #
)!!# $
]!!$ %
["" 
Display"" 
("" 
Name"" 
="" 
$str"" +
)""+ ,
]"", -
public## 
string## 
RecoveryCode## &
{##' (
get##) ,
;##, -
set##. 1
;##1 2
}##3 4
}$$ 	
public&& 
async&& 
Task&& 
<&& 
IActionResult&& '
>&&' (

OnGetAsync&&) 3
(&&3 4
string&&4 :
	returnUrl&&; D
=&&E F
null&&G K
)&&K L
{'' 	
var)) 
user)) 
=)) 
await)) 
_signInManager)) +
.))+ ,/
#GetTwoFactorAuthenticationUserAsync)), O
())O P
)))P Q
;))Q R
if** 
(** 
user** 
==** 
null** 
)** 
{++ 
throw,, 
new,,  
ApplicationException,, .
(,,. /
$",,/ 1
$str,,1 _
",,_ `
),,` a
;,,a b
}-- 
	ReturnUrl// 
=// 
	returnUrl// !
;//! "
return11 
Page11 
(11 
)11 
;11 
}22 	
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
OnPostAsync44) 4
(444 5
string445 ;
	returnUrl44< E
=44F G
null44H L
)44L M
{55 	
if66 
(66 
!66 

ModelState66 
.66 
IsValid66 #
)66# $
{77 
return88 
Page88 
(88 
)88 
;88 
}99 
var;; 
user;; 
=;; 
await;; 
_signInManager;; +
.;;+ ,/
#GetTwoFactorAuthenticationUserAsync;;, O
(;;O P
);;P Q
;;;Q R
if<< 
(<< 
user<< 
==<< 
null<< 
)<< 
{== 
throw>> 
new>>  
ApplicationException>> .
(>>. /
$">>/ 1
$str>>1 _
">>_ `
)>>` a
;>>a b
}?? 
varAA 
recoveryCodeAA 
=AA 
InputAA $
.AA$ %
RecoveryCodeAA% 1
.AA1 2
ReplaceAA2 9
(AA9 :
$strAA: =
,AA= >
stringAA? E
.AAE F
EmptyAAF K
)AAK L
;AAL M
varCC 
resultCC 
=CC 
awaitCC 
_signInManagerCC -
.CC- .,
 TwoFactorRecoveryCodeSignInAsyncCC. N
(CCN O
recoveryCodeCCO [
)CC[ \
;CC\ ]
ifEE 
(EE 
resultEE 
.EE 
	SucceededEE  
)EE  !
{FF 
_loggerGG 
.GG 
LogInformationGG &
(GG& '
$strGG' `
,GG` a
userGGb f
.GGf g
IdGGg i
)GGi j
;GGj k
returnHH 
LocalRedirectHH $
(HH$ %
UrlHH% (
.HH( )
GetLocalUrlHH) 4
(HH4 5
	returnUrlHH5 >
)HH> ?
)HH? @
;HH@ A
}II 
ifJJ 
(JJ 
resultJJ 
.JJ 
IsLockedOutJJ "
)JJ" #
{KK 
_loggerLL 
.LL 

LogWarningLL "
(LL" #
$strLL# P
,LLP Q
userLLR V
.LLV W
IdLLW Y
)LLY Z
;LLZ [
returnMM 
RedirectToPageMM %
(MM% &
$strMM& 1
)MM1 2
;MM2 3
}NN 
elseOO 
{PP 
_loggerQQ 
.QQ 

LogWarningQQ "
(QQ" #
$strQQ# _
,QQ_ `
userQQa e
.QQe f
IdQQf h
)QQh i
;QQi j

ModelStateRR 
.RR 
AddModelErrorRR (
(RR( )
stringRR) /
.RR/ 0
EmptyRR0 5
,RR5 6
$strRR7 W
)RRW X
;RRX Y
returnSS 
PageSS 
(SS 
)SS 
;SS 
}TT 
}UU 	
}VV 
}WW ¨?
|C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\Manage\ChangePassword.cshtml.cs
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
 

RazorPages

 '
.

' (
Pages

( -
.

- .
Account

. 5
.

5 6
Manage

6 <
{ 
public 

class 
ChangePasswordModel $
:% &
	PageModel' 0
{ 
private 
readonly 
UserManager $
<$ %
ApplicationUser% 4
>4 5
_userManager6 B
;B C
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 
ILogger  
<  !
ChangePasswordModel! 4
>4 5
_logger6 =
;= >
public 
ChangePasswordModel "
(" #
UserManager 
< 
ApplicationUser '
>' (
userManager) 4
,4 5
SignInManager 
< 
ApplicationUser )
>) *
signInManager+ 8
,8 9
ILogger 
< 
ChangePasswordModel '
>' (
logger) /
)/ 0
{ 	
_userManager 
= 
userManager &
;& '
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
[ 	
TempData	 
] 
public   
string   
StatusMessage   #
{  $ %
get  & )
;  ) *
set  + .
;  . /
}  0 1
public"" 
class"" 

InputModel"" 
{## 	
[$$ 
Required$$ 
]$$ 
[%% 
DataType%% 
(%% 
DataType%% 
.%% 
Password%% '
)%%' (
]%%( )
[&& 
Display&& 
(&& 
Name&& 
=&& 
$str&& .
)&&. /
]&&/ 0
public'' 
string'' 
OldPassword'' %
{''& '
get''( +
;''+ ,
set''- 0
;''0 1
}''2 3
[)) 
Required)) 
])) 
[** 
StringLength** 
(** 
$num** 
,** 
ErrorMessage** +
=**, -
$str**. l
,**l m
MinimumLength**n {
=**| }
$num**~ 
)	** Ä
]
**Ä Å
[++ 
DataType++ 
(++ 
DataType++ 
.++ 
Password++ '
)++' (
]++( )
[,, 
Display,, 
(,, 
Name,, 
=,, 
$str,, *
),,* +
],,+ ,
public-- 
string-- 
NewPassword-- %
{--& '
get--( +
;--+ ,
set--- 0
;--0 1
}--2 3
[// 
DataType// 
(// 
DataType// 
.// 
Password// '
)//' (
]//( )
[00 
Display00 
(00 
Name00 
=00 
$str00 2
)002 3
]003 4
[11 
Compare11 
(11 
$str11 "
,11" #
ErrorMessage11$ 0
=111 2
$str113 m
)11m n
]11n o
public22 
string22 
ConfirmPassword22 )
{22* +
get22, /
;22/ 0
set221 4
;224 5
}226 7
}33 	
public55 
async55 
Task55 
<55 
IActionResult55 '
>55' (

OnGetAsync55) 3
(553 4
)554 5
{66 	
var77 
user77 
=77 
await77 
_userManager77 )
.77) *
GetUserAsync77* 6
(776 7
User777 ;
)77; <
;77< =
if88 
(88 
user88 
==88 
null88 
)88 
{99 
throw:: 
new::  
ApplicationException:: .
(::. /
$"::/ 1
$str::1 N
{::N O
_userManager::O [
.::[ \
	GetUserId::\ e
(::e f
User::f j
)::j k
}::k l
$str::l n
"::n o
)::o p
;::p q
};; 
var== 
hasPassword== 
=== 
await== #
_userManager==$ 0
.==0 1
HasPasswordAsync==1 A
(==A B
user==B F
)==F G
;==G H
if>> 
(>> 
!>> 
hasPassword>> 
)>> 
{?? 
return@@ 
RedirectToPage@@ %
(@@% &
$str@@& 5
)@@5 6
;@@6 7
}AA 
returnCC 
PageCC 
(CC 
)CC 
;CC 
}DD 	
publicFF 
asyncFF 
TaskFF 
<FF 
IActionResultFF '
>FF' (
OnPostAsyncFF) 4
(FF4 5
)FF5 6
{GG 	
ifHH 
(HH 
!HH 

ModelStateHH 
.HH 
IsValidHH #
)HH# $
{II 
returnJJ 
PageJJ 
(JJ 
)JJ 
;JJ 
}KK 
varMM 
userMM 
=MM 
awaitMM 
_userManagerMM )
.MM) *
GetUserAsyncMM* 6
(MM6 7
UserMM7 ;
)MM; <
;MM< =
ifNN 
(NN 
userNN 
==NN 
nullNN 
)NN 
{OO 
throwPP 
newPP  
ApplicationExceptionPP .
(PP. /
$"PP/ 1
$strPP1 N
{PPN O
_userManagerPPO [
.PP[ \
	GetUserIdPP\ e
(PPe f
UserPPf j
)PPj k
}PPk l
$strPPl n
"PPn o
)PPo p
;PPp q
}QQ 
varSS  
changePasswordResultSS $
=SS% &
awaitSS' ,
_userManagerSS- 9
.SS9 :
ChangePasswordAsyncSS: M
(SSM N
userSSN R
,SSR S
InputSST Y
.SSY Z
OldPasswordSSZ e
,SSe f
InputSSg l
.SSl m
NewPasswordSSm x
)SSx y
;SSy z
ifTT 
(TT 
!TT  
changePasswordResultTT %
.TT% &
	SucceededTT& /
)TT/ 0
{UU 
foreachVV 
(VV 
varVV 
errorVV "
inVV# % 
changePasswordResultVV& :
.VV: ;
ErrorsVV; A
)VVA B
{WW 

ModelStateXX 
.XX 
AddModelErrorXX ,
(XX, -
stringXX- 3
.XX3 4
EmptyXX4 9
,XX9 :
errorXX; @
.XX@ A
DescriptionXXA L
)XXL M
;XXM N
}YY 
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
await]] 
_signInManager]]  
.]]  !
SignInAsync]]! ,
(]], -
user]]- 1
,]]1 2
isPersistent]]3 ?
:]]? @
false]]A F
)]]F G
;]]G H
_logger^^ 
.^^ 
LogInformation^^ "
(^^" #
$str^^# N
)^^N O
;^^O P
StatusMessage__ 
=__ 
$str__ =
;__= >
returnaa 
RedirectToPageaa !
(aa! "
)aa" #
;aa# $
}bb 	
}cc 
}dd ◊9
sC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Pages\Account\LoginWith2fa.cshtml.cs
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
 

RazorPages

 '
.

' (
Pages

( -
.

- .
Account

. 5
{ 
public 

class 
LoginWith2faModel "
:# $
	PageModel% .
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 

IAppLogger #
<# $
LoginWith2faModel$ 5
>5 6
_logger7 >
;> ?
public 
LoginWith2faModel  
(  !
SignInManager! .
<. /
ApplicationUser/ >
>> ?
signInManager@ M
,M N

IAppLogger 
< 
LoginWith2faModel (
>( )
logger* 0
)0 1
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
BindProperty	 
] 
public 

InputModel 
Input 
{  !
get" %
;% &
set' *
;* +
}, -
public 
bool 

RememberMe 
{  
get! $
;$ %
set& )
;) *
}+ ,
public 
string 
	ReturnUrl 
{  !
get" %
;% &
set' *
;* +
}, -
public 
class 

InputModel 
{   	
[!! 
Required!! 
]!! 
["" 
StringLength"" 
("" 
$num"" 
,"" 
ErrorMessage"" )
=""* +
$str"", j
,""j k
MinimumLength""l y
=""z {
$num""| }
)""} ~
]""~ 
[## 
DataType## 
(## 
DataType## 
.## 
Text## #
)### $
]##$ %
[$$ 
Display$$ 
($$ 
Name$$ 
=$$ 
$str$$ 0
)$$0 1
]$$1 2
public%% 
string%% 
TwoFactorCode%% '
{%%( )
get%%* -
;%%- .
set%%/ 2
;%%2 3
}%%4 5
['' 
Display'' 
('' 
Name'' 
='' 
$str'' 3
)''3 4
]''4 5
public(( 
bool(( 
RememberMachine(( '
{((( )
get((* -
;((- .
set((/ 2
;((2 3
}((4 5
})) 	
public++ 
async++ 
Task++ 
<++ 
IActionResult++ '
>++' (

OnGetAsync++) 3
(++3 4
bool++4 8

rememberMe++9 C
,++C D
string++E K
	returnUrl++L U
=++V W
null++X \
)++\ ]
{,, 	
var.. 
user.. 
=.. 
await.. 
_signInManager.. +
...+ ,/
#GetTwoFactorAuthenticationUserAsync.., O
(..O P
)..P Q
;..Q R
if00 
(00 
user00 
==00 
null00 
)00 
{11 
throw22 
new22  
ApplicationException22 .
(22. /
$"22/ 1
$str221 _
"22_ `
)22` a
;22a b
}33 
	ReturnUrl55 
=55 
	returnUrl55 !
;55! "

RememberMe66 
=66 

rememberMe66 #
;66# $
return88 
Page88 
(88 
)88 
;88 
}99 	
public;; 
async;; 
Task;; 
<;; 
IActionResult;; '
>;;' (
OnPostAsync;;) 4
(;;4 5
bool;;5 9

rememberMe;;: D
,;;D E
string;;F L
	returnUrl;;M V
=;;W X
null;;Y ]
);;] ^
{<< 	
if== 
(== 
!== 

ModelState== 
.== 
IsValid== #
)==# $
{>> 
return?? 
Page?? 
(?? 
)?? 
;?? 
}@@ 
varBB 
userBB 
=BB 
awaitBB 
_signInManagerBB +
.BB+ ,/
#GetTwoFactorAuthenticationUserAsyncBB, O
(BBO P
)BBP Q
;BBQ R
ifCC 
(CC 
userCC 
==CC 
nullCC 
)CC 
{DD 
throwEE 
newEE  
ApplicationExceptionEE .
(EE. /
$"EE/ 1
$strEE1 _
"EE_ `
)EE` a
;EEa b
}FF 
varHH 
authenticatorCodeHH !
=HH" #
InputHH$ )
.HH) *
TwoFactorCodeHH* 7
.HH7 8
ReplaceHH8 ?
(HH? @
$strHH@ C
,HHC D
stringHHE K
.HHK L
EmptyHHL Q
)HHQ R
.HHR S
ReplaceHHS Z
(HHZ [
$strHH[ ^
,HH^ _
stringHH` f
.HHf g
EmptyHHg l
)HHl m
;HHm n
varJJ 
resultJJ 
=JJ 
awaitJJ 
_signInManagerJJ -
.JJ- .-
!TwoFactorAuthenticatorSignInAsyncJJ. O
(JJO P
authenticatorCodeJJP a
,JJa b

rememberMeJJc m
,JJm n
InputJJo t
.JJt u
RememberMachine	JJu Ñ
)
JJÑ Ö
;
JJÖ Ü
ifLL 
(LL 
resultLL 
.LL 
	SucceededLL  
)LL  !
{MM 
_loggerNN 
.NN 
LogInformationNN &
(NN& '
$strNN' T
,NNT U
userNNV Z
.NNZ [
IdNN[ ]
)NN] ^
;NN^ _
returnOO 
LocalRedirectOO $
(OO$ %
UrlOO% (
.OO( )
GetLocalUrlOO) 4
(OO4 5
	returnUrlOO5 >
)OO> ?
)OO? @
;OO@ A
}PP 
elseQQ 
ifQQ 
(QQ 
resultQQ 
.QQ 
IsLockedOutQQ '
)QQ' (
{RR 
_loggerSS 
.SS 

LogWarningSS "
(SS" #
$strSS# P
,SSP Q
userSSR V
.SSV W
IdSSW Y
)SSY Z
;SSZ [
returnTT 
RedirectToPageTT %
(TT% &
$strTT& 1
)TT1 2
;TT2 3
}UU 
elseVV 
{WW 
_loggerXX 
.XX 

LogWarningXX "
(XX" #
$strXX# d
,XXd e
userXXf j
.XXj k
IdXXk m
)XXm n
;XXn o

ModelStateYY 
.YY 
AddModelErrorYY (
(YY( )
stringYY) /
.YY/ 0
EmptyYY0 5
,YY5 6
$strYY7 T
)YYT U
;YYU V
returnZZ 
PageZZ 
(ZZ 
)ZZ 
;ZZ 
}[[ 
}\\ 	
}]] 
}^^ ù	
lC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Interfaces\ICatalogService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (

Interfaces( 2
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
} Á
tC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Interfaces\IBasketViewModelService.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (

Interfaces( 2
{ 
public 

	interface #
IBasketViewModelService ,
{ 
Task		 
<		 
BasketViewModel		 
>		 $
GetOrCreateBasketForUser		 6
(		6 7
string		7 =
userName		> F
)		F G
;		G H
}

 
} ˚
pC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Extensions\UrlHelperExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
{ 
public 

static 
class 
UrlHelperExtensions +
{ 
public 
static 
string 
GetLocalUrl (
(( )
this) -

IUrlHelper. 8
	urlHelper9 B
,B C
stringD J
localUrlK S
)S T
{ 	
if 
( 
! 
	urlHelper 
. 

IsLocalUrl %
(% &
localUrl& .
). /
)/ 0
{ 
return		 
	urlHelper		  
.		  !
Page		! %
(		% &
$str		& .
)		. /
;		/ 0
}

 
return 
localUrl 
; 
} 	
public 
static 
string !
EmailConfirmationLink 2
(2 3
this3 7

IUrlHelper8 B
	urlHelperC L
,L M
stringN T
userIdU [
,[ \
string] c
coded h
,h i
stringj p
schemeq w
)w x
{ 	
return 
	urlHelper 
. 
Page !
(! "
$str '
,' (
pageHandler 
: 
null !
,! "
values 
: 
new 
{ 
userId $
,$ %
code& *
}+ ,
,, -
protocol 
: 
scheme  
)  !
;! "
} 	
public 
static 
string %
ResetPasswordCallbackLink 6
(6 7
this7 ;

IUrlHelper< F
	urlHelperG P
,P Q
stringR X
userIdY _
,_ `
stringa g
codeh l
,l m
stringn t
schemeu {
){ |
{ 	
return 
	urlHelper 
. 
Page !
(! "
$str (
,( )
pageHandler 
: 
null !
,! "
values 
: 
new 
{ 
userId $
,$ %
code& *
}+ ,
,, -
protocol 
: 
scheme  
)  !
;! "
} 	
}   
}!! ï
rC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Extensions\EmailSenderExtensions.cs
	namespace 	
	Microsoft
 
. 

AspNetCore 
. 
Mvc "
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
$str :
{: ;
HtmlEncoder; F
.F G
DefaultG N
.N O
EncodeO U
(U V
linkV Z
)Z [
}[ \
$str\ p
"p q
)q r
;r s
} 	
public 
static 
Task "
SendResetPasswordAsync 1
(1 2
this2 6
IEmailSender7 C
emailSenderD O
,O P
stringQ W
emailX ]
,] ^
string_ e
callbackUrlf q
)q r
{ 	
return 
emailSender 
. 
SendEmailAsync -
(- .
email. 3
,3 4
$str5 E
,E F
$" 
$str 9
{9 :
HtmlEncoder: E
.E F
DefaultF M
.M N
EncodeN T
(T U
callbackUrlU `
)` a
}a b
$strb v
"v w
)w x
;x y
} 	
} 
} à
oC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Controllers\AccountController.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
.' (
Controllers( 3
{ 
[		 
Route		 

(		
 
$str		 "
)		" #
]		# $
public

 

class

 
AccountController

 "
:

# $

Controller

% /
{ 
private 
readonly 
SignInManager &
<& '
ApplicationUser' 6
>6 7
_signInManager8 F
;F G
private 
readonly 

IAppLogger #
<# $
AccountController$ 5
>5 6
_logger7 >
;> ?
public 
AccountController  
(  !
SignInManager! .
<. /
ApplicationUser/ >
>> ?
signInManager@ M
,M N

IAppLogger 
< 
AccountController (
>( )
logger* 0
)0 1
{ 	
_signInManager 
= 
signInManager *
;* +
_logger 
= 
logger 
; 
} 	
[ 	
HttpPost	 
] 
[ 	$
ValidateAntiForgeryToken	 !
]! "
public 
async 
Task 
< 
IActionResult '
>' (
Logout) /
(/ 0
)0 1
{ 	
await 
_signInManager  
.  !
SignOutAsync! -
(- .
). /
;/ 0
_logger 
. 
LogInformation "
(" #
$str# 5
)5 6
;6 7
return 
RedirectToPage !
(! "
$str" *
)* +
;+ ,
} 	
} 
} ˆ
[C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\eShopOnWeb-2.1\src\WebRazorPages\Constants.cs
	namespace 	
	Microsoft
 
. 
eShopWeb 
. 

RazorPages '
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
;7 8
public 
const 
int 
ITEMS_PER_PAGE '
=( )
$num* ,
;, -
public 
const 
string 
DEFAULT_USERNAME ,
=- .
$str/ 6
;6 7
} 
}		 