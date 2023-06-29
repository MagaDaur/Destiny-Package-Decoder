//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:54 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyz
// TEXCOORD                 1   xyz         1     NONE   float
// TEXCOORD                11      w        1     NONE   float      w
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyz
// TEXCOORD                 6   xyzw        6     NONE   float   xyz
// TEXCOORD                 7   xyzw        7     NONE   float   xyz
// TEXCOORD                 8   xyzw        8     NONE   float     zw
// TEXCOORD                 9   xyzw        9     NONE   float      w
// TEXCOORD                10   xyzw       10     NONE   float    y w
// SV_POSITION              0   xyzw       11      POS   float   xy
// SV_isFrontFace           0   x          12    FFACE    uint
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
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t13
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xyz
dcl_input_ps linear v4.xyzw
dcl_input_ps linear v5.xyz
dcl_input_ps linear v6.xyz
dcl_input_ps linear v7.xyz
dcl_input_ps linear v8.zw
dcl_input_ps linear v9.w
dcl_input_ps linear v10.yw
dcl_input_ps_siv linear noperspective v11.xy, position
dcl_output o0.xyzw
dcl_temps 5
mad r0.xy, v0.xyxx, v4.xyxx, v4.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.xy, r0.xyxx, t0.xyzw, s1
add r0.xyz, r0.yxyy, l(-0.500000, -0.500000, -0.500000, 0.000000)
mad r0.xyz, r0.xyzx, v10.yyyy, v0.yxyy
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.yzyy, t1.yxzw, s1
add r0.x, r0.x, v5.z
mad_sat r0.x, v5.y, |r0.x|, v5.x
mul r0.x, r0.x, r0.x
mul r0.y, r0.y, r0.y
mad_sat r0.y, r0.y, v8.z, v8.w
mad r0.yzw, v6.xxyz, r0.yyyy, v7.xxyz
add r0.yzw, r0.yyzw, l(0.000000, -2.511886521E-007, -2.511886521E-007, -2.511886521E-007)
mul r0.yzw, r0.yyzw, l(0.000000, 1.00000024, 1.00000024, 1.00000024)
max r0.yzw, r0.yyzw, l(0.000000, 0.000000, 0.000000, 0.000000)
mov r1.x, l(1.000000)
mov r1.yz, v1.wwww
mul r0.yzw, r0.yyzw, r1.xxyz
mov r1.x, v1.w
mov r1.yz, cb13[1].wwww
mul r0.yzw, r0.yyzw, r1.xxyz
mul r0.yzw, r0.yyzw, cb13[1].wwxx
mul r0.y, r0.y, cb13[1].x
mul r0.zw, r0.zzzw, cb8[7].yyyz
mul r1.x, r0.y, cb8[7].x
dp3 r0.y, -v2.xyzx, -v2.xyzx
sqrt r0.y, r0.y
mul r1.w, r0.y, l(0.015625)
mad_sat r0.y, r0.y, cb0[118].x, cb0[118].y
min r1.w, r1.w, l(1.000000)
sqrt r2.z, r1.w
mul r2.xy, v11.xyxx, cb12[12].zwzz
sample_l_indexable(texture3d)(float,float,float,float) r1.w, r2.xyzx, t21.yzwx, s3, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t20.xyzw, s3, l(0.000000)
add r3.xyzw, r3.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r3.xyzw, r1.wwww, r3.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mul r1.yz, r0.zzwz, r3.wwww
mov r4.x, r3.w
mov r4.yz, l(0,0.404822,0,0)
mad r1.xyz, r1.xyzx, r4.xyzx, r3.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t11.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t13.xyzw, s2
add r3.xyzw, -r2.xyzw, r3.xyzw
mad r2.xyzw, r0.yyyy, r3.xyzw, r2.xyzw
mul r0.yzw, r2.xxyz, cb8[5].xxyz
mad r0.yzw, r2.wwww, cb8[6].xxyz, r0.yyzw
mad r0.yzw, r0.yyzw, cb13[1].xxxx, r1.xxyz
mad r1.xy, v0.xyxx, l(1.000000, 13.000000, 0.000000, 0.000000), l(0.000000, -6.000000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.x, r1.xyxx, t2.xyzw, s1
add r1.x, r1.x, l(-0.500000)
mad r1.x, r1.x, cb0[103].x, v0.x
mul r1.x, r1.x, l(25.000000)
frc r1.x, r1.x
add r1.x, r1.x, l(-0.500000)
mad r1.x, |r1.x|, l(-0.500000), l(1.000000)
mad_sat r1.x, r1.x, r1.x, v9.w
mul r0.x, r0.x, r1.x
mul_sat r0.x, r0.x, v10.w
mul_sat r0.x, r0.x, v0.z
mul o0.xyz, r0.xxxx, r0.yzwy
mov o0.w, r0.x
ret
// Approximately 0 instruction slots used
