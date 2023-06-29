//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:12 2023
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
dcl_constantbuffer cb0[9], immediateIndexed
dcl_constantbuffer cb13[2], immediateIndexed
dcl_constantbuffer cb12[13], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_input_ps linear v3.xy
dcl_input_ps linear v4.xyz
dcl_input_ps_siv linear noperspective v5.xy, position
dcl_output o0.xyzw
dcl_temps 4
mul r0.xyz, cb0[7].xyzx, cb0[8].xxxx
mul r0.w, l(0.750000), cb0[6].x
max r0.w, r0.w, l(0.000000)
add r1.xyz, v4.xyzx, -cb12[7].xyzx
dp3 r1.w, r1.xyzx, r1.xyzx
sqrt r2.x, r1.w
rsq r1.w, r1.w
add r0.w, -r0.w, r2.x
mul_sat r0.w, r0.w, l(0.000020)
sqrt r3.x, r0.w
div r0.w, r1.z, r2.x
mul r2.x, r2.x, l(0.015625)
min r2.x, r2.x, l(1.000000)
sqrt r2.z, r2.x
mad r3.y, r0.w, l(0.500000), l(0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r3.xyxx, t15.xyzw, s3, l(0.000000)
mul r0.xyz, r0.xyzx, r3.xyzx
mul r3.xy, v5.xyxx, cb12[12].zwzz
mul r2.xy, r3.xyxx, l(4.000000, 4.000000, 0.000000, 0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r0.w, r2.xyzx, t21.yzwx, s1, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r2.xyxx, t20.xyzw, s1, l(0.000000)
add r2.xyzw, r2.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r2.xyzw, r0.wwww, r2.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mad r0.xyz, r0.xyzx, r2.wwww, r2.xyzx
mad r2.w, r1.z, r1.w, l(1.000000)
mul r2.xy, r1.wwww, r1.xyxx
dp3 r0.w, r2.xywx, r2.xywx
rsq r0.w, r0.w
mul r1.xy, r0.wwww, r2.xyxx
mad r1.xy, r1.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t4.xyzw, s2
mul r0.w, cb0[4].x, cb13[1].x
mad r0.w, -r0.w, r3.w, r0.w
mad r0.xyz, r1.xyzx, r0.wwww, r0.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v3.xyxx, t5.yzwx, s4
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
ret
// Approximately 0 instruction slots used
