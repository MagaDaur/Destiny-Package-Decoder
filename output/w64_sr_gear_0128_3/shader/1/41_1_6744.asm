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
// TEXCOORD                 3   xyzw        3     NONE   float   xyz
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
// TEXCOORD                 6   xyzw        6     NONE   float
// TEXCOORD                 7   xyzw        7     NONE   float
// POSITION                 0   xyz         8     NONE   float   xyz
// POSITION                 1   xy          9     NONE   float   xy
// POSITION                 2   xyz        10     NONE   float   xyz
// SV_VERTEXID              0   x          11   VERTID    uint
// SV_InstanceID            0   x          12   INSTID    uint
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
// TEXCOORD                 6   xy          6     NONE   float   xy
// SV_POSITION              0   xyzw        7      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[119], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[7], immediateIndexed
dcl_input v0.xyzw
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xyz
dcl_input v4.xyzw
dcl_input v5.xyzw
dcl_input v8.xyz
dcl_input v9.xy
dcl_input v10.xyz
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyzw
dcl_output o5.xyzw
dcl_output o6.xy
dcl_output_siv o7.xyzw, position
dcl_temps 9
mul r0.xyz, v2.yyyy, cb1[1].xyzx
mad r0.xyz, cb1[0].xyzx, v2.xxxx, r0.xyzx
mad r0.xyz, cb1[2].xyzx, v2.zzzz, r0.xyzx
add r0.xyz, r0.xyzx, cb1[3].xyzx
add r0.xyz, -r0.xyzx, cb12[7].xyzx
dp3 r0.x, r0.xyzx, r0.xyzx
sqrt r0.x, r0.x
mad r0.y, r0.x, l(0.500000), l(-1.500000)
add r0.x, -r0.x, l(10000.000000)
min_sat r0.x, r0.x, r0.y
mul r0.x, r0.x, cb0[9].y
mul r0.x, r0.x, cb0[115].x
lt r0.y, l(0.999000), v1.w
movc r0.x, r0.y, l(0), r0.x
mov o0.z, r0.x
mov r1.z, cb1[1].z
mov r1.x, cb1[2].z
mov r1.y, cb1[0].z
dp3 r0.y, v1.xyzx, v1.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, v1.xxyz
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
mov r3.w, l(0)
mul r1.w, v4.w, l(3.141000)
sincos r4.x, r5.x, r1.w
mad r4.yzw, v8.xxyz, cb1[4].xxyz, cb1[5].xxyz
mul r3.xyz, r4.yzwy, r5.xxxx
dp3 r1.w, cb0[111].xyzx, cb0[111].xyzx
rsq r1.w, r1.w
mul r5.yzw, r1.wwww, cb0[111].xxyz
mul r5.yzw, r4.xxxx, r5.yyzw
mul r6.xyz, r4.wyzw, -r5.zwyz
mad r6.xyz, r4.zwyz, -r5.wyzw, -r6.xyzx
dp3 r1.w, r4.yzwy, -r5.yzwy
mov r6.w, -r1.w
add r3.xyzw, r3.xyzw, r6.xyzw
mul r4.xyz, r3.yzxy, r5.wyzw
mad r4.xyz, r5.zwyz, r3.zxyz, -r4.xyzx
mad r3.xyz, r5.xxxx, r3.xyzx, r4.xyzx
mad r3.xyz, r3.wwww, r5.yzwy, r3.xyzx
mul r3.xyz, r3.xyzx, cb0[10].xxxx
mul r3.xyz, r3.xyzx, v4.xyzx
mul r4.xyz, r1.xyzx, r3.yyyy
mad r3.xyw, r3.xxxx, r0.yzyw, r4.xyxz
mad r3.xyz, r3.zzzz, r2.xyzx, r3.xywx
mul r1.w, v2.w, l(0.500000)
sincos r4.x, r6.x, r1.w
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
add r3.xyz, r3.xyzx, v2.xyzx
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
mad o0.xy, v9.xyxx, cb1[6].xyxx, cb1[6].zwzz
mov r7.xyz, v10.xyzx
mov r7.w, l(0)
mul r6.yzw, -r5.zzwy, v10.zzxy
mad r8.xyz, v10.yzxy, -r5.wyzw, -r6.yzwy
dp3 r1.w, v10.xyzx, -r5.yzwy
mov r8.w, -r1.w
mad r7.xyzw, r5.xxxx, r7.xyzw, r8.xyzw
mul r6.yzw, r5.wwyz, r7.yyzx
mad r6.yzw, r5.zzwy, r7.zzxy, -r6.yyzw
mad r6.yzw, r5.xxxx, r7.xxyz, r6.yyzw
mad r5.xyz, r7.wwww, r5.yzwy, r6.yzwy
mul r1.xyz, r1.xyzx, r5.yyyy
mad r0.yzw, r5.xxxx, r0.yyzw, r1.xxyz
mad r0.yzw, r5.zzzz, r2.xxyz, r0.yyzw
mul r1.xyz, r0.yzwy, r6.xxxx
mul r2.xyzw, -r4.zxzx, r0.zwyy
mad r5.xyz, -r0.wyzw, -r4.zzxz, r2.xyzx
mov r5.w, -r2.w
mov r1.w, l(0)
add r1.xyzw, r1.xyzw, r5.xyzw
mul r0.yzw, r1.yyzx, r4.zzxz
mad r0.yzw, r4.zzzx, r1.zzxy, -r0.yyzw
mad r0.yzw, r6.xxxx, r1.xxyz, r0.yyzw
mad r0.yzw, r1.wwww, r4.xxyz, r0.yyzw
mul r1.xyz, r0.zzzz, cb1[1].xyzx
mad r1.xyz, cb1[0].xyzx, r0.yyyy, r1.xyzx
mad o1.xyz, cb1[2].xyzx, r0.wwww, r1.xyzx
mov o3.xyzw, v0.xyzw
mov o4.xyz, v3.xyzx
mov o4.w, v4.w
mov o5.xz, l(0,0,0,0)
mov o5.yw, v5.xxxy
mov o6.xy, v5.zwzz
add r0.y, v5.z, cb0[118].x
lt r0.xy, r0.xyxx, l(0.000001, 0.000001, 0.000000, 0.000000)
or r0.x, r0.y, r0.x
movc o7.xyzw, r0.xxxx, l(10000.000000,10000.000000,-10000.000000,1.000000), r3.xyzw
ret
// Approximately 0 instruction slots used
