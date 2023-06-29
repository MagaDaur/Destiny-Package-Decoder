//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:06 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyz
// TEXCOORD                 1   xyz         1     NONE   float
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// SV_POSITION              0   xyzw        3      POS   float   xy
// SV_isFrontFace           0   x           4    FFACE    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[119], immediateIndexed
dcl_constantbuffer cb13[2], immediateIndexed
dcl_constantbuffer cb12[13], immediateIndexed
dcl_constantbuffer cb8[8], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t13
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_input_ps linear v0.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps_siv linear noperspective v3.xy, position
dcl_output o0.xyzw
dcl_temps 4
add r0.xy, v0.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
add r0.z, -|r0.y|, |r0.x|
add r0.w, |r0.y|, |r0.x|
div r0.z, r0.z, r0.w
add r0.z, r0.z, l(-1.000000)
lt r1.xy, l(0.000000, 0.000000, 0.000000, 0.000000), r0.xyxx
lt r1.zw, r0.xxxy, l(0.000000, 0.000000, 0.000000, 0.000000)
iadd r1.xy, -r1.xyxx, r1.zwzz
itof r1.xy, r1.xyxx
mad r0.z, r0.z, r1.y, l(2.000000)
mul r0.z, r0.z, r1.x
mul r0.z, r0.z, l(0.125000)
frc r0.z, r0.z
dp2 r1.y, |r0.xyxx|, |r0.xyxx|
dp2 r0.x, r0.xyxx, r0.xyxx
sqrt r0.x, r0.x
mad_sat r0.x, r0.x, l(-5.000000), l(3.000000)
log r0.x, r0.x
mul r0.x, r0.x, cb0[110].x
exp r0.x, r0.x
mad r0.y, r1.y, l(-0.800000), r0.z
add r1.x, r0.y, l(0.400000)
mad r0.yz, r1.xxyx, cb0[9].xxyx, cb0[9].zzwz
mad r1.xy, r1.xyxx, cb0[8].xyxx, cb0[8].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t0.yzwx, s3
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.yzyy, t0.yxzw, s3
mul r0.y, r0.w, r0.y
mul r0.x, r0.x, r0.y
mad_sat r0.x, r0.x, l(18.379173), l(-0.150000)
add r0.yzw, r0.xxxx, cb0[96].xxyz
mul r0.x, r0.x, cb0[100].x
mul r0.yzw, r0.yyzw, cb0[97].xxyz
mul r1.xy, v0.xyxx, l(20.000000, 20.000000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t1.yxzw, s3
mad_sat r1.x, r1.x, l(4.000000), l(-0.600000)
mad r1.xyz, r1.xxxx, l(0.020725, 0.020725, 0.020725, 0.000000), cb0[118].xyzx
mul r1.xyz, r1.xyzx, cb0[98].xyzx
lt r1.w, l(1.000000), v0.x
movc r0.yzw, r1.wwww, r1.xxyz, r0.yyzw
movc r0.x, r1.w, cb0[101].x, r0.x
add r0.yzw, r0.yyzw, l(0.000000, -2.511886521E-007, -2.511886521E-007, -2.511886521E-007)
mul r0.yzw, r0.yyzw, l(0.000000, 1.00000024, 1.00000024, 1.00000024)
max r0.yzw, r0.yyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r0.yzw, r0.yyzw, cb13[1].wwww
mul r0.yzw, r0.yyzw, cb13[1].xxxx
mul r0.yzw, r0.yyzw, cb8[7].xxyz
dp3 r1.x, -v2.xyzx, -v2.xyzx
sqrt r1.x, r1.x
mul r1.y, r1.x, l(0.015625)
mad_sat r1.x, r1.x, cb0[104].x, cb0[104].y
min r1.y, r1.y, l(1.000000)
sqrt r2.z, r1.y
mul r2.xy, v3.xyxx, cb12[12].zwzz
sample_l_indexable(texture3d)(float,float,float,float) r1.y, r2.xyzx, t21.yxzw, s2, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t20.xyzw, s2, l(0.000000)
add r3.xyzw, r3.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r3.xyzw, r1.yyyy, r3.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mul r0.yzw, r0.yyzw, r3.wwww
mad r0.yzw, r0.yyzw, l(0.000000, 6.000000, 6.000000, 6.000000), r3.xxyz
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t11.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t13.xyzw, s1
add r3.xyzw, -r2.xyzw, r3.xyzw
mad r1.xyzw, r1.xxxx, r3.xyzw, r2.xyzw
mul r1.xyz, r1.xyzx, cb8[5].xyzx
mad r1.xyz, r1.wwww, cb8[6].xyzx, r1.xyzx
mad r0.yzw, r1.xxyz, cb13[1].xxxx, r0.yyzw
add r1.x, v0.y, cb0[11].z
mad_sat r1.x, cb0[11].y, |r1.x|, cb0[11].x
mul r0.x, r0.x, r1.x
mul_sat r0.x, r0.x, cb0[15].y
mul_sat r0.x, r0.x, v0.z
mul o0.xyz, r0.xxxx, r0.yzwy
mov o0.w, r0.x
ret
// Approximately 0 instruction slots used
