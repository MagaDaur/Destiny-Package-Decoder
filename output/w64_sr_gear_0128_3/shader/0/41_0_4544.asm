//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:01 2023
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
// TEXCOORD                 4   xyz         4     NONE   float   xyz
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
dcl_constantbuffer cb0[52], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v3.xy
dcl_input_ps linear v4.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 4
mad r0.xy, v3.xyxx, cb0[11].xyxx, cb0[11].zwzz
sample_indexable(texture2d)(float,float,float,float) r0.xyz, r0.xyxx, t5.xyzw, s1
mul r0.w, cb0[9].x, cb0[10].x
mul r0.xyz, r0.xyzx, r0.wwww
mad r1.xy, v3.xyxx, cb0[8].xyxx, cb0[8].zwzz
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t4.xyzw, s1
mul r0.w, cb0[6].x, cb0[7].x
mad r0.xyz, r0.wwww, r1.xyzx, r0.xyzx
mad r1.xy, v3.xyxx, cb0[16].xyxx, cb0[16].zwzz
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t6.xyzw, s1
max r1.xyz, r1.xyzx, cb0[17].xxxx
min r1.xyz, r1.xyzx, cb0[18].xxxx
mul r1.xyz, r1.xyzx, cb0[15].xxxx
add r2.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.w, r2.xyzx, r2.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r2.xyzx
dp3 r0.w, r2.xyzx, v0.xyzx
mul r0.w, r0.w, r0.w
mad_sat r1.w, r0.w, cb0[12].x, cb0[12].y
mad_sat r0.w, r0.w, cb0[3].x, cb0[3].y
mad r2.xyz, cb0[5].xyzx, r0.wwww, cb0[4].xyzx
mad r3.xyz, cb0[14].xyzx, r1.wwww, cb0[13].xyzx
mad r0.xyz, r0.xyzx, r3.xyzx, r1.xyzx
add r0.xyz, r0.xyzx, r2.xyzx
mul r0.xyz, r0.xyzx, cb0[19].xyzx
mad r1.xyz, r0.xyzx, cb0[20].xxxx, cb0[0].xyzx
mul r0.xyz, r0.xyzx, cb0[20].xxxx
max r0.w, r1.z, r1.y
max r0.w, r0.w, r1.x
add_sat r0.w, r0.w, l(-1.000000)
add r0.w, -r0.w, l(1.000000)
mad r1.xyz, cb0[0].xyzx, r0.wwww, r0.xyzx
max r0.w, r1.z, r1.y
max r0.w, r0.w, r1.x
max r0.w, r0.w, l(1.000000)
div o0.xyz, r1.xyzx, r0.wwww
mov o0.w, l(0)
dp3 r0.w, v0.xyzx, v0.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v0.xyzx
mov_sat r0.w, cb0[51].x
mad r0.w, r0.w, l(0.125000), l(0.375000)
mad_sat o1.xyz, r1.xyzx, r0.wwww, l(0.500000, 0.500000, 0.500000, 0.000000)
mov o1.w, l(0)
max r0.y, r0.z, r0.y
max r0.x, r0.y, r0.x
add r0.x, r0.x, l(0.00781250000)
log r0.x, r0.x
mad_sat r0.x, r0.x, l(0.0769230798), l(0.538461566)
add r0.x, r0.x, l(1.000000)
mul o2.y, r0.x, l(0.500000)
mov o2.x, cb0[50].x
mov o2.z, l(0)
mov o2.w, v0.w
ret
// Approximately 0 instruction slots used
