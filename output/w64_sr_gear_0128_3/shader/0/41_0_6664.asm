//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:56 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float
// TEXCOORD                 2   xyz         2     NONE   float
// TEXCOORD                 3   xyzw        3     NONE   float   xy
// TEXCOORD                 4   xyz         4     NONE   float
// SV_POSITION              0   xyzw        5      POS   float
// SV_isFrontFace           0   x           6    FFACE    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
// SV_TARGET                1   xyzw        1   TARGET   float   xyzw
// SV_TARGET                2   xyzw        2   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[1], immediateIndexed
dcl_constantbuffer cb6[4], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 3
sample_indexable(texture2d)(float,float,float,float) r0.xyz, v3.xyxx, t5.xyzw, s1
mul_sat r1.xyz, r0.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r2.xyz, r0.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad r1.xyz, cb6[3].xyzx, r1.xyzx, r2.xyzx
add r1.xyz, -r0.xyzx, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r0.w, v3.xyxx, t4.yzwx, s1
mad o0.xyz, r0.wwww, r1.xyzx, r0.xyzx
mov o0.w, l(0)
dp3 r0.x, v0.xyzx, v0.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v0.xyzx
mov_sat r0.w, cb0[0].x
mad r0.w, r0.w, l(0.125000), l(0.375000)
mad_sat o1.xyz, r0.xyzx, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)
mov o1.w, l(0)
mov o2.xyz, l(0,0.500000,0,0)
mov o2.w, v0.w
ret
// Approximately 0 instruction slots used
