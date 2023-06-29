//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:09 2023
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
// TEXCOORD                 4   xyz         4     NONE   float
// TEXCOORD                 8   xyzw        5     NONE   float
// SV_POSITION              0   xyzw        6      POS   float
// SV_isFrontFace           0   x           7    FFACE    uint
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
dcl_constantbuffer cb8[8], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_input_ps linear v3.xy
dcl_output o0.xyzw
dcl_temps 2
sample_indexable(texture2d)(float,float,float,float) r0.x, v3.xyxx, t4.xyzw, s1
add r0.y, v3.y, cb0[9].z
mad_sat r0.y, cb0[9].y, |r0.y|, cb0[9].x
add r0.x, -r0.y, r0.x
mad r0.x, cb0[10].x, r0.x, r0.y
mad r0.yz, v3.xxyx, cb0[11].xxyx, cb0[11].zzwz
sample_indexable(texture2d)(float,float,float,float) r0.y, r0.yzyy, t5.yxzw, s2
mul r0.x, r0.y, r0.x
mul r0.x, r0.x, l(4.59479332)
mul r0.xyzw, r0.xxxx, cb0[12].xyzw
mul r0.xyz, r0.xyzx, cb0[13].xxxx
dp3 r1.x, cb8[7].xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
mul r0.w, r0.w, r1.x
mul o0.xyz, r0.wwww, r0.xyzx
mov_sat r0.x, cb0[7].x
mul o0.w, r0.x, r0.w
ret
// Approximately 0 instruction slots used
