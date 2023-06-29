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
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyz
// TEXCOORD                 6   xyzw        6     NONE   float   x
// TEXCOORD                 7   xyzw        7     NONE   float   x  w
// TEXCOORD                 8   xyzw        8     NONE   float   x
// TEXCOORD                 9   xyzw        9     NONE   float
// POSITION                 0   xyz        10     NONE   float   xyz
// POSITION                 1   xy         11     NONE   float   xy
// POSITION                 2   xyz        12     NONE   float   xyz
// SV_VERTEXID              0   x          13   VERTID    uint
// SV_InstanceID            0   x          14   INSTID    uint
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
// TEXCOORD                 7   xyzw        7     NONE   float   xyzw
// TEXCOORD                 8   xyzw        8     NONE   float   xyzw
// TEXCOORD                 9   xyz         9     NONE   float   xyz
// SV_POSITION              0   xyzw       10      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[126], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[7], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyzw
dcl_input v4.xyzw
dcl_input v5.xyz
dcl_input v6.x
dcl_input v7.xw
dcl_input v8.x
dcl_input v10.xyz
dcl_input v11.xy
dcl_input v12.xyz
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyzw
dcl_output o6.xyzw
dcl_output o7.xyzw
dcl_output o8.xyzw
dcl_output o9.xyz
dcl_output_siv o10.xyzw, position
dcl_temps 9
mov r0.z, cb1[1].z
mov r0.x, cb1[2].z
mov r0.y, cb1[0].z
dp3 r0.w, v4.xyzx, v4.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v4.xyzx
mul r2.xyz, r0.xyzx, r1.yzxy
mad r0.xyz, r0.zxyz, r1.zxyz, -r2.xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r1.w, r0.w
lt r0.w, l(0.001000), r0.w
mul r0.xyz, r0.xyzx, r1.wwww
mov r2.x, cb1[0].y
mov r2.y, cb1[1].y
mov r2.z, cb1[2].y
movc r0.xyz, r0.wwww, r0.xyzx, r2.xyzx
mul r2.xyz, r0.yzxy, r1.zxyz
mad r2.xyz, r1.yzxy, r0.zxyz, -r2.xyzx
mov r3.w, l(0)
mul r0.w, l(3.141000), cb0[120].x
sincos r4.x, r5.x, r0.w
mad r4.yzw, v10.xxyz, cb1[4].xxyz, cb1[5].xxyz
mul r3.xyz, r4.yzwy, r5.xxxx
dp3 r0.w, cb0[121].xyzx, cb0[121].xyzx
rsq r0.w, r0.w
mul r5.yzw, r0.wwww, cb0[121].xxyz
mul r5.yzw, r4.xxxx, r5.yyzw
mul r6.xyz, r4.wyzw, -r5.zwyz
mad r6.xyz, r4.zwyz, -r5.wyzw, -r6.xyzx
dp3 r0.w, r4.yzwy, -r5.yzwy
mov r6.w, -r0.w
add r3.xyzw, r3.xyzw, r6.xyzw
mul r4.xyz, r3.yzxy, r5.wyzw
mad r4.xyz, r5.zwyz, r3.zxyz, -r4.xyzx
mad r3.xyz, r5.xxxx, r3.xyzx, r4.xyzx
mad r3.xyz, r3.wwww, r5.yzwy, r3.xyzx
mul r3.xyz, r3.xyzx, v7.wwww
mul r4.xyz, r0.xyzx, r3.yyyy
mad r3.xyw, r3.xxxx, r1.xyxz, r4.xyxz
mad r3.xyz, r3.zzzz, r2.xyzx, r3.xywx
mul r0.w, v6.x, l(0.500000)
sincos r4.x, r6.x, r0.w
mul r7.xyz, r3.xyzx, r6.xxxx
mov r7.w, l(0)
mul r4.xyz, r4.xxxx, l(1.000000, 0.000000, 0.000000, 0.000000)
mul r8.xyzw, r3.yzxx, -r4.zxzx
mad r3.xyz, -r3.zxyz, -r4.zzxz, r8.xyzx
mov r3.w, -r8.w
add r3.xyzw, r7.xyzw, r3.xyzw
mul r6.yzw, r3.yyzx, r4.zzxz
mad r6.yzw, r4.zzzx, r3.zzxy, -r6.yyzw
mad r3.xyz, r6.xxxx, r3.xyzx, r6.yzwy
mad r3.xyz, r3.wwww, r4.xzzx, r3.xyzx
add r3.xyz, r3.xyzx, v5.xyzx
mul r6.yzw, r3.yyyy, cb1[1].xxyz
mad r3.xyw, cb1[0].xyxz, r3.xxxx, r6.yzyw
mad r3.xyz, cb1[2].xyzx, r3.zzzz, r3.xywx
add r3.xyz, r3.xyzx, cb1[3].xyzx
mul r7.xyzw, r3.yyyy, cb12[1].xyzw
mad r7.xyzw, cb12[0].xyzw, r3.xxxx, r7.xyzw
mad r7.xyzw, cb12[2].xyzw, r3.zzzz, r7.xyzw
add o2.xyz, -r3.xyzx, cb12[7].xyzx
add r3.xyzw, r7.xyzw, cb12[3].xyzw
mov o0.w, r3.w
mul r0.w, cb0[5].y, cb0[125].x
lt r1.w, l(0.999000), v4.w
movc r0.w, r1.w, l(0), r0.w
mov o0.z, r0.w
lt r0.w, r0.w, l(0.000001)
mad o0.xy, v11.xyxx, cb1[6].xyxx, cb1[6].zwzz
mov r7.xyz, v12.xyzx
mov r7.w, l(0)
mul r6.yzw, -r5.zzwy, v12.zzxy
mad r8.xyz, v12.yzxy, -r5.wyzw, -r6.yzwy
dp3 r1.w, v12.xyzx, -r5.yzwy
mov r8.w, -r1.w
mad r7.xyzw, r5.xxxx, r7.xyzw, r8.xyzw
mul r6.yzw, r5.wwyz, r7.yyzx
mad r6.yzw, r5.zzwy, r7.zzxy, -r6.yyzw
mad r6.yzw, r5.xxxx, r7.xxyz, r6.yyzw
mad r5.xyz, r7.wwww, r5.yzwy, r6.yzwy
mul r0.xyz, r0.xyzx, r5.yyyy
mad r0.xyz, r5.xxxx, r1.xyzx, r0.xyzx
mad r0.xyz, r5.zzzz, r2.xyzx, r0.xyzx
mul r1.xyz, r0.xyzx, r6.xxxx
mul r2.xyzw, -r4.zxzx, r0.yzxx
mad r5.xyz, -r0.zxyz, -r4.zzxz, r2.xyzx
mov r5.w, -r2.w
mov r1.w, l(0)
add r1.xyzw, r1.xyzw, r5.xyzw
mul r0.xyz, r1.yzxy, r4.zxzz
mad r0.xyz, r4.zzxz, r1.zxyz, -r0.xyzx
mad r0.xyz, r6.xxxx, r1.xyzx, r0.xyzx
mad r0.xyz, r1.wwww, r4.xyzx, r0.xyzx
mul r1.xyz, r0.yyyy, cb1[1].xyzx
mad r1.xyz, cb1[0].xyzx, r0.xxxx, r1.xyzx
mad o1.xyz, cb1[2].xyzx, r0.zzzz, r1.xyzx
mov o3.xyzw, v0.xyzw
mov o4.xyzw, v1.xyzw
mov o5.xyzw, v2.xyzw
mov o6.xyzw, v3.xyzw
mov o7.xyzw, l(0,0,0,0)
mov o8.x, v7.x
mov o8.yzw, l(0,0,0,0)
mov o9.x, l(0)
mov o9.y, v7.w
mov o9.z, v8.x
lt r0.x, v8.x, l(0.000001)
or r0.x, r0.x, r0.w
movc o10.xyzw, r0.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r3.xyzw
ret
// Approximately 0 instruction slots used
