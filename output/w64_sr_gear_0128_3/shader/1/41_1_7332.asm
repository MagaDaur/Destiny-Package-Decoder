//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:52 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float      w
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xy
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
// TEXCOORD                 6   xyzw        6     NONE   float   xyzw
// TEXCOORD                 7   xyzw        7     NONE   float   xyzw
// TEXCOORD                 8   xyzw        8     NONE   float
// TEXCOORD                 9   xyzw        9     NONE   float
// SV_VERTEXID              0   x          10   VERTID    uint   x
// SV_InstanceID            0   x          11   INSTID    uint
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
// TEXCOORD                 6   xyzw        6     NONE   float   xyzw
// TEXCOORD                 7   xyz         7     NONE   float   xyz
// SV_POSITION              0   xyzw        8      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[119], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.w
dcl_input v2.xyzw
dcl_input v3.xy
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_input v6.xyzw
dcl_input v7.xyzw
dcl_input_sgv v10.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyzw
dcl_output o6.xyzw
dcl_output o7.xyz
dcl_output_siv o8.xyzw, position
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
itof r0.x, v10.x
add r0.x, r0.x, l(0.500000)
mad r0.x, r0.x, l(0.250000), l(-0.500000)
round_ne r0.x, r0.x
ftoi r0.x, r0.x
ishl r0.x, r0.x, l(2)
iadd r0.x, -r0.x, v10.x
mov o0.xy, x1[r0.x + 0].xyxx
mov r0.xy, x0[r0.x + 0].xyxx
mul r0.xy, r0.yxyy, v3.yxyy
mad r0.z, v7.w, l(6.282000), v2.w
sincos r1.x, r2.x, r0.z
mul r0.zw, r0.xxxy, r1.xxxx
mad r0.y, r0.y, r2.x, -r0.z
mad r0.x, r0.x, r2.x, r0.w
mul r1.xyz, v2.yyyy, cb1[1].xyzx
mad r1.xyz, cb1[0].xyzx, v2.xxxx, r1.xyzx
mad r1.xyz, cb1[2].xyzx, v2.zzzz, r1.xyzx
add r1.xyz, r1.xyzx, cb1[3].xyzx
mul r2.xyz, v6.wwww, cb12[4].xyzx
mad r0.yzw, r2.xxyz, r0.yyyy, r1.xxyz
mul r1.xyz, v6.wwww, cb12[5].xyzx
mad r0.xyz, r1.xyzx, r0.xxxx, r0.yzwy
mul r1.xyzw, r0.yyyy, cb12[1].xyzw
mad r1.xyzw, cb12[0].xyzw, r0.xxxx, r1.xyzw
mad r1.xyzw, cb12[2].xyzw, r0.zzzz, r1.xyzw
add o2.xyz, -r0.xyzx, cb12[7].xyzx
add r0.xyzw, r1.xyzw, cb12[3].xyzw
mov o0.w, r0.w
mul r1.x, cb0[10].y, cb0[118].x
lt r1.y, l(0.999000), v1.w
movc r1.x, r1.y, l(0), r1.x
mov o0.z, r1.x
mov o1.xyz, cb12[6].xyzx
mov o3.xyzw, v0.xyzw
mov o4.xyzw, v4.xyzw
mov o5.xyzw, v5.xyzw
mov o6.xyzw, v6.xyzw
mov o7.xyz, v7.xyzx
add r1.y, v7.x, v7.y
lt r1.xy, r1.xyxx, l(0.000001, 0.000001, 0.000000, 0.000000)
or r1.x, r1.y, r1.x
movc o8.xyzw, r1.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r0.xyzw
ret
// Approximately 0 instruction slots used
