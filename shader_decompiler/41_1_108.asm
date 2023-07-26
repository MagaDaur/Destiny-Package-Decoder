//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:45:59 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float      w
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xyz
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
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
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
// TEXCOORD                 6   xyz         6     NONE   float   xyz
// SV_POSITION              0   xyzw        7      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[114], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.w
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_input_sgv v7.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyzw
dcl_output o6.xyz
dcl_output_siv o7.xyzw, position
dcl_temps 3
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
sincos r1.x, r2.x, v2.w
mul r0.zw, r0.yyyx, r1.xxxx
mad r0.y, r0.y, r2.x, r0.w
mad r0.x, r0.x, r2.x, -r0.z
mul r1.xyz, v2.yyyy, cb1[1].xyzx
mad r1.xyz, cb1[0].xyzx, v2.xxxx, r1.xyzx
mad r1.xyz, cb1[2].xyzx, v2.zzzz, r1.xyzx
add r1.xyz, r1.xyzx, cb1[3].xyzx
mul r2.xyz, v5.yyyy, cb12[4].xyzx
mad r0.xzw, r2.xxyz, r0.xxxx, r1.xxyz
add r1.xyz, -r1.xyzx, cb12[7].xyzx
mul r2.xyz, v5.yyyy, cb12[5].xyzx
mad r0.xyz, r2.xyzx, r0.yyyy, r0.xzwx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r1.w, r0.w
sqrt r0.w, r0.w
mul r1.xyz, r1.wwww, r1.xyzx
mad r0.xyz, r1.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r0.xyzx
mul r1.xyzw, r0.yyyy, cb12[1].xyzw
mad r1.xyzw, cb12[0].xyzw, r0.xxxx, r1.xyzw
mad r1.xyzw, cb12[2].xyzw, r0.zzzz, r1.xyzw
add o2.xyz, -r0.xyzx, cb12[7].xyzx
add r1.xyzw, r1.xyzw, cb12[3].xyzw
mov o0.w, r1.w
mad r0.x, r0.w, l(0.333333), l(-2.000000)
add r0.y, -r0.w, l(10000.000000)
min_sat r0.x, r0.y, r0.x
mul r0.x, r0.x, cb0[8].y
mul r0.x, r0.x, cb0[113].x
lt r0.y, l(0.999000), v1.w
movc r0.x, r0.y, l(0), r0.x
mov o0.z, r0.x
lt r0.x, r0.x, l(0.000001)
mov o1.xyz, cb12[6].xyzx
mov o3.xyzw, v0.xyzw
mov o4.xyz, v3.xyzx
mov o4.w, v4.z
mov o5.xyz, v4.xywx
mov o5.w, v5.x
mov o6.xyz, v5.yzwy
lt r0.y, v5.z, l(0.000001)
or r0.x, r0.y, r0.x
movc o7.xyzw, r0.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r1.xyzw
ret
// Approximately 0 instruction slots used