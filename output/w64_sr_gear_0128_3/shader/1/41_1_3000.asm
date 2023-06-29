//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:06 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
// TEXCOORD                 2   xyzw        2     NONE   float   x z
// SV_VERTEXID              0   x           3   VERTID    uint   x
// SV_InstanceID            0   x           4   INSTID    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyz         1     NONE   float   xyz
// TEXCOORD                 3      w        1     NONE   float      w
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// SV_POSITION              0   xyzw        3      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[116], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_input v1.xyzw
dcl_input v2.xz
dcl_input_sgv v3.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o1.w
dcl_output o2.xyz
dcl_output_siv o3.xyzw, position
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
itof r0.x, v3.x
add r0.x, r0.x, l(0.500000)
mad r0.x, r0.x, l(0.250000), l(-0.500000)
round_ne r0.x, r0.x
ftoi r0.x, r0.x
ishl r0.x, r0.x, l(2)
iadd r0.x, -r0.x, v3.x
mov o0.xy, x1[r0.x + 0].xyxx
mov r0.xy, x0[r0.x + 0].xyxx
add r0.xy, r0.yxyy, l(0.800000, 0.000000, 0.000000, 0.000000)
sincos r1.x, r2.x, v2.x
mul r0.zw, r0.xxxy, r1.xxxx
mad r0.x, r0.x, r2.x, r0.w
mad r0.y, r0.y, r2.x, -r0.z
mul r1.xyz, v1.yyyy, cb1[1].xyzx
mad r1.xyz, cb1[0].xyzx, v1.xxxx, r1.xyzx
mad r1.xyz, cb1[2].xyzx, v1.zzzz, r1.xyzx
add r1.xyz, r1.xyzx, cb1[3].xyzx
mul r2.xyz, v2.zzzz, cb12[4].xyzx
mad r0.yzw, r2.xxyz, r0.yyyy, r1.xxyz
add r1.xyz, -r1.xyzx, cb12[7].xyzx
dp3 r1.x, r1.xyzx, r1.xyzx
sqrt r1.x, r1.x
mad r1.xy, r1.xxxx, l(0.400000, -0.142857, 0.000000, 0.000000), l(-0.400000, 2.714286, 0.000000, 0.000000)
min_sat r1.x, r1.y, r1.x
mul r1.x, r1.x, cb0[11].y
mul r1.x, r1.x, cb0[115].x
mul r1.yzw, v2.zzzz, cb12[5].xxyz
mad r0.xyz, r1.yzwy, r0.xxxx, r0.yzwy
mul r2.xyzw, r0.yyyy, cb12[1].xyzw
mad r2.xyzw, cb12[0].xyzw, r0.xxxx, r2.xyzw
mad r2.xyzw, cb12[2].xyzw, r0.zzzz, r2.xyzw
add o2.xyz, -r0.xyzx, cb12[7].xyzx
add r0.xyzw, r2.xyzw, cb12[3].xyzw
mov o0.w, r0.w
lt r1.y, l(0.999000), v1.w
movc r1.x, r1.y, l(0), r1.x
mov o0.z, r1.x
lt r1.x, r1.x, l(0.000001)
mov o1.xyz, cb12[6].xyzx
mov o1.w, v2.z
lt r1.y, cb0[12].w, l(0.000001)
or r1.x, r1.y, r1.x
movc o3.xyzw, r1.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r0.xyzw
ret
// Approximately 0 instruction slots used
