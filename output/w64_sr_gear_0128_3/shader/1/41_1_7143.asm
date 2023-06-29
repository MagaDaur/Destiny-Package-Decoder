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
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float      w
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
// TEXCOORD                 6   xyzw        6     NONE   float   x
// TEXCOORD                 7   xyzw        7     NONE   float
// SV_VERTEXID              0   x           8   VERTID    uint   x
// SV_InstanceID            0   x           9   INSTID    uint
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
dcl_constantbuffer cb0[139], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.w
dcl_input v2.xyzw
dcl_input v3.xyzw
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_input v6.x
dcl_input_sgv v8.x, vertex_id
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
itof r0.x, v8.x
add r0.x, r0.x, l(0.500000)
mad r0.x, r0.x, l(0.250000), l(-0.500000)
round_ne r0.x, r0.x
ftoi r0.x, r0.x
ishl r0.x, r0.x, l(2)
iadd r0.x, -r0.x, v8.x
mov o0.xy, x1[r0.x + 0].xyxx
mov r0.xy, x0[r0.x + 0].xyxx
mad r0.z, v6.x, l(6.282000), v4.x
sincos r1.x, r2.x, r0.z
mul r0.zw, r0.yyyx, r1.xxxx
mad r0.y, r0.y, r2.x, r0.w
mad r0.x, r0.x, r2.x, -r0.z
mul r1.xyz, v5.zzzz, cb12[4].xyzx
mul r2.xyz, v2.yyyy, cb1[1].xyzx
mad r2.xyz, cb1[0].xyzx, v2.xxxx, r2.xyzx
mad r2.xyz, cb1[2].xyzx, v2.zzzz, r2.xyzx
add r2.xyz, r2.xyzx, cb1[3].xyzx
mad r0.xzw, r1.xxyz, r0.xxxx, r2.xxyz
mul r1.xyz, v5.zzzz, cb12[5].xyzx
mad r0.xyz, r1.xyzx, r0.yyyy, r0.xzwx
add r1.xyz, -r2.xyzx, cb12[7].xyzx
add r2.xyz, -r2.xyzx, r0.xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r1.w, r0.w
sqrt r0.w, r0.w
mul r1.xyz, r1.wwww, r1.xyzx
mad r0.xyz, r1.xyzx, v5.yyyy, r0.xyzx
mul r1.xyzw, r0.yyyy, cb12[1].xyzw
mad r1.xyzw, cb12[0].xyzw, r0.xxxx, r1.xyzw
mad r1.xyzw, cb12[2].xyzw, r0.zzzz, r1.xyzw
add o2.xyz, -r0.xyzx, cb12[7].xyzx
add r1.xyzw, r1.xyzw, cb12[3].xyzw
mov o0.w, r1.w
add r0.x, -r0.w, l(10000.000000)
mul r0.y, v4.y, l(0.280000)
frc r0.y, r0.y
mul r0.z, r0.y, cb0[100].x
add r0.y, -r0.y, cb0[106].x
add r0.y, r0.y, l(1.000000)
mul_sat r0.y, r0.y, l(3.333333)
mad r0.z, -r0.z, l(10.000000), l(-1.000000)
mad r0.z, r0.w, l(10.000000), r0.z
min_sat r0.x, r0.x, r0.z
mul r0.x, r0.y, r0.x
mul r0.x, r0.x, cb0[10].w
mul r0.x, r0.x, cb0[138].x
lt r0.y, l(0.999000), v2.w
movc r0.x, r0.y, l(0), r0.x
mov o0.z, r0.x
lt r0.x, r0.x, l(0.000001)
dp3 r0.y, r2.xyzx, r2.xyzx
rsq r0.y, r0.y
mad r0.yzw, r2.xxyz, r0.yyyy, -cb12[6].xxyz
mad o1.xyz, r0.yzwy, l(0.850000, 0.850000, 0.850000, 0.000000), cb12[6].xyzx
mov o3.xyzw, v0.xyzw
mov o4.xyzw, v3.xyzw
mov o5.x, v1.w
mov o5.yz, v4.zzwz
mov o5.w, l(0)
mov o6.xyz, v5.xzwx
lt r0.y, v5.w, l(0.000001)
or r0.x, r0.y, r0.x
movc o7.xyzw, r0.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r1.xyzw
ret
// Approximately 0 instruction slots used
