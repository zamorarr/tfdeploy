ящ
с"»"
9
Add
x"T
y"T
z"T"
Ttype:
2	
T
AddN
inputs"T*N
sum"T"
Nint(0"
Ttype:
2	АР
А
ApplyGradientDescent
var"TА

alpha"T

delta"T
out"TА"
Ttype:
2	"
use_lockingbool( 
Ш
ArgMax

input"T
	dimension"Tidx
output"output_type"
Ttype:
2	"
Tidxtype0:
2	"
output_typetype0	:
2	
x
Assign
ref"TА

value"T

output_ref"TА"	
Ttype"
validate_shapebool("
use_lockingbool(Ш
p
	AssignAdd
ref"TА

value"T

output_ref"TА"
Ttype:
2	"
use_lockingbool( 
{
BiasAdd

value"T	
bias"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
{
BiasAddGrad
out_backprop"T
output"T"
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
R
BroadcastGradientArgs
s0"T
s1"T
r0"T
r1"T"
Ttype0:
2	
8
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype
8
Const
output"dtype"
valuetensor"
dtypetype
S
DynamicStitch
indices*N
data"T*N
merged"T"
Nint(0"	
Ttype
A
Equal
x"T
y"T
z
"
Ttype:
2	
Р
4
Fill
dims

value"T
output"T"	
Ttype
+
Floor
x"T
y"T"
Ttype:
2
>
FloorDiv
x"T
y"T
z"T"
Ttype:
2	
7
FloorMod
x"T
y"T
z"T"
Ttype:
2	
?
GreaterEqual
x"T
y"T
z
"
Ttype:
2		
.
Identity

input"T
output"T"	
Ttype
N
IsVariableInitialized
ref"dtypeА
is_initialized
"
dtypetypeШ
<
	LessEqual
x"T
y"T
z
"
Ttype:
2		
+
Log
x"T
y"T"
Ttype:	
2
o
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2
:
Maximum
x"T
y"T
z"T"
Ttype:	
2	Р
К
Mean

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
:
Minimum
x"T
y"T
z"T"
Ttype:	
2	Р
<
Mul
x"T
y"T
z"T"
Ttype:
2	Р
-
Neg
x"T
y"T"
Ttype:
	2	

NoOp
D
NotEqual
x"T
y"T
z
"
Ttype:
2	
Р
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
К
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
}
RandomUniform

shape"T
output"dtype"
seedint "
seed2int "
dtypetype:
2"
Ttype:
2	И
`
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx"
Tidxtype0:
2	
=
RealDiv
x"T
y"T
z"T"
Ttype:
2	
4

Reciprocal
x"T
y"T"
Ttype:
	2	
A
Relu
features"T
activations"T"
Ttype:
2		
S
ReluGrad
	gradients"T
features"T
	backprops"T"
Ttype:
2		
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
8
Softmax
logits"T
softmax"T"
Ttype:
2
,
Sqrt
x"T
y"T"
Ttype:	
2
0
Square
x"T
y"T"
Ttype:
	2	
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
9
Sub
x"T
y"T
z"T"
Ttype:
2	
Й
Sum

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( "
Ttype:
2	"
Tidxtype0:
2	
c
Tile

input"T
	multiples"
Tmultiples
output"T"	
Ttype"

Tmultiplestype0:
2	
s

VariableV2
ref"dtypeА"
shapeshape"
dtypetype"
	containerstring "
shared_namestring И"serve*1.4.02v1.4.0-rc1-11-g130a514ЅЄ
r
dense_1_inputPlaceholder*
dtype0*
shape:€€€€€€€€€Р*(
_output_shapes
:€€€€€€€€€Р
m
dense_1/random_uniform/shapeConst*
dtype0*
valueB"     *
_output_shapes
:
_
dense_1/random_uniform/minConst*
dtype0*
valueB
 *ИОЫљ*
_output_shapes
: 
_
dense_1/random_uniform/maxConst*
dtype0*
valueB
 *ИОЫ=*
_output_shapes
: 
™
$dense_1/random_uniform/RandomUniformRandomUniformdense_1/random_uniform/shape*
dtype0*
seed2Ы»з*
seed±€е)*
T0* 
_output_shapes
:
РА
z
dense_1/random_uniform/subSubdense_1/random_uniform/maxdense_1/random_uniform/min*
T0*
_output_shapes
: 
О
dense_1/random_uniform/mulMul$dense_1/random_uniform/RandomUniformdense_1/random_uniform/sub*
T0* 
_output_shapes
:
РА
А
dense_1/random_uniformAdddense_1/random_uniform/muldense_1/random_uniform/min*
T0* 
_output_shapes
:
РА
Ж
dense_1/kernel
VariableV2*
dtype0*
shape:
РА*
	container *
shared_name * 
_output_shapes
:
РА
Њ
dense_1/kernel/AssignAssigndense_1/kerneldense_1/random_uniform*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
РА
}
dense_1/kernel/readIdentitydense_1/kernel*!
_class
loc:@dense_1/kernel*
T0* 
_output_shapes
:
РА
\
dense_1/ConstConst*
dtype0*
valueBА*    *
_output_shapes	
:А
z
dense_1/bias
VariableV2*
dtype0*
shape:А*
	container *
shared_name *
_output_shapes	
:А
™
dense_1/bias/AssignAssigndense_1/biasdense_1/Const*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_1/bias/readIdentitydense_1/bias*
_class
loc:@dense_1/bias*
T0*
_output_shapes	
:А
Х
dense_1/MatMulMatMuldense_1_inputdense_1/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:€€€€€€€€€А
З
dense_1/BiasAddBiasAdddense_1/MatMuldense_1/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
X
dense_1/ReluReludense_1/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
T
dropout_1/mul/yConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
f
dropout_1/mulMuldense_1/Reludropout_1/mul/y*
T0*(
_output_shapes
:€€€€€€€€€А
`
dropout_1/dropout/keep_probConst*
dtype0*
valueB
 *ЪЩ?*
_output_shapes
: 
d
dropout_1/dropout/ShapeShapedropout_1/mul*
out_type0*
T0*
_output_shapes
:
i
$dropout_1/dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
i
$dropout_1/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
Ј
.dropout_1/dropout/random_uniform/RandomUniformRandomUniformdropout_1/dropout/Shape*
dtype0*
seed2Ф»Ј*
seed±€е)*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
$dropout_1/dropout/random_uniform/subSub$dropout_1/dropout/random_uniform/max$dropout_1/dropout/random_uniform/min*
T0*
_output_shapes
: 
і
$dropout_1/dropout/random_uniform/mulMul.dropout_1/dropout/random_uniform/RandomUniform$dropout_1/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
¶
 dropout_1/dropout/random_uniformAdd$dropout_1/dropout/random_uniform/mul$dropout_1/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
О
dropout_1/dropout/addAdddropout_1/dropout/keep_prob dropout_1/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
j
dropout_1/dropout/FloorFloordropout_1/dropout/add*
T0*(
_output_shapes
:€€€€€€€€€А

dropout_1/dropout/divRealDivdropout_1/muldropout_1/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А

dropout_1/dropout/mulMuldropout_1/dropout/divdropout_1/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
m
dense_2/random_uniform/shapeConst*
dtype0*
valueB"   А   *
_output_shapes
:
_
dense_2/random_uniform/minConst*
dtype0*
valueB
 *   Њ*
_output_shapes
: 
_
dense_2/random_uniform/maxConst*
dtype0*
valueB
 *   >*
_output_shapes
: 
™
$dense_2/random_uniform/RandomUniformRandomUniformdense_2/random_uniform/shape*
dtype0*
seed2хЖц*
seed±€е)*
T0* 
_output_shapes
:
АА
z
dense_2/random_uniform/subSubdense_2/random_uniform/maxdense_2/random_uniform/min*
T0*
_output_shapes
: 
О
dense_2/random_uniform/mulMul$dense_2/random_uniform/RandomUniformdense_2/random_uniform/sub*
T0* 
_output_shapes
:
АА
А
dense_2/random_uniformAdddense_2/random_uniform/muldense_2/random_uniform/min*
T0* 
_output_shapes
:
АА
Ж
dense_2/kernel
VariableV2*
dtype0*
shape:
АА*
	container *
shared_name * 
_output_shapes
:
АА
Њ
dense_2/kernel/AssignAssigndense_2/kerneldense_2/random_uniform*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
}
dense_2/kernel/readIdentitydense_2/kernel*!
_class
loc:@dense_2/kernel*
T0* 
_output_shapes
:
АА
\
dense_2/ConstConst*
dtype0*
valueBА*    *
_output_shapes	
:А
z
dense_2/bias
VariableV2*
dtype0*
shape:А*
	container *
shared_name *
_output_shapes	
:А
™
dense_2/bias/AssignAssigndense_2/biasdense_2/Const*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
r
dense_2/bias/readIdentitydense_2/bias*
_class
loc:@dense_2/bias*
T0*
_output_shapes	
:А
Э
dense_2/MatMulMatMuldropout_1/dropout/muldense_2/kernel/read*
transpose_b( *
transpose_a( *
T0*(
_output_shapes
:€€€€€€€€€А
З
dense_2/BiasAddBiasAdddense_2/MatMuldense_2/bias/read*(
_output_shapes
:€€€€€€€€€А*
data_formatNHWC*
T0
X
dense_2/ReluReludense_2/BiasAdd*
T0*(
_output_shapes
:€€€€€€€€€А
T
dropout_2/mul/yConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
f
dropout_2/mulMuldense_2/Reludropout_2/mul/y*
T0*(
_output_shapes
:€€€€€€€€€А
`
dropout_2/dropout/keep_probConst*
dtype0*
valueB
 *333?*
_output_shapes
: 
d
dropout_2/dropout/ShapeShapedropout_2/mul*
out_type0*
T0*
_output_shapes
:
i
$dropout_2/dropout/random_uniform/minConst*
dtype0*
valueB
 *    *
_output_shapes
: 
i
$dropout_2/dropout/random_uniform/maxConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
Ј
.dropout_2/dropout/random_uniform/RandomUniformRandomUniformdropout_2/dropout/Shape*
dtype0*
seed2ш“ю*
seed±€е)*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
$dropout_2/dropout/random_uniform/subSub$dropout_2/dropout/random_uniform/max$dropout_2/dropout/random_uniform/min*
T0*
_output_shapes
: 
і
$dropout_2/dropout/random_uniform/mulMul.dropout_2/dropout/random_uniform/RandomUniform$dropout_2/dropout/random_uniform/sub*
T0*(
_output_shapes
:€€€€€€€€€А
¶
 dropout_2/dropout/random_uniformAdd$dropout_2/dropout/random_uniform/mul$dropout_2/dropout/random_uniform/min*
T0*(
_output_shapes
:€€€€€€€€€А
О
dropout_2/dropout/addAdddropout_2/dropout/keep_prob dropout_2/dropout/random_uniform*
T0*(
_output_shapes
:€€€€€€€€€А
j
dropout_2/dropout/FloorFloordropout_2/dropout/add*
T0*(
_output_shapes
:€€€€€€€€€А

dropout_2/dropout/divRealDivdropout_2/muldropout_2/dropout/keep_prob*
T0*(
_output_shapes
:€€€€€€€€€А

dropout_2/dropout/mulMuldropout_2/dropout/divdropout_2/dropout/Floor*
T0*(
_output_shapes
:€€€€€€€€€А
l
output/random_uniform/shapeConst*
dtype0*
valueB"А   
   *
_output_shapes
:
^
output/random_uniform/minConst*
dtype0*
valueB
 *ЌДUЊ*
_output_shapes
: 
^
output/random_uniform/maxConst*
dtype0*
valueB
 *ЌДU>*
_output_shapes
: 
І
#output/random_uniform/RandomUniformRandomUniformoutput/random_uniform/shape*
dtype0*
seed2£Ју*
seed±€е)*
T0*
_output_shapes
:	А

w
output/random_uniform/subSuboutput/random_uniform/maxoutput/random_uniform/min*
T0*
_output_shapes
: 
К
output/random_uniform/mulMul#output/random_uniform/RandomUniformoutput/random_uniform/sub*
T0*
_output_shapes
:	А

|
output/random_uniformAddoutput/random_uniform/muloutput/random_uniform/min*
T0*
_output_shapes
:	А

Г
output/kernel
VariableV2*
dtype0*
shape:	А
*
	container *
shared_name *
_output_shapes
:	А

є
output/kernel/AssignAssignoutput/kerneloutput/random_uniform*
validate_shape(* 
_class
loc:@output/kernel*
use_locking(*
T0*
_output_shapes
:	А

y
output/kernel/readIdentityoutput/kernel* 
_class
loc:@output/kernel*
T0*
_output_shapes
:	А

Y
output/ConstConst*
dtype0*
valueB
*    *
_output_shapes
:

w
output/bias
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

•
output/bias/AssignAssignoutput/biasoutput/Const*
validate_shape(*
_class
loc:@output/bias*
use_locking(*
T0*
_output_shapes
:

n
output/bias/readIdentityoutput/bias*
_class
loc:@output/bias*
T0*
_output_shapes
:

Ъ
output/MatMulMatMuldropout_2/dropout/muloutput/kernel/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:€€€€€€€€€

Г
output/BiasAddBiasAddoutput/MatMuloutput/bias/read*'
_output_shapes
:€€€€€€€€€
*
data_formatNHWC*
T0
[
output/SoftmaxSoftmaxoutput/BiasAdd*
T0*'
_output_shapes
:€€€€€€€€€

]
RMSprop/lr/initial_valueConst*
dtype0*
valueB
 *oГ:*
_output_shapes
: 
n

RMSprop/lr
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
™
RMSprop/lr/AssignAssign
RMSprop/lrRMSprop/lr/initial_value*
validate_shape(*
_class
loc:@RMSprop/lr*
use_locking(*
T0*
_output_shapes
: 
g
RMSprop/lr/readIdentity
RMSprop/lr*
_class
loc:@RMSprop/lr*
T0*
_output_shapes
: 
^
RMSprop/rho/initial_valueConst*
dtype0*
valueB
 *fff?*
_output_shapes
: 
o
RMSprop/rho
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
Ѓ
RMSprop/rho/AssignAssignRMSprop/rhoRMSprop/rho/initial_value*
validate_shape(*
_class
loc:@RMSprop/rho*
use_locking(*
T0*
_output_shapes
: 
j
RMSprop/rho/readIdentityRMSprop/rho*
_class
loc:@RMSprop/rho*
T0*
_output_shapes
: 
`
RMSprop/decay/initial_valueConst*
dtype0*
valueB
 *    *
_output_shapes
: 
q
RMSprop/decay
VariableV2*
dtype0*
shape: *
	container *
shared_name *
_output_shapes
: 
ґ
RMSprop/decay/AssignAssignRMSprop/decayRMSprop/decay/initial_value*
validate_shape(* 
_class
loc:@RMSprop/decay*
use_locking(*
T0*
_output_shapes
: 
p
RMSprop/decay/readIdentityRMSprop/decay* 
_class
loc:@RMSprop/decay*
T0*
_output_shapes
: 
b
 RMSprop/iterations/initial_valueConst*
dtype0	*
value	B	 R *
_output_shapes
: 
v
RMSprop/iterations
VariableV2*
dtype0	*
shape: *
	container *
shared_name *
_output_shapes
: 
 
RMSprop/iterations/AssignAssignRMSprop/iterations RMSprop/iterations/initial_value*
validate_shape(*%
_class
loc:@RMSprop/iterations*
use_locking(*
T0	*
_output_shapes
: 

RMSprop/iterations/readIdentityRMSprop/iterations*%
_class
loc:@RMSprop/iterations*
T0	*
_output_shapes
: 
В
output_targetPlaceholder*
dtype0*%
shape:€€€€€€€€€€€€€€€€€€*0
_output_shapes
:€€€€€€€€€€€€€€€€€€
p
output_sample_weightsPlaceholder*
dtype0*
shape:€€€€€€€€€*#
_output_shapes
:€€€€€€€€€
h
&loss/output_loss/Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
Ґ
loss/output_loss/SumSumoutput/Softmax&loss/output_loss/Sum/reduction_indices*'
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims(*
T0
w
loss/output_loss/divRealDivoutput/Softmaxloss/output_loss/Sum*
T0*'
_output_shapes
:€€€€€€€€€

[
loss/output_loss/ConstConst*
dtype0*
valueB
 *Хњ÷3*
_output_shapes
: 
[
loss/output_loss/sub/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
l
loss/output_loss/subSubloss/output_loss/sub/xloss/output_loss/Const*
T0*
_output_shapes
: 
П
&loss/output_loss/clip_by_value/MinimumMinimumloss/output_loss/divloss/output_loss/sub*
T0*'
_output_shapes
:€€€€€€€€€

Ы
loss/output_loss/clip_by_valueMaximum&loss/output_loss/clip_by_value/Minimumloss/output_loss/Const*
T0*'
_output_shapes
:€€€€€€€€€

m
loss/output_loss/LogLogloss/output_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€

r
loss/output_loss/mulMuloutput_targetloss/output_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€

j
(loss/output_loss/Sum_1/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
®
loss/output_loss/Sum_1Sumloss/output_loss/mul(loss/output_loss/Sum_1/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
a
loss/output_loss/NegNegloss/output_loss/Sum_1*
T0*#
_output_shapes
:€€€€€€€€€
j
'loss/output_loss/Mean/reduction_indicesConst*
dtype0*
valueB *
_output_shapes
: 
І
loss/output_loss/MeanMeanloss/output_loss/Neg'loss/output_loss/Mean/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
y
loss/output_loss/mul_1Mulloss/output_loss/Meanoutput_sample_weights*
T0*#
_output_shapes
:€€€€€€€€€
`
loss/output_loss/NotEqual/yConst*
dtype0*
valueB
 *    *
_output_shapes
: 
З
loss/output_loss/NotEqualNotEqualoutput_sample_weightsloss/output_loss/NotEqual/y*
T0*#
_output_shapes
:€€€€€€€€€
u
loss/output_loss/CastCastloss/output_loss/NotEqual*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€
b
loss/output_loss/Const_1Const*
dtype0*
valueB: *
_output_shapes
:
О
loss/output_loss/Mean_1Meanloss/output_loss/Castloss/output_loss/Const_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
А
loss/output_loss/div_1RealDivloss/output_loss/mul_1loss/output_loss/Mean_1*
T0*#
_output_shapes
:€€€€€€€€€
b
loss/output_loss/Const_2Const*
dtype0*
valueB: *
_output_shapes
:
П
loss/output_loss/Mean_2Meanloss/output_loss/div_1loss/output_loss/Const_2*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
O

loss/mul/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
U
loss/mulMul
loss/mul/xloss/output_loss/Mean_2*
T0*
_output_shapes
: 
g
metrics/acc/ArgMax/dimensionConst*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
Ц
metrics/acc/ArgMaxArgMaxoutput_targetmetrics/acc/ArgMax/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
i
metrics/acc/ArgMax_1/dimensionConst*
dtype0*
valueB :
€€€€€€€€€*
_output_shapes
: 
Ы
metrics/acc/ArgMax_1ArgMaxoutput/Softmaxmetrics/acc/ArgMax_1/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
r
metrics/acc/EqualEqualmetrics/acc/ArgMaxmetrics/acc/ArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€
h
metrics/acc/CastCastmetrics/acc/Equal*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€
[
metrics/acc/ConstConst*
dtype0*
valueB: *
_output_shapes
:
{
metrics/acc/MeanMeanmetrics/acc/Castmetrics/acc/Const*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
А
 training/RMSprop/gradients/ShapeConst*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 
В
 training/RMSprop/gradients/ConstConst*
dtype0*
_class
loc:@loss/mul*
valueB
 *  А?*
_output_shapes
: 
©
training/RMSprop/gradients/FillFill training/RMSprop/gradients/Shape training/RMSprop/gradients/Const*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
О
.training/RMSprop/gradients/loss/mul_grad/ShapeConst*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 
Р
0training/RMSprop/gradients/loss/mul_grad/Shape_1Const*
dtype0*
_class
loc:@loss/mul*
valueB *
_output_shapes
: 
У
>training/RMSprop/gradients/loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs.training/RMSprop/gradients/loss/mul_grad/Shape0training/RMSprop/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ђ
,training/RMSprop/gradients/loss/mul_grad/mulMultraining/RMSprop/gradients/Fillloss/output_loss/Mean_2*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
ю
,training/RMSprop/gradients/loss/mul_grad/SumSum,training/RMSprop/gradients/loss/mul_grad/mul>training/RMSprop/gradients/loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*
_class
loc:@loss/mul*

Tidx0*
	keep_dims( *
T0
е
0training/RMSprop/gradients/loss/mul_grad/ReshapeReshape,training/RMSprop/gradients/loss/mul_grad/Sum.training/RMSprop/gradients/loss/mul_grad/Shape*
_class
loc:@loss/mul*
Tshape0*
_output_shapes
: *
T0
†
.training/RMSprop/gradients/loss/mul_grad/mul_1Mul
loss/mul/xtraining/RMSprop/gradients/Fill*
_class
loc:@loss/mul*
T0*
_output_shapes
: 
Д
.training/RMSprop/gradients/loss/mul_grad/Sum_1Sum.training/RMSprop/gradients/loss/mul_grad/mul_1@training/RMSprop/gradients/loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*
_class
loc:@loss/mul*

Tidx0*
	keep_dims( *
T0
л
2training/RMSprop/gradients/loss/mul_grad/Reshape_1Reshape.training/RMSprop/gradients/loss/mul_grad/Sum_10training/RMSprop/gradients/loss/mul_grad/Shape_1*
_class
loc:@loss/mul*
Tshape0*
_output_shapes
: *
T0
ї
Etraining/RMSprop/gradients/loss/output_loss/Mean_2_grad/Reshape/shapeConst*
dtype0**
_class 
loc:@loss/output_loss/Mean_2*
valueB:*
_output_shapes
:
§
?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/ReshapeReshape2training/RMSprop/gradients/loss/mul_grad/Reshape_1Etraining/RMSprop/gradients/loss/output_loss/Mean_2_grad/Reshape/shape**
_class 
loc:@loss/output_loss/Mean_2*
Tshape0*
_output_shapes
:*
T0
њ
=training/RMSprop/gradients/loss/output_loss/Mean_2_grad/ShapeShapeloss/output_loss/div_1*
out_type0**
_class 
loc:@loss/output_loss/Mean_2*
T0*
_output_shapes
:
∞
<training/RMSprop/gradients/loss/output_loss/Mean_2_grad/TileTile?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Reshape=training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Shape*

Tmultiples0**
_class 
loc:@loss/output_loss/Mean_2*
T0*#
_output_shapes
:€€€€€€€€€
Ѕ
?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Shape_1Shapeloss/output_loss/div_1*
out_type0**
_class 
loc:@loss/output_loss/Mean_2*
T0*
_output_shapes
:
Ѓ
?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Shape_2Const*
dtype0**
_class 
loc:@loss/output_loss/Mean_2*
valueB *
_output_shapes
: 
≥
=training/RMSprop/gradients/loss/output_loss/Mean_2_grad/ConstConst*
dtype0**
_class 
loc:@loss/output_loss/Mean_2*
valueB: *
_output_shapes
:
Ѓ
<training/RMSprop/gradients/loss/output_loss/Mean_2_grad/ProdProd?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Shape_1=training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Const*
_output_shapes
: **
_class 
loc:@loss/output_loss/Mean_2*

Tidx0*
	keep_dims( *
T0
µ
?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Const_1Const*
dtype0**
_class 
loc:@loss/output_loss/Mean_2*
valueB: *
_output_shapes
:
≤
>training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Prod_1Prod?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Shape_2?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Const_1*
_output_shapes
: **
_class 
loc:@loss/output_loss/Mean_2*

Tidx0*
	keep_dims( *
T0
ѓ
Atraining/RMSprop/gradients/loss/output_loss/Mean_2_grad/Maximum/yConst*
dtype0**
_class 
loc:@loss/output_loss/Mean_2*
value	B :*
_output_shapes
: 
Ъ
?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/MaximumMaximum>training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Prod_1Atraining/RMSprop/gradients/loss/output_loss/Mean_2_grad/Maximum/y**
_class 
loc:@loss/output_loss/Mean_2*
T0*
_output_shapes
: 
Ш
@training/RMSprop/gradients/loss/output_loss/Mean_2_grad/floordivFloorDiv<training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Prod?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Maximum**
_class 
loc:@loss/output_loss/Mean_2*
T0*
_output_shapes
: 
в
<training/RMSprop/gradients/loss/output_loss/Mean_2_grad/CastCast@training/RMSprop/gradients/loss/output_loss/Mean_2_grad/floordiv*

DstT0**
_class 
loc:@loss/output_loss/Mean_2*

SrcT0*
_output_shapes
: 
†
?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/truedivRealDiv<training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Tile<training/RMSprop/gradients/loss/output_loss/Mean_2_grad/Cast**
_class 
loc:@loss/output_loss/Mean_2*
T0*#
_output_shapes
:€€€€€€€€€
љ
<training/RMSprop/gradients/loss/output_loss/div_1_grad/ShapeShapeloss/output_loss/mul_1*
out_type0*)
_class
loc:@loss/output_loss/div_1*
T0*
_output_shapes
:
ђ
>training/RMSprop/gradients/loss/output_loss/div_1_grad/Shape_1Const*
dtype0*)
_class
loc:@loss/output_loss/div_1*
valueB *
_output_shapes
: 
Ћ
Ltraining/RMSprop/gradients/loss/output_loss/div_1_grad/BroadcastGradientArgsBroadcastGradientArgs<training/RMSprop/gradients/loss/output_loss/div_1_grad/Shape>training/RMSprop/gradients/loss/output_loss/div_1_grad/Shape_1*)
_class
loc:@loss/output_loss/div_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ь
>training/RMSprop/gradients/loss/output_loss/div_1_grad/RealDivRealDiv?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/truedivloss/output_loss/Mean_1*)
_class
loc:@loss/output_loss/div_1*
T0*#
_output_shapes
:€€€€€€€€€
Ї
:training/RMSprop/gradients/loss/output_loss/div_1_grad/SumSum>training/RMSprop/gradients/loss/output_loss/div_1_grad/RealDivLtraining/RMSprop/gradients/loss/output_loss/div_1_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@loss/output_loss/div_1*

Tidx0*
	keep_dims( *
T0
™
>training/RMSprop/gradients/loss/output_loss/div_1_grad/ReshapeReshape:training/RMSprop/gradients/loss/output_loss/div_1_grad/Sum<training/RMSprop/gradients/loss/output_loss/div_1_grad/Shape*)
_class
loc:@loss/output_loss/div_1*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
≤
:training/RMSprop/gradients/loss/output_loss/div_1_grad/NegNegloss/output_loss/mul_1*)
_class
loc:@loss/output_loss/div_1*
T0*#
_output_shapes
:€€€€€€€€€
щ
@training/RMSprop/gradients/loss/output_loss/div_1_grad/RealDiv_1RealDiv:training/RMSprop/gradients/loss/output_loss/div_1_grad/Negloss/output_loss/Mean_1*)
_class
loc:@loss/output_loss/div_1*
T0*#
_output_shapes
:€€€€€€€€€
€
@training/RMSprop/gradients/loss/output_loss/div_1_grad/RealDiv_2RealDiv@training/RMSprop/gradients/loss/output_loss/div_1_grad/RealDiv_1loss/output_loss/Mean_1*)
_class
loc:@loss/output_loss/div_1*
T0*#
_output_shapes
:€€€€€€€€€
Э
:training/RMSprop/gradients/loss/output_loss/div_1_grad/mulMul?training/RMSprop/gradients/loss/output_loss/Mean_2_grad/truediv@training/RMSprop/gradients/loss/output_loss/div_1_grad/RealDiv_2*)
_class
loc:@loss/output_loss/div_1*
T0*#
_output_shapes
:€€€€€€€€€
Ї
<training/RMSprop/gradients/loss/output_loss/div_1_grad/Sum_1Sum:training/RMSprop/gradients/loss/output_loss/div_1_grad/mulNtraining/RMSprop/gradients/loss/output_loss/div_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@loss/output_loss/div_1*

Tidx0*
	keep_dims( *
T0
£
@training/RMSprop/gradients/loss/output_loss/div_1_grad/Reshape_1Reshape<training/RMSprop/gradients/loss/output_loss/div_1_grad/Sum_1>training/RMSprop/gradients/loss/output_loss/div_1_grad/Shape_1*)
_class
loc:@loss/output_loss/div_1*
Tshape0*
_output_shapes
: *
T0
Љ
<training/RMSprop/gradients/loss/output_loss/mul_1_grad/ShapeShapeloss/output_loss/Mean*
out_type0*)
_class
loc:@loss/output_loss/mul_1*
T0*
_output_shapes
:
Њ
>training/RMSprop/gradients/loss/output_loss/mul_1_grad/Shape_1Shapeoutput_sample_weights*
out_type0*)
_class
loc:@loss/output_loss/mul_1*
T0*
_output_shapes
:
Ћ
Ltraining/RMSprop/gradients/loss/output_loss/mul_1_grad/BroadcastGradientArgsBroadcastGradientArgs<training/RMSprop/gradients/loss/output_loss/mul_1_grad/Shape>training/RMSprop/gradients/loss/output_loss/mul_1_grad/Shape_1*)
_class
loc:@loss/output_loss/mul_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
с
:training/RMSprop/gradients/loss/output_loss/mul_1_grad/mulMul>training/RMSprop/gradients/loss/output_loss/div_1_grad/Reshapeoutput_sample_weights*)
_class
loc:@loss/output_loss/mul_1*
T0*#
_output_shapes
:€€€€€€€€€
ґ
:training/RMSprop/gradients/loss/output_loss/mul_1_grad/SumSum:training/RMSprop/gradients/loss/output_loss/mul_1_grad/mulLtraining/RMSprop/gradients/loss/output_loss/mul_1_grad/BroadcastGradientArgs*
_output_shapes
:*)
_class
loc:@loss/output_loss/mul_1*

Tidx0*
	keep_dims( *
T0
™
>training/RMSprop/gradients/loss/output_loss/mul_1_grad/ReshapeReshape:training/RMSprop/gradients/loss/output_loss/mul_1_grad/Sum<training/RMSprop/gradients/loss/output_loss/mul_1_grad/Shape*)
_class
loc:@loss/output_loss/mul_1*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
у
<training/RMSprop/gradients/loss/output_loss/mul_1_grad/mul_1Mulloss/output_loss/Mean>training/RMSprop/gradients/loss/output_loss/div_1_grad/Reshape*)
_class
loc:@loss/output_loss/mul_1*
T0*#
_output_shapes
:€€€€€€€€€
Љ
<training/RMSprop/gradients/loss/output_loss/mul_1_grad/Sum_1Sum<training/RMSprop/gradients/loss/output_loss/mul_1_grad/mul_1Ntraining/RMSprop/gradients/loss/output_loss/mul_1_grad/BroadcastGradientArgs:1*
_output_shapes
:*)
_class
loc:@loss/output_loss/mul_1*

Tidx0*
	keep_dims( *
T0
∞
@training/RMSprop/gradients/loss/output_loss/mul_1_grad/Reshape_1Reshape<training/RMSprop/gradients/loss/output_loss/mul_1_grad/Sum_1>training/RMSprop/gradients/loss/output_loss/mul_1_grad/Shape_1*)
_class
loc:@loss/output_loss/mul_1*
Tshape0*#
_output_shapes
:€€€€€€€€€*
T0
є
;training/RMSprop/gradients/loss/output_loss/Mean_grad/ShapeShapeloss/output_loss/Neg*
out_type0*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
:
¶
:training/RMSprop/gradients/loss/output_loss/Mean_grad/SizeConst*
dtype0*(
_class
loc:@loss/output_loss/Mean*
value	B :*
_output_shapes
: 
т
9training/RMSprop/gradients/loss/output_loss/Mean_grad/addAdd'loss/output_loss/Mean/reduction_indices:training/RMSprop/gradients/loss/output_loss/Mean_grad/Size*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
: 
Й
9training/RMSprop/gradients/loss/output_loss/Mean_grad/modFloorMod9training/RMSprop/gradients/loss/output_loss/Mean_grad/add:training/RMSprop/gradients/loss/output_loss/Mean_grad/Size*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
: 
±
=training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape_1Const*
dtype0*(
_class
loc:@loss/output_loss/Mean*
valueB: *
_output_shapes
:
≠
Atraining/RMSprop/gradients/loss/output_loss/Mean_grad/range/startConst*
dtype0*(
_class
loc:@loss/output_loss/Mean*
value	B : *
_output_shapes
: 
≠
Atraining/RMSprop/gradients/loss/output_loss/Mean_grad/range/deltaConst*
dtype0*(
_class
loc:@loss/output_loss/Mean*
value	B :*
_output_shapes
: 
Ў
;training/RMSprop/gradients/loss/output_loss/Mean_grad/rangeRangeAtraining/RMSprop/gradients/loss/output_loss/Mean_grad/range/start:training/RMSprop/gradients/loss/output_loss/Mean_grad/SizeAtraining/RMSprop/gradients/loss/output_loss/Mean_grad/range/delta*(
_class
loc:@loss/output_loss/Mean*

Tidx0*
_output_shapes
:
ђ
@training/RMSprop/gradients/loss/output_loss/Mean_grad/Fill/valueConst*
dtype0*(
_class
loc:@loss/output_loss/Mean*
value	B :*
_output_shapes
: 
Р
:training/RMSprop/gradients/loss/output_loss/Mean_grad/FillFill=training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape_1@training/RMSprop/gradients/loss/output_loss/Mean_grad/Fill/value*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
: 
¶
Ctraining/RMSprop/gradients/loss/output_loss/Mean_grad/DynamicStitchDynamicStitch;training/RMSprop/gradients/loss/output_loss/Mean_grad/range9training/RMSprop/gradients/loss/output_loss/Mean_grad/mod;training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape:training/RMSprop/gradients/loss/output_loss/Mean_grad/Fill*(
_class
loc:@loss/output_loss/Mean*
T0*#
_output_shapes
:€€€€€€€€€*
N
Ђ
?training/RMSprop/gradients/loss/output_loss/Mean_grad/Maximum/yConst*
dtype0*(
_class
loc:@loss/output_loss/Mean*
value	B :*
_output_shapes
: 
¶
=training/RMSprop/gradients/loss/output_loss/Mean_grad/MaximumMaximumCtraining/RMSprop/gradients/loss/output_loss/Mean_grad/DynamicStitch?training/RMSprop/gradients/loss/output_loss/Mean_grad/Maximum/y*(
_class
loc:@loss/output_loss/Mean*
T0*#
_output_shapes
:€€€€€€€€€
Ю
>training/RMSprop/gradients/loss/output_loss/Mean_grad/floordivFloorDiv;training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape=training/RMSprop/gradients/loss/output_loss/Mean_grad/Maximum*(
_class
loc:@loss/output_loss/Mean*
T0*#
_output_shapes
:€€€€€€€€€
®
=training/RMSprop/gradients/loss/output_loss/Mean_grad/ReshapeReshape>training/RMSprop/gradients/loss/output_loss/mul_1_grad/ReshapeCtraining/RMSprop/gradients/loss/output_loss/Mean_grad/DynamicStitch*(
_class
loc:@loss/output_loss/Mean*
Tshape0*
_output_shapes
:*
T0
†
:training/RMSprop/gradients/loss/output_loss/Mean_grad/TileTile=training/RMSprop/gradients/loss/output_loss/Mean_grad/Reshape>training/RMSprop/gradients/loss/output_loss/Mean_grad/floordiv*

Tmultiples0*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
:
ї
=training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape_2Shapeloss/output_loss/Neg*
out_type0*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
:
Љ
=training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape_3Shapeloss/output_loss/Mean*
out_type0*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
:
ѓ
;training/RMSprop/gradients/loss/output_loss/Mean_grad/ConstConst*
dtype0*(
_class
loc:@loss/output_loss/Mean*
valueB: *
_output_shapes
:
¶
:training/RMSprop/gradients/loss/output_loss/Mean_grad/ProdProd=training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape_2;training/RMSprop/gradients/loss/output_loss/Mean_grad/Const*
_output_shapes
: *(
_class
loc:@loss/output_loss/Mean*

Tidx0*
	keep_dims( *
T0
±
=training/RMSprop/gradients/loss/output_loss/Mean_grad/Const_1Const*
dtype0*(
_class
loc:@loss/output_loss/Mean*
valueB: *
_output_shapes
:
™
<training/RMSprop/gradients/loss/output_loss/Mean_grad/Prod_1Prod=training/RMSprop/gradients/loss/output_loss/Mean_grad/Shape_3=training/RMSprop/gradients/loss/output_loss/Mean_grad/Const_1*
_output_shapes
: *(
_class
loc:@loss/output_loss/Mean*

Tidx0*
	keep_dims( *
T0
≠
Atraining/RMSprop/gradients/loss/output_loss/Mean_grad/Maximum_1/yConst*
dtype0*(
_class
loc:@loss/output_loss/Mean*
value	B :*
_output_shapes
: 
Ц
?training/RMSprop/gradients/loss/output_loss/Mean_grad/Maximum_1Maximum<training/RMSprop/gradients/loss/output_loss/Mean_grad/Prod_1Atraining/RMSprop/gradients/loss/output_loss/Mean_grad/Maximum_1/y*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
: 
Ф
@training/RMSprop/gradients/loss/output_loss/Mean_grad/floordiv_1FloorDiv:training/RMSprop/gradients/loss/output_loss/Mean_grad/Prod?training/RMSprop/gradients/loss/output_loss/Mean_grad/Maximum_1*(
_class
loc:@loss/output_loss/Mean*
T0*
_output_shapes
: 
ё
:training/RMSprop/gradients/loss/output_loss/Mean_grad/CastCast@training/RMSprop/gradients/loss/output_loss/Mean_grad/floordiv_1*

DstT0*(
_class
loc:@loss/output_loss/Mean*

SrcT0*
_output_shapes
: 
Ш
=training/RMSprop/gradients/loss/output_loss/Mean_grad/truedivRealDiv:training/RMSprop/gradients/loss/output_loss/Mean_grad/Tile:training/RMSprop/gradients/loss/output_loss/Mean_grad/Cast*(
_class
loc:@loss/output_loss/Mean*
T0*#
_output_shapes
:€€€€€€€€€
’
8training/RMSprop/gradients/loss/output_loss/Neg_grad/NegNeg=training/RMSprop/gradients/loss/output_loss/Mean_grad/truediv*'
_class
loc:@loss/output_loss/Neg*
T0*#
_output_shapes
:€€€€€€€€€
ї
<training/RMSprop/gradients/loss/output_loss/Sum_1_grad/ShapeShapeloss/output_loss/mul*
out_type0*)
_class
loc:@loss/output_loss/Sum_1*
T0*
_output_shapes
:
®
;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/SizeConst*
dtype0*)
_class
loc:@loss/output_loss/Sum_1*
value	B :*
_output_shapes
: 
ф
:training/RMSprop/gradients/loss/output_loss/Sum_1_grad/addAdd(loss/output_loss/Sum_1/reduction_indices;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Size*)
_class
loc:@loss/output_loss/Sum_1*
T0*
_output_shapes
: 
Л
:training/RMSprop/gradients/loss/output_loss/Sum_1_grad/modFloorMod:training/RMSprop/gradients/loss/output_loss/Sum_1_grad/add;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Size*)
_class
loc:@loss/output_loss/Sum_1*
T0*
_output_shapes
: 
ђ
>training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Shape_1Const*
dtype0*)
_class
loc:@loss/output_loss/Sum_1*
valueB *
_output_shapes
: 
ѓ
Btraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/range/startConst*
dtype0*)
_class
loc:@loss/output_loss/Sum_1*
value	B : *
_output_shapes
: 
ѓ
Btraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/range/deltaConst*
dtype0*)
_class
loc:@loss/output_loss/Sum_1*
value	B :*
_output_shapes
: 
Ё
<training/RMSprop/gradients/loss/output_loss/Sum_1_grad/rangeRangeBtraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/range/start;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/SizeBtraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/range/delta*)
_class
loc:@loss/output_loss/Sum_1*

Tidx0*
_output_shapes
:
Ѓ
Atraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/Fill/valueConst*
dtype0*)
_class
loc:@loss/output_loss/Sum_1*
value	B :*
_output_shapes
: 
Т
;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/FillFill>training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Shape_1Atraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/Fill/value*)
_class
loc:@loss/output_loss/Sum_1*
T0*
_output_shapes
: 
ђ
Dtraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/DynamicStitchDynamicStitch<training/RMSprop/gradients/loss/output_loss/Sum_1_grad/range:training/RMSprop/gradients/loss/output_loss/Sum_1_grad/mod<training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Shape;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Fill*)
_class
loc:@loss/output_loss/Sum_1*
T0*#
_output_shapes
:€€€€€€€€€*
N
≠
@training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Maximum/yConst*
dtype0*)
_class
loc:@loss/output_loss/Sum_1*
value	B :*
_output_shapes
: 
™
>training/RMSprop/gradients/loss/output_loss/Sum_1_grad/MaximumMaximumDtraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/DynamicStitch@training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Maximum/y*)
_class
loc:@loss/output_loss/Sum_1*
T0*#
_output_shapes
:€€€€€€€€€
Щ
?training/RMSprop/gradients/loss/output_loss/Sum_1_grad/floordivFloorDiv<training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Shape>training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Maximum*)
_class
loc:@loss/output_loss/Sum_1*
T0*
_output_shapes
:
•
>training/RMSprop/gradients/loss/output_loss/Sum_1_grad/ReshapeReshape8training/RMSprop/gradients/loss/output_loss/Neg_grad/NegDtraining/RMSprop/gradients/loss/output_loss/Sum_1_grad/DynamicStitch*)
_class
loc:@loss/output_loss/Sum_1*
Tshape0*
_output_shapes
:*
T0
≥
;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/TileTile>training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Reshape?training/RMSprop/gradients/loss/output_loss/Sum_1_grad/floordiv*

Tmultiples0*)
_class
loc:@loss/output_loss/Sum_1*
T0*'
_output_shapes
:€€€€€€€€€

∞
:training/RMSprop/gradients/loss/output_loss/mul_grad/ShapeShapeoutput_target*
out_type0*'
_class
loc:@loss/output_loss/mul*
T0*
_output_shapes
:
є
<training/RMSprop/gradients/loss/output_loss/mul_grad/Shape_1Shapeloss/output_loss/Log*
out_type0*'
_class
loc:@loss/output_loss/mul*
T0*
_output_shapes
:
√
Jtraining/RMSprop/gradients/loss/output_loss/mul_grad/BroadcastGradientArgsBroadcastGradientArgs:training/RMSprop/gradients/loss/output_loss/mul_grad/Shape<training/RMSprop/gradients/loss/output_loss/mul_grad/Shape_1*'
_class
loc:@loss/output_loss/mul*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
н
8training/RMSprop/gradients/loss/output_loss/mul_grad/mulMul;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Tileloss/output_loss/Log*'
_class
loc:@loss/output_loss/mul*
T0*'
_output_shapes
:€€€€€€€€€

Ѓ
8training/RMSprop/gradients/loss/output_loss/mul_grad/SumSum8training/RMSprop/gradients/loss/output_loss/mul_grad/mulJtraining/RMSprop/gradients/loss/output_loss/mul_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@loss/output_loss/mul*

Tidx0*
	keep_dims( *
T0
ѓ
<training/RMSprop/gradients/loss/output_loss/mul_grad/ReshapeReshape8training/RMSprop/gradients/loss/output_loss/mul_grad/Sum:training/RMSprop/gradients/loss/output_loss/mul_grad/Shape*'
_class
loc:@loss/output_loss/mul*
Tshape0*0
_output_shapes
:€€€€€€€€€€€€€€€€€€*
T0
и
:training/RMSprop/gradients/loss/output_loss/mul_grad/mul_1Muloutput_target;training/RMSprop/gradients/loss/output_loss/Sum_1_grad/Tile*'
_class
loc:@loss/output_loss/mul*
T0*'
_output_shapes
:€€€€€€€€€

і
:training/RMSprop/gradients/loss/output_loss/mul_grad/Sum_1Sum:training/RMSprop/gradients/loss/output_loss/mul_grad/mul_1Ltraining/RMSprop/gradients/loss/output_loss/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@loss/output_loss/mul*

Tidx0*
	keep_dims( *
T0
ђ
>training/RMSprop/gradients/loss/output_loss/mul_grad/Reshape_1Reshape:training/RMSprop/gradients/loss/output_loss/mul_grad/Sum_1<training/RMSprop/gradients/loss/output_loss/mul_grad/Shape_1*'
_class
loc:@loss/output_loss/mul*
Tshape0*'
_output_shapes
:€€€€€€€€€
*
T0
Й
?training/RMSprop/gradients/loss/output_loss/Log_grad/Reciprocal
Reciprocalloss/output_loss/clip_by_value?^training/RMSprop/gradients/loss/output_loss/mul_grad/Reshape_1*'
_class
loc:@loss/output_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€

Ы
8training/RMSprop/gradients/loss/output_loss/Log_grad/mulMul>training/RMSprop/gradients/loss/output_loss/mul_grad/Reshape_1?training/RMSprop/gradients/loss/output_loss/Log_grad/Reciprocal*'
_class
loc:@loss/output_loss/Log*
T0*'
_output_shapes
:€€€€€€€€€

Ё
Dtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/ShapeShape&loss/output_loss/clip_by_value/Minimum*
out_type0*1
_class'
%#loc:@loss/output_loss/clip_by_value*
T0*
_output_shapes
:
Љ
Ftraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Shape_1Const*
dtype0*1
_class'
%#loc:@loss/output_loss/clip_by_value*
valueB *
_output_shapes
: 
с
Ftraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Shape_2Shape8training/RMSprop/gradients/loss/output_loss/Log_grad/mul*
out_type0*1
_class'
%#loc:@loss/output_loss/clip_by_value*
T0*
_output_shapes
:
¬
Jtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/zeros/ConstConst*
dtype0*1
_class'
%#loc:@loss/output_loss/clip_by_value*
valueB
 *    *
_output_shapes
: 
≈
Dtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/zerosFillFtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Shape_2Jtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/zeros/Const*1
_class'
%#loc:@loss/output_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€

А
Ktraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/GreaterEqualGreaterEqual&loss/output_loss/clip_by_value/Minimumloss/output_loss/Const*1
_class'
%#loc:@loss/output_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€

л
Ttraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/BroadcastGradientArgsBroadcastGradientArgsDtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/ShapeFtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Shape_1*1
_class'
%#loc:@loss/output_loss/clip_by_value*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Б
Etraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/SelectSelectKtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/GreaterEqual8training/RMSprop/gradients/loss/output_loss/Log_grad/mulDtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/zeros*1
_class'
%#loc:@loss/output_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€

Г
Gtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Select_1SelectKtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/GreaterEqualDtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/zeros8training/RMSprop/gradients/loss/output_loss/Log_grad/mul*1
_class'
%#loc:@loss/output_loss/clip_by_value*
T0*'
_output_shapes
:€€€€€€€€€

ў
Btraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/SumSumEtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/SelectTtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/BroadcastGradientArgs*
_output_shapes
:*1
_class'
%#loc:@loss/output_loss/clip_by_value*

Tidx0*
	keep_dims( *
T0
ќ
Ftraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/ReshapeReshapeBtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/SumDtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Shape*1
_class'
%#loc:@loss/output_loss/clip_by_value*
Tshape0*'
_output_shapes
:€€€€€€€€€
*
T0
я
Dtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Sum_1SumGtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Select_1Vtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/BroadcastGradientArgs:1*
_output_shapes
:*1
_class'
%#loc:@loss/output_loss/clip_by_value*

Tidx0*
	keep_dims( *
T0
√
Htraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Reshape_1ReshapeDtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Sum_1Ftraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Shape_1*1
_class'
%#loc:@loss/output_loss/clip_by_value*
Tshape0*
_output_shapes
: *
T0
џ
Ltraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/ShapeShapeloss/output_loss/div*
out_type0*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
T0*
_output_shapes
:
ћ
Ntraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Shape_1Const*
dtype0*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
valueB *
_output_shapes
: 
П
Ntraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Shape_2ShapeFtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Reshape*
out_type0*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
T0*
_output_shapes
:
“
Rtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/zeros/ConstConst*
dtype0*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
valueB
 *    *
_output_shapes
: 
е
Ltraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/zerosFillNtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Shape_2Rtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/zeros/Const*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:€€€€€€€€€

ц
Ptraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/LessEqual	LessEqualloss/output_loss/divloss/output_loss/sub*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:€€€€€€€€€

Л
\training/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/BroadcastGradientArgsBroadcastGradientArgsLtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/ShapeNtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Shape_1*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
ђ
Mtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/SelectSelectPtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/LessEqualFtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/ReshapeLtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/zeros*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:€€€€€€€€€

Ѓ
Otraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Select_1SelectPtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/LessEqualLtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/zerosFtraining/RMSprop/gradients/loss/output_loss/clip_by_value_grad/Reshape*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
T0*'
_output_shapes
:€€€€€€€€€

щ
Jtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/SumSumMtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Select\training/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs*
_output_shapes
:*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*

Tidx0*
	keep_dims( *
T0
о
Ntraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/ReshapeReshapeJtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/SumLtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Shape*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
Tshape0*'
_output_shapes
:€€€€€€€€€
*
T0
€
Ltraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Sum_1SumOtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Select_1^training/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/BroadcastGradientArgs:1*
_output_shapes
:*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*

Tidx0*
	keep_dims( *
T0
г
Ptraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Reshape_1ReshapeLtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Sum_1Ntraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Shape_1*9
_class/
-+loc:@loss/output_loss/clip_by_value/Minimum*
Tshape0*
_output_shapes
: *
T0
±
:training/RMSprop/gradients/loss/output_loss/div_grad/ShapeShapeoutput/Softmax*
out_type0*'
_class
loc:@loss/output_loss/div*
T0*
_output_shapes
:
є
<training/RMSprop/gradients/loss/output_loss/div_grad/Shape_1Shapeloss/output_loss/Sum*
out_type0*'
_class
loc:@loss/output_loss/div*
T0*
_output_shapes
:
√
Jtraining/RMSprop/gradients/loss/output_loss/div_grad/BroadcastGradientArgsBroadcastGradientArgs:training/RMSprop/gradients/loss/output_loss/div_grad/Shape<training/RMSprop/gradients/loss/output_loss/div_grad/Shape_1*'
_class
loc:@loss/output_loss/div*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
И
<training/RMSprop/gradients/loss/output_loss/div_grad/RealDivRealDivNtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Reshapeloss/output_loss/Sum*'
_class
loc:@loss/output_loss/div*
T0*'
_output_shapes
:€€€€€€€€€

≤
8training/RMSprop/gradients/loss/output_loss/div_grad/SumSum<training/RMSprop/gradients/loss/output_loss/div_grad/RealDivJtraining/RMSprop/gradients/loss/output_loss/div_grad/BroadcastGradientArgs*
_output_shapes
:*'
_class
loc:@loss/output_loss/div*

Tidx0*
	keep_dims( *
T0
¶
<training/RMSprop/gradients/loss/output_loss/div_grad/ReshapeReshape8training/RMSprop/gradients/loss/output_loss/div_grad/Sum:training/RMSprop/gradients/loss/output_loss/div_grad/Shape*'
_class
loc:@loss/output_loss/div*
Tshape0*'
_output_shapes
:€€€€€€€€€
*
T0
™
8training/RMSprop/gradients/loss/output_loss/div_grad/NegNegoutput/Softmax*'
_class
loc:@loss/output_loss/div*
T0*'
_output_shapes
:€€€€€€€€€

ф
>training/RMSprop/gradients/loss/output_loss/div_grad/RealDiv_1RealDiv8training/RMSprop/gradients/loss/output_loss/div_grad/Negloss/output_loss/Sum*'
_class
loc:@loss/output_loss/div*
T0*'
_output_shapes
:€€€€€€€€€

ъ
>training/RMSprop/gradients/loss/output_loss/div_grad/RealDiv_2RealDiv>training/RMSprop/gradients/loss/output_loss/div_grad/RealDiv_1loss/output_loss/Sum*'
_class
loc:@loss/output_loss/div*
T0*'
_output_shapes
:€€€€€€€€€

™
8training/RMSprop/gradients/loss/output_loss/div_grad/mulMulNtraining/RMSprop/gradients/loss/output_loss/clip_by_value/Minimum_grad/Reshape>training/RMSprop/gradients/loss/output_loss/div_grad/RealDiv_2*'
_class
loc:@loss/output_loss/div*
T0*'
_output_shapes
:€€€€€€€€€

≤
:training/RMSprop/gradients/loss/output_loss/div_grad/Sum_1Sum8training/RMSprop/gradients/loss/output_loss/div_grad/mulLtraining/RMSprop/gradients/loss/output_loss/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*'
_class
loc:@loss/output_loss/div*

Tidx0*
	keep_dims( *
T0
ђ
>training/RMSprop/gradients/loss/output_loss/div_grad/Reshape_1Reshape:training/RMSprop/gradients/loss/output_loss/div_grad/Sum_1<training/RMSprop/gradients/loss/output_loss/div_grad/Shape_1*'
_class
loc:@loss/output_loss/div*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
±
:training/RMSprop/gradients/loss/output_loss/Sum_grad/ShapeShapeoutput/Softmax*
out_type0*'
_class
loc:@loss/output_loss/Sum*
T0*
_output_shapes
:
§
9training/RMSprop/gradients/loss/output_loss/Sum_grad/SizeConst*
dtype0*'
_class
loc:@loss/output_loss/Sum*
value	B :*
_output_shapes
: 
м
8training/RMSprop/gradients/loss/output_loss/Sum_grad/addAdd&loss/output_loss/Sum/reduction_indices9training/RMSprop/gradients/loss/output_loss/Sum_grad/Size*'
_class
loc:@loss/output_loss/Sum*
T0*
_output_shapes
: 
Г
8training/RMSprop/gradients/loss/output_loss/Sum_grad/modFloorMod8training/RMSprop/gradients/loss/output_loss/Sum_grad/add9training/RMSprop/gradients/loss/output_loss/Sum_grad/Size*'
_class
loc:@loss/output_loss/Sum*
T0*
_output_shapes
: 
®
<training/RMSprop/gradients/loss/output_loss/Sum_grad/Shape_1Const*
dtype0*'
_class
loc:@loss/output_loss/Sum*
valueB *
_output_shapes
: 
Ђ
@training/RMSprop/gradients/loss/output_loss/Sum_grad/range/startConst*
dtype0*'
_class
loc:@loss/output_loss/Sum*
value	B : *
_output_shapes
: 
Ђ
@training/RMSprop/gradients/loss/output_loss/Sum_grad/range/deltaConst*
dtype0*'
_class
loc:@loss/output_loss/Sum*
value	B :*
_output_shapes
: 
”
:training/RMSprop/gradients/loss/output_loss/Sum_grad/rangeRange@training/RMSprop/gradients/loss/output_loss/Sum_grad/range/start9training/RMSprop/gradients/loss/output_loss/Sum_grad/Size@training/RMSprop/gradients/loss/output_loss/Sum_grad/range/delta*'
_class
loc:@loss/output_loss/Sum*

Tidx0*
_output_shapes
:
™
?training/RMSprop/gradients/loss/output_loss/Sum_grad/Fill/valueConst*
dtype0*'
_class
loc:@loss/output_loss/Sum*
value	B :*
_output_shapes
: 
К
9training/RMSprop/gradients/loss/output_loss/Sum_grad/FillFill<training/RMSprop/gradients/loss/output_loss/Sum_grad/Shape_1?training/RMSprop/gradients/loss/output_loss/Sum_grad/Fill/value*'
_class
loc:@loss/output_loss/Sum*
T0*
_output_shapes
: 
†
Btraining/RMSprop/gradients/loss/output_loss/Sum_grad/DynamicStitchDynamicStitch:training/RMSprop/gradients/loss/output_loss/Sum_grad/range8training/RMSprop/gradients/loss/output_loss/Sum_grad/mod:training/RMSprop/gradients/loss/output_loss/Sum_grad/Shape9training/RMSprop/gradients/loss/output_loss/Sum_grad/Fill*'
_class
loc:@loss/output_loss/Sum*
T0*#
_output_shapes
:€€€€€€€€€*
N
©
>training/RMSprop/gradients/loss/output_loss/Sum_grad/Maximum/yConst*
dtype0*'
_class
loc:@loss/output_loss/Sum*
value	B :*
_output_shapes
: 
Ґ
<training/RMSprop/gradients/loss/output_loss/Sum_grad/MaximumMaximumBtraining/RMSprop/gradients/loss/output_loss/Sum_grad/DynamicStitch>training/RMSprop/gradients/loss/output_loss/Sum_grad/Maximum/y*'
_class
loc:@loss/output_loss/Sum*
T0*#
_output_shapes
:€€€€€€€€€
С
=training/RMSprop/gradients/loss/output_loss/Sum_grad/floordivFloorDiv:training/RMSprop/gradients/loss/output_loss/Sum_grad/Shape<training/RMSprop/gradients/loss/output_loss/Sum_grad/Maximum*'
_class
loc:@loss/output_loss/Sum*
T0*
_output_shapes
:
•
<training/RMSprop/gradients/loss/output_loss/Sum_grad/ReshapeReshape>training/RMSprop/gradients/loss/output_loss/div_grad/Reshape_1Btraining/RMSprop/gradients/loss/output_loss/Sum_grad/DynamicStitch*'
_class
loc:@loss/output_loss/Sum*
Tshape0*
_output_shapes
:*
T0
Ђ
9training/RMSprop/gradients/loss/output_loss/Sum_grad/TileTile<training/RMSprop/gradients/loss/output_loss/Sum_grad/Reshape=training/RMSprop/gradients/loss/output_loss/Sum_grad/floordiv*

Tmultiples0*'
_class
loc:@loss/output_loss/Sum*
T0*'
_output_shapes
:€€€€€€€€€

Д
training/RMSprop/gradients/AddNAddN<training/RMSprop/gradients/loss/output_loss/div_grad/Reshape9training/RMSprop/gradients/loss/output_loss/Sum_grad/Tile*'
_class
loc:@loss/output_loss/div*
T0*'
_output_shapes
:€€€€€€€€€
*
N
њ
2training/RMSprop/gradients/output/Softmax_grad/mulMultraining/RMSprop/gradients/AddNoutput/Softmax*!
_class
loc:@output/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

±
Dtraining/RMSprop/gradients/output/Softmax_grad/Sum/reduction_indicesConst*
dtype0*!
_class
loc:@output/Softmax*
valueB:*
_output_shapes
:
°
2training/RMSprop/gradients/output/Softmax_grad/SumSum2training/RMSprop/gradients/output/Softmax_grad/mulDtraining/RMSprop/gradients/output/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*!
_class
loc:@output/Softmax*

Tidx0*
	keep_dims( *
T0
∞
<training/RMSprop/gradients/output/Softmax_grad/Reshape/shapeConst*
dtype0*!
_class
loc:@output/Softmax*
valueB"€€€€   *
_output_shapes
:
Ц
6training/RMSprop/gradients/output/Softmax_grad/ReshapeReshape2training/RMSprop/gradients/output/Softmax_grad/Sum<training/RMSprop/gradients/output/Softmax_grad/Reshape/shape*!
_class
loc:@output/Softmax*
Tshape0*'
_output_shapes
:€€€€€€€€€*
T0
з
2training/RMSprop/gradients/output/Softmax_grad/subSubtraining/RMSprop/gradients/AddN6training/RMSprop/gradients/output/Softmax_grad/Reshape*!
_class
loc:@output/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

‘
4training/RMSprop/gradients/output/Softmax_grad/mul_1Mul2training/RMSprop/gradients/output/Softmax_grad/suboutput/Softmax*!
_class
loc:@output/Softmax*
T0*'
_output_shapes
:€€€€€€€€€

ё
:training/RMSprop/gradients/output/BiasAdd_grad/BiasAddGradBiasAddGrad4training/RMSprop/gradients/output/Softmax_grad/mul_1*!
_class
loc:@output/BiasAdd*
data_formatNHWC*
_output_shapes
:
*
T0
Г
4training/RMSprop/gradients/output/MatMul_grad/MatMulMatMul4training/RMSprop/gradients/output/Softmax_grad/mul_1output/kernel/read*
transpose_b(*
transpose_a( * 
_class
loc:@output/MatMul*
T0*(
_output_shapes
:€€€€€€€€€А
€
6training/RMSprop/gradients/output/MatMul_grad/MatMul_1MatMuldropout_2/dropout/mul4training/RMSprop/gradients/output/Softmax_grad/mul_1*
transpose_b( *
transpose_a(* 
_class
loc:@output/MatMul*
T0*
_output_shapes
:	А

Ї
;training/RMSprop/gradients/dropout_2/dropout/mul_grad/ShapeShapedropout_2/dropout/div*
out_type0*(
_class
loc:@dropout_2/dropout/mul*
T0*
_output_shapes
:
Њ
=training/RMSprop/gradients/dropout_2/dropout/mul_grad/Shape_1Shapedropout_2/dropout/Floor*
out_type0*(
_class
loc:@dropout_2/dropout/mul*
T0*
_output_shapes
:
«
Ktraining/RMSprop/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/dropout_2/dropout/mul_grad/Shape=training/RMSprop/gradients/dropout_2/dropout/mul_grad/Shape_1*(
_class
loc:@dropout_2/dropout/mul*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
м
9training/RMSprop/gradients/dropout_2/dropout/mul_grad/mulMul4training/RMSprop/gradients/output/MatMul_grad/MatMuldropout_2/dropout/Floor*(
_class
loc:@dropout_2/dropout/mul*
T0*(
_output_shapes
:€€€€€€€€€А
≤
9training/RMSprop/gradients/dropout_2/dropout/mul_grad/SumSum9training/RMSprop/gradients/dropout_2/dropout/mul_grad/mulKtraining/RMSprop/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*(
_class
loc:@dropout_2/dropout/mul*

Tidx0*
	keep_dims( *
T0
Ђ
=training/RMSprop/gradients/dropout_2/dropout/mul_grad/ReshapeReshape9training/RMSprop/gradients/dropout_2/dropout/mul_grad/Sum;training/RMSprop/gradients/dropout_2/dropout/mul_grad/Shape*(
_class
loc:@dropout_2/dropout/mul*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
м
;training/RMSprop/gradients/dropout_2/dropout/mul_grad/mul_1Muldropout_2/dropout/div4training/RMSprop/gradients/output/MatMul_grad/MatMul*(
_class
loc:@dropout_2/dropout/mul*
T0*(
_output_shapes
:€€€€€€€€€А
Є
;training/RMSprop/gradients/dropout_2/dropout/mul_grad/Sum_1Sum;training/RMSprop/gradients/dropout_2/dropout/mul_grad/mul_1Mtraining/RMSprop/gradients/dropout_2/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*(
_class
loc:@dropout_2/dropout/mul*

Tidx0*
	keep_dims( *
T0
±
?training/RMSprop/gradients/dropout_2/dropout/mul_grad/Reshape_1Reshape;training/RMSprop/gradients/dropout_2/dropout/mul_grad/Sum_1=training/RMSprop/gradients/dropout_2/dropout/mul_grad/Shape_1*(
_class
loc:@dropout_2/dropout/mul*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
≤
;training/RMSprop/gradients/dropout_2/dropout/div_grad/ShapeShapedropout_2/mul*
out_type0*(
_class
loc:@dropout_2/dropout/div*
T0*
_output_shapes
:
™
=training/RMSprop/gradients/dropout_2/dropout/div_grad/Shape_1Const*
dtype0*(
_class
loc:@dropout_2/dropout/div*
valueB *
_output_shapes
: 
«
Ktraining/RMSprop/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/dropout_2/dropout/div_grad/Shape=training/RMSprop/gradients/dropout_2/dropout/div_grad/Shape_1*(
_class
loc:@dropout_2/dropout/div*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Б
=training/RMSprop/gradients/dropout_2/dropout/div_grad/RealDivRealDiv=training/RMSprop/gradients/dropout_2/dropout/mul_grad/Reshapedropout_2/dropout/keep_prob*(
_class
loc:@dropout_2/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
ґ
9training/RMSprop/gradients/dropout_2/dropout/div_grad/SumSum=training/RMSprop/gradients/dropout_2/dropout/div_grad/RealDivKtraining/RMSprop/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*(
_class
loc:@dropout_2/dropout/div*

Tidx0*
	keep_dims( *
T0
Ђ
=training/RMSprop/gradients/dropout_2/dropout/div_grad/ReshapeReshape9training/RMSprop/gradients/dropout_2/dropout/div_grad/Sum;training/RMSprop/gradients/dropout_2/dropout/div_grad/Shape*(
_class
loc:@dropout_2/dropout/div*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
ђ
9training/RMSprop/gradients/dropout_2/dropout/div_grad/NegNegdropout_2/mul*(
_class
loc:@dropout_2/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
€
?training/RMSprop/gradients/dropout_2/dropout/div_grad/RealDiv_1RealDiv9training/RMSprop/gradients/dropout_2/dropout/div_grad/Negdropout_2/dropout/keep_prob*(
_class
loc:@dropout_2/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
Е
?training/RMSprop/gradients/dropout_2/dropout/div_grad/RealDiv_2RealDiv?training/RMSprop/gradients/dropout_2/dropout/div_grad/RealDiv_1dropout_2/dropout/keep_prob*(
_class
loc:@dropout_2/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
Э
9training/RMSprop/gradients/dropout_2/dropout/div_grad/mulMul=training/RMSprop/gradients/dropout_2/dropout/mul_grad/Reshape?training/RMSprop/gradients/dropout_2/dropout/div_grad/RealDiv_2*(
_class
loc:@dropout_2/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
ґ
;training/RMSprop/gradients/dropout_2/dropout/div_grad/Sum_1Sum9training/RMSprop/gradients/dropout_2/dropout/div_grad/mulMtraining/RMSprop/gradients/dropout_2/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*(
_class
loc:@dropout_2/dropout/div*

Tidx0*
	keep_dims( *
T0
Я
?training/RMSprop/gradients/dropout_2/dropout/div_grad/Reshape_1Reshape;training/RMSprop/gradients/dropout_2/dropout/div_grad/Sum_1=training/RMSprop/gradients/dropout_2/dropout/div_grad/Shape_1*(
_class
loc:@dropout_2/dropout/div*
Tshape0*
_output_shapes
: *
T0
°
3training/RMSprop/gradients/dropout_2/mul_grad/ShapeShapedense_2/Relu*
out_type0* 
_class
loc:@dropout_2/mul*
T0*
_output_shapes
:
Ъ
5training/RMSprop/gradients/dropout_2/mul_grad/Shape_1Const*
dtype0* 
_class
loc:@dropout_2/mul*
valueB *
_output_shapes
: 
І
Ctraining/RMSprop/gradients/dropout_2/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3training/RMSprop/gradients/dropout_2/mul_grad/Shape5training/RMSprop/gradients/dropout_2/mul_grad/Shape_1* 
_class
loc:@dropout_2/mul*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ё
1training/RMSprop/gradients/dropout_2/mul_grad/mulMul=training/RMSprop/gradients/dropout_2/dropout/div_grad/Reshapedropout_2/mul/y* 
_class
loc:@dropout_2/mul*
T0*(
_output_shapes
:€€€€€€€€€А
Т
1training/RMSprop/gradients/dropout_2/mul_grad/SumSum1training/RMSprop/gradients/dropout_2/mul_grad/mulCtraining/RMSprop/gradients/dropout_2/mul_grad/BroadcastGradientArgs*
_output_shapes
:* 
_class
loc:@dropout_2/mul*

Tidx0*
	keep_dims( *
T0
Л
5training/RMSprop/gradients/dropout_2/mul_grad/ReshapeReshape1training/RMSprop/gradients/dropout_2/mul_grad/Sum3training/RMSprop/gradients/dropout_2/mul_grad/Shape* 
_class
loc:@dropout_2/mul*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
№
3training/RMSprop/gradients/dropout_2/mul_grad/mul_1Muldense_2/Relu=training/RMSprop/gradients/dropout_2/dropout/div_grad/Reshape* 
_class
loc:@dropout_2/mul*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
3training/RMSprop/gradients/dropout_2/mul_grad/Sum_1Sum3training/RMSprop/gradients/dropout_2/mul_grad/mul_1Etraining/RMSprop/gradients/dropout_2/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:* 
_class
loc:@dropout_2/mul*

Tidx0*
	keep_dims( *
T0
€
7training/RMSprop/gradients/dropout_2/mul_grad/Reshape_1Reshape3training/RMSprop/gradients/dropout_2/mul_grad/Sum_15training/RMSprop/gradients/dropout_2/mul_grad/Shape_1* 
_class
loc:@dropout_2/mul*
Tshape0*
_output_shapes
: *
T0
Џ
5training/RMSprop/gradients/dense_2/Relu_grad/ReluGradReluGrad5training/RMSprop/gradients/dropout_2/mul_grad/Reshapedense_2/Relu*
_class
loc:@dense_2/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
в
;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_2/Relu_grad/ReluGrad*"
_class
loc:@dense_2/BiasAdd*
data_formatNHWC*
_output_shapes	
:А*
T0
З
5training/RMSprop/gradients/dense_2/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_2/Relu_grad/ReluGraddense_2/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_2/MatMul*
T0*(
_output_shapes
:€€€€€€€€€А
Г
7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1MatMuldropout_1/dropout/mul5training/RMSprop/gradients/dense_2/Relu_grad/ReluGrad*
transpose_b( *
transpose_a(*!
_class
loc:@dense_2/MatMul*
T0* 
_output_shapes
:
АА
Ї
;training/RMSprop/gradients/dropout_1/dropout/mul_grad/ShapeShapedropout_1/dropout/div*
out_type0*(
_class
loc:@dropout_1/dropout/mul*
T0*
_output_shapes
:
Њ
=training/RMSprop/gradients/dropout_1/dropout/mul_grad/Shape_1Shapedropout_1/dropout/Floor*
out_type0*(
_class
loc:@dropout_1/dropout/mul*
T0*
_output_shapes
:
«
Ktraining/RMSprop/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/dropout_1/dropout/mul_grad/Shape=training/RMSprop/gradients/dropout_1/dropout/mul_grad/Shape_1*(
_class
loc:@dropout_1/dropout/mul*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
н
9training/RMSprop/gradients/dropout_1/dropout/mul_grad/mulMul5training/RMSprop/gradients/dense_2/MatMul_grad/MatMuldropout_1/dropout/Floor*(
_class
loc:@dropout_1/dropout/mul*
T0*(
_output_shapes
:€€€€€€€€€А
≤
9training/RMSprop/gradients/dropout_1/dropout/mul_grad/SumSum9training/RMSprop/gradients/dropout_1/dropout/mul_grad/mulKtraining/RMSprop/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs*
_output_shapes
:*(
_class
loc:@dropout_1/dropout/mul*

Tidx0*
	keep_dims( *
T0
Ђ
=training/RMSprop/gradients/dropout_1/dropout/mul_grad/ReshapeReshape9training/RMSprop/gradients/dropout_1/dropout/mul_grad/Sum;training/RMSprop/gradients/dropout_1/dropout/mul_grad/Shape*(
_class
loc:@dropout_1/dropout/mul*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
н
;training/RMSprop/gradients/dropout_1/dropout/mul_grad/mul_1Muldropout_1/dropout/div5training/RMSprop/gradients/dense_2/MatMul_grad/MatMul*(
_class
loc:@dropout_1/dropout/mul*
T0*(
_output_shapes
:€€€€€€€€€А
Є
;training/RMSprop/gradients/dropout_1/dropout/mul_grad/Sum_1Sum;training/RMSprop/gradients/dropout_1/dropout/mul_grad/mul_1Mtraining/RMSprop/gradients/dropout_1/dropout/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*(
_class
loc:@dropout_1/dropout/mul*

Tidx0*
	keep_dims( *
T0
±
?training/RMSprop/gradients/dropout_1/dropout/mul_grad/Reshape_1Reshape;training/RMSprop/gradients/dropout_1/dropout/mul_grad/Sum_1=training/RMSprop/gradients/dropout_1/dropout/mul_grad/Shape_1*(
_class
loc:@dropout_1/dropout/mul*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
≤
;training/RMSprop/gradients/dropout_1/dropout/div_grad/ShapeShapedropout_1/mul*
out_type0*(
_class
loc:@dropout_1/dropout/div*
T0*
_output_shapes
:
™
=training/RMSprop/gradients/dropout_1/dropout/div_grad/Shape_1Const*
dtype0*(
_class
loc:@dropout_1/dropout/div*
valueB *
_output_shapes
: 
«
Ktraining/RMSprop/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgsBroadcastGradientArgs;training/RMSprop/gradients/dropout_1/dropout/div_grad/Shape=training/RMSprop/gradients/dropout_1/dropout/div_grad/Shape_1*(
_class
loc:@dropout_1/dropout/div*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Б
=training/RMSprop/gradients/dropout_1/dropout/div_grad/RealDivRealDiv=training/RMSprop/gradients/dropout_1/dropout/mul_grad/Reshapedropout_1/dropout/keep_prob*(
_class
loc:@dropout_1/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
ґ
9training/RMSprop/gradients/dropout_1/dropout/div_grad/SumSum=training/RMSprop/gradients/dropout_1/dropout/div_grad/RealDivKtraining/RMSprop/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs*
_output_shapes
:*(
_class
loc:@dropout_1/dropout/div*

Tidx0*
	keep_dims( *
T0
Ђ
=training/RMSprop/gradients/dropout_1/dropout/div_grad/ReshapeReshape9training/RMSprop/gradients/dropout_1/dropout/div_grad/Sum;training/RMSprop/gradients/dropout_1/dropout/div_grad/Shape*(
_class
loc:@dropout_1/dropout/div*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
ђ
9training/RMSprop/gradients/dropout_1/dropout/div_grad/NegNegdropout_1/mul*(
_class
loc:@dropout_1/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
€
?training/RMSprop/gradients/dropout_1/dropout/div_grad/RealDiv_1RealDiv9training/RMSprop/gradients/dropout_1/dropout/div_grad/Negdropout_1/dropout/keep_prob*(
_class
loc:@dropout_1/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
Е
?training/RMSprop/gradients/dropout_1/dropout/div_grad/RealDiv_2RealDiv?training/RMSprop/gradients/dropout_1/dropout/div_grad/RealDiv_1dropout_1/dropout/keep_prob*(
_class
loc:@dropout_1/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
Э
9training/RMSprop/gradients/dropout_1/dropout/div_grad/mulMul=training/RMSprop/gradients/dropout_1/dropout/mul_grad/Reshape?training/RMSprop/gradients/dropout_1/dropout/div_grad/RealDiv_2*(
_class
loc:@dropout_1/dropout/div*
T0*(
_output_shapes
:€€€€€€€€€А
ґ
;training/RMSprop/gradients/dropout_1/dropout/div_grad/Sum_1Sum9training/RMSprop/gradients/dropout_1/dropout/div_grad/mulMtraining/RMSprop/gradients/dropout_1/dropout/div_grad/BroadcastGradientArgs:1*
_output_shapes
:*(
_class
loc:@dropout_1/dropout/div*

Tidx0*
	keep_dims( *
T0
Я
?training/RMSprop/gradients/dropout_1/dropout/div_grad/Reshape_1Reshape;training/RMSprop/gradients/dropout_1/dropout/div_grad/Sum_1=training/RMSprop/gradients/dropout_1/dropout/div_grad/Shape_1*(
_class
loc:@dropout_1/dropout/div*
Tshape0*
_output_shapes
: *
T0
°
3training/RMSprop/gradients/dropout_1/mul_grad/ShapeShapedense_1/Relu*
out_type0* 
_class
loc:@dropout_1/mul*
T0*
_output_shapes
:
Ъ
5training/RMSprop/gradients/dropout_1/mul_grad/Shape_1Const*
dtype0* 
_class
loc:@dropout_1/mul*
valueB *
_output_shapes
: 
І
Ctraining/RMSprop/gradients/dropout_1/mul_grad/BroadcastGradientArgsBroadcastGradientArgs3training/RMSprop/gradients/dropout_1/mul_grad/Shape5training/RMSprop/gradients/dropout_1/mul_grad/Shape_1* 
_class
loc:@dropout_1/mul*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
Ё
1training/RMSprop/gradients/dropout_1/mul_grad/mulMul=training/RMSprop/gradients/dropout_1/dropout/div_grad/Reshapedropout_1/mul/y* 
_class
loc:@dropout_1/mul*
T0*(
_output_shapes
:€€€€€€€€€А
Т
1training/RMSprop/gradients/dropout_1/mul_grad/SumSum1training/RMSprop/gradients/dropout_1/mul_grad/mulCtraining/RMSprop/gradients/dropout_1/mul_grad/BroadcastGradientArgs*
_output_shapes
:* 
_class
loc:@dropout_1/mul*

Tidx0*
	keep_dims( *
T0
Л
5training/RMSprop/gradients/dropout_1/mul_grad/ReshapeReshape1training/RMSprop/gradients/dropout_1/mul_grad/Sum3training/RMSprop/gradients/dropout_1/mul_grad/Shape* 
_class
loc:@dropout_1/mul*
Tshape0*(
_output_shapes
:€€€€€€€€€А*
T0
№
3training/RMSprop/gradients/dropout_1/mul_grad/mul_1Muldense_1/Relu=training/RMSprop/gradients/dropout_1/dropout/div_grad/Reshape* 
_class
loc:@dropout_1/mul*
T0*(
_output_shapes
:€€€€€€€€€А
Ш
3training/RMSprop/gradients/dropout_1/mul_grad/Sum_1Sum3training/RMSprop/gradients/dropout_1/mul_grad/mul_1Etraining/RMSprop/gradients/dropout_1/mul_grad/BroadcastGradientArgs:1*
_output_shapes
:* 
_class
loc:@dropout_1/mul*

Tidx0*
	keep_dims( *
T0
€
7training/RMSprop/gradients/dropout_1/mul_grad/Reshape_1Reshape3training/RMSprop/gradients/dropout_1/mul_grad/Sum_15training/RMSprop/gradients/dropout_1/mul_grad/Shape_1* 
_class
loc:@dropout_1/mul*
Tshape0*
_output_shapes
: *
T0
Џ
5training/RMSprop/gradients/dense_1/Relu_grad/ReluGradReluGrad5training/RMSprop/gradients/dropout_1/mul_grad/Reshapedense_1/Relu*
_class
loc:@dense_1/Relu*
T0*(
_output_shapes
:€€€€€€€€€А
в
;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGradBiasAddGrad5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*"
_class
loc:@dense_1/BiasAdd*
data_formatNHWC*
_output_shapes	
:А*
T0
З
5training/RMSprop/gradients/dense_1/MatMul_grad/MatMulMatMul5training/RMSprop/gradients/dense_1/Relu_grad/ReluGraddense_1/kernel/read*
transpose_b(*
transpose_a( *!
_class
loc:@dense_1/MatMul*
T0*(
_output_shapes
:€€€€€€€€€Р
ы
7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1MatMuldense_1_input5training/RMSprop/gradients/dense_1/Relu_grad/ReluGrad*
transpose_b( *
transpose_a(*!
_class
loc:@dense_1/MatMul*
T0* 
_output_shapes
:
РА
o
training/RMSprop/ConstConst*
dtype0*
valueB
РА*    * 
_output_shapes
:
РА
С
training/RMSprop/Variable
VariableV2*
dtype0*
shape:
РА*
	container *
shared_name * 
_output_shapes
:
РА
я
 training/RMSprop/Variable/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/Const*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
use_locking(*
T0* 
_output_shapes
:
РА
Ю
training/RMSprop/Variable/readIdentitytraining/RMSprop/Variable*,
_class"
 loc:@training/RMSprop/Variable*
T0* 
_output_shapes
:
РА
g
training/RMSprop/Const_1Const*
dtype0*
valueBА*    *
_output_shapes	
:А
Й
training/RMSprop/Variable_1
VariableV2*
dtype0*
shape:А*
	container *
shared_name *
_output_shapes	
:А
в
"training/RMSprop/Variable_1/AssignAssigntraining/RMSprop/Variable_1training/RMSprop/Const_1*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
use_locking(*
T0*
_output_shapes	
:А
Я
 training/RMSprop/Variable_1/readIdentitytraining/RMSprop/Variable_1*.
_class$
" loc:@training/RMSprop/Variable_1*
T0*
_output_shapes	
:А
q
training/RMSprop/Const_2Const*
dtype0*
valueB
АА*    * 
_output_shapes
:
АА
У
training/RMSprop/Variable_2
VariableV2*
dtype0*
shape:
АА*
	container *
shared_name * 
_output_shapes
:
АА
з
"training/RMSprop/Variable_2/AssignAssigntraining/RMSprop/Variable_2training/RMSprop/Const_2*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
use_locking(*
T0* 
_output_shapes
:
АА
§
 training/RMSprop/Variable_2/readIdentitytraining/RMSprop/Variable_2*.
_class$
" loc:@training/RMSprop/Variable_2*
T0* 
_output_shapes
:
АА
g
training/RMSprop/Const_3Const*
dtype0*
valueBА*    *
_output_shapes	
:А
Й
training/RMSprop/Variable_3
VariableV2*
dtype0*
shape:А*
	container *
shared_name *
_output_shapes	
:А
в
"training/RMSprop/Variable_3/AssignAssigntraining/RMSprop/Variable_3training/RMSprop/Const_3*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
use_locking(*
T0*
_output_shapes	
:А
Я
 training/RMSprop/Variable_3/readIdentitytraining/RMSprop/Variable_3*.
_class$
" loc:@training/RMSprop/Variable_3*
T0*
_output_shapes	
:А
o
training/RMSprop/Const_4Const*
dtype0*
valueB	А
*    *
_output_shapes
:	А

С
training/RMSprop/Variable_4
VariableV2*
dtype0*
shape:	А
*
	container *
shared_name *
_output_shapes
:	А

ж
"training/RMSprop/Variable_4/AssignAssigntraining/RMSprop/Variable_4training/RMSprop/Const_4*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
use_locking(*
T0*
_output_shapes
:	А

£
 training/RMSprop/Variable_4/readIdentitytraining/RMSprop/Variable_4*.
_class$
" loc:@training/RMSprop/Variable_4*
T0*
_output_shapes
:	А

e
training/RMSprop/Const_5Const*
dtype0*
valueB
*    *
_output_shapes
:

З
training/RMSprop/Variable_5
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

б
"training/RMSprop/Variable_5/AssignAssigntraining/RMSprop/Variable_5training/RMSprop/Const_5*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
use_locking(*
T0*
_output_shapes
:

Ю
 training/RMSprop/Variable_5/readIdentitytraining/RMSprop/Variable_5*.
_class$
" loc:@training/RMSprop/Variable_5*
T0*
_output_shapes
:

b
 training/RMSprop/AssignAdd/valueConst*
dtype0	*
value	B	 R*
_output_shapes
: 
Є
training/RMSprop/AssignAdd	AssignAddRMSprop/iterations training/RMSprop/AssignAdd/value*%
_class
loc:@RMSprop/iterations*
use_locking( *
T0	*
_output_shapes
: 
x
training/RMSprop/mulMulRMSprop/rho/readtraining/RMSprop/Variable/read*
T0* 
_output_shapes
:
РА
[
training/RMSprop/sub/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
f
training/RMSprop/subSubtraining/RMSprop/sub/xRMSprop/rho/read*
T0*
_output_shapes
: 
Е
training/RMSprop/SquareSquare7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
РА
w
training/RMSprop/mul_1Multraining/RMSprop/subtraining/RMSprop/Square*
T0* 
_output_shapes
:
РА
t
training/RMSprop/addAddtraining/RMSprop/multraining/RMSprop/mul_1*
T0* 
_output_shapes
:
РА
‘
training/RMSprop/AssignAssigntraining/RMSprop/Variabletraining/RMSprop/add*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
use_locking(*
T0* 
_output_shapes
:
РА
Т
training/RMSprop/mul_2MulRMSprop/lr/read7training/RMSprop/gradients/dense_1/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
РА
]
training/RMSprop/Const_6Const*
dtype0*
valueB
 *    *
_output_shapes
: 
]
training/RMSprop/Const_7Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
М
&training/RMSprop/clip_by_value/MinimumMinimumtraining/RMSprop/addtraining/RMSprop/Const_7*
T0* 
_output_shapes
:
РА
Ц
training/RMSprop/clip_by_valueMaximum&training/RMSprop/clip_by_value/Minimumtraining/RMSprop/Const_6*
T0* 
_output_shapes
:
РА
h
training/RMSprop/SqrtSqrttraining/RMSprop/clip_by_value*
T0* 
_output_shapes
:
РА
]
training/RMSprop/add_1/yConst*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
y
training/RMSprop/add_1Addtraining/RMSprop/Sqrttraining/RMSprop/add_1/y*
T0* 
_output_shapes
:
РА
z
training/RMSprop/divRealDivtraining/RMSprop/mul_2training/RMSprop/add_1*
T0* 
_output_shapes
:
РА
s
training/RMSprop/sub_1Subdense_1/kernel/readtraining/RMSprop/div*
T0* 
_output_shapes
:
РА
¬
training/RMSprop/Assign_1Assigndense_1/kerneltraining/RMSprop/sub_1*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
РА
w
training/RMSprop/mul_3MulRMSprop/rho/read training/RMSprop/Variable_1/read*
T0*
_output_shapes	
:А
]
training/RMSprop/sub_2/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
j
training/RMSprop/sub_2Subtraining/RMSprop/sub_2/xRMSprop/rho/read*
T0*
_output_shapes
: 
Ж
training/RMSprop/Square_1Square;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
v
training/RMSprop/mul_4Multraining/RMSprop/sub_2training/RMSprop/Square_1*
T0*
_output_shapes	
:А
s
training/RMSprop/add_2Addtraining/RMSprop/mul_3training/RMSprop/mul_4*
T0*
_output_shapes	
:А
„
training/RMSprop/Assign_2Assigntraining/RMSprop/Variable_1training/RMSprop/add_2*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
use_locking(*
T0*
_output_shapes	
:А
С
training/RMSprop/mul_5MulRMSprop/lr/read;training/RMSprop/gradients/dense_1/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
]
training/RMSprop/Const_8Const*
dtype0*
valueB
 *    *
_output_shapes
: 
]
training/RMSprop/Const_9Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
Л
(training/RMSprop/clip_by_value_1/MinimumMinimumtraining/RMSprop/add_2training/RMSprop/Const_9*
T0*
_output_shapes	
:А
Х
 training/RMSprop/clip_by_value_1Maximum(training/RMSprop/clip_by_value_1/Minimumtraining/RMSprop/Const_8*
T0*
_output_shapes	
:А
g
training/RMSprop/Sqrt_1Sqrt training/RMSprop/clip_by_value_1*
T0*
_output_shapes	
:А
]
training/RMSprop/add_3/yConst*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
v
training/RMSprop/add_3Addtraining/RMSprop/Sqrt_1training/RMSprop/add_3/y*
T0*
_output_shapes	
:А
w
training/RMSprop/div_1RealDivtraining/RMSprop/mul_5training/RMSprop/add_3*
T0*
_output_shapes	
:А
n
training/RMSprop/sub_3Subdense_1/bias/readtraining/RMSprop/div_1*
T0*
_output_shapes	
:А
є
training/RMSprop/Assign_3Assigndense_1/biastraining/RMSprop/sub_3*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
|
training/RMSprop/mul_6MulRMSprop/rho/read training/RMSprop/Variable_2/read*
T0* 
_output_shapes
:
АА
]
training/RMSprop/sub_4/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
j
training/RMSprop/sub_4Subtraining/RMSprop/sub_4/xRMSprop/rho/read*
T0*
_output_shapes
: 
З
training/RMSprop/Square_2Square7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
{
training/RMSprop/mul_7Multraining/RMSprop/sub_4training/RMSprop/Square_2*
T0* 
_output_shapes
:
АА
x
training/RMSprop/add_4Addtraining/RMSprop/mul_6training/RMSprop/mul_7*
T0* 
_output_shapes
:
АА
№
training/RMSprop/Assign_4Assigntraining/RMSprop/Variable_2training/RMSprop/add_4*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
use_locking(*
T0* 
_output_shapes
:
АА
Т
training/RMSprop/mul_8MulRMSprop/lr/read7training/RMSprop/gradients/dense_2/MatMul_grad/MatMul_1*
T0* 
_output_shapes
:
АА
^
training/RMSprop/Const_10Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_11Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
С
(training/RMSprop/clip_by_value_2/MinimumMinimumtraining/RMSprop/add_4training/RMSprop/Const_11*
T0* 
_output_shapes
:
АА
Ы
 training/RMSprop/clip_by_value_2Maximum(training/RMSprop/clip_by_value_2/Minimumtraining/RMSprop/Const_10*
T0* 
_output_shapes
:
АА
l
training/RMSprop/Sqrt_2Sqrt training/RMSprop/clip_by_value_2*
T0* 
_output_shapes
:
АА
]
training/RMSprop/add_5/yConst*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
{
training/RMSprop/add_5Addtraining/RMSprop/Sqrt_2training/RMSprop/add_5/y*
T0* 
_output_shapes
:
АА
|
training/RMSprop/div_2RealDivtraining/RMSprop/mul_8training/RMSprop/add_5*
T0* 
_output_shapes
:
АА
u
training/RMSprop/sub_5Subdense_2/kernel/readtraining/RMSprop/div_2*
T0* 
_output_shapes
:
АА
¬
training/RMSprop/Assign_5Assigndense_2/kerneltraining/RMSprop/sub_5*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
w
training/RMSprop/mul_9MulRMSprop/rho/read training/RMSprop/Variable_3/read*
T0*
_output_shapes	
:А
]
training/RMSprop/sub_6/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
j
training/RMSprop/sub_6Subtraining/RMSprop/sub_6/xRMSprop/rho/read*
T0*
_output_shapes
: 
Ж
training/RMSprop/Square_3Square;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
w
training/RMSprop/mul_10Multraining/RMSprop/sub_6training/RMSprop/Square_3*
T0*
_output_shapes	
:А
t
training/RMSprop/add_6Addtraining/RMSprop/mul_9training/RMSprop/mul_10*
T0*
_output_shapes	
:А
„
training/RMSprop/Assign_6Assigntraining/RMSprop/Variable_3training/RMSprop/add_6*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
use_locking(*
T0*
_output_shapes	
:А
Т
training/RMSprop/mul_11MulRMSprop/lr/read;training/RMSprop/gradients/dense_2/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes	
:А
^
training/RMSprop/Const_12Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_13Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
М
(training/RMSprop/clip_by_value_3/MinimumMinimumtraining/RMSprop/add_6training/RMSprop/Const_13*
T0*
_output_shapes	
:А
Ц
 training/RMSprop/clip_by_value_3Maximum(training/RMSprop/clip_by_value_3/Minimumtraining/RMSprop/Const_12*
T0*
_output_shapes	
:А
g
training/RMSprop/Sqrt_3Sqrt training/RMSprop/clip_by_value_3*
T0*
_output_shapes	
:А
]
training/RMSprop/add_7/yConst*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
v
training/RMSprop/add_7Addtraining/RMSprop/Sqrt_3training/RMSprop/add_7/y*
T0*
_output_shapes	
:А
x
training/RMSprop/div_3RealDivtraining/RMSprop/mul_11training/RMSprop/add_7*
T0*
_output_shapes	
:А
n
training/RMSprop/sub_7Subdense_2/bias/readtraining/RMSprop/div_3*
T0*
_output_shapes	
:А
є
training/RMSprop/Assign_7Assigndense_2/biastraining/RMSprop/sub_7*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
|
training/RMSprop/mul_12MulRMSprop/rho/read training/RMSprop/Variable_4/read*
T0*
_output_shapes
:	А

]
training/RMSprop/sub_8/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
j
training/RMSprop/sub_8Subtraining/RMSprop/sub_8/xRMSprop/rho/read*
T0*
_output_shapes
: 
Е
training/RMSprop/Square_4Square6training/RMSprop/gradients/output/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А

{
training/RMSprop/mul_13Multraining/RMSprop/sub_8training/RMSprop/Square_4*
T0*
_output_shapes
:	А

y
training/RMSprop/add_8Addtraining/RMSprop/mul_12training/RMSprop/mul_13*
T0*
_output_shapes
:	А

џ
training/RMSprop/Assign_8Assigntraining/RMSprop/Variable_4training/RMSprop/add_8*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
use_locking(*
T0*
_output_shapes
:	А

С
training/RMSprop/mul_14MulRMSprop/lr/read6training/RMSprop/gradients/output/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	А

^
training/RMSprop/Const_14Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_15Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
Р
(training/RMSprop/clip_by_value_4/MinimumMinimumtraining/RMSprop/add_8training/RMSprop/Const_15*
T0*
_output_shapes
:	А

Ъ
 training/RMSprop/clip_by_value_4Maximum(training/RMSprop/clip_by_value_4/Minimumtraining/RMSprop/Const_14*
T0*
_output_shapes
:	А

k
training/RMSprop/Sqrt_4Sqrt training/RMSprop/clip_by_value_4*
T0*
_output_shapes
:	А

]
training/RMSprop/add_9/yConst*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
z
training/RMSprop/add_9Addtraining/RMSprop/Sqrt_4training/RMSprop/add_9/y*
T0*
_output_shapes
:	А

|
training/RMSprop/div_4RealDivtraining/RMSprop/mul_14training/RMSprop/add_9*
T0*
_output_shapes
:	А

s
training/RMSprop/sub_9Suboutput/kernel/readtraining/RMSprop/div_4*
T0*
_output_shapes
:	А

њ
training/RMSprop/Assign_9Assignoutput/kerneltraining/RMSprop/sub_9*
validate_shape(* 
_class
loc:@output/kernel*
use_locking(*
T0*
_output_shapes
:	А

w
training/RMSprop/mul_15MulRMSprop/rho/read training/RMSprop/Variable_5/read*
T0*
_output_shapes
:

^
training/RMSprop/sub_10/xConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
l
training/RMSprop/sub_10Subtraining/RMSprop/sub_10/xRMSprop/rho/read*
T0*
_output_shapes
: 
Д
training/RMSprop/Square_5Square:training/RMSprop/gradients/output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

w
training/RMSprop/mul_16Multraining/RMSprop/sub_10training/RMSprop/Square_5*
T0*
_output_shapes
:

u
training/RMSprop/add_10Addtraining/RMSprop/mul_15training/RMSprop/mul_16*
T0*
_output_shapes
:

Ў
training/RMSprop/Assign_10Assigntraining/RMSprop/Variable_5training/RMSprop/add_10*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
use_locking(*
T0*
_output_shapes
:

Р
training/RMSprop/mul_17MulRMSprop/lr/read:training/RMSprop/gradients/output/BiasAdd_grad/BiasAddGrad*
T0*
_output_shapes
:

^
training/RMSprop/Const_16Const*
dtype0*
valueB
 *    *
_output_shapes
: 
^
training/RMSprop/Const_17Const*
dtype0*
valueB
 *  А*
_output_shapes
: 
М
(training/RMSprop/clip_by_value_5/MinimumMinimumtraining/RMSprop/add_10training/RMSprop/Const_17*
T0*
_output_shapes
:

Х
 training/RMSprop/clip_by_value_5Maximum(training/RMSprop/clip_by_value_5/Minimumtraining/RMSprop/Const_16*
T0*
_output_shapes
:

f
training/RMSprop/Sqrt_5Sqrt training/RMSprop/clip_by_value_5*
T0*
_output_shapes
:

^
training/RMSprop/add_11/yConst*
dtype0*
valueB
 *wћ+2*
_output_shapes
: 
w
training/RMSprop/add_11Addtraining/RMSprop/Sqrt_5training/RMSprop/add_11/y*
T0*
_output_shapes
:

x
training/RMSprop/div_5RealDivtraining/RMSprop/mul_17training/RMSprop/add_11*
T0*
_output_shapes
:

m
training/RMSprop/sub_11Suboutput/bias/readtraining/RMSprop/div_5*
T0*
_output_shapes
:

Є
training/RMSprop/Assign_11Assignoutput/biastraining/RMSprop/sub_11*
validate_shape(*
_class
loc:@output/bias*
use_locking(*
T0*
_output_shapes
:

¶
training/group_depsNoOp	^loss/mul^metrics/acc/Mean^training/RMSprop/AssignAdd^training/RMSprop/Assign^training/RMSprop/Assign_1^training/RMSprop/Assign_2^training/RMSprop/Assign_3^training/RMSprop/Assign_4^training/RMSprop/Assign_5^training/RMSprop/Assign_6^training/RMSprop/Assign_7^training/RMSprop/Assign_8^training/RMSprop/Assign_9^training/RMSprop/Assign_10^training/RMSprop/Assign_11
0

group_depsNoOp	^loss/mul^metrics/acc/Mean
Ж
IsVariableInitializedIsVariableInitializeddense_1/kernel*
dtype0*!
_class
loc:@dense_1/kernel*
_output_shapes
: 
Д
IsVariableInitialized_1IsVariableInitializeddense_1/bias*
dtype0*
_class
loc:@dense_1/bias*
_output_shapes
: 
И
IsVariableInitialized_2IsVariableInitializeddense_2/kernel*
dtype0*!
_class
loc:@dense_2/kernel*
_output_shapes
: 
Д
IsVariableInitialized_3IsVariableInitializeddense_2/bias*
dtype0*
_class
loc:@dense_2/bias*
_output_shapes
: 
Ж
IsVariableInitialized_4IsVariableInitializedoutput/kernel*
dtype0* 
_class
loc:@output/kernel*
_output_shapes
: 
В
IsVariableInitialized_5IsVariableInitializedoutput/bias*
dtype0*
_class
loc:@output/bias*
_output_shapes
: 
А
IsVariableInitialized_6IsVariableInitialized
RMSprop/lr*
dtype0*
_class
loc:@RMSprop/lr*
_output_shapes
: 
В
IsVariableInitialized_7IsVariableInitializedRMSprop/rho*
dtype0*
_class
loc:@RMSprop/rho*
_output_shapes
: 
Ж
IsVariableInitialized_8IsVariableInitializedRMSprop/decay*
dtype0* 
_class
loc:@RMSprop/decay*
_output_shapes
: 
Р
IsVariableInitialized_9IsVariableInitializedRMSprop/iterations*
dtype0	*%
_class
loc:@RMSprop/iterations*
_output_shapes
: 
Я
IsVariableInitialized_10IsVariableInitializedtraining/RMSprop/Variable*
dtype0*,
_class"
 loc:@training/RMSprop/Variable*
_output_shapes
: 
£
IsVariableInitialized_11IsVariableInitializedtraining/RMSprop/Variable_1*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_1*
_output_shapes
: 
£
IsVariableInitialized_12IsVariableInitializedtraining/RMSprop/Variable_2*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_2*
_output_shapes
: 
£
IsVariableInitialized_13IsVariableInitializedtraining/RMSprop/Variable_3*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_3*
_output_shapes
: 
£
IsVariableInitialized_14IsVariableInitializedtraining/RMSprop/Variable_4*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_4*
_output_shapes
: 
£
IsVariableInitialized_15IsVariableInitializedtraining/RMSprop/Variable_5*
dtype0*.
_class$
" loc:@training/RMSprop/Variable_5*
_output_shapes
: 
ћ
initNoOp^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^output/kernel/Assign^output/bias/Assign^RMSprop/lr/Assign^RMSprop/rho/Assign^RMSprop/decay/Assign^RMSprop/iterations/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign#^training/RMSprop/Variable_5/Assign
P

save/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Д
save/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_87bbd752fc224a58900f168949510978/part*
_output_shapes
: 
u
save/StringJoin
StringJoin
save/Constsave/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
Q
save/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
\
save/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
}
save/ShardedFilenameShardedFilenamesave/StringJoinsave/ShardedFilename/shardsave/num_shards*
_output_shapes
: 
Ґ
save/SaveV2/tensor_namesConst*
dtype0*’
valueЋB»BRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBoutput/biasBoutput/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5*
_output_shapes
:
Г
save/SaveV2/shape_and_slicesConst*
dtype0*3
value*B(B B B B B B B B B B B B B B B B *
_output_shapes
:
√
save/SaveV2SaveV2save/ShardedFilenamesave/SaveV2/tensor_namessave/SaveV2/shape_and_slicesRMSprop/decayRMSprop/iterations
RMSprop/lrRMSprop/rhodense_1/biasdense_1/kerneldense_2/biasdense_2/kerneloutput/biasoutput/kerneltraining/RMSprop/Variabletraining/RMSprop/Variable_1training/RMSprop/Variable_2training/RMSprop/Variable_3training/RMSprop/Variable_4training/RMSprop/Variable_5*
dtypes
2	
С
save/control_dependencyIdentitysave/ShardedFilename^save/SaveV2*'
_class
loc:@save/ShardedFilename*
T0*
_output_shapes
: 
Э
+save/MergeV2Checkpoints/checkpoint_prefixesPacksave/ShardedFilename^save/control_dependency*
N*

axis *
T0*
_output_shapes
:
}
save/MergeV2CheckpointsMergeV2Checkpoints+save/MergeV2Checkpoints/checkpoint_prefixes
save/Const*
delete_old_dirs(
z
save/IdentityIdentity
save/Const^save/control_dependency^save/MergeV2Checkpoints*
T0*
_output_shapes
: 
q
save/RestoreV2/tensor_namesConst*
dtype0*"
valueBBRMSprop/decay*
_output_shapes
:
h
save/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Р
save/RestoreV2	RestoreV2
save/Constsave/RestoreV2/tensor_namessave/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
†
save/AssignAssignRMSprop/decaysave/RestoreV2*
validate_shape(* 
_class
loc:@RMSprop/decay*
use_locking(*
T0*
_output_shapes
: 
x
save/RestoreV2_1/tensor_namesConst*
dtype0*'
valueBBRMSprop/iterations*
_output_shapes
:
j
!save/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_1	RestoreV2
save/Constsave/RestoreV2_1/tensor_names!save/RestoreV2_1/shape_and_slices*
dtypes
2	*
_output_shapes
:
Ѓ
save/Assign_1AssignRMSprop/iterationssave/RestoreV2_1*
validate_shape(*%
_class
loc:@RMSprop/iterations*
use_locking(*
T0	*
_output_shapes
: 
p
save/RestoreV2_2/tensor_namesConst*
dtype0*
valueBB
RMSprop/lr*
_output_shapes
:
j
!save/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_2	RestoreV2
save/Constsave/RestoreV2_2/tensor_names!save/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ю
save/Assign_2Assign
RMSprop/lrsave/RestoreV2_2*
validate_shape(*
_class
loc:@RMSprop/lr*
use_locking(*
T0*
_output_shapes
: 
q
save/RestoreV2_3/tensor_namesConst*
dtype0* 
valueBBRMSprop/rho*
_output_shapes
:
j
!save/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_3	RestoreV2
save/Constsave/RestoreV2_3/tensor_names!save/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
†
save/Assign_3AssignRMSprop/rhosave/RestoreV2_3*
validate_shape(*
_class
loc:@RMSprop/rho*
use_locking(*
T0*
_output_shapes
: 
r
save/RestoreV2_4/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
j
!save/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_4	RestoreV2
save/Constsave/RestoreV2_4/tensor_names!save/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
І
save/Assign_4Assigndense_1/biassave/RestoreV2_4*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
t
save/RestoreV2_5/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
j
!save/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_5	RestoreV2
save/Constsave/RestoreV2_5/tensor_names!save/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
∞
save/Assign_5Assigndense_1/kernelsave/RestoreV2_5*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
РА
r
save/RestoreV2_6/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
j
!save/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_6	RestoreV2
save/Constsave/RestoreV2_6/tensor_names!save/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
І
save/Assign_6Assigndense_2/biassave/RestoreV2_6*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
t
save/RestoreV2_7/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
j
!save/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_7	RestoreV2
save/Constsave/RestoreV2_7/tensor_names!save/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
∞
save/Assign_7Assigndense_2/kernelsave/RestoreV2_7*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
q
save/RestoreV2_8/tensor_namesConst*
dtype0* 
valueBBoutput/bias*
_output_shapes
:
j
!save/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_8	RestoreV2
save/Constsave/RestoreV2_8/tensor_names!save/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
§
save/Assign_8Assignoutput/biassave/RestoreV2_8*
validate_shape(*
_class
loc:@output/bias*
use_locking(*
T0*
_output_shapes
:

s
save/RestoreV2_9/tensor_namesConst*
dtype0*"
valueBBoutput/kernel*
_output_shapes
:
j
!save/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ц
save/RestoreV2_9	RestoreV2
save/Constsave/RestoreV2_9/tensor_names!save/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
≠
save/Assign_9Assignoutput/kernelsave/RestoreV2_9*
validate_shape(* 
_class
loc:@output/kernel*
use_locking(*
T0*
_output_shapes
:	А

А
save/RestoreV2_10/tensor_namesConst*
dtype0*.
value%B#Btraining/RMSprop/Variable*
_output_shapes
:
k
"save/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_10	RestoreV2
save/Constsave/RestoreV2_10/tensor_names"save/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
»
save/Assign_10Assigntraining/RMSprop/Variablesave/RestoreV2_10*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
use_locking(*
T0* 
_output_shapes
:
РА
В
save/RestoreV2_11/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_1*
_output_shapes
:
k
"save/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_11	RestoreV2
save/Constsave/RestoreV2_11/tensor_names"save/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
«
save/Assign_11Assigntraining/RMSprop/Variable_1save/RestoreV2_11*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
use_locking(*
T0*
_output_shapes	
:А
В
save/RestoreV2_12/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_2*
_output_shapes
:
k
"save/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_12	RestoreV2
save/Constsave/RestoreV2_12/tensor_names"save/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save/Assign_12Assigntraining/RMSprop/Variable_2save/RestoreV2_12*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
use_locking(*
T0* 
_output_shapes
:
АА
В
save/RestoreV2_13/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_3*
_output_shapes
:
k
"save/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_13	RestoreV2
save/Constsave/RestoreV2_13/tensor_names"save/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
«
save/Assign_13Assigntraining/RMSprop/Variable_3save/RestoreV2_13*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
use_locking(*
T0*
_output_shapes	
:А
В
save/RestoreV2_14/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_4*
_output_shapes
:
k
"save/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_14	RestoreV2
save/Constsave/RestoreV2_14/tensor_names"save/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
Ћ
save/Assign_14Assigntraining/RMSprop/Variable_4save/RestoreV2_14*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
use_locking(*
T0*
_output_shapes
:	А

В
save/RestoreV2_15/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_5*
_output_shapes
:
k
"save/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Щ
save/RestoreV2_15	RestoreV2
save/Constsave/RestoreV2_15/tensor_names"save/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
∆
save/Assign_15Assigntraining/RMSprop/Variable_5save/RestoreV2_15*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
use_locking(*
T0*
_output_shapes
:

Ю
save/restore_shardNoOp^save/Assign^save/Assign_1^save/Assign_2^save/Assign_3^save/Assign_4^save/Assign_5^save/Assign_6^save/Assign_7^save/Assign_8^save/Assign_9^save/Assign_10^save/Assign_11^save/Assign_12^save/Assign_13^save/Assign_14^save/Assign_15
-
save/restore_allNoOp^save/restore_shard
p
PlaceholderPlaceholder*
dtype0*
shape:€€€€€€€€€Р*(
_output_shapes
:€€€€€€€€€Р
\
zerosConst*
dtype0*
valueB	Р
*    *
_output_shapes
:	Р

~
Variable
VariableV2*
dtype0*
shape:	Р
*
	container *
shared_name *
_output_shapes
:	Р

Ъ
Variable/AssignAssignVariablezeros*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:	Р

j
Variable/readIdentityVariable*
_class
loc:@Variable*
T0*
_output_shapes
:	Р

T
zeros_1Const*
dtype0*
valueB
*    *
_output_shapes
:

v

Variable_1
VariableV2*
dtype0*
shape:
*
	container *
shared_name *
_output_shapes
:

Э
Variable_1/AssignAssign
Variable_1zeros_1*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:

k
Variable_1/readIdentity
Variable_1*
_class
loc:@Variable_1*
T0*
_output_shapes
:

Д
MatMulMatMulPlaceholderVariable/read*
transpose_b( *
transpose_a( *
T0*'
_output_shapes
:€€€€€€€€€

U
AddAddMatMulVariable_1/read*
T0*'
_output_shapes
:€€€€€€€€€

I
SoftmaxSoftmaxAdd*
T0*'
_output_shapes
:€€€€€€€€€

p
Placeholder_1Placeholder*
dtype0*
shape:€€€€€€€€€
*'
_output_shapes
:€€€€€€€€€

E
LogLogSoftmax*
T0*'
_output_shapes
:€€€€€€€€€

P
MulMulPlaceholder_1Log*
T0*'
_output_shapes
:€€€€€€€€€

W
Sum/reduction_indicesConst*
dtype0*
value	B :*
_output_shapes
: 
q
SumSumMulSum/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
=
NegNegSum*
T0*#
_output_shapes
:€€€€€€€€€
O
ConstConst*
dtype0*
valueB: *
_output_shapes
:
V
MeanMeanNegConst*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
R
gradients/ShapeConst*
dtype0*
valueB *
_output_shapes
: 
T
gradients/ConstConst*
dtype0*
valueB
 *  А?*
_output_shapes
: 
Y
gradients/FillFillgradients/Shapegradients/Const*
T0*
_output_shapes
: 
k
!gradients/Mean_grad/Reshape/shapeConst*
dtype0*
valueB:*
_output_shapes
:
М
gradients/Mean_grad/ReshapeReshapegradients/Fill!gradients/Mean_grad/Reshape/shape*
_output_shapes
:*
Tshape0*
T0
\
gradients/Mean_grad/ShapeShapeNeg*
out_type0*
T0*
_output_shapes
:
Ш
gradients/Mean_grad/TileTilegradients/Mean_grad/Reshapegradients/Mean_grad/Shape*

Tmultiples0*
T0*#
_output_shapes
:€€€€€€€€€
^
gradients/Mean_grad/Shape_1ShapeNeg*
out_type0*
T0*
_output_shapes
:
^
gradients/Mean_grad/Shape_2Const*
dtype0*
valueB *
_output_shapes
: 
У
gradients/Mean_grad/ConstConst*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
valueB: *
_output_shapes
:
∆
gradients/Mean_grad/ProdProdgradients/Mean_grad/Shape_1gradients/Mean_grad/Const*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*

Tidx0*
	keep_dims( *
T0
Х
gradients/Mean_grad/Const_1Const*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
valueB: *
_output_shapes
:
 
gradients/Mean_grad/Prod_1Prodgradients/Mean_grad/Shape_2gradients/Mean_grad/Const_1*
_output_shapes
: *.
_class$
" loc:@gradients/Mean_grad/Shape_1*

Tidx0*
	keep_dims( *
T0
П
gradients/Mean_grad/Maximum/yConst*
dtype0*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
value	B :*
_output_shapes
: 
≤
gradients/Mean_grad/MaximumMaximumgradients/Mean_grad/Prod_1gradients/Mean_grad/Maximum/y*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
T0*
_output_shapes
: 
∞
gradients/Mean_grad/floordivFloorDivgradients/Mean_grad/Prodgradients/Mean_grad/Maximum*.
_class$
" loc:@gradients/Mean_grad/Shape_1*
T0*
_output_shapes
: 
n
gradients/Mean_grad/CastCastgradients/Mean_grad/floordiv*

DstT0*

SrcT0*
_output_shapes
: 
И
gradients/Mean_grad/truedivRealDivgradients/Mean_grad/Tilegradients/Mean_grad/Cast*
T0*#
_output_shapes
:€€€€€€€€€
h
gradients/Neg_grad/NegNeggradients/Mean_grad/truediv*
T0*#
_output_shapes
:€€€€€€€€€
[
gradients/Sum_grad/ShapeShapeMul*
out_type0*
T0*
_output_shapes
:
Ж
gradients/Sum_grad/SizeConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
_output_shapes
: 
Ы
gradients/Sum_grad/addAddSum/reduction_indicesgradients/Sum_grad/Size*+
_class!
loc:@gradients/Sum_grad/Shape*
T0*
_output_shapes
: 
°
gradients/Sum_grad/modFloorModgradients/Sum_grad/addgradients/Sum_grad/Size*+
_class!
loc:@gradients/Sum_grad/Shape*
T0*
_output_shapes
: 
К
gradients/Sum_grad/Shape_1Const*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
valueB *
_output_shapes
: 
Н
gradients/Sum_grad/range/startConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B : *
_output_shapes
: 
Н
gradients/Sum_grad/range/deltaConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
_output_shapes
: 
ѕ
gradients/Sum_grad/rangeRangegradients/Sum_grad/range/startgradients/Sum_grad/Sizegradients/Sum_grad/range/delta*+
_class!
loc:@gradients/Sum_grad/Shape*

Tidx0*
_output_shapes
:
М
gradients/Sum_grad/Fill/valueConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
_output_shapes
: 
®
gradients/Sum_grad/FillFillgradients/Sum_grad/Shape_1gradients/Sum_grad/Fill/value*+
_class!
loc:@gradients/Sum_grad/Shape*
T0*
_output_shapes
: 
ъ
 gradients/Sum_grad/DynamicStitchDynamicStitchgradients/Sum_grad/rangegradients/Sum_grad/modgradients/Sum_grad/Shapegradients/Sum_grad/Fill*+
_class!
loc:@gradients/Sum_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€*
N
Л
gradients/Sum_grad/Maximum/yConst*
dtype0*+
_class!
loc:@gradients/Sum_grad/Shape*
value	B :*
_output_shapes
: 
ј
gradients/Sum_grad/MaximumMaximum gradients/Sum_grad/DynamicStitchgradients/Sum_grad/Maximum/y*+
_class!
loc:@gradients/Sum_grad/Shape*
T0*#
_output_shapes
:€€€€€€€€€
ѓ
gradients/Sum_grad/floordivFloorDivgradients/Sum_grad/Shapegradients/Sum_grad/Maximum*+
_class!
loc:@gradients/Sum_grad/Shape*
T0*
_output_shapes
:
Р
gradients/Sum_grad/ReshapeReshapegradients/Neg_grad/Neg gradients/Sum_grad/DynamicStitch*
_output_shapes
:*
Tshape0*
T0
Ь
gradients/Sum_grad/TileTilegradients/Sum_grad/Reshapegradients/Sum_grad/floordiv*

Tmultiples0*
T0*'
_output_shapes
:€€€€€€€€€

e
gradients/Mul_grad/ShapeShapePlaceholder_1*
out_type0*
T0*
_output_shapes
:
]
gradients/Mul_grad/Shape_1ShapeLog*
out_type0*
T0*
_output_shapes
:
і
(gradients/Mul_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Mul_grad/Shapegradients/Mul_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
m
gradients/Mul_grad/mulMulgradients/Sum_grad/TileLog*
T0*'
_output_shapes
:€€€€€€€€€

Я
gradients/Mul_grad/SumSumgradients/Mul_grad/mul(gradients/Mul_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ч
gradients/Mul_grad/ReshapeReshapegradients/Mul_grad/Sumgradients/Mul_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
Tshape0*
T0
y
gradients/Mul_grad/mul_1MulPlaceholder_1gradients/Sum_grad/Tile*
T0*'
_output_shapes
:€€€€€€€€€

•
gradients/Mul_grad/Sum_1Sumgradients/Mul_grad/mul_1*gradients/Mul_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Э
gradients/Mul_grad/Reshape_1Reshapegradients/Mul_grad/Sum_1gradients/Mul_grad/Shape_1*'
_output_shapes
:€€€€€€€€€
*
Tshape0*
T0
g
#gradients/Mul_grad/tuple/group_depsNoOp^gradients/Mul_grad/Reshape^gradients/Mul_grad/Reshape_1
Џ
+gradients/Mul_grad/tuple/control_dependencyIdentitygradients/Mul_grad/Reshape$^gradients/Mul_grad/tuple/group_deps*-
_class#
!loc:@gradients/Mul_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€

а
-gradients/Mul_grad/tuple/control_dependency_1Identitygradients/Mul_grad/Reshape_1$^gradients/Mul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Mul_grad/Reshape_1*
T0*'
_output_shapes
:€€€€€€€€€

Ц
gradients/Log_grad/Reciprocal
ReciprocalSoftmax.^gradients/Mul_grad/tuple/control_dependency_1*
T0*'
_output_shapes
:€€€€€€€€€

Э
gradients/Log_grad/mulMul-gradients/Mul_grad/tuple/control_dependency_1gradients/Log_grad/Reciprocal*
T0*'
_output_shapes
:€€€€€€€€€

t
gradients/Softmax_grad/mulMulgradients/Log_grad/mulSoftmax*
T0*'
_output_shapes
:€€€€€€€€€

v
,gradients/Softmax_grad/Sum/reduction_indicesConst*
dtype0*
valueB:*
_output_shapes
:
ґ
gradients/Softmax_grad/SumSumgradients/Softmax_grad/mul,gradients/Softmax_grad/Sum/reduction_indices*#
_output_shapes
:€€€€€€€€€*

Tidx0*
	keep_dims( *
T0
u
$gradients/Softmax_grad/Reshape/shapeConst*
dtype0*
valueB"€€€€   *
_output_shapes
:
Ђ
gradients/Softmax_grad/ReshapeReshapegradients/Softmax_grad/Sum$gradients/Softmax_grad/Reshape/shape*'
_output_shapes
:€€€€€€€€€*
Tshape0*
T0
Л
gradients/Softmax_grad/subSubgradients/Log_grad/mulgradients/Softmax_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€

z
gradients/Softmax_grad/mul_1Mulgradients/Softmax_grad/subSoftmax*
T0*'
_output_shapes
:€€€€€€€€€

^
gradients/Add_grad/ShapeShapeMatMul*
out_type0*
T0*
_output_shapes
:
d
gradients/Add_grad/Shape_1Const*
dtype0*
valueB:
*
_output_shapes
:
і
(gradients/Add_grad/BroadcastGradientArgsBroadcastGradientArgsgradients/Add_grad/Shapegradients/Add_grad/Shape_1*
T0*2
_output_shapes 
:€€€€€€€€€:€€€€€€€€€
•
gradients/Add_grad/SumSumgradients/Softmax_grad/mul_1(gradients/Add_grad/BroadcastGradientArgs*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Ч
gradients/Add_grad/ReshapeReshapegradients/Add_grad/Sumgradients/Add_grad/Shape*'
_output_shapes
:€€€€€€€€€
*
Tshape0*
T0
©
gradients/Add_grad/Sum_1Sumgradients/Softmax_grad/mul_1*gradients/Add_grad/BroadcastGradientArgs:1*
_output_shapes
:*

Tidx0*
	keep_dims( *
T0
Р
gradients/Add_grad/Reshape_1Reshapegradients/Add_grad/Sum_1gradients/Add_grad/Shape_1*
_output_shapes
:
*
Tshape0*
T0
g
#gradients/Add_grad/tuple/group_depsNoOp^gradients/Add_grad/Reshape^gradients/Add_grad/Reshape_1
Џ
+gradients/Add_grad/tuple/control_dependencyIdentitygradients/Add_grad/Reshape$^gradients/Add_grad/tuple/group_deps*-
_class#
!loc:@gradients/Add_grad/Reshape*
T0*'
_output_shapes
:€€€€€€€€€

”
-gradients/Add_grad/tuple/control_dependency_1Identitygradients/Add_grad/Reshape_1$^gradients/Add_grad/tuple/group_deps*/
_class%
#!loc:@gradients/Add_grad/Reshape_1*
T0*
_output_shapes
:

ї
gradients/MatMul_grad/MatMulMatMul+gradients/Add_grad/tuple/control_dependencyVariable/read*
transpose_b(*
transpose_a( *
T0*(
_output_shapes
:€€€€€€€€€Р
≤
gradients/MatMul_grad/MatMul_1MatMulPlaceholder+gradients/Add_grad/tuple/control_dependency*
transpose_b( *
transpose_a(*
T0*
_output_shapes
:	Р

n
&gradients/MatMul_grad/tuple/group_depsNoOp^gradients/MatMul_grad/MatMul^gradients/MatMul_grad/MatMul_1
е
.gradients/MatMul_grad/tuple/control_dependencyIdentitygradients/MatMul_grad/MatMul'^gradients/MatMul_grad/tuple/group_deps*/
_class%
#!loc:@gradients/MatMul_grad/MatMul*
T0*(
_output_shapes
:€€€€€€€€€Р
в
0gradients/MatMul_grad/tuple/control_dependency_1Identitygradients/MatMul_grad/MatMul_1'^gradients/MatMul_grad/tuple/group_deps*1
_class'
%#loc:@gradients/MatMul_grad/MatMul_1*
T0*
_output_shapes
:	Р

b
GradientDescent/learning_rateConst*
dtype0*
valueB
 *   ?*
_output_shapes
: 
Б
4GradientDescent/update_Variable/ApplyGradientDescentApplyGradientDescentVariableGradientDescent/learning_rate0gradients/MatMul_grad/tuple/control_dependency_1*
_class
loc:@Variable*
use_locking( *
T0*
_output_shapes
:	Р

€
6GradientDescent/update_Variable_1/ApplyGradientDescentApplyGradientDescent
Variable_1GradientDescent/learning_rate-gradients/Add_grad/tuple/control_dependency_1*
_class
loc:@Variable_1*
use_locking( *
T0*
_output_shapes
:

З
GradientDescentNoOp5^GradientDescent/update_Variable/ApplyGradientDescent7^GradientDescent/update_Variable_1/ApplyGradientDescent
ф
init_1NoOp^dense_1/kernel/Assign^dense_1/bias/Assign^dense_2/kernel/Assign^dense_2/bias/Assign^output/kernel/Assign^output/bias/Assign^RMSprop/lr/Assign^RMSprop/rho/Assign^RMSprop/decay/Assign^RMSprop/iterations/Assign!^training/RMSprop/Variable/Assign#^training/RMSprop/Variable_1/Assign#^training/RMSprop/Variable_2/Assign#^training/RMSprop/Variable_3/Assign#^training/RMSprop/Variable_4/Assign#^training/RMSprop/Variable_5/Assign^Variable/Assign^Variable_1/Assign
R
ArgMax/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
x
ArgMaxArgMaxSoftmaxArgMax/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
T
ArgMax_1/dimensionConst*
dtype0*
value	B :*
_output_shapes
: 
В
ArgMax_1ArgMaxPlaceholder_1ArgMax_1/dimension*
output_type0	*#
_output_shapes
:€€€€€€€€€*

Tidx0*
T0
N
EqualEqualArgMaxArgMax_1*
T0	*#
_output_shapes
:€€€€€€€€€
P
CastCastEqual*

DstT0*

SrcT0
*#
_output_shapes
:€€€€€€€€€
Q
Const_1Const*
dtype0*
valueB: *
_output_shapes
:
[
Mean_1MeanCastConst_1*
_output_shapes
: *

Tidx0*
	keep_dims( *
T0
R
save_1/ConstConst*
dtype0*
valueB Bmodel*
_output_shapes
: 
Ж
save_1/StringJoin/inputs_1Const*
dtype0*<
value3B1 B+_temp_e72ced8fcfda40b59e120b6a82686100/part*
_output_shapes
: 
{
save_1/StringJoin
StringJoinsave_1/Constsave_1/StringJoin/inputs_1*
_output_shapes
: *
	separator *
N
S
save_1/num_shardsConst*
dtype0*
value	B :*
_output_shapes
: 
^
save_1/ShardedFilename/shardConst*
dtype0*
value	B : *
_output_shapes
: 
Е
save_1/ShardedFilenameShardedFilenamesave_1/StringJoinsave_1/ShardedFilename/shardsave_1/num_shards*
_output_shapes
: 
Ї
save_1/SaveV2/tensor_namesConst*
dtype0*л
valueбBёBRMSprop/decayBRMSprop/iterationsB
RMSprop/lrBRMSprop/rhoBVariableB
Variable_1Bdense_1/biasBdense_1/kernelBdense_2/biasBdense_2/kernelBoutput/biasBoutput/kernelBtraining/RMSprop/VariableBtraining/RMSprop/Variable_1Btraining/RMSprop/Variable_2Btraining/RMSprop/Variable_3Btraining/RMSprop/Variable_4Btraining/RMSprop/Variable_5*
_output_shapes
:
Й
save_1/SaveV2/shape_and_slicesConst*
dtype0*7
value.B,B B B B B B B B B B B B B B B B B B *
_output_shapes
:
г
save_1/SaveV2SaveV2save_1/ShardedFilenamesave_1/SaveV2/tensor_namessave_1/SaveV2/shape_and_slicesRMSprop/decayRMSprop/iterations
RMSprop/lrRMSprop/rhoVariable
Variable_1dense_1/biasdense_1/kerneldense_2/biasdense_2/kerneloutput/biasoutput/kerneltraining/RMSprop/Variabletraining/RMSprop/Variable_1training/RMSprop/Variable_2training/RMSprop/Variable_3training/RMSprop/Variable_4training/RMSprop/Variable_5* 
dtypes
2	
Щ
save_1/control_dependencyIdentitysave_1/ShardedFilename^save_1/SaveV2*)
_class
loc:@save_1/ShardedFilename*
T0*
_output_shapes
: 
£
-save_1/MergeV2Checkpoints/checkpoint_prefixesPacksave_1/ShardedFilename^save_1/control_dependency*
N*

axis *
T0*
_output_shapes
:
Г
save_1/MergeV2CheckpointsMergeV2Checkpoints-save_1/MergeV2Checkpoints/checkpoint_prefixessave_1/Const*
delete_old_dirs(
В
save_1/IdentityIdentitysave_1/Const^save_1/control_dependency^save_1/MergeV2Checkpoints*
T0*
_output_shapes
: 
s
save_1/RestoreV2/tensor_namesConst*
dtype0*"
valueBBRMSprop/decay*
_output_shapes
:
j
!save_1/RestoreV2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ш
save_1/RestoreV2	RestoreV2save_1/Constsave_1/RestoreV2/tensor_names!save_1/RestoreV2/shape_and_slices*
dtypes
2*
_output_shapes
:
§
save_1/AssignAssignRMSprop/decaysave_1/RestoreV2*
validate_shape(* 
_class
loc:@RMSprop/decay*
use_locking(*
T0*
_output_shapes
: 
z
save_1/RestoreV2_1/tensor_namesConst*
dtype0*'
valueBBRMSprop/iterations*
_output_shapes
:
l
#save_1/RestoreV2_1/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_1	RestoreV2save_1/Constsave_1/RestoreV2_1/tensor_names#save_1/RestoreV2_1/shape_and_slices*
dtypes
2	*
_output_shapes
:
≤
save_1/Assign_1AssignRMSprop/iterationssave_1/RestoreV2_1*
validate_shape(*%
_class
loc:@RMSprop/iterations*
use_locking(*
T0	*
_output_shapes
: 
r
save_1/RestoreV2_2/tensor_namesConst*
dtype0*
valueBB
RMSprop/lr*
_output_shapes
:
l
#save_1/RestoreV2_2/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_2	RestoreV2save_1/Constsave_1/RestoreV2_2/tensor_names#save_1/RestoreV2_2/shape_and_slices*
dtypes
2*
_output_shapes
:
Ґ
save_1/Assign_2Assign
RMSprop/lrsave_1/RestoreV2_2*
validate_shape(*
_class
loc:@RMSprop/lr*
use_locking(*
T0*
_output_shapes
: 
s
save_1/RestoreV2_3/tensor_namesConst*
dtype0* 
valueBBRMSprop/rho*
_output_shapes
:
l
#save_1/RestoreV2_3/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_3	RestoreV2save_1/Constsave_1/RestoreV2_3/tensor_names#save_1/RestoreV2_3/shape_and_slices*
dtypes
2*
_output_shapes
:
§
save_1/Assign_3AssignRMSprop/rhosave_1/RestoreV2_3*
validate_shape(*
_class
loc:@RMSprop/rho*
use_locking(*
T0*
_output_shapes
: 
p
save_1/RestoreV2_4/tensor_namesConst*
dtype0*
valueBBVariable*
_output_shapes
:
l
#save_1/RestoreV2_4/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_4	RestoreV2save_1/Constsave_1/RestoreV2_4/tensor_names#save_1/RestoreV2_4/shape_and_slices*
dtypes
2*
_output_shapes
:
І
save_1/Assign_4AssignVariablesave_1/RestoreV2_4*
validate_shape(*
_class
loc:@Variable*
use_locking(*
T0*
_output_shapes
:	Р

r
save_1/RestoreV2_5/tensor_namesConst*
dtype0*
valueBB
Variable_1*
_output_shapes
:
l
#save_1/RestoreV2_5/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_5	RestoreV2save_1/Constsave_1/RestoreV2_5/tensor_names#save_1/RestoreV2_5/shape_and_slices*
dtypes
2*
_output_shapes
:
¶
save_1/Assign_5Assign
Variable_1save_1/RestoreV2_5*
validate_shape(*
_class
loc:@Variable_1*
use_locking(*
T0*
_output_shapes
:

t
save_1/RestoreV2_6/tensor_namesConst*
dtype0*!
valueBBdense_1/bias*
_output_shapes
:
l
#save_1/RestoreV2_6/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_6	RestoreV2save_1/Constsave_1/RestoreV2_6/tensor_names#save_1/RestoreV2_6/shape_and_slices*
dtypes
2*
_output_shapes
:
Ђ
save_1/Assign_6Assigndense_1/biassave_1/RestoreV2_6*
validate_shape(*
_class
loc:@dense_1/bias*
use_locking(*
T0*
_output_shapes	
:А
v
save_1/RestoreV2_7/tensor_namesConst*
dtype0*#
valueBBdense_1/kernel*
_output_shapes
:
l
#save_1/RestoreV2_7/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_7	RestoreV2save_1/Constsave_1/RestoreV2_7/tensor_names#save_1/RestoreV2_7/shape_and_slices*
dtypes
2*
_output_shapes
:
і
save_1/Assign_7Assigndense_1/kernelsave_1/RestoreV2_7*
validate_shape(*!
_class
loc:@dense_1/kernel*
use_locking(*
T0* 
_output_shapes
:
РА
t
save_1/RestoreV2_8/tensor_namesConst*
dtype0*!
valueBBdense_2/bias*
_output_shapes
:
l
#save_1/RestoreV2_8/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_8	RestoreV2save_1/Constsave_1/RestoreV2_8/tensor_names#save_1/RestoreV2_8/shape_and_slices*
dtypes
2*
_output_shapes
:
Ђ
save_1/Assign_8Assigndense_2/biassave_1/RestoreV2_8*
validate_shape(*
_class
loc:@dense_2/bias*
use_locking(*
T0*
_output_shapes	
:А
v
save_1/RestoreV2_9/tensor_namesConst*
dtype0*#
valueBBdense_2/kernel*
_output_shapes
:
l
#save_1/RestoreV2_9/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
Ю
save_1/RestoreV2_9	RestoreV2save_1/Constsave_1/RestoreV2_9/tensor_names#save_1/RestoreV2_9/shape_and_slices*
dtypes
2*
_output_shapes
:
і
save_1/Assign_9Assigndense_2/kernelsave_1/RestoreV2_9*
validate_shape(*!
_class
loc:@dense_2/kernel*
use_locking(*
T0* 
_output_shapes
:
АА
t
 save_1/RestoreV2_10/tensor_namesConst*
dtype0* 
valueBBoutput/bias*
_output_shapes
:
m
$save_1/RestoreV2_10/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_10	RestoreV2save_1/Const save_1/RestoreV2_10/tensor_names$save_1/RestoreV2_10/shape_and_slices*
dtypes
2*
_output_shapes
:
™
save_1/Assign_10Assignoutput/biassave_1/RestoreV2_10*
validate_shape(*
_class
loc:@output/bias*
use_locking(*
T0*
_output_shapes
:

v
 save_1/RestoreV2_11/tensor_namesConst*
dtype0*"
valueBBoutput/kernel*
_output_shapes
:
m
$save_1/RestoreV2_11/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_11	RestoreV2save_1/Const save_1/RestoreV2_11/tensor_names$save_1/RestoreV2_11/shape_and_slices*
dtypes
2*
_output_shapes
:
≥
save_1/Assign_11Assignoutput/kernelsave_1/RestoreV2_11*
validate_shape(* 
_class
loc:@output/kernel*
use_locking(*
T0*
_output_shapes
:	А

В
 save_1/RestoreV2_12/tensor_namesConst*
dtype0*.
value%B#Btraining/RMSprop/Variable*
_output_shapes
:
m
$save_1/RestoreV2_12/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_12	RestoreV2save_1/Const save_1/RestoreV2_12/tensor_names$save_1/RestoreV2_12/shape_and_slices*
dtypes
2*
_output_shapes
:
ћ
save_1/Assign_12Assigntraining/RMSprop/Variablesave_1/RestoreV2_12*
validate_shape(*,
_class"
 loc:@training/RMSprop/Variable*
use_locking(*
T0* 
_output_shapes
:
РА
Д
 save_1/RestoreV2_13/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_1*
_output_shapes
:
m
$save_1/RestoreV2_13/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_13	RestoreV2save_1/Const save_1/RestoreV2_13/tensor_names$save_1/RestoreV2_13/shape_and_slices*
dtypes
2*
_output_shapes
:
Ћ
save_1/Assign_13Assigntraining/RMSprop/Variable_1save_1/RestoreV2_13*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_1*
use_locking(*
T0*
_output_shapes	
:А
Д
 save_1/RestoreV2_14/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_2*
_output_shapes
:
m
$save_1/RestoreV2_14/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_14	RestoreV2save_1/Const save_1/RestoreV2_14/tensor_names$save_1/RestoreV2_14/shape_and_slices*
dtypes
2*
_output_shapes
:
–
save_1/Assign_14Assigntraining/RMSprop/Variable_2save_1/RestoreV2_14*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_2*
use_locking(*
T0* 
_output_shapes
:
АА
Д
 save_1/RestoreV2_15/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_3*
_output_shapes
:
m
$save_1/RestoreV2_15/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_15	RestoreV2save_1/Const save_1/RestoreV2_15/tensor_names$save_1/RestoreV2_15/shape_and_slices*
dtypes
2*
_output_shapes
:
Ћ
save_1/Assign_15Assigntraining/RMSprop/Variable_3save_1/RestoreV2_15*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_3*
use_locking(*
T0*
_output_shapes	
:А
Д
 save_1/RestoreV2_16/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_4*
_output_shapes
:
m
$save_1/RestoreV2_16/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_16	RestoreV2save_1/Const save_1/RestoreV2_16/tensor_names$save_1/RestoreV2_16/shape_and_slices*
dtypes
2*
_output_shapes
:
ѕ
save_1/Assign_16Assigntraining/RMSprop/Variable_4save_1/RestoreV2_16*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_4*
use_locking(*
T0*
_output_shapes
:	А

Д
 save_1/RestoreV2_17/tensor_namesConst*
dtype0*0
value'B%Btraining/RMSprop/Variable_5*
_output_shapes
:
m
$save_1/RestoreV2_17/shape_and_slicesConst*
dtype0*
valueB
B *
_output_shapes
:
°
save_1/RestoreV2_17	RestoreV2save_1/Const save_1/RestoreV2_17/tensor_names$save_1/RestoreV2_17/shape_and_slices*
dtypes
2*
_output_shapes
:
 
save_1/Assign_17Assigntraining/RMSprop/Variable_5save_1/RestoreV2_17*
validate_shape(*.
_class$
" loc:@training/RMSprop/Variable_5*
use_locking(*
T0*
_output_shapes
:

ж
save_1/restore_shardNoOp^save_1/Assign^save_1/Assign_1^save_1/Assign_2^save_1/Assign_3^save_1/Assign_4^save_1/Assign_5^save_1/Assign_6^save_1/Assign_7^save_1/Assign_8^save_1/Assign_9^save_1/Assign_10^save_1/Assign_11^save_1/Assign_12^save_1/Assign_13^save_1/Assign_14^save_1/Assign_15^save_1/Assign_16^save_1/Assign_17
1
save_1/restore_allNoOp^save_1/restore_shard"B
save_1/Const:0save_1/Identity:0save_1/restore_all (5 @F8"
train_op

GradientDescent"С
	variablesГА
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
V
output/kernel:0output/kernel/Assignoutput/kernel/read:02output/random_uniform:0
G
output/bias:0output/bias/Assignoutput/bias/read:02output/Const:0
P
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:0
T
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:0
\
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:0
p
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:0
{
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/Const:0
Г
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/Const_1:0
Г
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/Const_2:0
Г
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/Const_3:0
Г
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/Const_4:0
Г
training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/Const_5:0
7

Variable:0Variable/AssignVariable/read:02zeros:0
?
Variable_1:0Variable_1/AssignVariable_1/read:02	zeros_1:0"Ы
trainable_variablesГА
Z
dense_1/kernel:0dense_1/kernel/Assigndense_1/kernel/read:02dense_1/random_uniform:0
K
dense_1/bias:0dense_1/bias/Assigndense_1/bias/read:02dense_1/Const:0
Z
dense_2/kernel:0dense_2/kernel/Assigndense_2/kernel/read:02dense_2/random_uniform:0
K
dense_2/bias:0dense_2/bias/Assigndense_2/bias/read:02dense_2/Const:0
V
output/kernel:0output/kernel/Assignoutput/kernel/read:02output/random_uniform:0
G
output/bias:0output/bias/Assignoutput/bias/read:02output/Const:0
P
RMSprop/lr:0RMSprop/lr/AssignRMSprop/lr/read:02RMSprop/lr/initial_value:0
T
RMSprop/rho:0RMSprop/rho/AssignRMSprop/rho/read:02RMSprop/rho/initial_value:0
\
RMSprop/decay:0RMSprop/decay/AssignRMSprop/decay/read:02RMSprop/decay/initial_value:0
p
RMSprop/iterations:0RMSprop/iterations/AssignRMSprop/iterations/read:02"RMSprop/iterations/initial_value:0
{
training/RMSprop/Variable:0 training/RMSprop/Variable/Assign training/RMSprop/Variable/read:02training/RMSprop/Const:0
Г
training/RMSprop/Variable_1:0"training/RMSprop/Variable_1/Assign"training/RMSprop/Variable_1/read:02training/RMSprop/Const_1:0
Г
training/RMSprop/Variable_2:0"training/RMSprop/Variable_2/Assign"training/RMSprop/Variable_2/read:02training/RMSprop/Const_2:0
Г
training/RMSprop/Variable_3:0"training/RMSprop/Variable_3/Assign"training/RMSprop/Variable_3/read:02training/RMSprop/Const_3:0
Г
training/RMSprop/Variable_4:0"training/RMSprop/Variable_4/Assign"training/RMSprop/Variable_4/read:02training/RMSprop/Const_4:0
Г
training/RMSprop/Variable_5:0"training/RMSprop/Variable_5/Assign"training/RMSprop/Variable_5/read:02training/RMSprop/Const_5:0
7

Variable:0Variable/AssignVariable/read:02zeros:0
?
Variable_1:0Variable_1/AssignVariable_1/read:02	zeros_1:0*М
serving_defaulty
/
images%
Placeholder:0€€€€€€€€€Р*
scores 
	Softmax:0€€€€€€€€€
tensorflow/serving/predict