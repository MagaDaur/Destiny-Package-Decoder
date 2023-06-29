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
// TEXCOORD                 1   xyz         1     NONE   float   xyz
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float
// TEXCOORD                 4   xyzw        4     NONE   float
// TEXCOORD                 5   xyzw        5     NONE   float
// TEXCOORD                 6   xyzw        6     NONE   float    y w
// TEXCOORD                 7   xyzw        7     NONE   float   xyzw
// TEXCOORD                 8   xyzw        8     NONE   float    y w
// TEXCOORD                 9   xyzw        9     NONE   float
// TEXCOORD                10   xyzw       10     NONE   float
// TEXCOORD                11   xyzw       11     NONE   float
// TEXCOORD                12   xyzw       12     NONE   float     zw
// TEXCOORD                30   xyz        13     NONE   float
// SV_POSITION              0   xyzw       14      POS   float   xy
// SV_isFrontFace           0   x          15    FFACE    uint
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
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t13
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v6.yw
dcl_input_ps linear v7.xyzw
dcl_input_ps linear v8.yw
dcl_input_ps linear v12.zw
dcl_input_ps_siv linear noperspective v14.xy, position
dcl_output o0.xyzw
dcl_temps 5
dp3 r0.x, v1.xyzx, v1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v1.xyzx
dp3 r0.w, v2.xyzx, v2.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v2.xyzx
dp3 r0.x, r1.xyzx, r0.xyzx
mul r0.x, r0.x, r0.x
mad r0.x, r0.x, l(0.800000), l(0.200000)
min r0.x, r0.x, l(1.000000)
mad r0.y, v0.y, v8.y, v8.w
frc r0.y, r0.y
mad r0.y, r0.y, l(-5.000000), l(1.000000)
max r0.y, r0.y, l(0.000000)
add r0.y, r0.y, v12.z
mad r0.x, r0.x, cb0[97].x, r0.y
mul r0.x, r0.x, r0.x
min r0.x, r0.x, l(1.000000)
mad r0.xyz, r0.xxxx, l(11.667000, 11.667000, 11.667000, 0.000000), cb0[101].xyzx
mad r1.xy, v0.xyxx, v7.xyxx, v7.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t0.yzwx, s1
mov_sat r0.w, r0.w
mad r1.xyz, r0.wwww, l(0.968980, 0.968980, 0.968980, 0.000000), cb0[104].xyzx
mad r0.xyz, r0.xyzx, r1.xyzx, l(-2.511886521E-007, -2.511886521E-007, -2.511886521E-007, 0.000000)
mul r0.xyz, r0.xyzx, l(1.00000024, 1.00000024, 1.00000024, 0.000000)
max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mov r1.x, l(1.000000)
mov r1.yz, cb13[1].wwww
mul r0.xyz, r0.xyzx, r1.xyzx
mul r0.xyz, r0.xyzx, cb13[1].wxxw
mul r0.x, r0.x, cb13[1].x
mul r0.yz, r0.yyzy, cb8[7].yyzy
mul r1.x, r0.x, cb8[7].x
dp3 r0.x, -v2.xyzx, -v2.xyzx
sqrt r0.x, r0.x
mul r0.w, r0.x, l(0.015625)
mad_sat r0.x, r0.x, cb0[118].x, cb0[118].y
min r0.w, r0.w, l(1.000000)
sqrt r2.z, r0.w
mul r2.xy, v14.xyxx, cb12[12].zwzz
sample_l_indexable(texture3d)(float,float,float,float) r0.w, r2.xyzx, t21.yzwx, s3, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t20.xyzw, s3, l(0.000000)
add r3.xyzw, r3.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r3.xyzw, r0.wwww, r3.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mul r1.yz, r0.yyzy, r3.wwww
mov r4.x, r3.w
mov r4.yz, l(0,0.404822,0,0)
mad r0.yzw, r1.xxyz, r4.xxyz, r3.xxyz
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r2.xyxx, t11.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t13.xyzw, s2
add r1.xyzw, r1.xyzw, -r2.xyzw
mad r1.xyzw, r0.xxxx, r1.xyzw, r2.xyzw
mul r1.xyz, r1.xyzx, cb8[5].xyzx
mad r1.xyz, r1.wwww, cb8[6].xyzx, r1.xyzx
mad r0.xyz, r1.xyzx, cb13[1].xxxx, r0.yzwy
mad r0.w, v0.y, v6.y, v6.w
add r0.w, r0.w, l(-0.500000)
mad_sat r0.w, |r0.w|, l(-11.111112), l(5.500000)
add r1.x, v0.y, l(-0.500000)
mad_sat r1.x, |r1.x|, l(-3.333333), l(1.500000)
mul r0.w, r0.w, r1.x
mul_sat r0.w, r0.w, v12.w
mul_sat r0.w, r0.w, v0.z
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
ret
// Approximately 0 instruction slots used
