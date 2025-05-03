Æ)
hC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Program.cs
string 
myPolicy 
= 
$str "
;" #
var 
builder 
= 
WebApplication 
. 
CreateBuilder *
(* +
args+ /
)/ 0
;0 1
builder 
. 
Services 
. 
AddControllers 
(  
)  !
;! "
builder 
. 
Services 
. #
AddEndpointsApiExplorer (
(( )
)) *
;* +
builder 
. 
Services 
. 
	AddMapper 
( 
) 
; 
builder 
. 
Services 
. 

AddFeature 
( 
builder #
.# $
Configuration$ 1
,1 2
myPolicy3 ;
); <
;< =
builder 
. 
Services 
. 
AddInjection 
( 
builder %
.% &
Configuration& 3
)3 4
;4 5
builder 
. 
Services 
. 
AddAuthentication "
(" #
builder# *
.* +
Configuration+ 8
)8 9
;9 :
builder 
. 
Services 
. 
AddVersioning 
( 
)  
;  !
builder 
. 
Services 
. 

AddSwagger 
( 
) 
; 
builder 
. 
Services 
. 
AddValidator 
( 
) 
;  
builder 
. 
Services 
. 
AddHealthCheck 
(  
builder  '
.' (
Configuration( 5
)5 6
;6 7
var 
app 
= 	
builder
 
. 
Build 
( 
) 
; 
if 
( 
app 
. 
Environment 
. 
IsDevelopment !
(! "
)" #
)# $
{ 
app   
.   %
UseDeveloperExceptionPage   !
(  ! "
)  " #
;  # $
app!! 
.!! 

UseSwagger!! 
(!! 
)!! 
;!! 
app"" 
."" 

UseSwagger"" 
("" 
)"" 
;"" 
app## 
.## 
UseSwaggerUI## 
(## 
c## 
=>## 
{$$ 
var%% 
provider%% 
=%% 
app%% 
.%% 
Services%% #
.%%# $
GetRequiredService%%$ 6
<%%6 7*
IApiVersionDescriptionProvider%%7 U
>%%U V
(%%V W
)%%W X
;%%X Y
foreach&& 
(&& 
var&& 
description&&  
in&&! #
provider&&$ ,
.&&, -"
ApiVersionDescriptions&&- C
)&&C D
{'' 	
c(( 
.(( 
SwaggerEndpoint(( 
((( 
$"((  
$str((  )
{(() *
description((* 5
.((5 6
	GroupName((6 ?
}((? @
$str((@ M
"((M N
,((N O
description((P [
.(([ \
	GroupName((\ e
.((e f
ToUpperInvariant((f v
(((v w
)((w x
)((x y
;((y z
})) 	
}++ 
)++ 
;++ 
},, 
app.. 
... 
UseHttpsRedirection.. 
(.. 
).. 
;.. 
app// 
.// 
UseCors// 
(// 
myPolicy// 
)// 
;// 
app00 
.00 
UseAuthentication00 
(00 
)00 
;00 
app11 
.11 
UseAuthorization11 
(11 
)11 
;11 
app22 
.22 
MapControllers22 
(22 
)22 
;22 
app33 
.33 
MapHealthChecksUI33 
(33 
)33 
;33 
app44 
.44 
MapHealthChecks44 
(44 
$str44 
,44 
new44 "
	Microsoft44# ,
.44, -

AspNetCore44- 7
.447 8
Diagnostics448 C
.44C D
HealthChecks44D P
.44P Q
HealthCheckOptions44Q c
{55 
	Predicate66 
=66 
_66 
=>66 
true66 
,66 
ResponseWriter77 
=77 
UIResponseWriter77 %
.77% &&
WriteHealthCheckUIResponse77& @
}88 
)88 
;88 
app:: 
.:: 
Run:: 
(:: 
):: 	
;::	 

public<< 
partial<< 
class<< 
Program<< 
{<< 
}<<  
;<<  !ª
àC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Versioning\VersioningExtensions.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,

Versioning, 6
{ 
public 

static 
class  
VersioningExtensions ,
{ 
public 
static 
IServiceCollection (
AddVersioning) 6
(6 7
this7 ;
IServiceCollection< N
servicesO W
)W X
{		 	
services

 
.

 
AddApiVersioning

 %
(

% &
o

& '
=>

( *
{ 
o 
. 
DefaultApiVersion #
=$ %
new& )
	Microsoft* 3
.3 4

AspNetCore4 >
.> ?
Mvc? B
.B C

ApiVersionC M
(M N
$numN O
,O P
$numQ R
)R S
;S T
o 
. /
#AssumeDefaultVersionWhenUnspecified 5
=6 7
true8 <
;< =
o 
. 
ReportApiVersions #
=$ %
true& *
;* +
o 
. 
ApiVersionReader "
=# $
new% (&
UrlSegmentApiVersionReader) C
(C D
)D E
;E F
} 
) 
; 
services 
. #
AddVersionedApiExplorer ,
(, -
o- .
=>/ 1
{ 
o 
. 
GroupNameFormat !
=" #
$str$ ,
;, -
o 
. %
SubstituteApiVersionInUrl +
=, -
true. 2
;2 3
} 
) 
; 
return 
services 
; 
} 	
} 
} ø
ÜC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Validator\ValidatorExtensions.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
	Validator, 5
{ 
public 

static 
class 
ValidatorExtensions +
{ 
public 
static 
IServiceCollection (
AddValidator) 5
(5 6
this6 :
IServiceCollection; M
servicesN V
)V W
{		 	
services

 
.

 
AddTransient

 !
<

! "
UsersDtoValidator

" 3
>

3 4
(

4 5
)

5 6
;

6 7
return 
services 
; 
} 	
} 
} Ÿ
ÇC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Swagger\SwaggerExtensions.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
Swagger, 3
{		 
public

 

static

 
class

 
SwaggerExtensions

 )
{ 
public 
static 
IServiceCollection (

AddSwagger) 3
(3 4
this4 8
IServiceCollection9 K
servicesL T
)T U
{ 	
services 
. 
AddTransient !
<! "
IConfigureOptions" 3
<3 4
SwaggerGenOptions4 E
>E F
,F G#
ConfigureSwaggerOptionsH _
>_ `
(` a
)a b
;b c
services 
. 
AddSwaggerGen "
(" #
c# $
=>% '
{ 
var 
securityScheme "
=# $
new% (!
OpenApiSecurityScheme) >
{ 
Name 
= 
$str *
,* +
Description 
=  !
$str" E
,E F
In 
= 
ParameterLocation *
.* +
Header+ 1
,1 2
Type 
= 
SecuritySchemeType -
.- .
Http. 2
,2 3
Scheme 
= 
$str %
,% &
BearerFormat  
=! "
$str# (
,( )
	Reference 
= 
new  #
OpenApiReference$ 4
{ 
Id 
= 
JwtBearerDefaults .
.. / 
AuthenticationScheme/ C
,C D
Type 
= 
ReferenceType ,
., -
SecurityScheme- ;
} 
} 
; 
c!! 
.!! !
AddSecurityDefinition!! '
(!!' (
securityScheme!!( 6
.!!6 7
	Reference!!7 @
.!!@ A
Id!!A C
,!!C D
securityScheme!!E S
)!!S T
;!!T U
c## 
.## "
AddSecurityRequirement## (
(##( )
new##) ,&
OpenApiSecurityRequirement##- G
{$$ 
{%% 
securityScheme%% $
,%%$ %
new%%& )
List%%* .
<%%. /
string%%/ 5
>%%5 6
(%%6 7
)%%7 8
{%%9 :
}%%; <
}%%= >
}&& 
)&& 
;&& 
}'' 
)'' 
;'' 
return(( 
services(( 
;(( 
})) 	
}++ 
},, »
àC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Swagger\ConfigureSwaggerOptions.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
Swagger, 3
{		 
public

 

class

 #
ConfigureSwaggerOptions

 (
:

) *
IConfigureOptions

+ <
<

< =
SwaggerGenOptions

= N
>

N O
{ 
readonly *
IApiVersionDescriptionProvider /
provider0 8
;8 9
public #
ConfigureSwaggerOptions &
(& '*
IApiVersionDescriptionProvider' E
providerF N
)N O
=>P R
thisS W
.W X
providerX `
=a b
providerc k
;k l
public 
void 
	Configure 
( 
SwaggerGenOptions /
options0 7
)7 8
{ 	
foreach 
( 
var 
description $
in% '
provider( 0
.0 1"
ApiVersionDescriptions1 G
)G H
{ 
options 
. 

SwaggerDoc "
(" #
description# .
.. /
	GroupName/ 8
,8 9#
CreateInfoForApiVersion: Q
(Q R
descriptionR ]
)] ^
)^ _
;_ `
} 
} 	
static 
OpenApiInfo #
CreateInfoForApiVersion 2
(2 3!
ApiVersionDescription3 H
descriptionI T
)T U
{ 	
var 
info 
= 
new 
OpenApiInfo &
{ 
Version 
= 
description %
.% &

ApiVersion& 0
.0 1
ToString1 9
(9 :
): ;
,; <
Title 
= 
$str #
,# $
Description 
= 
$str 5
,5 6
TermsOfService 
=  
new! $
Uri% (
(( )
$str) :
): ;
,; <
Contact 
= 
new 
OpenApiContact ,
{   
Name!! 
=!! 
$str!! )
,!!) *
Email"" 
="" 
$str"" 2
,""2 3
Url## 
=## 
new## 
Uri## !
(##! "
$str##" 3
)##3 4
}$$ 
,$$ 
License%% 
=%% 
new%% 
OpenApiLicense%% ,
{&& 
Name'' 
='' 
$str'' )
,'') *
Url(( 
=(( 
new(( 
Uri(( !
(((! "
$str((" 3
)((3 4
})) 
}** 
;** 
if,, 
(,, 
description,, 
.,, 
IsDeprecated,, (
),,( )
{-- 
info.. 
... 
Description..  
+=..! #
$str..$ >
;..> ?
}// 
return11 
info11 
;11 
}22 	
}33 
}44 µ
C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Mapper\MapperExtension.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
Mapper, 2
{ 
public 

static 
class 
MapperExtension '
{ 
public		 
static		 
IServiceCollection		 (
	AddMapper		) 2
(		2 3
this		3 7
IServiceCollection		8 J
services		K S
)		S T
{

 	
var 
mappingConfig 
= 
new  #
MapperConfiguration$ 7
(7 8
mc8 :
=>; =
{ 
mc 
. 

AddProfile 
( 
new !
MappingsProfile" 1
(1 2
)2 3
)3 4
;4 5
} 
) 
; 
IMapper 
mapper 
= 
mappingConfig *
.* +
CreateMapper+ 7
(7 8
)8 9
;9 :
services 
. 
AddSingleton !
(! "
mapper" (
)( )
;) *
return 
services 
; 
} 	
} 
} …
ÖC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Injection\InjectionExtension.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
	Injection, 5
{ 
public 

static 
class 
InjectionExtension *
{ 
public 
static 
IServiceCollection (
AddInjection) 5
(5 6
this6 :
IServiceCollection; M
servicesN V
,V W
IConfigurationX f
configurationg t
)t u
{ 	
services 
. 
AddSingleton !
<! "
ILoggerManager" 0
,0 1
LoggerManager2 ?
>? @
(@ A
)A B
;B C
services 
. 
AddSingleton !
<! "
IConfiguration" 0
>0 1
(1 2
configuration2 ?
)? @
;@ A
services 
. 
AddSingleton !
<! "
DapperContext" /
>/ 0
(0 1
)1 2
;2 3
services 
. 
	AddScoped 
< !
ICustomersApplication 4
,4 5 
CustomersApplication6 J
>J K
(K L
)L M
;M N
services 
. 
	AddScoped 
< 
ICustomersDomain /
,/ 0
CustomersDomain1 @
>@ A
(A B
)B C
;C D
services 
. 
	AddScoped 
<  
ICustomersRepository 3
,3 4
CustomersRepository5 H
>H I
(I J
)J K
;K L
services 
. 
	AddScoped 
< 
IUsersApplication 0
,0 1
UsersApplication2 B
>B C
(C D
)D E
;E F
services 
. 
	AddScoped 
< 
IUsersDomain +
,+ ,
UsersDomain- 8
>8 9
(9 :
): ;
;; <
services 
. 
	AddScoped 
< 
IUsersRepository /
,/ 0
UsersRepository1 @
>@ A
(A B
)B C
;C D
services 
. 
	AddScoped 
< 
IUnitOfWork *
,* +

UnitOfWork, 6
>6 7
(7 8
)8 9
;9 :
return 
services 
; 
}   	
}!! 
}"" Ö
äC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\HealthCheck\HealthCheckExtensions.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
HealthCheck, 7
{ 
public 

static 
class !
HealthCheckExtensions -
{ 
public 
static 
IServiceCollection (
AddHealthCheck) 7
(7 8
this8 <
IServiceCollection= O
servicesP X
,X Y
IConfigurationZ h
configurationi v
)v w
{		 	
services

 
.

 
AddHealthChecks

 $
(

$ %
)

% &
. 
AddSqlServer 
( 
configuration +
.+ ,
GetConnectionString, ?
(? @
$str@ U
)U V
,V W
tagsX \
:\ ]
new^ a
[a b
]b c
{d e
$strf p
}q r
)r s
. 
AddCheck 
< 
HealthCheckCustom +
>+ ,
(, -
$str- @
,@ A
tagsB F
:F G
newH K
[K L
]L M
{N O
$strP X
}Y Z
)Z [
;[ \
services 
. 
AddHealthChecksUI &
(& '
)' (
.( )
AddInMemoryStorage) ;
(; <
)< =
;= >
return 
services 
; 
} 	
} 
} ·
ÜC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\HealthCheck\HealthCheckCustom.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
HealthCheck, 7
{ 
public 

class 
HealthCheckCustom "
:# $
IHealthCheck% 1
{		 
private

 
readonly

 
Random

 
_random

  '
=

( )
new

* -
Random

. 4
(

4 5
)

5 6
;

6 7
public 
Task 
< 
HealthCheckResult %
>% &
CheckHealthAsync' 7
(7 8
HealthCheckContext8 J
contextK R
,R S
CancellationTokenT e
cancellationTokenf w
=x y
default	z Å
)
Å Ç
{ 	
var 
responseTime 
= 
_random &
.& '
Next' +
(+ ,
$num, -
,- .
$num/ 2
)2 3
;3 4
if 
( 
responseTime 
< 
$num "
)" #
{ 
return 
Task 
. 

FromResult &
(& '
HealthCheckResult' 8
.8 9
Healthy9 @
(@ A
$strA h
)h i
)i j
;j k
} 
else 
if 
( 
responseTime !
<" #
$num$ '
)' (
{ 
return 
Task 
. 

FromResult &
(& '
HealthCheckResult' 8
.8 9
Degraded9 A
(A B
$strB j
)j k
)k l
;l m
} 
return 
Task 
. 

FromResult "
(" #
HealthCheckResult# 4
.4 5
	Unhealthy5 >
(> ?
$str? h
)h i
)i j
;j k
} 	
} 
} ﬁ
ÅC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Feature\FeatureExtension.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Modules$ +
.+ ,
Feature, 3
{ 
public 

static 
class 
FeatureExtension (
{ 
public		 
static		 
IServiceCollection		 (

AddFeature		) 3
(		3 4
this		4 8
IServiceCollection		9 K
services		L T
,		T U
IConfiguration		V d
configuration		e r
,		r s
string		t z
myPolicy			{ É
)
		É Ñ
{

 	
services 
. 
AddCors 
( 
options $
=>% '
options( /
./ 0
	AddPolicy0 9
(9 :
myPolicy: B
,B C
builderD K
=>L N
builderO V
.V W
WithOriginsW b
(b c
configurationc p
[p q
$str	q Ñ
]
Ñ Ö
)
Ö Ü
.L M
AllowAnyHeaderM [
([ \
)\ ]
.L M
AllowAnyMethodM [
([ \
)\ ]
)L M
)M N
;N O
services 
. 
AddMvc 
( 
) 
; 
return 
services 
; 
} 	
} 
} º(
êC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Modules\Authentication\AuthenticationExtensions.cs
	namespace

 	
Saul


 
.

 
Test

 
.

 
Services

 
.

 
WebAPI

 #
.

# $
Modules

$ +
.

+ ,
Authentication

, :
{ 
public 

static 
class $
AuthenticationExtensions 0
{ 
public 
static 
IServiceCollection (
AddAuthentication) :
(: ;
this; ?
IServiceCollection@ R
servicesS [
,[ \
IConfiguration] k
configurationl y
)y z
{ 	
var 
appSettingsSection "
=# $
configuration% 2
.2 3

GetSection3 =
(= >
$str> F
)F G
;G H
services 
. 
	Configure 
< 
AppSettings *
>* +
(+ ,
appSettingsSection, >
)> ?
;? @
var 
appSettings 
= 
appSettingsSection 0
.0 1
Get1 4
<4 5
AppSettings5 @
>@ A
(A B
)B C
;C D
var 
key 
= 
Encoding 
. 
ASCII $
.$ %
GetBytes% -
(- .
appSettings. 9
.9 :
Secret: @
)@ A
;A B
var 
Issuer 
= 
appSettings $
.$ %
Issuer% +
;+ ,
var 
Audience 
= 
appSettings &
.& '
Audience' /
;/ 0
services 
. 
AddAuthentication &
(& '
x' (
=>) +
{ 
x 
. %
DefaultAuthenticateScheme +
=, -
JwtBearerDefaults. ?
.? @ 
AuthenticationScheme@ T
;T U
x 
. "
DefaultChallengeScheme (
=) *
JwtBearerDefaults+ <
.< = 
AuthenticationScheme= Q
;Q R
} 
) 
. 
AddJwtBearer 
( 
x 
=> 
{ 
x   
.   
Events   
=   
new   
JwtBearerEvents   .
{!! 
OnTokenValidated## $
=##% &
context##' .
=>##/ 1
{$$ 
var%% 
userId%% "
=%%# $
int%%% (
.%%( )
Parse%%) .
(%%. /
context%%/ 6
.%%6 7
	Principal%%7 @
.%%@ A
Identity%%A I
.%%I J
Name%%J N
)%%N O
;%%O P
return&& 
Task&& #
.&&# $
CompletedTask&&$ 1
;&&1 2
}'' 
,'' "
OnAuthenticationFailed)) *
=))+ ,
context))- 4
=>))5 7
{** 
if++ 
(++ 
context++ #
.++# $
	Exception++$ -
.++- .
GetType++. 5
(++5 6
)++6 7
==++8 :
typeof++; A
(++A B)
SecurityTokenExpiredException++B _
)++_ `
)++` a
{,, 
context-- #
.--# $
Response--$ ,
.--, -
Headers--- 4
.--4 5
Add--5 8
(--8 9
$str--9 H
,--H I
$str--J P
)--P Q
;--Q R
}.. 
return// 
Task// #
.//# $
CompletedTask//$ 1
;//1 2
}00 
}11 
;11 
x22 
.22  
RequireHttpsMetadata22 &
=22' (
false22) .
;22. /
x33 
.33 
	SaveToken33 
=33 
false33 #
;33# $
x44 
.44 %
TokenValidationParameters44 +
=44, -
new44. 1%
TokenValidationParameters442 K
{55 $
ValidateIssuerSigningKey66 ,
=66- .
true66/ 3
,663 4
IssuerSigningKey77 $
=77% &
new77' * 
SymmetricSecurityKey77+ ?
(77? @
key77@ C
)77C D
,77D E
ValidateIssuer88 "
=88# $
true88% )
,88) *
ValidIssuer99 
=99  !
Issuer99" (
,99( )
ValidateAudience:: $
=::% &
true::' +
,::+ ,
ValidAudience;; !
=;;" #
Audience;;$ ,
,;;, -
ValidateLifetime<< $
=<<% &
true<<' +
,<<+ ,
	ClockSkew== 
=== 
TimeSpan==  (
.==( )
Zero==) -
}>> 
;>> 
}?? 
)?? 
;?? 
return@@ 
services@@ 
;@@ 
}AA 	
}BB 
}CC ê
tC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Helpers\AppSettings.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Helpers$ +
{ 
public 

class 
AppSettings 
{ 
public 
string 

OriginCors  
{! "
get# &
;& '
set( +
;+ ,
}- .
public 
string 
Secret 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Issuer 
{ 
get "
;" #
set$ '
;' (
}) *
public 
string 
Audience 
{  
get! $
;$ %
set& )
;) *
}+ ,
}

 
} Ø+
C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Controllers\v2\UsersController.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Controllers$ /
./ 0
v20 2
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 3
)3 4
]4 5
[ 
ApiController 
] 
[ 

ApiVersion 
( 
$str 
) 
] 
public 

class 
UsersController  
:! "

Controller# -
{ 
private 
readonly 
IUsersApplication *
_usersApplication+ <
;< =
private 
readonly 
AppSettings $
_appSettings% 1
;1 2
public 
UsersController 
( 
IUsersApplication 0
usersApplication1 A
,A B
IOptionsC K
<K L
AppSettingsL W
>W X
appSettingsY d
)d e
{ 	
_usersApplication 
= 
usersApplication  0
;0 1
_appSettings 
= 
appSettings &
.& '
Value' ,
;, -
} 	
[ 	
AllowAnonymous	 
] 
[   	
HttpPost  	 
(   
$str    
)    !
]  ! "
public!! 
IActionResult!! 
Authenticate!! )
(!!) *
[!!* +
FromBody!!+ 3
]!!3 4
UsersDto!!5 =
usersDto!!> F
)!!F G
{"" 	
var## 
response## 
=## 
_usersApplication## ,
.##, -
Authenticate##- 9
(##9 :
usersDto##: B
.##B C
UserName##C K
,##K L
usersDto##M U
.##U V
Password##V ^
)##^ _
;##_ `
if$$ 
($$ 
response$$ 
.$$ 
	IsSuccess$$ "
)$$" #
{%% 
if&& 
(&& 
response&& 
.&& 
Data&& !
!=&&" $
null&&% )
)&&) *
{'' 
response(( 
.(( 
Data(( !
.((! "
Token((" '
=((( )

BuildToken((* 4
(((4 5
response((5 =
)((= >
;((> ?
return)) 
Ok)) 
()) 
response)) &
)))& '
;))' (
}** 
else++ 
return,, 
NotFound,, #
(,,# $
response,,$ ,
),,, -
;,,- .
}-- 
return// 

BadRequest// 
(// 
response// &
)//& '
;//' (
}00 	
private22 
string22 

BuildToken22 !
(22! "
Response22" *
<22* +
UsersDto22+ 3
>223 4
usersDto225 =
)22= >
{33 	
var44 
tokenHandler44 
=44 
new44 "#
JwtSecurityTokenHandler44# :
(44: ;
)44; <
;44< =
var55 
key55 
=55 
Encoding55 
.55 
ASCII55 $
.55$ %
GetBytes55% -
(55- .
_appSettings55. :
.55: ;
Secret55; A
)55A B
;55B C
var66 
tokenDescriptor66 
=66  !
new66" %#
SecurityTokenDescriptor66& =
{77 
Subject88 
=88 
new88 
ClaimsIdentity88 ,
(88, -
new88- 0
Claim881 6
[886 7
]887 8
{99 
new:: 
Claim:: 
(:: 

ClaimTypes:: (
.::( )
Name::) -
,::- .
usersDto::/ 7
.::7 8
Data::8 <
.::< =
UserId::= C
.::C D
ToString::D L
(::L M
)::M N
)::N O
};; 
);; 
,;; 
Expires<< 
=<< 
DateTime<< "
.<<" #
UtcNow<<# )
.<<) *

AddMinutes<<* 4
(<<4 5
$num<<5 7
)<<7 8
,<<8 9
SigningCredentials== "
===# $
new==% (
SigningCredentials==) ;
(==; <
new==< ? 
SymmetricSecurityKey==@ T
(==T U
key==U X
)==X Y
,==Y Z
SecurityAlgorithms==[ m
.==m n 
HmacSha256Signature	==n Å
)
==Å Ç
,
==Ç É
Issuer>> 
=>> 
_appSettings>> %
.>>% &
Issuer>>& ,
,>>, -
Audience?? 
=?? 
_appSettings?? '
.??' (
Audience??( 0
}@@ 
;@@ 
varAA 
tokenAA 
=AA 
tokenHandlerAA $
.AA$ %
CreateTokenAA% 0
(AA0 1
tokenDescriptorAA1 @
)AA@ A
;AAA B
varBB 
tokenStringBB 
=BB 
tokenHandlerBB *
.BB* +

WriteTokenBB+ 5
(BB5 6
tokenBB6 ;
)BB; <
;BB< =
returnCC 
tokenStringCC 
;CC 
}DD 	
}EE 
}FF ≤C
ÉC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Controllers\v2\CustomersController.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Controllers$ /
./ 0
v20 2
{		 
[

 
	Authorize

 
]

 
[ 
Route 

(
 
$str 3
)3 4
]4 5
[ 
ApiController 
] 
[ 

ApiVersion 
( 
$str 
) 
] 
public 

class 
CustomersController $
:% &

Controller' 1
{ 
private 
readonly !
ICustomersApplication .!
_customersApplication/ D
;D E
private 
readonly 
ILoggerManager '
_logger( /
;/ 0
public 
CustomersController "
(" #!
ICustomersApplication# 8 
customersApplication9 M
,M N
ILoggerManagerO ]
logger^ d
)d e
{ 	!
_customersApplication !
=" # 
customersApplication$ 8
;8 9
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetAll) /
(/ 0
)0 1
{ 	
var 
response 
= 
await  !
_customersApplication! 6
.6 7
GetAll7 =
(= >
)> ?
;? @
if 
( 
response 
. 
	IsSuccess "
)" #
{ 
_logger 
. 
LogInfo 
(  
$str  J
)J K
;K L
return   
Ok   
(   
response   "
)  " #
;  # $
}!! 
return## 

BadRequest## 
(## 
response## &
.##& '
Message##' .
)##. /
;##/ 0
}$$ 	
[&& 	
HttpGet&&	 
(&& 
$str&& '
)&&' (
]&&( )
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' ( 
GetAllWithPagination'') =
(''= >
[''> ?
	FromQuery''? H
]''H I
int''J M

pageNumber''N X
,''X Y
int''Z ]
pageSize''^ f
)''f g
{(( 	
var)) 
response)) 
=)) 
await))  !
_customersApplication))! 6
.))6 7 
GetAllWithPagination))7 K
())K L

pageNumber))L V
,))V W
pageSize))X `
)))` a
;))a b
if** 
(** 
response** 
.** 
	IsSuccess** "
)**" #
{++ 
_logger,, 
.,, 
LogInfo,, 
(,,  
$str,,  X
),,X Y
;,,Y Z
return-- 
Ok-- 
(-- 
response-- "
)--" #
;--# $
}.. 
return00 

BadRequest00 
(00 
response00 &
.00& '
Message00' .
)00. /
;00/ 0
}11 	
[33 	
HttpGet33	 
(33 
$str33 #
)33# $
]33$ %
public44 
async44 
Task44 
<44 
IActionResult44 '
>44' (
Get44) ,
(44, -
string44- 3

customerId444 >
)44> ?
{55 	
var66 
response66 
=66 
await66  !
_customersApplication66! 6
.666 7
Get667 :
(66: ;

customerId66; E
)66E F
;66F G
if77 
(77 
response77 
.77 
	IsSuccess77 "
)77" #
return88 
Ok88 
(88 
response88 "
)88" #
;88# $
return:: 

BadRequest:: 
(:: 
response:: &
.::& '
Message::' .
)::. /
;::/ 0
}<< 	
[>> 	
HttpPost>>	 
(>> 
$str>> 
)>> 
]>> 
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
Insert??) /
(??/ 0
[??0 1
FromBody??1 9
]??9 :
CustomersDto??; G
customersDto??H T
)??T U
{@@ 	
ifAA 
(AA 
customersDtoAA 
==AA 
nullAA  $
)AA$ %
returnBB 

BadRequestBB !
(BB! "
)BB" #
;BB# $
varDD 
responseDD 
=DD 
awaitDD  !
_customersApplicationDD! 6
.DD6 7
InsertDD7 =
(DD= >
customersDtoDD> J
)DDJ K
;DDK L
ifEE 
(EE 
responseEE 
.EE 
	IsSuccessEE "
)EE" #
returnFF 
OkFF 
(FF 
responseFF "
)FF" #
;FF# $
returnHH 

BadRequestHH 
(HH 
responseHH &
.HH& '
MessageHH' .
)HH. /
;HH/ 0
}II 	
[KK 	
HttpPutKK	 
(KK 
$strKK &
)KK& '
]KK' (
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
UpdateLL) /
(LL/ 0
stringLL0 6

customerIdLL7 A
,LLA B
[LLC D
FromBodyLLD L
]LLL M
CustomersDtoLLN Z
customersDtoLL[ g
)LLg h
{MM 	
varNN 
customerDtoNN 
=NN 
awaitNN #!
_customersApplicationNN$ 9
.NN9 :
GetNN: =
(NN= >

customerIdNN> H
)NNH I
;NNI J
ifOO 
(OO 
customerDtoOO 
.OO 
DataOO  
==OO! #
nullOO$ (
)OO( )
returnPP 
NotFoundPP 
(PP  
customerDtoPP  +
.PP+ ,
MessagePP, 3
)PP3 4
;PP4 5
ifRR 
(RR 
customersDtoRR 
==RR 
nullRR  $
)RR$ %
returnSS 

BadRequestSS !
(SS! "
)SS" #
;SS# $
varUU 
responseUU 
=UU 
awaitUU  !
_customersApplicationUU! 6
.UU6 7
UpdateUU7 =
(UU= >
customersDtoUU> J
)UUJ K
;UUK L
ifVV 
(VV 
responseVV 
.VV 
	IsSuccessVV "
)VV" #
returnWW 
OkWW 
(WW 
responseWW "
)WW" #
;WW# $
returnYY 

BadRequestYY 
(YY 
responseYY &
.YY& '
MessageYY' .
)YY. /
;YY/ 0
}ZZ 	
[\\ 	

HttpDelete\\	 
(\\ 
$str\\ )
)\\) *
]\\* +
public]] 
async]] 
Task]] 
<]] 
IActionResult]] '
>]]' (
Delete]]) /
(]]/ 0
string]]0 6

customerId]]7 A
)]]A B
{^^ 	
if__ 
(__ 
string__ 
.__ 
IsNullOrEmpty__ $
(__$ %

customerId__% /
)__/ 0
)__0 1
return`` 

BadRequest`` !
(``! "
)``" #
;``# $
varbb 
responsebb 
=bb 
awaitbb  !
_customersApplicationbb! 6
.bb6 7
Deletebb7 =
(bb= >

customerIdbb> H
)bbH I
;bbI J
ifcc 
(cc 
responsecc 
.cc 
	IsSuccesscc "
)cc" #
returndd 
Okdd 
(dd 
responsedd "
)dd" #
;dd# $
returnff 

BadRequestff 
(ff 
responseff &
.ff& '
Messageff' .
)ff. /
;ff/ 0
}gg 	
}hh 
}ii ˜+
C:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Controllers\v1\UsersController.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Controllers$ /
./ 0
v10 2
{ 
[ 
	Authorize 
] 
[ 
Route 

(
 
$str 3
)3 4
]4 5
[ 
ApiController 
] 
[ 

ApiVersion 
( 
$str 
, 

Deprecated !
=" #
true$ (
)( )
]) *
public 

class 
UsersController  
:! "

Controller# -
{ 
private 
readonly 
IUsersApplication *
_usersApplication+ <
;< =
private 
readonly 
AppSettings $
_appSettings% 1
;1 2
public 
UsersController 
( 
IUsersApplication 0
usersApplication1 A
,A B
IOptionsC K
<K L
AppSettingsL W
>W X
appSettingsY d
)d e
{ 	
_usersApplication 
= 
usersApplication  0
;0 1
_appSettings 
= 
appSettings &
.& '
Value' ,
;, -
} 	
[ 	
AllowAnonymous	 
] 
[   	
HttpPost  	 
(   
$str    
)    !
]  ! "
public!! 
IActionResult!! 
Authenticate!! )
(!!) *
[!!* +
FromBody!!+ 3
]!!3 4
UsersDto!!5 =
usersDto!!> F
)!!F G
{"" 	
var## 
response## 
=## 
_usersApplication## ,
.##, -
Authenticate##- 9
(##9 :
usersDto##: B
.##B C
UserName##C K
,##K L
usersDto##M U
.##U V
Password##V ^
)##^ _
;##_ `
if$$ 
($$ 
response$$ 
.$$ 
	IsSuccess$$ "
)$$" #
{%% 
if&& 
(&& 
response&& 
.&& 
Data&& !
!=&&" $
null&&% )
)&&) *
{'' 
response(( 
.(( 
Data(( !
.((! "
Token((" '
=((( )

BuildToken((* 4
(((4 5
response((5 =
)((= >
;((> ?
return)) 
Ok)) 
()) 
response)) &
)))& '
;))' (
}** 
else++ 
return,, 
NotFound,, #
(,,# $
response,,$ ,
),,, -
;,,- .
}-- 
return// 

BadRequest// 
(// 
response// &
)//& '
;//' (
}00 	
private22 
string22 

BuildToken22 !
(22! "
Response22" *
<22* +
UsersDto22+ 3
>223 4
usersDto225 =
)22= >
{33 	
var44 
tokenHandler44 
=44 
new44 "#
JwtSecurityTokenHandler44# :
(44: ;
)44; <
;44< =
var55 
key55 
=55 
Encoding55 
.55 
ASCII55 $
.55$ %
GetBytes55% -
(55- .
_appSettings55. :
.55: ;
Secret55; A
)55A B
;55B C
var66 
tokenDescriptor66 
=66  !
new66" %#
SecurityTokenDescriptor66& =
{77 
Subject88 
=88 
new88 
ClaimsIdentity88 ,
(88, -
new88- 0
Claim881 6
[886 7
]887 8
{99 
new:: 
Claim:: 
(:: 

ClaimTypes:: (
.::( )
Name::) -
,::- .
usersDto::/ 7
.::7 8
Data::8 <
.::< =
UserId::= C
.::C D
ToString::D L
(::L M
)::M N
)::N O
};; 
);; 
,;; 
Expires<< 
=<< 
DateTime<< "
.<<" #
UtcNow<<# )
.<<) *

AddMinutes<<* 4
(<<4 5
$num<<5 6
)<<6 7
,<<7 8
SigningCredentials== "
===# $
new==% (
SigningCredentials==) ;
(==; <
new==< ? 
SymmetricSecurityKey==@ T
(==T U
key==U X
)==X Y
,==Y Z
SecurityAlgorithms==[ m
.==m n 
HmacSha256Signature	==n Å
)
==Å Ç
,
==Ç É
Issuer>> 
=>> 
_appSettings>> %
.>>% &
Issuer>>& ,
,>>, -
Audience?? 
=?? 
_appSettings?? '
.??' (
Audience??( 0
}@@ 
;@@ 
varAA 
tokenAA 
=AA 
tokenHandlerAA $
.AA$ %
CreateTokenAA% 0
(AA0 1
tokenDescriptorAA1 @
)AA@ A
;AAA B
varBB 
tokenStringBB 
=BB 
tokenHandlerBB *
.BB* +

WriteTokenBB+ 5
(BB5 6
tokenBB6 ;
)BB; <
;BB< =
returnCC 
tokenStringCC 
;CC 
}DD 	
}EE 
}FF Ö6
ÉC:\01S\03_c_ex\35-SonarQube\04-SampleProjects\Net-DDD-6.0-f-29-Test\Saul.Test.Services.WebAPI\Controllers\v1\CustomersController.cs
	namespace 	
Saul
 
. 
Test 
. 
Services 
. 
WebAPI #
.# $
Controllers$ /
./ 0
v10 2
{		 
[

 
	Authorize

 
]

 
[ 
Route 

(
 
$str 3
)3 4
]4 5
[ 
ApiController 
] 
[ 

ApiVersion 
( 
$str 
, 

Deprecated !
=" #
true$ (
)( )
]) *
public 

class 
CustomersController $
:% &

Controller' 1
{ 
private 
readonly !
ICustomersApplication .!
_customersApplication/ D
;D E
private 
readonly 
ILoggerManager '
_logger( /
;/ 0
public 
CustomersController "
(" #!
ICustomersApplication# 8 
customersApplication9 M
,M N
ILoggerManagerO ]
logger^ d
)d e
{ 	!
_customersApplication !
=" # 
customersApplication$ 8
;8 9
_logger 
= 
logger 
; 
} 	
[ 	
HttpGet	 
( 
$str 
) 
] 
public 
async 
Task 
< 
IActionResult '
>' (
GetAll) /
(/ 0
)0 1
{ 	
var 
response 
= 
await  !
_customersApplication! 6
.6 7
GetAll7 =
(= >
)> ?
;? @
if 
( 
response 
. 
	IsSuccess "
)" #
{ 
_logger 
. 
LogInfo 
(  
$str  J
)J K
;K L
return   
Ok   
(   
response   "
)  " #
;  # $
}!! 
return## 

BadRequest## 
(## 
response## &
.##& '
Message##' .
)##. /
;##/ 0
}$$ 	
[&& 	
HttpGet&&	 
(&& 
$str&& #
)&&# $
]&&$ %
public'' 
async'' 
Task'' 
<'' 
IActionResult'' '
>''' (
Get'') ,
('', -
string''- 3

customerId''4 >
)''> ?
{(( 	
var)) 
response)) 
=)) 
await))  !
_customersApplication))! 6
.))6 7
Get))7 :
()): ;

customerId)); E
)))E F
;))F G
if** 
(** 
response** 
.** 
	IsSuccess** "
)**" #
return++ 
Ok++ 
(++ 
response++ "
)++" #
;++# $
return-- 

BadRequest-- 
(-- 
response-- &
.--& '
Message--' .
)--. /
;--/ 0
}// 	
[11 	
HttpPost11	 
(11 
$str11 
)11 
]11 
public22 
async22 
Task22 
<22 
IActionResult22 '
>22' (
Insert22) /
(22/ 0
[220 1
FromBody221 9
]229 :
CustomersDto22; G
customersDto22H T
)22T U
{33 	
if44 
(44 
customersDto44 
==44 
null44  $
)44$ %
return55 

BadRequest55 !
(55! "
)55" #
;55# $
var77 
response77 
=77 
await77  !
_customersApplication77! 6
.776 7
Insert777 =
(77= >
customersDto77> J
)77J K
;77K L
if88 
(88 
response88 
.88 
	IsSuccess88 "
)88" #
return99 
Ok99 
(99 
response99 "
)99" #
;99# $
return;; 

BadRequest;; 
(;; 
response;; &
.;;& '
Message;;' .
);;. /
;;;/ 0
}<< 	
[>> 	
HttpPut>>	 
(>> 
$str>> 
)>> 
]>> 
public?? 
async?? 
Task?? 
<?? 
IActionResult?? '
>??' (
Update??) /
(??/ 0
[??0 1
FromBody??1 9
]??9 :
CustomersDto??; G
customersDto??H T
)??T U
{@@ 	
ifAA 
(AA 
customersDtoAA 
==AA 
nullAA  $
)AA$ %
returnBB 

BadRequestBB !
(BB! "
)BB" #
;BB# $
varDD 
responseDD 
=DD 
awaitDD  !
_customersApplicationDD! 6
.DD6 7
UpdateDD7 =
(DD= >
customersDtoDD> J
)DDJ K
;DDK L
ifEE 
(EE 
responseEE 
.EE 
	IsSuccessEE "
)EE" #
returnFF 
OkFF 
(FF 
responseFF "
)FF" #
;FF# $
returnHH 

BadRequestHH 
(HH 
responseHH &
.HH& '
MessageHH' .
)HH. /
;HH/ 0
}II 	
[KK 	

HttpDeleteKK	 
(KK 
$strKK )
)KK) *
]KK* +
publicLL 
asyncLL 
TaskLL 
<LL 
IActionResultLL '
>LL' (
DeleteLL) /
(LL/ 0
stringLL0 6

customerIdLL7 A
)LLA B
{MM 	
ifNN 
(NN 
stringNN 
.NN 
IsNullOrEmptyNN $
(NN$ %

customerIdNN% /
)NN/ 0
)NN0 1
returnOO 

BadRequestOO !
(OO! "
)OO" #
;OO# $
varQQ 
responseQQ 
=QQ 
awaitQQ  !
_customersApplicationQQ! 6
.QQ6 7
DeleteQQ7 =
(QQ= >

customerIdQQ> H
)QQH I
;QQI J
ifRR 
(RR 
responseRR 
.RR 
	IsSuccessRR "
)RR" #
returnSS 
OkSS 
(SS 
responseSS "
)SS" #
;SS# $
returnUU 

BadRequestUU 
(UU 
responseUU &
.UU& '
MessageUU' .
)UU. /
;UU/ 0
}VV 	
}WW 
}XX 