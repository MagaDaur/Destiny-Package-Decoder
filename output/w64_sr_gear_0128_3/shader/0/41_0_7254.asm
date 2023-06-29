//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:53 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyz
// TEXCOORD                 1   xyz         1     NONE   float
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyz
// TEXCOORD                 6   xyzw        6     NONE   float
// TEXCOORD                 7   xyzw        7     NONE   float
// TEXCOORD                 8   xyzw        8     NONE   float    yz
// TEXCOORD                 9   xy          9     NONE   float   xy
// SV_POSITION              0   xyzw       10      POS   float   xy
// SV_isFrontFace           0   x          11    FFACE    uint
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
dcl_constantbuffer cb0[111], immediateIndexed
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
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyzw
dcl_input_ps linear v5.xyz
dcl_input_ps linear v8.yz
dcl_input_ps linear v9.xy
dcl_input_ps_siv linear noperspective v10.xy, position
dcl_output o0.xyzw
dcl_temps 3
max r0.x, v8.z, l(0.001000)
log r0.x, r0.x
mul r0.x, r0.x, l(2.200000)
exp r0.x, r0.x
add r0.x, -r0.x, l(1.000000)
max r0.y, r0.x, l(0.000010)
div r0.x, r0.x, r0.y
max r0.x, r0.x, l(0.000000)
mul r0.xyz, r0.xxxx, v5.xyzx
mul r0.xyz, r0.xyzx, v9.yyyy
mul r0.xyz, r0.xyzx, cb13[1].wwww
mul r0.xyz, r0.xyzx, cb13[1].xxxx
mul r0.xyz, r0.xyzx, cb8[7].xyzx
dp3 r0.w, -v2.xyzx, -v2.xyzx
sqrt r0.w, r0.w
mul r1.x, r0.w, l(0.015625)
mad_sat r0.w, r0.w, cb0[110].x, cb0[110].y
min r1.x, r1.x, l(1.000000)
sqrt r1.z, r1.x
mul r1.xy, v10.xyxx, cb12[12].zwzz
sample_l_indexable(texture3d)(float,float,float,float) r1.z, r1.xyzx, t21.yzxw, s2, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t20.xyzw, s2, l(0.000000)
add r2.xyzw, r2.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r2.xyzw, r1.zzzz, r2.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mad r0.xyz, r0.xyzx, r2.wwww, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t11.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t13.xyzw, s1
add r2.xyzw, -r1.xyzw, r2.xyzw
mad r1.xyzw, r0.wwww, r2.xyzw, r1.xyzw
mul r1.xyz, r1.xyzx, cb8[5].xyzx
mad r1.xyz, r1.wwww, cb8[6].xyzx, r1.xyzx
mad r0.xyz, r1.xyzx, cb13[1].xxxx, r0.xyzx
mad r1.xy, v0.xyxx, v4.xyxx, v4.zwzz
sample_indexable(texture2d)(float,float,float,float) r1.xy, r1.xyxx, t1.xyzw, s3
mad r1.xy, r1.xyxx, v8.yyyy, v0.xyxx
mad r1.xy, v8.yyyy, l(-0.500000, -0.500000, 0.000000, 0.000000), r1.xyxx
mad r1.xy, r1.xyxx, v3.xyxx, v3.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r1.xyxx, t0.yzwx, s3
log r0.w, r0.w
mul r0.w, r0.w, l(2.200000)
exp r0.w, r0.w
sample_indexable(texture2d)(float,float,float,float) r1.x, v0.xyxx, t2.xyzw, s3
mul r0.w, r0.w, r1.x
mad_sat r0.w, r0.w, v9.x, cb0[15].x
mul_sat r0.w, r0.w, v0.z
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
ret
// Approximately 0 instruction slots used
