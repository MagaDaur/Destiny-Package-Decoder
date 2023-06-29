//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:55 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xy
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xy
// TEXCOORD                 6   xyzw        6     NONE   float
// SV_VERTEXID              0   x           7   VERTID    uint   x
// SV_InstanceID            0   x           8   INSTID    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyz         1     NONE   float   xyz
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xy          5     NONE   float   xy
// SV_POSITION              0   xyzw        6      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[117], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xy
dcl_input v4.xyzw
dcl_input v5.xy
dcl_input_sgv v7.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xy
dcl_output_siv o6.xyzw, position
dcl_temps 4
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
itof r0.x, v7.x
add r0.x, r0.x, l(0.500000)
mad r0.x, r0.x, l(0.250000), l(-0.500000)
round_ne r0.x, r0.x
ftoi r0.x, r0.x
ishl r0.x, r0.x, l(2)
iadd r0.x, -r0.x, v7.x
mov o0.xy, x1[r0.x + 0].xyxx
mov r0.xy, x0[r0.x + 0].xyxx
add r0.xy, r0.yxyy, l(0.000000, 0.500000, 0.000000, 0.000000)
mul r0.xy, r0.xyxx, v3.yxyy
sincos r1.x, r2.x, v2.w
mul r0.zw, r0.xxxy, r1.xxxx
mad r0.x, r0.x, r2.x, r0.w
mad r0.y, r0.y, r2.x, -r0.z
mul r1.xyz, v2.yyyy, cb1[1].xyzx
mad r1.xyz, cb1[0].xyzx, v2.xxxx, r1.xyzx
mad r1.xyz, cb1[2].xyzx, v2.zzzz, r1.xyzx
add r1.xyz, r1.xyzx, cb1[3].xyzx
mul r2.xyz, v1.yyyy, cb1[1].zxyz
mad r2.xyz, cb1[0].zxyz, v1.xxxx, r2.xyzx
mad r2.xyz, cb1[2].zxyz, v1.zzzz, r2.xyzx
dp3 r0.z, r2.xyzx, r2.xyzx
rsq r0.z, r0.z
mul r2.xyz, r0.zzzz, r2.xyzx
mul r3.xyz, r2.yzxy, v5.xxxx
mad r0.yzw, r3.xxyz, r0.yyyy, r1.xxyz
add r1.xyz, -r1.xyzx, cb12[7].xyzx
mul r3.xyz, r2.xyzx, r1.xyzx
mad r3.xyz, r1.zxyz, r2.yzxy, -r3.xyzx
dp3 r1.x, r1.xyzx, r1.xyzx
sqrt r1.x, r1.x
dp3 r1.y, r3.xyzx, r3.xyzx
rsq r1.y, r1.y
mul r1.yzw, r1.yyyy, r3.xxyz
mul r3.xyz, r1.wyzw, v5.xxxx
mad r0.xyz, r3.xyzx, r0.xxxx, r0.yzwy
mul r3.xyzw, r0.yyyy, cb12[1].xyzw
mad r3.xyzw, cb12[0].xyzw, r0.xxxx, r3.xyzw
mad r3.xyzw, cb12[2].xyzw, r0.zzzz, r3.xyzw
add o2.xyz, -r0.xyzx, cb12[7].xyzx
add r0.xyzw, r3.xyzw, cb12[3].xyzw
mov o0.w, r0.w
mad r2.w, r1.x, l(0.500000), l(-0.500000)
add r1.x, -r1.x, l(10000.000000)
min_sat r1.x, r1.x, r2.w
mul r1.x, r1.x, cb0[10].y
mul r1.x, r1.x, cb0[116].x
lt r2.w, l(0.999000), v1.w
movc r1.x, r2.w, l(0), r1.x
mov o0.z, r1.x
lt r1.x, r1.x, l(0.000001)
mul r3.xyz, r1.yzwy, r2.xyzx
mad o1.xyz, r2.zxyz, r1.zwyz, -r3.xyzx
mov o3.xyzw, v0.xyzw
mov o4.xyzw, v4.xyzw
mov o5.xy, v5.xyxx
lt r1.y, v5.y, l(0.000001)
or r1.x, r1.y, r1.x
movc o6.xyzw, r1.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r0.xyzw
ret
// Approximately 0 instruction slots used
