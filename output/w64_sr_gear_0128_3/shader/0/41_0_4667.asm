//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:00 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float
// TEXCOORD                 1   xyzw        1     NONE   float
// TEXCOORD                 2   xyz         2     NONE   float
// TEXCOORD                 3   xyzw        3     NONE   float   xy
// TEXCOORD                 4   xyz         4     NONE   float   xyz
// SV_POSITION              0   xyzw        5      POS   float   xy
// SV_isFrontFace           0   x           6    FFACE    uint
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
dcl_constantbuffer cb0[14], immediateIndexed
dcl_constantbuffer cb13[2], immediateIndexed
dcl_constantbuffer cb12[15], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_input_ps linear v3.xy
dcl_input_ps linear v4.xyz
dcl_input_ps_siv linear noperspective v5.xy, position
dcl_output o0.xyzw
dcl_temps 4
mul r0.x, l(0.750000), cb0[8].x
max r0.x, r0.x, l(0.000000)
add r0.yzw, v4.xxyz, -cb12[14].xxyz
dp3 r0.y, r0.yzwy, r0.yzwy
sqrt r0.y, r0.y
add r0.x, -r0.x, r0.y
mul_sat r0.x, r0.x, l(0.000020)
sqrt r1.x, r0.x
div r0.x, r0.w, r0.y
mul r0.y, r0.y, l(0.015625)
min r0.y, r0.y, l(1.000000)
sqrt r2.z, r0.y
mad r1.y, r0.x, l(0.500000), l(0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r0.xyz, r1.xyxx, t15.xyzw, s2, l(0.000000)
dp3 r0.x, r0.xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
mul r1.xyzw, cb0[11].xxxx, cb0[12].xyzw
mad r1.xyzw, cb0[9].xyzw, cb0[10].xyzw, r1.xyzw
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, v3.xyxx, t4.xyzw, s3
mul r1.xyzw, r1.xyzw, r3.xyzw
mul r0.x, r0.x, r1.w
mul r0.yzw, r1.xxyz, cb0[13].xxxx
mul r0.yzw, r0.yyzw, cb13[1].wwww
mul r0.yzw, r0.yyzw, cb13[1].xxxx
mul r2.xy, v5.xyxx, cb12[12].zwzz
sample_l_indexable(texture3d)(float,float,float,float) r1.x, r2.xyzx, t21.xyzw, s1, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r1.y, r2.xyxx, t20.xwyz, s1, l(0.000000)
add r1.y, r1.y, l(-1.000000)
mad r1.x, r1.x, r1.y, l(1.000000)
mul r0.x, r0.x, r1.x
mul o0.xyz, r0.xxxx, r0.yzwy
mov_sat r0.y, cb0[3].x
mul o0.w, r0.y, r0.x
ret
// Approximately 0 instruction slots used
