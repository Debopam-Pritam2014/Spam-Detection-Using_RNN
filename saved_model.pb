��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
N
Cast	
x"SrcT	
y"DstT"
SrcTtype"
DstTtype"
Truncatebool( 
8
Const
output"dtype"
valuetensor"
dtypetype
$
DisableCopyOnRead
resource�
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
2	
.
Identity

input"T
output"T"	
Ttype
:
Less
x"T
y"T
z
"
Ttype:
2	
�
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	"
grad_abool( "
grad_bbool( 
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �

NoOp
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
f
Range
start"Tidx
limit"Tidx
delta"Tidx
output"Tidx" 
Tidxtype0:
2
	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
A
SelectV2
	condition

t"T
e"T
output"T"	
Ttype
d
Shape

input"T&
output"out_type��out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
9
VarIsInitializedOp
resource
is_initialized
�
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.17.02v2.17.0-rc1-2-gad6d8cc177d8��
�
;sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *L

debug_name><sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel/*
dtype0*
shape
:  *L
shared_name=;sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel
�
Osequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp;sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel*
_output_shapes

:  *
dtype0
�
$sequential_10/embedding_9/embeddingsVarHandleOp*
_output_shapes
: *5

debug_name'%sequential_10/embedding_9/embeddings/*
dtype0*
shape:	�F *5
shared_name&$sequential_10/embedding_9/embeddings
�
8sequential_10/embedding_9/embeddings/Read/ReadVariableOpReadVariableOp$sequential_10/embedding_9/embeddings*
_output_shapes
:	�F *
dtype0
�
sequential_10/dense_8/biasVarHandleOp*
_output_shapes
: *+

debug_namesequential_10/dense_8/bias/*
dtype0*
shape:*+
shared_namesequential_10/dense_8/bias
�
.sequential_10/dense_8/bias/Read/ReadVariableOpReadVariableOpsequential_10/dense_8/bias*
_output_shapes
:*
dtype0
�
sequential_10/dense_8/kernelVarHandleOp*
_output_shapes
: *-

debug_namesequential_10/dense_8/kernel/*
dtype0*
shape
: *-
shared_namesequential_10/dense_8/kernel
�
0sequential_10/dense_8/kernel/Read/ReadVariableOpReadVariableOpsequential_10/dense_8/kernel*
_output_shapes

: *
dtype0
�
/sequential_10/simple_rnn_8/simple_rnn_cell/biasVarHandleOp*
_output_shapes
: *@

debug_name20sequential_10/simple_rnn_8/simple_rnn_cell/bias/*
dtype0*
shape: *@
shared_name1/sequential_10/simple_rnn_8/simple_rnn_cell/bias
�
Csequential_10/simple_rnn_8/simple_rnn_cell/bias/Read/ReadVariableOpReadVariableOp/sequential_10/simple_rnn_8/simple_rnn_cell/bias*
_output_shapes
: *
dtype0
�
1sequential_10/simple_rnn_8/simple_rnn_cell/kernelVarHandleOp*
_output_shapes
: *B

debug_name42sequential_10/simple_rnn_8/simple_rnn_cell/kernel/*
dtype0*
shape
:  *B
shared_name31sequential_10/simple_rnn_8/simple_rnn_cell/kernel
�
Esequential_10/simple_rnn_8/simple_rnn_cell/kernel/Read/ReadVariableOpReadVariableOp1sequential_10/simple_rnn_8/simple_rnn_cell/kernel*
_output_shapes

:  *
dtype0
�
sequential_10/dense_8/bias_1VarHandleOp*
_output_shapes
: *-

debug_namesequential_10/dense_8/bias_1/*
dtype0*
shape:*-
shared_namesequential_10/dense_8/bias_1
�
0sequential_10/dense_8/bias_1/Read/ReadVariableOpReadVariableOpsequential_10/dense_8/bias_1*
_output_shapes
:*
dtype0
�
#Variable/Initializer/ReadVariableOpReadVariableOpsequential_10/dense_8/bias_1*
_class
loc:@Variable*
_output_shapes
:*
dtype0
�
VariableVarHandleOp*
_class
loc:@Variable*
_output_shapes
: *

debug_name	Variable/*
dtype0*
shape:*
shared_name
Variable
a
)Variable/IsInitialized/VarIsInitializedOpVarIsInitializedOpVariable*
_output_shapes
: 
_
Variable/AssignAssignVariableOpVariable#Variable/Initializer/ReadVariableOp*
dtype0
a
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
:*
dtype0
�
sequential_10/dense_8/kernel_1VarHandleOp*
_output_shapes
: */

debug_name!sequential_10/dense_8/kernel_1/*
dtype0*
shape
: */
shared_name sequential_10/dense_8/kernel_1
�
2sequential_10/dense_8/kernel_1/Read/ReadVariableOpReadVariableOpsequential_10/dense_8/kernel_1*
_output_shapes

: *
dtype0
�
%Variable_1/Initializer/ReadVariableOpReadVariableOpsequential_10/dense_8/kernel_1*
_class
loc:@Variable_1*
_output_shapes

: *
dtype0
�

Variable_1VarHandleOp*
_class
loc:@Variable_1*
_output_shapes
: *

debug_nameVariable_1/*
dtype0*
shape
: *
shared_name
Variable_1
e
+Variable_1/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_1*
_output_shapes
: 
e
Variable_1/AssignAssignVariableOp
Variable_1%Variable_1/Initializer/ReadVariableOp*
dtype0
i
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes

: *
dtype0
�
&seed_generator_13/seed_generator_stateVarHandleOp*
_output_shapes
: *7

debug_name)'seed_generator_13/seed_generator_state/*
dtype0*
shape:*7
shared_name(&seed_generator_13/seed_generator_state
�
:seed_generator_13/seed_generator_state/Read/ReadVariableOpReadVariableOp&seed_generator_13/seed_generator_state*
_output_shapes
:*
dtype0
�
%Variable_2/Initializer/ReadVariableOpReadVariableOp&seed_generator_13/seed_generator_state*
_class
loc:@Variable_2*
_output_shapes
:*
dtype0
�

Variable_2VarHandleOp*
_class
loc:@Variable_2*
_output_shapes
: *

debug_nameVariable_2/*
dtype0*
shape:*
shared_name
Variable_2
e
+Variable_2/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_2*
_output_shapes
: 
e
Variable_2/AssignAssignVariableOp
Variable_2%Variable_2/Initializer/ReadVariableOp*
dtype0
e
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
:*
dtype0
�
&seed_generator_12/seed_generator_stateVarHandleOp*
_output_shapes
: *7

debug_name)'seed_generator_12/seed_generator_state/*
dtype0*
shape:*7
shared_name(&seed_generator_12/seed_generator_state
�
:seed_generator_12/seed_generator_state/Read/ReadVariableOpReadVariableOp&seed_generator_12/seed_generator_state*
_output_shapes
:*
dtype0
�
%Variable_3/Initializer/ReadVariableOpReadVariableOp&seed_generator_12/seed_generator_state*
_class
loc:@Variable_3*
_output_shapes
:*
dtype0
�

Variable_3VarHandleOp*
_class
loc:@Variable_3*
_output_shapes
: *

debug_nameVariable_3/*
dtype0*
shape:*
shared_name
Variable_3
e
+Variable_3/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_3*
_output_shapes
: 
e
Variable_3/AssignAssignVariableOp
Variable_3%Variable_3/Initializer/ReadVariableOp*
dtype0
e
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
:*
dtype0
�
1sequential_10/simple_rnn_8/simple_rnn_cell/bias_1VarHandleOp*
_output_shapes
: *B

debug_name42sequential_10/simple_rnn_8/simple_rnn_cell/bias_1/*
dtype0*
shape: *B
shared_name31sequential_10/simple_rnn_8/simple_rnn_cell/bias_1
�
Esequential_10/simple_rnn_8/simple_rnn_cell/bias_1/Read/ReadVariableOpReadVariableOp1sequential_10/simple_rnn_8/simple_rnn_cell/bias_1*
_output_shapes
: *
dtype0
�
%Variable_4/Initializer/ReadVariableOpReadVariableOp1sequential_10/simple_rnn_8/simple_rnn_cell/bias_1*
_class
loc:@Variable_4*
_output_shapes
: *
dtype0
�

Variable_4VarHandleOp*
_class
loc:@Variable_4*
_output_shapes
: *

debug_nameVariable_4/*
dtype0*
shape: *
shared_name
Variable_4
e
+Variable_4/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_4*
_output_shapes
: 
e
Variable_4/AssignAssignVariableOp
Variable_4%Variable_4/Initializer/ReadVariableOp*
dtype0
e
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
: *
dtype0
�
=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1VarHandleOp*
_output_shapes
: *N

debug_name@>sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1/*
dtype0*
shape
:  *N
shared_name?=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1
�
Qsequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1/Read/ReadVariableOpReadVariableOp=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1*
_output_shapes

:  *
dtype0
�
%Variable_5/Initializer/ReadVariableOpReadVariableOp=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1*
_class
loc:@Variable_5*
_output_shapes

:  *
dtype0
�

Variable_5VarHandleOp*
_class
loc:@Variable_5*
_output_shapes
: *

debug_nameVariable_5/*
dtype0*
shape
:  *
shared_name
Variable_5
e
+Variable_5/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_5*
_output_shapes
: 
e
Variable_5/AssignAssignVariableOp
Variable_5%Variable_5/Initializer/ReadVariableOp*
dtype0
i
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes

:  *
dtype0
�
3sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1VarHandleOp*
_output_shapes
: *D

debug_name64sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1/*
dtype0*
shape
:  *D
shared_name53sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1
�
Gsequential_10/simple_rnn_8/simple_rnn_cell/kernel_1/Read/ReadVariableOpReadVariableOp3sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1*
_output_shapes

:  *
dtype0
�
%Variable_6/Initializer/ReadVariableOpReadVariableOp3sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1*
_class
loc:@Variable_6*
_output_shapes

:  *
dtype0
�

Variable_6VarHandleOp*
_class
loc:@Variable_6*
_output_shapes
: *

debug_nameVariable_6/*
dtype0*
shape
:  *
shared_name
Variable_6
e
+Variable_6/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_6*
_output_shapes
: 
e
Variable_6/AssignAssignVariableOp
Variable_6%Variable_6/Initializer/ReadVariableOp*
dtype0
i
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes

:  *
dtype0
�
&seed_generator_11/seed_generator_stateVarHandleOp*
_output_shapes
: *7

debug_name)'seed_generator_11/seed_generator_state/*
dtype0*
shape:*7
shared_name(&seed_generator_11/seed_generator_state
�
:seed_generator_11/seed_generator_state/Read/ReadVariableOpReadVariableOp&seed_generator_11/seed_generator_state*
_output_shapes
:*
dtype0
�
%Variable_7/Initializer/ReadVariableOpReadVariableOp&seed_generator_11/seed_generator_state*
_class
loc:@Variable_7*
_output_shapes
:*
dtype0
�

Variable_7VarHandleOp*
_class
loc:@Variable_7*
_output_shapes
: *

debug_nameVariable_7/*
dtype0*
shape:*
shared_name
Variable_7
e
+Variable_7/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_7*
_output_shapes
: 
e
Variable_7/AssignAssignVariableOp
Variable_7%Variable_7/Initializer/ReadVariableOp*
dtype0
e
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
:*
dtype0
�
&sequential_10/embedding_9/embeddings_1VarHandleOp*
_output_shapes
: *7

debug_name)'sequential_10/embedding_9/embeddings_1/*
dtype0*
shape:	�F *7
shared_name(&sequential_10/embedding_9/embeddings_1
�
:sequential_10/embedding_9/embeddings_1/Read/ReadVariableOpReadVariableOp&sequential_10/embedding_9/embeddings_1*
_output_shapes
:	�F *
dtype0
�
%Variable_8/Initializer/ReadVariableOpReadVariableOp&sequential_10/embedding_9/embeddings_1*
_class
loc:@Variable_8*
_output_shapes
:	�F *
dtype0
�

Variable_8VarHandleOp*
_class
loc:@Variable_8*
_output_shapes
: *

debug_nameVariable_8/*
dtype0*
shape:	�F *
shared_name
Variable_8
e
+Variable_8/IsInitialized/VarIsInitializedOpVarIsInitializedOp
Variable_8*
_output_shapes
: 
e
Variable_8/AssignAssignVariableOp
Variable_8%Variable_8/Initializer/ReadVariableOp*
dtype0
j
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
:	�F *
dtype0
x
serve_keras_tensor_27Placeholder*'
_output_shapes
:���������2*
dtype0*
shape:���������2
�
StatefulPartitionedCallStatefulPartitionedCallserve_keras_tensor_27&sequential_10/embedding_9/embeddings_13sequential_10/simple_rnn_8/simple_rnn_cell/kernel_11sequential_10/simple_rnn_8/simple_rnn_cell/bias_1=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1sequential_10/dense_8/kernel_1sequential_10/dense_8/bias_1*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_signature_wrapper___call___87855
�
serving_default_keras_tensor_27Placeholder*'
_output_shapes
:���������2*
dtype0*
shape:���������2
�
StatefulPartitionedCall_1StatefulPartitionedCallserving_default_keras_tensor_27&sequential_10/embedding_9/embeddings_13sequential_10/simple_rnn_8/simple_rnn_cell/kernel_11sequential_10/simple_rnn_8/simple_rnn_cell/bias_1=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1sequential_10/dense_8/kernel_1sequential_10/dense_8/bias_1*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *5
f0R.
,__inference_signature_wrapper___call___87872

NoOpNoOp
�
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�
value�B� B�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures*
C
0
	1

2
3
4
5
6
7
8*
.
0

1
2
3
4
5*

	0
1
2*
.
0
1
2
3
4
5*
* 

trace_0* 
"
	serve
serving_default* 
JD
VARIABLE_VALUE
Variable_8&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_7&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_6&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_5&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_4&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_3&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_2&variables/6/.ATTRIBUTES/VARIABLE_VALUE*
JD
VARIABLE_VALUE
Variable_1&variables/7/.ATTRIBUTES/VARIABLE_VALUE*
HB
VARIABLE_VALUEVariable&variables/8/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUE3sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE1sequential_10/simple_rnn_8/simple_rnn_cell/bias_1+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUEsequential_10/dense_8/kernel_1+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEsequential_10/dense_8/bias_1+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
ke
VARIABLE_VALUE&sequential_10/embedding_9/embeddings_1+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUE=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filename
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable3sequential_10/simple_rnn_8/simple_rnn_cell/kernel_11sequential_10/simple_rnn_8/simple_rnn_cell/bias_1sequential_10/dense_8/kernel_1sequential_10/dense_8/bias_1&sequential_10/embedding_9/embeddings_1=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1Const*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *'
f"R 
__inference__traced_save_88022
�
StatefulPartitionedCall_3StatefulPartitionedCallsaver_filename
Variable_8
Variable_7
Variable_6
Variable_5
Variable_4
Variable_3
Variable_2
Variable_1Variable3sequential_10/simple_rnn_8/simple_rnn_cell/kernel_11sequential_10/simple_rnn_8/simple_rnn_cell/bias_1sequential_10/dense_8/kernel_1sequential_10/dense_8/bias_1&sequential_10/embedding_9/embeddings_1=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__traced_restore_88076��
��
�
__inference___call___87837
keras_tensor_27N
;sequential_10_1_embedding_9_1_shape_readvariableop_resource:	�F _
Msequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_cast_readvariableop_resource:  Z
Lsequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_add_readvariableop_resource: a
Osequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_cast_1_readvariableop_resource:  H
6sequential_10_1_dense_8_1_cast_readvariableop_resource: C
5sequential_10_1_dense_8_1_add_readvariableop_resource:
identity��,sequential_10_1/dense_8_1/Add/ReadVariableOp�-sequential_10_1/dense_8_1/Cast/ReadVariableOp�5sequential_10_1/embedding_9_1/GatherV2/ReadVariableOp�Dsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast/ReadVariableOp�Fsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast_1/ReadVariableOp�Csequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add/ReadVariableOp�$sequential_10_1/simple_rnn_8_1/while|
"sequential_10_1/embedding_9_1/CastCastkeras_tensor_27*

DstT0*

SrcT0*'
_output_shapes
:���������2f
$sequential_10_1/embedding_9_1/Less/yConst*
_output_shapes
: *
dtype0*
value	B : �
"sequential_10_1/embedding_9_1/LessLess&sequential_10_1/embedding_9_1/Cast:y:0-sequential_10_1/embedding_9_1/Less/y:output:0*
T0*'
_output_shapes
:���������2�
2sequential_10_1/embedding_9_1/Shape/ReadVariableOpReadVariableOp;sequential_10_1_embedding_9_1_shape_readvariableop_resource*
_output_shapes
:	�F *
dtype0t
#sequential_10_1/embedding_9_1/ShapeConst*
_output_shapes
:*
dtype0*
valueB"4#      {
1sequential_10_1/embedding_9_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: }
3sequential_10_1/embedding_9_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:}
3sequential_10_1/embedding_9_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
+sequential_10_1/embedding_9_1/strided_sliceStridedSlice,sequential_10_1/embedding_9_1/Shape:output:0:sequential_10_1/embedding_9_1/strided_slice/stack:output:0<sequential_10_1/embedding_9_1/strided_slice/stack_1:output:0<sequential_10_1/embedding_9_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
!sequential_10_1/embedding_9_1/addAddV2&sequential_10_1/embedding_9_1/Cast:y:04sequential_10_1/embedding_9_1/strided_slice:output:0*
T0*'
_output_shapes
:���������2�
&sequential_10_1/embedding_9_1/SelectV2SelectV2&sequential_10_1/embedding_9_1/Less:z:0%sequential_10_1/embedding_9_1/add:z:0&sequential_10_1/embedding_9_1/Cast:y:0*
T0*'
_output_shapes
:���������2�
5sequential_10_1/embedding_9_1/GatherV2/ReadVariableOpReadVariableOp;sequential_10_1_embedding_9_1_shape_readvariableop_resource*
_output_shapes
:	�F *
dtype0m
+sequential_10_1/embedding_9_1/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
&sequential_10_1/embedding_9_1/GatherV2GatherV2=sequential_10_1/embedding_9_1/GatherV2/ReadVariableOp:value:0/sequential_10_1/embedding_9_1/SelectV2:output:04sequential_10_1/embedding_9_1/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*+
_output_shapes
:���������2 �
$sequential_10_1/simple_rnn_8_1/ShapeShape/sequential_10_1/embedding_9_1/GatherV2:output:0*
T0*
_output_shapes
::��|
2sequential_10_1/simple_rnn_8_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4sequential_10_1/simple_rnn_8_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4sequential_10_1/simple_rnn_8_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
,sequential_10_1/simple_rnn_8_1/strided_sliceStridedSlice-sequential_10_1/simple_rnn_8_1/Shape:output:0;sequential_10_1/simple_rnn_8_1/strided_slice/stack:output:0=sequential_10_1/simple_rnn_8_1/strided_slice/stack_1:output:0=sequential_10_1/simple_rnn_8_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masko
-sequential_10_1/simple_rnn_8_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B : �
+sequential_10_1/simple_rnn_8_1/zeros/packedPack5sequential_10_1/simple_rnn_8_1/strided_slice:output:06sequential_10_1/simple_rnn_8_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:o
*sequential_10_1/simple_rnn_8_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
$sequential_10_1/simple_rnn_8_1/zerosFill4sequential_10_1/simple_rnn_8_1/zeros/packed:output:03sequential_10_1/simple_rnn_8_1/zeros/Const:output:0*
T0*'
_output_shapes
:��������� �
4sequential_10_1/simple_rnn_8_1/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"            �
6sequential_10_1/simple_rnn_8_1/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           �
6sequential_10_1/simple_rnn_8_1/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         �
.sequential_10_1/simple_rnn_8_1/strided_slice_1StridedSlice/sequential_10_1/embedding_9_1/GatherV2:output:0=sequential_10_1/simple_rnn_8_1/strided_slice_1/stack:output:0?sequential_10_1/simple_rnn_8_1/strided_slice_1/stack_1:output:0?sequential_10_1/simple_rnn_8_1/strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *

begin_mask*
end_mask*
shrink_axis_mask�
-sequential_10_1/simple_rnn_8_1/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
(sequential_10_1/simple_rnn_8_1/transpose	Transpose/sequential_10_1/embedding_9_1/GatherV2:output:06sequential_10_1/simple_rnn_8_1/transpose/perm:output:0*
T0*+
_output_shapes
:2��������� �
:sequential_10_1/simple_rnn_8_1/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
���������{
9sequential_10_1/simple_rnn_8_1/TensorArrayV2/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :2�
,sequential_10_1/simple_rnn_8_1/TensorArrayV2TensorListReserveCsequential_10_1/simple_rnn_8_1/TensorArrayV2/element_shape:output:0Bsequential_10_1/simple_rnn_8_1/TensorArrayV2/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Tsequential_10_1/simple_rnn_8_1/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Fsequential_10_1/simple_rnn_8_1/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor,sequential_10_1/simple_rnn_8_1/transpose:y:0]sequential_10_1/simple_rnn_8_1/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���~
4sequential_10_1/simple_rnn_8_1/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
6sequential_10_1/simple_rnn_8_1/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
6sequential_10_1/simple_rnn_8_1/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_10_1/simple_rnn_8_1/strided_slice_2StridedSlice,sequential_10_1/simple_rnn_8_1/transpose:y:0=sequential_10_1/simple_rnn_8_1/strided_slice_2/stack:output:0?sequential_10_1/simple_rnn_8_1/strided_slice_2/stack_1:output:0?sequential_10_1/simple_rnn_8_1/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
Dsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast/ReadVariableOpReadVariableOpMsequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_cast_readvariableop_resource*
_output_shapes

:  *
dtype0�
7sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/MatMulMatMul7sequential_10_1/simple_rnn_8_1/strided_slice_2:output:0Lsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
Csequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add/ReadVariableOpReadVariableOpLsequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_add_readvariableop_resource*
_output_shapes
: *
dtype0�
4sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/addAddV2Asequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/MatMul:product:0Ksequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
Fsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast_1/ReadVariableOpReadVariableOpOsequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_cast_1_readvariableop_resource*
_output_shapes

:  *
dtype0�
9sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/MatMul_1MatMul-sequential_10_1/simple_rnn_8_1/zeros:output:0Nsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
6sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add_1AddV28sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add:z:0Csequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
5sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/TanhTanh:sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
<sequential_10_1/simple_rnn_8_1/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    }
;sequential_10_1/simple_rnn_8_1/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
.sequential_10_1/simple_rnn_8_1/TensorArrayV2_1TensorListReserveEsequential_10_1/simple_rnn_8_1/TensorArrayV2_1/element_shape:output:0Dsequential_10_1/simple_rnn_8_1/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���e
#sequential_10_1/simple_rnn_8_1/timeConst*
_output_shapes
: *
dtype0*
value	B : k
)sequential_10_1/simple_rnn_8_1/Rank/ConstConst*
_output_shapes
: *
dtype0*
value	B :2e
#sequential_10_1/simple_rnn_8_1/RankConst*
_output_shapes
: *
dtype0*
value	B : l
*sequential_10_1/simple_rnn_8_1/range/startConst*
_output_shapes
: *
dtype0*
value	B : l
*sequential_10_1/simple_rnn_8_1/range/deltaConst*
_output_shapes
: *
dtype0*
value	B :�
$sequential_10_1/simple_rnn_8_1/rangeRange3sequential_10_1/simple_rnn_8_1/range/start:output:0,sequential_10_1/simple_rnn_8_1/Rank:output:03sequential_10_1/simple_rnn_8_1/range/delta:output:0*
_output_shapes
: j
(sequential_10_1/simple_rnn_8_1/Max/inputConst*
_output_shapes
: *
dtype0*
value	B :2�
"sequential_10_1/simple_rnn_8_1/MaxMax1sequential_10_1/simple_rnn_8_1/Max/input:output:0-sequential_10_1/simple_rnn_8_1/range:output:0*
T0*
_output_shapes
: s
1sequential_10_1/simple_rnn_8_1/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
$sequential_10_1/simple_rnn_8_1/whileWhile:sequential_10_1/simple_rnn_8_1/while/loop_counter:output:0+sequential_10_1/simple_rnn_8_1/Max:output:0,sequential_10_1/simple_rnn_8_1/time:output:07sequential_10_1/simple_rnn_8_1/TensorArrayV2_1:handle:0-sequential_10_1/simple_rnn_8_1/zeros:output:0Vsequential_10_1/simple_rnn_8_1/TensorArrayUnstack/TensorListFromTensor:output_handle:0Msequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_cast_readvariableop_resourceLsequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_add_readvariableop_resourceOsequential_10_1_simple_rnn_8_1_simple_rnn_cell_1_cast_1_readvariableop_resource*
T
2	*
_lower_using_switch_merge(*
_num_original_outputs	*7
_output_shapes%
#: : : : :��������� : : : : *%
_read_only_resource_inputs
*;
body3R1
/sequential_10_1_simple_rnn_8_1_while_body_87764*;
cond3R1
/sequential_10_1_simple_rnn_8_1_while_cond_87763*6
output_shapes%
#: : : : :��������� : : : : *
parallel_iterations �
Osequential_10_1/simple_rnn_8_1/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Asequential_10_1/simple_rnn_8_1/TensorArrayV2Stack/TensorListStackTensorListStack-sequential_10_1/simple_rnn_8_1/while:output:3Xsequential_10_1/simple_rnn_8_1/TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:��������� *
element_dtype0*
num_elements�
4sequential_10_1/simple_rnn_8_1/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
6sequential_10_1/simple_rnn_8_1/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
6sequential_10_1/simple_rnn_8_1/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
.sequential_10_1/simple_rnn_8_1/strided_slice_3StridedSliceJsequential_10_1/simple_rnn_8_1/TensorArrayV2Stack/TensorListStack:tensor:0=sequential_10_1/simple_rnn_8_1/strided_slice_3/stack:output:0?sequential_10_1/simple_rnn_8_1/strided_slice_3/stack_1:output:0?sequential_10_1/simple_rnn_8_1/strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:��������� *
shrink_axis_mask�
/sequential_10_1/simple_rnn_8_1/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
*sequential_10_1/simple_rnn_8_1/transpose_1	TransposeJsequential_10_1/simple_rnn_8_1/TensorArrayV2Stack/TensorListStack:tensor:08sequential_10_1/simple_rnn_8_1/transpose_1/perm:output:0*
T0*+
_output_shapes
:��������� �
-sequential_10_1/dense_8_1/Cast/ReadVariableOpReadVariableOp6sequential_10_1_dense_8_1_cast_readvariableop_resource*
_output_shapes

: *
dtype0�
 sequential_10_1/dense_8_1/MatMulMatMul7sequential_10_1/simple_rnn_8_1/strided_slice_3:output:05sequential_10_1/dense_8_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
,sequential_10_1/dense_8_1/Add/ReadVariableOpReadVariableOp5sequential_10_1_dense_8_1_add_readvariableop_resource*
_output_shapes
:*
dtype0�
sequential_10_1/dense_8_1/AddAddV2*sequential_10_1/dense_8_1/MatMul:product:04sequential_10_1/dense_8_1/Add/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
!sequential_10_1/dense_8_1/SigmoidSigmoid!sequential_10_1/dense_8_1/Add:z:0*
T0*'
_output_shapes
:���������t
IdentityIdentity%sequential_10_1/dense_8_1/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp-^sequential_10_1/dense_8_1/Add/ReadVariableOp.^sequential_10_1/dense_8_1/Cast/ReadVariableOp6^sequential_10_1/embedding_9_1/GatherV2/ReadVariableOpE^sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast/ReadVariableOpG^sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast_1/ReadVariableOpD^sequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add/ReadVariableOp%^sequential_10_1/simple_rnn_8_1/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������2: : : : : : 2\
,sequential_10_1/dense_8_1/Add/ReadVariableOp,sequential_10_1/dense_8_1/Add/ReadVariableOp2^
-sequential_10_1/dense_8_1/Cast/ReadVariableOp-sequential_10_1/dense_8_1/Cast/ReadVariableOp2n
5sequential_10_1/embedding_9_1/GatherV2/ReadVariableOp5sequential_10_1/embedding_9_1/GatherV2/ReadVariableOp2�
Dsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast/ReadVariableOpDsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast/ReadVariableOp2�
Fsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast_1/ReadVariableOpFsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/Cast_1/ReadVariableOp2�
Csequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add/ReadVariableOpCsequential_10_1/simple_rnn_8_1/simple_rnn_cell_1/add/ReadVariableOp2L
$sequential_10_1/simple_rnn_8_1/while$sequential_10_1/simple_rnn_8_1/while:X T
'
_output_shapes
:���������2
)
_user_specified_namekeras_tensor_27:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�x
�
__inference__traced_save_88022
file_prefix4
!read_disablecopyonread_variable_8:	�F 1
#read_1_disablecopyonread_variable_7:5
#read_2_disablecopyonread_variable_6:  5
#read_3_disablecopyonread_variable_5:  1
#read_4_disablecopyonread_variable_4: 1
#read_5_disablecopyonread_variable_3:1
#read_6_disablecopyonread_variable_2:5
#read_7_disablecopyonread_variable_1: /
!read_8_disablecopyonread_variable:^
Lread_9_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_kernel_1:  Y
Kread_10_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_bias_1: J
8read_11_disablecopyonread_sequential_10_dense_8_kernel_1: D
6read_12_disablecopyonread_sequential_10_dense_8_bias_1:S
@read_13_disablecopyonread_sequential_10_embedding_9_embeddings_1:	�F i
Wread_14_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_recurrent_kernel_1:  
savev2_const
identity_31��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: d
Read/DisableCopyOnReadDisableCopyOnRead!read_disablecopyonread_variable_8*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp!read_disablecopyonread_variable_8^Read/DisableCopyOnRead*
_output_shapes
:	�F *
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	�F b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�F h
Read_1/DisableCopyOnReadDisableCopyOnRead#read_1_disablecopyonread_variable_7*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp#read_1_disablecopyonread_variable_7^Read_1/DisableCopyOnRead*
_output_shapes
:*
dtype0Z

Identity_2IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_2/DisableCopyOnReadDisableCopyOnRead#read_2_disablecopyonread_variable_6*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOp#read_2_disablecopyonread_variable_6^Read_2/DisableCopyOnRead*
_output_shapes

:  *
dtype0^

Identity_4IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes

:  c

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes

:  h
Read_3/DisableCopyOnReadDisableCopyOnRead#read_3_disablecopyonread_variable_5*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOp#read_3_disablecopyonread_variable_5^Read_3/DisableCopyOnRead*
_output_shapes

:  *
dtype0^

Identity_6IdentityRead_3/ReadVariableOp:value:0*
T0*
_output_shapes

:  c

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes

:  h
Read_4/DisableCopyOnReadDisableCopyOnRead#read_4_disablecopyonread_variable_4*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOp#read_4_disablecopyonread_variable_4^Read_4/DisableCopyOnRead*
_output_shapes
: *
dtype0Z

Identity_8IdentityRead_4/ReadVariableOp:value:0*
T0*
_output_shapes
: _

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
: h
Read_5/DisableCopyOnReadDisableCopyOnRead#read_5_disablecopyonread_variable_3*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOp#read_5_disablecopyonread_variable_3^Read_5/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_10IdentityRead_5/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_6/DisableCopyOnReadDisableCopyOnRead#read_6_disablecopyonread_variable_2*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOp#read_6_disablecopyonread_variable_2^Read_6/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_12IdentityRead_6/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes
:h
Read_7/DisableCopyOnReadDisableCopyOnRead#read_7_disablecopyonread_variable_1*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOp#read_7_disablecopyonread_variable_1^Read_7/DisableCopyOnRead*
_output_shapes

: *
dtype0_
Identity_14IdentityRead_7/ReadVariableOp:value:0*
T0*
_output_shapes

: e
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes

: f
Read_8/DisableCopyOnReadDisableCopyOnRead!read_8_disablecopyonread_variable*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp!read_8_disablecopyonread_variable^Read_8/DisableCopyOnRead*
_output_shapes
:*
dtype0[
Identity_16IdentityRead_8/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_9/DisableCopyOnReadDisableCopyOnReadLread_9_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_kernel_1*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOpLread_9_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_kernel_1^Read_9/DisableCopyOnRead*
_output_shapes

:  *
dtype0_
Identity_18IdentityRead_9/ReadVariableOp:value:0*
T0*
_output_shapes

:  e
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes

:  �
Read_10/DisableCopyOnReadDisableCopyOnReadKread_10_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_bias_1*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpKread_10_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_bias_1^Read_10/DisableCopyOnRead*
_output_shapes
: *
dtype0\
Identity_20IdentityRead_10/ReadVariableOp:value:0*
T0*
_output_shapes
: a
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
: ~
Read_11/DisableCopyOnReadDisableCopyOnRead8read_11_disablecopyonread_sequential_10_dense_8_kernel_1*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOp8read_11_disablecopyonread_sequential_10_dense_8_kernel_1^Read_11/DisableCopyOnRead*
_output_shapes

: *
dtype0`
Identity_22IdentityRead_11/ReadVariableOp:value:0*
T0*
_output_shapes

: e
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes

: |
Read_12/DisableCopyOnReadDisableCopyOnRead6read_12_disablecopyonread_sequential_10_dense_8_bias_1*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp6read_12_disablecopyonread_sequential_10_dense_8_bias_1^Read_12/DisableCopyOnRead*
_output_shapes
:*
dtype0\
Identity_24IdentityRead_12/ReadVariableOp:value:0*
T0*
_output_shapes
:a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_13/DisableCopyOnReadDisableCopyOnRead@read_13_disablecopyonread_sequential_10_embedding_9_embeddings_1*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp@read_13_disablecopyonread_sequential_10_embedding_9_embeddings_1^Read_13/DisableCopyOnRead*
_output_shapes
:	�F *
dtype0a
Identity_26IdentityRead_13/ReadVariableOp:value:0*
T0*
_output_shapes
:	�F f
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	�F �
Read_14/DisableCopyOnReadDisableCopyOnReadWread_14_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_recurrent_kernel_1*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOpWread_14_disablecopyonread_sequential_10_simple_rnn_8_simple_rnn_cell_recurrent_kernel_1^Read_14/DisableCopyOnRead*
_output_shapes

:  *
dtype0`
Identity_28IdentityRead_14/ReadVariableOp:value:0*
T0*
_output_shapes

:  e
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes

:  L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtypes
2�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_30Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_31IdentityIdentity_30:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_31Identity_31:output:0*(
_construction_contextkEagerRuntime*5
_input_shapes$
": : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:(	$
"
_user_specified_name
Variable:S
O
M
_user_specified_name53sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1:QM
K
_user_specified_name31sequential_10/simple_rnn_8/simple_rnn_cell/bias_1:>:
8
_user_specified_name sequential_10/dense_8/kernel_1:<8
6
_user_specified_namesequential_10/dense_8/bias_1:FB
@
_user_specified_name(&sequential_10/embedding_9/embeddings_1:]Y
W
_user_specified_name?=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1:=9

_output_shapes
: 

_user_specified_nameConst
�J
�

!__inference__traced_restore_88076
file_prefix.
assignvariableop_variable_8:	�F +
assignvariableop_1_variable_7:/
assignvariableop_2_variable_6:  /
assignvariableop_3_variable_5:  +
assignvariableop_4_variable_4: +
assignvariableop_5_variable_3:+
assignvariableop_6_variable_2:/
assignvariableop_7_variable_1: )
assignvariableop_8_variable:X
Fassignvariableop_9_sequential_10_simple_rnn_8_simple_rnn_cell_kernel_1:  S
Eassignvariableop_10_sequential_10_simple_rnn_8_simple_rnn_cell_bias_1: D
2assignvariableop_11_sequential_10_dense_8_kernel_1: >
0assignvariableop_12_sequential_10_dense_8_bias_1:M
:assignvariableop_13_sequential_10_embedding_9_embeddings_1:	�F c
Qassignvariableop_14_sequential_10_simple_rnn_8_simple_rnn_cell_recurrent_kernel_1:  
identity_16��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_2�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB&variables/6/.ATTRIBUTES/VARIABLE_VALUEB&variables/7/.ATTRIBUTES/VARIABLE_VALUEB&variables/8/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/0/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/1/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/2/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/3/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/4/.ATTRIBUTES/VARIABLE_VALUEB+_all_variables/5/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*3
value*B(B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*T
_output_shapesB
@::::::::::::::::*
dtypes
2[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOpassignvariableop_variable_8Identity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_7Identity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_6Identity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_5Identity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_4Identity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_3Identity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_2Identity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_1Identity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_variableIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOpFassignvariableop_9_sequential_10_simple_rnn_8_simple_rnn_cell_kernel_1Identity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpEassignvariableop_10_sequential_10_simple_rnn_8_simple_rnn_cell_bias_1Identity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp2assignvariableop_11_sequential_10_dense_8_kernel_1Identity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp0assignvariableop_12_sequential_10_dense_8_bias_1Identity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp:assignvariableop_13_sequential_10_embedding_9_embeddings_1Identity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpQassignvariableop_14_sequential_10_simple_rnn_8_simple_rnn_cell_recurrent_kernel_1Identity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_15Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_16IdentityIdentity_15:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_2^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_16Identity_16:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142(
AssignVariableOp_2AssignVariableOp_22(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:*&
$
_user_specified_name
Variable_8:*&
$
_user_specified_name
Variable_7:*&
$
_user_specified_name
Variable_6:*&
$
_user_specified_name
Variable_5:*&
$
_user_specified_name
Variable_4:*&
$
_user_specified_name
Variable_3:*&
$
_user_specified_name
Variable_2:*&
$
_user_specified_name
Variable_1:(	$
"
_user_specified_name
Variable:S
O
M
_user_specified_name53sequential_10/simple_rnn_8/simple_rnn_cell/kernel_1:QM
K
_user_specified_name31sequential_10/simple_rnn_8/simple_rnn_cell/bias_1:>:
8
_user_specified_name sequential_10/dense_8/kernel_1:<8
6
_user_specified_namesequential_10/dense_8/bias_1:FB
@
_user_specified_name(&sequential_10/embedding_9/embeddings_1:]Y
W
_user_specified_name?=sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel_1
�I
�
/sequential_10_1_simple_rnn_8_1_while_body_87764Z
Vsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_loop_counterK
Gsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_max4
0sequential_10_1_simple_rnn_8_1_while_placeholder6
2sequential_10_1_simple_rnn_8_1_while_placeholder_16
2sequential_10_1_simple_rnn_8_1_while_placeholder_2�
�sequential_10_1_simple_rnn_8_1_while_tensorarrayv2read_tensorlistgetitem_sequential_10_1_simple_rnn_8_1_tensorarrayunstack_tensorlistfromtensor_0g
Usequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_readvariableop_resource_0:  b
Tsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_add_readvariableop_resource_0: i
Wsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource_0:  1
-sequential_10_1_simple_rnn_8_1_while_identity3
/sequential_10_1_simple_rnn_8_1_while_identity_13
/sequential_10_1_simple_rnn_8_1_while_identity_23
/sequential_10_1_simple_rnn_8_1_while_identity_33
/sequential_10_1_simple_rnn_8_1_while_identity_4�
�sequential_10_1_simple_rnn_8_1_while_tensorarrayv2read_tensorlistgetitem_sequential_10_1_simple_rnn_8_1_tensorarrayunstack_tensorlistfromtensore
Ssequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_readvariableop_resource:  `
Rsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_add_readvariableop_resource: g
Usequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource:  ��Jsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast/ReadVariableOp�Lsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOp�Isequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add/ReadVariableOp�
Vsequential_10_1/simple_rnn_8_1/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����    �
Hsequential_10_1/simple_rnn_8_1/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�sequential_10_1_simple_rnn_8_1_while_tensorarrayv2read_tensorlistgetitem_sequential_10_1_simple_rnn_8_1_tensorarrayunstack_tensorlistfromtensor_00sequential_10_1_simple_rnn_8_1_while_placeholder_sequential_10_1/simple_rnn_8_1/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:��������� *
element_dtype0�
Jsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast/ReadVariableOpReadVariableOpUsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_readvariableop_resource_0*
_output_shapes

:  *
dtype0�
=sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/MatMulMatMulOsequential_10_1/simple_rnn_8_1/while/TensorArrayV2Read/TensorListGetItem:item:0Rsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
Isequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add/ReadVariableOpReadVariableOpTsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_add_readvariableop_resource_0*
_output_shapes
: *
dtype0�
:sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/addAddV2Gsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/MatMul:product:0Qsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
Lsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOpReadVariableOpWsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource_0*
_output_shapes

:  *
dtype0�
?sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/MatMul_1MatMul2sequential_10_1_simple_rnn_8_1_while_placeholder_2Tsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:��������� �
<sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add_1AddV2>sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add:z:0Isequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/MatMul_1:product:0*
T0*'
_output_shapes
:��������� �
;sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/TanhTanh@sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add_1:z:0*
T0*'
_output_shapes
:��������� �
Osequential_10_1/simple_rnn_8_1/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
Isequential_10_1/simple_rnn_8_1/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2sequential_10_1_simple_rnn_8_1_while_placeholder_1Xsequential_10_1/simple_rnn_8_1/while/TensorArrayV2Write/TensorListSetItem/index:output:0?sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Tanh:y:0*
_output_shapes
: *
element_dtype0:���l
*sequential_10_1/simple_rnn_8_1/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
(sequential_10_1/simple_rnn_8_1/while/addAddV20sequential_10_1_simple_rnn_8_1_while_placeholder3sequential_10_1/simple_rnn_8_1/while/add/y:output:0*
T0*
_output_shapes
: n
,sequential_10_1/simple_rnn_8_1/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
*sequential_10_1/simple_rnn_8_1/while/add_1AddV2Vsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_loop_counter5sequential_10_1/simple_rnn_8_1/while/add_1/y:output:0*
T0*
_output_shapes
: �
-sequential_10_1/simple_rnn_8_1/while/IdentityIdentity.sequential_10_1/simple_rnn_8_1/while/add_1:z:0*^sequential_10_1/simple_rnn_8_1/while/NoOp*
T0*
_output_shapes
: �
/sequential_10_1/simple_rnn_8_1/while/Identity_1IdentityGsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_max*^sequential_10_1/simple_rnn_8_1/while/NoOp*
T0*
_output_shapes
: �
/sequential_10_1/simple_rnn_8_1/while/Identity_2Identity,sequential_10_1/simple_rnn_8_1/while/add:z:0*^sequential_10_1/simple_rnn_8_1/while/NoOp*
T0*
_output_shapes
: �
/sequential_10_1/simple_rnn_8_1/while/Identity_3IdentityYsequential_10_1/simple_rnn_8_1/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^sequential_10_1/simple_rnn_8_1/while/NoOp*
T0*
_output_shapes
: �
/sequential_10_1/simple_rnn_8_1/while/Identity_4Identity?sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Tanh:y:0*^sequential_10_1/simple_rnn_8_1/while/NoOp*
T0*'
_output_shapes
:��������� �
)sequential_10_1/simple_rnn_8_1/while/NoOpNoOpK^sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast/ReadVariableOpM^sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOpJ^sequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add/ReadVariableOp*
_output_shapes
 "g
-sequential_10_1_simple_rnn_8_1_while_identity6sequential_10_1/simple_rnn_8_1/while/Identity:output:0"k
/sequential_10_1_simple_rnn_8_1_while_identity_18sequential_10_1/simple_rnn_8_1/while/Identity_1:output:0"k
/sequential_10_1_simple_rnn_8_1_while_identity_28sequential_10_1/simple_rnn_8_1/while/Identity_2:output:0"k
/sequential_10_1_simple_rnn_8_1_while_identity_38sequential_10_1/simple_rnn_8_1/while/Identity_3:output:0"k
/sequential_10_1_simple_rnn_8_1_while_identity_48sequential_10_1/simple_rnn_8_1/while/Identity_4:output:0"�
Rsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_add_readvariableop_resourceTsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_add_readvariableop_resource_0"�
Usequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_1_readvariableop_resourceWsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_1_readvariableop_resource_0"�
Ssequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_readvariableop_resourceUsequential_10_1_simple_rnn_8_1_while_simple_rnn_cell_1_cast_readvariableop_resource_0"�
�sequential_10_1_simple_rnn_8_1_while_tensorarrayv2read_tensorlistgetitem_sequential_10_1_simple_rnn_8_1_tensorarrayunstack_tensorlistfromtensor�sequential_10_1_simple_rnn_8_1_while_tensorarrayv2read_tensorlistgetitem_sequential_10_1_simple_rnn_8_1_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#: : : : :��������� : : : : 2�
Jsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast/ReadVariableOpJsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast/ReadVariableOp2�
Lsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOpLsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/Cast_1/ReadVariableOp2�
Isequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add/ReadVariableOpIsequential_10_1/simple_rnn_8_1/while/simple_rnn_cell_1/add/ReadVariableOp:i e

_output_shapes
: 
K
_user_specified_name31sequential_10_1/simple_rnn_8_1/while/loop_counter:ZV

_output_shapes
: 
<
_user_specified_name$"sequential_10_1/simple_rnn_8_1/Max:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :~z

_output_shapes
: 
`
_user_specified_nameHFsequential_10_1/simple_rnn_8_1/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
/sequential_10_1_simple_rnn_8_1_while_cond_87763Z
Vsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_loop_counterK
Gsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_max4
0sequential_10_1_simple_rnn_8_1_while_placeholder6
2sequential_10_1_simple_rnn_8_1_while_placeholder_16
2sequential_10_1_simple_rnn_8_1_while_placeholder_2q
msequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_cond_87763___redundant_placeholder0q
msequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_cond_87763___redundant_placeholder1q
msequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_cond_87763___redundant_placeholder2q
msequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_cond_87763___redundant_placeholder31
-sequential_10_1_simple_rnn_8_1_while_identity
m
+sequential_10_1/simple_rnn_8_1/while/Less/yConst*
_output_shapes
: *
dtype0*
value	B :2�
)sequential_10_1/simple_rnn_8_1/while/LessLess0sequential_10_1_simple_rnn_8_1_while_placeholder4sequential_10_1/simple_rnn_8_1/while/Less/y:output:0*
T0*
_output_shapes
: �
+sequential_10_1/simple_rnn_8_1/while/Less_1LessVsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_while_loop_counterGsequential_10_1_simple_rnn_8_1_while_sequential_10_1_simple_rnn_8_1_max*
T0*
_output_shapes
: �
/sequential_10_1/simple_rnn_8_1/while/LogicalAnd
LogicalAnd/sequential_10_1/simple_rnn_8_1/while/Less_1:z:0-sequential_10_1/simple_rnn_8_1/while/Less:z:0*
_output_shapes
: �
-sequential_10_1/simple_rnn_8_1/while/IdentityIdentity3sequential_10_1/simple_rnn_8_1/while/LogicalAnd:z:0*
T0
*
_output_shapes
: "g
-sequential_10_1_simple_rnn_8_1_while_identity6sequential_10_1/simple_rnn_8_1/while/Identity:output:0*(
_construction_contextkEagerRuntime*>
_input_shapes-
+: : : : :��������� :::::i e

_output_shapes
: 
K
_user_specified_name31sequential_10_1/simple_rnn_8_1/while/loop_counter:ZV

_output_shapes
: 
<
_user_specified_name$"sequential_10_1/simple_rnn_8_1/Max:

_output_shapes
: :

_output_shapes
: :-)
'
_output_shapes
:��������� :

_output_shapes
:
�

�
,__inference_signature_wrapper___call___87855
keras_tensor_27
unknown:	�F 
	unknown_0:  
	unknown_1: 
	unknown_2:  
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallkeras_tensor_27unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *#
fR
__inference___call___87837o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������2
)
_user_specified_namekeras_tensor_27:%!

_user_specified_name87841:%!

_user_specified_name87843:%!

_user_specified_name87845:%!

_user_specified_name87847:%!

_user_specified_name87849:%!

_user_specified_name87851
�

�
,__inference_signature_wrapper___call___87872
keras_tensor_27
unknown:	�F 
	unknown_0:  
	unknown_1: 
	unknown_2:  
	unknown_3: 
	unknown_4:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallkeras_tensor_27unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *#
fR
__inference___call___87837o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*2
_input_shapes!
:���������2: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������2
)
_user_specified_namekeras_tensor_27:%!

_user_specified_name87858:%!

_user_specified_name87860:%!

_user_specified_name87862:%!

_user_specified_name87864:%!

_user_specified_name87866:%!

_user_specified_name87868"�L
saver_filename:0StatefulPartitionedCall_2:0StatefulPartitionedCall_38"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serve�
A
keras_tensor_27.
serve_keras_tensor_27:0���������2<
output_00
StatefulPartitionedCall:0���������tensorflow/serving/predict*�
serving_default�
K
keras_tensor_278
!serving_default_keras_tensor_27:0���������2>
output_02
StatefulPartitionedCall_1:0���������tensorflow/serving/predict:�
�
	variables
trainable_variables
non_trainable_variables
_all_variables
_misc_assets
	serve

signatures"
_generic_user_object
_
0
	1

2
3
4
5
6
7
8"
trackable_list_wrapper
J
0

1
2
3
4
5"
trackable_list_wrapper
5
	0
1
2"
trackable_list_wrapper
J
0
1
2
3
4
5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
trace_02�
__inference___call___87837�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *.�+
)�&
keras_tensor_27���������2ztrace_0
7
	serve
serving_default"
signature_map
7:5	�F 2$sequential_10/embedding_9/embeddings
2:02&seed_generator_11/seed_generator_state
C:A  21sequential_10/simple_rnn_8/simple_rnn_cell/kernel
M:K  2;sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel
=:; 2/sequential_10/simple_rnn_8/simple_rnn_cell/bias
2:02&seed_generator_12/seed_generator_state
2:02&seed_generator_13/seed_generator_state
.:, 2sequential_10/dense_8/kernel
(:&2sequential_10/dense_8/bias
C:A  21sequential_10/simple_rnn_8/simple_rnn_cell/kernel
=:; 2/sequential_10/simple_rnn_8/simple_rnn_cell/bias
.:, 2sequential_10/dense_8/kernel
(:&2sequential_10/dense_8/bias
7:5	�F 2$sequential_10/embedding_9/embeddings
M:K  2;sequential_10/simple_rnn_8/simple_rnn_cell/recurrent_kernel
�B�
__inference___call___87837keras_tensor_27"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
,__inference_signature_wrapper___call___87855keras_tensor_27"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jkeras_tensor_27
kwonlydefaults
 
annotations� *
 
�B�
,__inference_signature_wrapper___call___87872keras_tensor_27"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jkeras_tensor_27
kwonlydefaults
 
annotations� *
 �
__inference___call___87837e
8�5
.�+
)�&
keras_tensor_27���������2
� "!�
unknown����������
,__inference_signature_wrapper___call___87855�
K�H
� 
A�>
<
keras_tensor_27)�&
keras_tensor_27���������2"3�0
.
output_0"�
output_0����������
,__inference_signature_wrapper___call___87872�
K�H
� 
A�>
<
keras_tensor_27)�&
keras_tensor_27���������2"3�0
.
output_0"�
output_0���������