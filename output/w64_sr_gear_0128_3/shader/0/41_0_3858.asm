//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:03 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float   xyz
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xy
// TEXCOORD                 4   xyz         4     NONE   float   xyz
// SV_POSITION              0   xyzw        5      POS   float
// SV_isFrontFace           0   x           6    FFACE    uint   x
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
dcl_constantbuffer cb0[16], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb7[36], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xy
dcl_input_ps linear v4.xyz
dcl_input_ps_sgv v6.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 8
mad r0.xy, v3.xyxx, cb0[14].xyxx, cb0[14].zwzz
mad r0.zw, r0.xxxy, cb7[3].xxxy, cb7[3].zzzw
mad r0.xy, r0.xyxx, cb7[4].xyxx, cb7[4].zwzz
sample_indexable(texture2d)(float,float,float,float) r1.xyz, r0.xyxx, t7.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r0.xyzw, r0.zwzz, t6.xyzw, s1
mul_sat r2.xyz, r0.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r0.xyz, r0.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r3.xyz, cb7[27].xyzx, r2.xyzx, r0.xyzx
mad_sat r0.xyz, cb7[32].xyzx, r2.xyzx, r0.xyzx
add r0.xyz, r0.xyzx, -cb7[32].xyzx
add r2.xyz, r3.xyzx, -cb7[27].xyzx
mov_sat r3.xyzw, cb7[29].xyzw
mad r2.xyz, r3.xxxx, r2.xyzx, cb7[27].xyzx
sample_indexable(texture2d)(float,float,float,float) r4.xyz, v3.xyxx, t0.xyzw, s2
mul_sat r5.xyz, r4.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r6.xyz, r4.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r2.xyz, r2.xyzx, r5.xyzx, r6.xyzx
mov_sat r7.xyzw, cb7[35].xyzw
mad r0.xyz, r7.xxxx, r0.xyzx, cb7[32].xyzx
mad_sat r0.xyz, r0.xyzx, r5.xyzx, r6.xyzx
add r2.xyz, -r0.xyzx, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r5.xyz, v3.xyxx, t2.xywz, s4
add r6.xy, r5.yzyy, l(-0.250000, -0.188235298, 0.000000, 0.000000)
mul_sat r1.w, r6.y, l(1.231884)
mov_sat r6.x, r6.x
mad_sat r1.w, cb7[33].y, r1.w, cb7[33].x
mad_sat r1.w, cb7[33].w, r1.w, cb7[33].z
mad r0.xyz, r1.wwww, r2.xyzx, r0.xyzx
add r0.xyz, -r4.xyzx, r0.xyzx
ge r2.x, r5.z, l(0.156862751)
and r2.y, r2.x, l(0x3f800000)
mad r0.xyz, r2.yyyy, r0.xyzx, r4.xyzx
mov o0.xyz, r0.xyzx
dp3 r0.x, r0.xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
max r0.x, r0.x, l(0.000100)
log r0.x, r0.x
mul r0.x, r0.x, -cb0[11].x
exp r0.x, r0.x
add r0.y, l(128.500000), cb7[30].x
mul r0.y, r0.y, l(0.00390625000)
ge r0.z, l(0.050000), r3.w
movc r0.y, r0.z, r0.y, l(-1.000000)
add r0.z, l(128.500000), cb0[2].x
mul r0.z, r0.z, l(0.00390625000)
mul_sat r4.xy, r5.zyzz, l(7.968750, 4.000000, 0.000000, 0.000000)
ge r2.z, l(0.050000), r4.x
movc r0.z, r2.z, r0.z, l(-1.000000)
movc o0.w, r2.x, r0.y, r0.z
mad_sat r0.y, r0.w, r4.y, r6.x
mad_sat r0.z, cb7[31].y, r0.y, cb7[31].x
mad_sat r0.y, cb7[34].y, r0.y, cb7[34].x
mad_sat r0.y, cb7[34].w, r0.y, cb7[34].z
mad_sat r0.z, cb7[31].w, r0.z, cb7[31].z
mad_sat r0.w, cb7[31].y, r5.y, cb7[31].x
mad_sat r0.w, cb7[31].w, r0.w, cb7[31].z
add r0.z, -r0.w, r0.z
mad r0.z, r3.z, r0.z, r0.w
mad_sat r0.w, cb7[34].y, r5.y, cb7[34].x
mad_sat r0.w, cb7[34].w, r0.w, cb7[34].z
add r0.y, -r0.w, r0.y
mad r0.y, r7.z, r0.y, r0.w
add r0.z, -r0.y, r0.z
mad r0.y, r1.w, r0.z, r0.y
add_sat r0.z, r1.z, cb7[5].z
mad r1.xy, r1.xyxx, cb7[5].xxxx, cb7[5].yyyy
add r0.z, r0.z, l(-1.000000)
mad r0.w, r3.y, r0.z, l(1.000000)
mad r0.z, r7.y, r0.z, l(1.000000)
add r0.w, -r0.z, r0.w
mad r0.z, r1.w, r0.w, r0.z
min r0.y, r0.z, r0.y
mov_sat r0.zw, cb7[30].yyyz
mad r1.z, r0.z, l(-2.000000), l(-0.200000)
mul r1.z, r0.y, r1.z
mul r2.x, r0.z, l(-2.000000)
mad r1.z, r1.z, l(-5.002501), r2.x
min r1.z, r0.y, r1.z
lt r0.z, l(0.000100), r0.z
mul r0.w, r0.w, r2.y
mul o2.z, r0.w, l(0.800000)
movc r6.x, r0.z, r1.z, r0.y
add r0.y, r3.w, -r7.w
mad r6.y, r1.w, r0.y, r7.w
mov r4.z, r5.y
mov_sat r5.x, r5.x
add r0.yz, -r4.zzxz, r6.xxyx
mad r0.yz, r2.yyyy, r0.yyzy, r4.zzxz
mad r0.y, r0.y, l(0.125000), l(0.375000)
mov o2.x, r0.z
sample_indexable(texture2d)(float,float,float,float) r0.zw, v3.xyxx, t1.zwxy, s3
mad r0.zw, r0.zzzw, cb0[15].xxxx, cb0[15].yyyy
mad r2.xz, r1.xxyx, r3.yyyy, r0.zzwz
mad r1.xy, r1.xyxx, r7.yyyy, r0.zwzz
add r2.xz, -r1.xxyx, r2.xxzx
mad r1.xy, r1.wwww, r2.xzxx, r1.xyxx
add r1.xy, -r0.zwzz, r1.xyxx
mad r1.xy, r2.yyyy, r1.xyxx, r0.zwzz
dp2 r0.z, r1.xyxx, r1.xyxx
add r0.z, -r0.z, l(1.000000)
max r0.z, r0.z, l(0.000000)
sqrt r1.z, r0.z
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mul r2.xyz, r1.yyyy, v2.xyzx
mad r1.xyw, v1.xyxz, r1.xxxx, r2.xyxz
movc r0.z, v6.x, l(1.000000), l(-1.000000)
mul r2.xyz, r0.zzzz, v0.xyzx
mad r1.xyz, r2.xyzx, r1.zzzz, r1.xywx
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mad_sat o1.xyz, r1.xyzx, r0.yyyy, l(0.500000, 0.500000, 0.500000, 0.000000)
mov o1.w, l(0)
dp3 r0.y, r2.xyzx, r2.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, r2.xxyz
dp3 r0.y, cb0[5].xyzx, r0.yzwy
add r0.z, -cb0[3].x, cb0[4].x
mad_sat r0.y, r0.y, r0.z, cb0[3].x
add r0.z, v4.z, -cb0[6].z
mul r0.z, r0.z, cb0[7].x
max r0.z, r0.z, l(0.000000)
log r0.z, r0.z
mul r0.z, r0.z, cb0[8].x
exp r0.z, r0.z
mul_sat r0.z, r0.z, cb0[9].x
mul r0.y, r0.z, r0.y
add r1.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.z, r1.xyzx, r1.xyzx
sqrt r0.z, r0.z
mad_sat r0.z, r0.z, cb0[10].x, cb0[10].y
mul r0.y, r0.z, r0.y
mul r0.x, r0.y, r0.x
mad r0.x, r0.x, cb0[13].x, l(0.00781250000)
log r0.x, r0.x
mad_sat r0.x, r0.x, l(0.0769230798), l(0.538461566)
add r0.x, r5.x, r0.x
mul o2.y, r0.x, l(0.500000)
mov_sat r0.x, cb0[12].x
add o2.w, r0.x, v0.w
ret
// Approximately 0 instruction slots used
