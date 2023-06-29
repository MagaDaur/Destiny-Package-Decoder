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
// TEXCOORD                 1   xyz         1     NONE   float   xyz
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
dcl_constantbuffer cb0[16], immediateIndexed
dcl_constantbuffer cb13[2], immediateIndexed
dcl_constantbuffer cb12[13], immediateIndexed
dcl_constantbuffer cb8[8], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps_siv linear noperspective v3.xy, position
dcl_output o0.xyzw
dcl_temps 2
dp3 r0.x, v1.xyzx, v1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v1.xyzx
dp3 r0.w, v2.xyzx, v2.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v2.xyzx
dp3 r0.x, r1.xyzx, r0.xyzx
mul r0.x, r0.x, r0.x
min r0.x, r0.x, l(1.000000)
add r0.yz, v0.yyyy, l(0.000000, -1.200000, -0.500000, 0.000000)
mad r0.yz, |r0.zzyz|, l(0.000000, -6.666667, -0.833333, 0.000000), l(0.000000, 3.000000, 0.875000, 0.000000)
max r0.z, r0.z, l(0.000000)
mov_sat r0.y, r0.y
mul r0.y, r0.y, r0.z
mul r0.x, r0.x, r0.y
mul r0.x, r0.x, r0.x
mad r0.yz, v0.xxyx, cb0[9].xxyx, cb0[9].zzwz
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.yzyy, t0.yxzw, s1
mad r0.zw, v0.xxxy, cb0[8].xxxy, cb0[8].zzzw
sample_indexable(texture2d)(float,float,float,float) r0.z, r0.zwzz, t0.yzxw, s1
mul r0.y, r0.z, r0.y
mul_sat r0.y, r0.y, l(4.59479332)
mad r0.x, r0.x, r0.y, l(-2.511886521E-007)
mul r0.x, r0.x, l(1.00000024)
max r0.x, r0.x, l(0.000000)
mul r0.xyz, r0.xxxx, cb0[12].xyzx
mul r0.xyz, r0.xyzx, cb0[15].xxxx
mul r0.xyz, r0.xyzx, cb13[1].wwww
mul r0.xyz, r0.xyzx, cb13[1].xxxx
mul r0.xyz, r0.xyzx, cb8[7].xyzx
dp3 r0.w, -v2.xyzx, -v2.xyzx
sqrt r0.w, r0.w
mul r0.w, r0.w, l(0.015625)
min r0.w, r0.w, l(1.000000)
sqrt r1.z, r0.w
mul r1.xy, v3.xyxx, cb12[12].zwzz
sample_l_indexable(texture3d)(float,float,float,float) r0.w, r1.xyzx, t21.yzwx, s2, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t20.wxyz, s2, l(0.000000)
add r1.x, r1.x, l(-1.000000)
mad r0.w, r0.w, r1.x, l(1.000000)
mov_sat r1.x, cb0[14].w
mul_sat r1.x, r1.x, v0.z
mul r0.w, r0.w, r1.x
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, l(0)
ret
// Approximately 0 instruction slots used
