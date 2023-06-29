//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:54 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyzw        4     NONE   float   xyz
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
// TEXCOORD                 6   xyzw        6     NONE   float   xyzw
// TEXCOORD                 7   xyzw        7     NONE   float   xyzw
// TEXCOORD                 8   xyzw        8     NONE   float   xyzw
// POSITION                 0   xyz         9     NONE   float   xyz
// POSITION                 1   xy         10     NONE   float   xy
// POSITION                 2   xyz        11     NONE   float   xyz
// SV_VERTEXID              0   x          12   VERTID    uint
// SV_InstanceID            0   x          13   INSTID    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyz         1     NONE   float   xyz
// TEXCOORD                11      w        1     NONE   float      w
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
// TEXCOORD                 6   xyzw        6     NONE   float   xyzw
// TEXCOORD                 7   xyzw        7     NONE   float   xyzw
// TEXCOORD                 8   xyzw        8     NONE   float   xyzw
// TEXCOORD                 9   xyzw        9     NONE   float   xyzw
// TEXCOORD                10   xyzw       10     NONE   float   xyzw
// SV_POSITION              0   xyzw       11      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[121], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[7], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyzw
dcl_input v4.xyz
dcl_input v5.xyzw
dcl_input v6.xyzw
dcl_input v7.xyzw
dcl_input v8.xyzw
dcl_input v9.xyz
dcl_input v10.xy
dcl_input v11.xyz
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o1.w
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyzw
dcl_output o6.xyzw
dcl_output o7.xyzw
dcl_output o8.xyzw
dcl_output o9.xyzw
dcl_output o10.xyzw
dcl_output_siv o11.xyzw, position
dcl_temps 7
mul r0.xyz, v3.yyyy, cb1[1].xyzx
mad r0.xyz, cb1[0].xyzx, v3.xxxx, r0.xyzx
mad r0.xyz, cb1[2].xyzx, v3.zzzz, r0.xyzx
add r0.xyz, r0.xyzx, cb1[3].xyzx
add r0.xyz, -r0.xyzx, cb12[7].xyzx
dp3 r0.x, r0.xyzx, r0.xyzx
sqrt r0.x, r0.x
mad r0.y, r0.x, l(4.000000), l(-2.000000)
add r0.x, -r0.x, l(10000.000000)
min_sat r0.x, r0.x, r0.y
mul r0.x, r0.x, cb0[8].y
mul r0.x, r0.x, cb0[120].x
lt r0.y, l(0.999000), v2.w
movc r0.x, r0.y, l(0), r0.x
mov o0.z, r0.x
lt r0.x, r0.x, l(0.000001)
mov r1.z, cb1[1].z
mov r1.x, cb1[2].z
mov r1.y, cb1[0].z
dp3 r0.y, v2.xyzx, v2.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, v2.xxyz
mul r2.xyz, r0.zwyz, r1.xyzx
mad r1.xyz, r1.zxyz, r0.wyzw, -r2.xyzx
dp3 r1.w, r1.xyzx, r1.xyzx
rsq r2.x, r1.w
lt r1.w, l(0.001000), r1.w
mul r1.xyz, r1.xyzx, r2.xxxx
mov r2.x, cb1[0].y
mov r2.y, cb1[1].y
mov r2.z, cb1[2].y
movc r1.xyz, r1.wwww, r1.xyzx, r2.xyzx
mul r2.xyz, r0.wyzw, r1.yzxy
mad r2.xyz, r0.zwyz, r1.zxyz, -r2.xyzx
mad r3.xyz, v9.xyzx, cb1[4].xyzx, cb1[5].xyzx
mul r3.xyz, r3.xyzx, v7.xyzx
mul r3.xyz, r3.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
mul r4.xyz, r1.xyzx, r3.yyyy
mul r1.xyz, r1.xyzx, v11.yyyy
mad r1.xyz, v11.xxxx, r0.yzwy, r1.xyzx
mad r0.yzw, r3.xxxx, r0.yyzw, r4.xxyz
mad r0.yzw, r3.zzzz, r2.xxyz, r0.yyzw
mad r1.xyz, v11.zzzz, r2.xyzx, r1.xyzx
mul r1.w, v3.w, l(0.500000)
sincos r2.x, r3.x, r1.w
mul r4.xyz, r0.yzwy, r3.xxxx
mov r4.w, l(0)
mul r2.xyz, r2.xxxx, l(1.000000, 0.000000, 0.000000, 0.000000)
mul r5.xyzw, r0.zwyy, -r2.zxzx
mad r6.xyz, -r0.wyzw, -r2.zzxz, r5.xyzx
mov r6.w, -r5.w
add r4.xyzw, r4.xyzw, r6.xyzw
mul r0.yzw, r2.zzxz, r4.yyzx
mad r0.yzw, r2.zzzx, r4.zzxy, -r0.yyzw
mad r0.yzw, r3.xxxx, r4.xxyz, r0.yyzw
mad r0.yzw, r4.wwww, r2.xxzz, r0.yyzw
add r0.yzw, r0.yyzw, v3.xxyz
mul r3.yzw, r0.zzzz, cb1[1].xxyz
mad r3.yzw, cb1[0].xxyz, r0.yyyy, r3.yyzw
mad r0.yzw, cb1[2].xxyz, r0.wwww, r3.yyzw
add r0.yzw, r0.yyzw, cb1[3].xxyz
mul r4.xyzw, r0.zzzz, cb12[1].xyzw
mad r4.xyzw, cb12[0].xyzw, r0.yyyy, r4.xyzw
mad r4.xyzw, cb12[2].xyzw, r0.wwww, r4.xyzw
add o2.xyz, -r0.yzwy, cb12[7].xyzx
add r4.xyzw, r4.xyzw, cb12[3].xyzw
mov o0.w, r4.w
mad o0.xy, v10.xyxx, cb1[6].xyxx, cb1[6].zwzz
mul r5.xyz, r1.xyzx, r3.xxxx
mul r6.xyzw, r1.yzxx, -r2.zxzx
mad r1.xyz, -r1.zxyz, -r2.zzxz, r6.xyzx
mov r1.w, -r6.w
mov r5.w, l(0)
add r1.xyzw, r1.xyzw, r5.xyzw
mul r0.yzw, r1.yyzx, r2.zzxz
mad r0.yzw, r2.zzzx, r1.zzxy, -r0.yyzw
mad r0.yzw, r3.xxxx, r1.xxyz, r0.yyzw
mad r0.yzw, r1.wwww, r2.xxyz, r0.yyzw
mul r1.xyz, r0.zzzz, cb1[1].xyzx
mad r1.xyz, cb1[0].xyzx, r0.yyyy, r1.xyzx
mad o1.xyz, cb1[2].xyzx, r0.wwww, r1.xyzx
mov o1.w, v8.w
mov o3.xyzw, v0.xyzw
mov o4.xyzw, v1.xyzw
mov o5.xyz, v4.xyzx
mov o5.w, v5.w
mov o6.xyz, v5.xyzx
mov o6.w, l(0)
mov o7.xyz, v6.xyzx
mov o7.w, l(0)
mov o8.xy, l(0,0,0,0)
mov o8.zw, v8.xxxy
mov o9.xyz, l(0,0,0,0)
mov o9.w, v6.w
mov o10.xz, l(0,0,0,0)
mov o10.y, v7.w
mov o10.w, v8.z
lt r0.y, v8.z, l(0.000001)
or r0.x, r0.y, r0.x
movc o11.xyzw, r0.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r4.xyzw
ret
// Approximately 0 instruction slots used
