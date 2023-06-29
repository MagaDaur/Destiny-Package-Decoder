//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:50 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyz
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float    yzw
// SV_VERTEXID              0   x           4   VERTID    uint   x
// SV_InstanceID            0   x           5   INSTID    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyz         1     NONE   float   xyz
// TEXCOORD                 4      w        1     NONE   float      w
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// SV_POSITION              0   xyzw        4      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[114], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_input v0.xyz
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.yzw
dcl_input_sgv v4.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o1.w
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output_siv o4.xyzw, position
dcl_temps 6
dcl_indexableTemp x0[4], 4
dcl_indexableTemp x1[4], 4
mov x0[0].xy, l(-1.000000,1.000000,0,0)
mov x0[1].xy, l(-1.000000,-1.000000,0,0)
mov x0[2].xy, l(1.000000,1.000000,0,0)
mov x0[3].xy, l(1.000000,-1.000000,0,0)
mov x1[0].xy, l(0,0,0,0)
mov x1[1].xy, l(0,1.000000,0,0)
mov x1[2].xy, l(1.000000,0,0,0)
mov x1[3].xy, l(1.000000,1.000000,0,0)
itof r0.x, v4.x
add r0.x, r0.x, l(0.500000)
mad r0.x, r0.x, l(0.250000), l(-0.500000)
round_ne r0.x, r0.x
ftoi r0.x, r0.x
ishl r0.x, r0.x, l(2)
iadd r0.x, -r0.x, v4.x
mov o0.xy, x1[r0.x + 0].xyxx
mov r0.xy, x0[r0.x + 0].xyxx
add r0.xy, r0.yxyy, l(0.000000, 0.400000, 0.000000, 0.000000)
add r0.z, v3.y, l(-1.000000)
mul r1.xyz, v0.yyyy, cb1[1].yzxy
mad r1.xyz, cb1[0].yzxy, v0.xxxx, r1.xyzx
mad r1.xyz, cb1[2].yzxy, v0.zzzz, r1.xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx
mul r2.xyz, v1.yyyy, cb1[1].xyzx
mad r2.xyz, cb1[0].xyzx, v1.xxxx, r2.xyzx
mad r2.xyz, cb1[2].xyzx, v1.zzzz, r2.xyzx
add r2.xyz, r2.xyzx, cb1[3].xyzx
add r3.xyz, -r2.xyzx, cb12[7].xyzx
dp3 r0.w, r3.xyzx, r3.xyzx
rsq r1.w, r0.w
sqrt r0.w, r0.w
mul r3.xyz, r1.wwww, r3.xyzx
dp3 r1.w, r1.zxyz, r3.xyzx
log r1.w, |r1.w|
mul r1.w, r1.w, l(2.500000)
exp r1.w, r1.w
mad r4.y, r1.w, r0.z, l(1.000000)
mov r4.x, v3.y
mul r0.xy, r0.xyxx, r4.xyxx
sincos r4.x, r5.x, v2.w
mul r4.xy, r0.xyxx, r4.xxxx
mad r0.y, r0.y, r5.x, -r4.x
mad r0.x, r0.x, r5.x, r4.y
mul r4.xyz, r1.xyzx, r3.zxyz
mad r1.xyz, r3.yzxy, r1.yzxy, -r4.xyzx
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mul r4.xyz, r3.yzxy, r1.zxyz
mad r4.xyz, r1.yzxy, r3.zxyz, -r4.xyzx
mul r1.xyz, r1.xyzx, v3.zzzz
mov o1.xyz, r3.xyzx
mul r3.xyz, r4.xyzx, v3.zzzz
mad r2.xyz, r3.xyzx, r0.yyyy, r2.xyzx
mad r0.xyz, r1.xyzx, r0.xxxx, r2.xyzx
mul r1.xyzw, r0.yyyy, cb12[1].xyzw
mad r1.xyzw, cb12[0].xyzw, r0.xxxx, r1.xyzw
mad r1.xyzw, cb12[2].xyzw, r0.zzzz, r1.xyzw
add o2.xyz, -r0.xyzx, cb12[7].xyzx
add r1.xyzw, r1.xyzw, cb12[3].xyzw
mov o0.w, r1.w
mad r0.x, r0.w, l(4.000000), l(-2.000000)
add r0.y, -r0.w, l(10000.000000)
min_sat r0.x, r0.y, r0.x
mul r0.x, r0.x, cb0[17].y
mul r0.x, r0.x, cb0[113].x
lt r0.y, l(0.999000), v1.w
movc r0.x, r0.y, l(0), r0.x
mov o0.z, r0.x
lt r0.x, r0.x, l(0.000001)
mov o1.w, v3.w
mov o3.xyz, v2.xyzx
mov o3.w, v3.z
lt r0.y, cb0[18].x, l(0.000001)
or r0.x, r0.y, r0.x
movc o4.xyzw, r0.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r1.xyzw
ret
// Approximately 0 instruction slots used
