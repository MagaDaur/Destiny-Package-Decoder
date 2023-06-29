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
dcl_constantbuffer cb0[19], immediateIndexed
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
dcl_temps 14
add r0.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.x, r0.xyzx, r0.xyzx
sqrt r0.x, r0.x
mad r0.yz, v3.xxyx, cb0[17].xxyx, cb0[17].zzwz
mad r1.xy, r0.yzyy, cb7[3].xyxx, cb7[3].zwzz
mad r0.yz, r0.yyzy, cb7[4].xxyx, cb7[4].zzwz
sample_indexable(texture2d)(float,float,float,float) r1.xyzw, r1.xyxx, t6.xyzw, s1
sample_indexable(texture2d)(float,float,float,float) r0.yzw, r0.yzyy, t7.wxyz, s1
mad r0.yz, r0.yyzy, cb7[5].xxxx, cb7[5].yyyy
add_sat r0.w, r0.w, cb7[5].z
mov_sat r2.xyzw, cb7[29].xyzw
mov_sat r3.xy, cb7[30].yzyy
mov_sat r4.xyzw, cb7[35].xyzw
sample_indexable(texture2d)(float,float,float,float) r5.xyz, v3.xyxx, t0.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r3.zw, v3.xyxx, t1.zwxy, s3
mad r3.zw, r3.zzzw, cb0[18].xxxx, cb0[18].yyyy
sample_indexable(texture2d)(float,float,float,float) r6.xyzw, v3.xyxx, t2.xyzw, s4
ge r5.w, r6.w, l(0.156862751)
and r7.x, r5.w, l(0x3f800000)
add r7.yzw, r6.yywz, l(0.000000, -0.250000, -0.188235298, -0.156862751)
mul_sat r7.zw, r7.zzzw, l(0.000000, 0.000000, 1.231884, 1.18604648)
mul_sat r8.xyz, r6.zwyz, l(7.968750, 7.968750, 4.000000, 0.000000)
movc r6.z, v6.x, l(1.000000), l(-1.000000)
mad_sat r6.w, cb7[33].y, r7.z, cb7[33].x
mad_sat r6.w, cb7[33].w, r6.w, cb7[33].z
add r7.z, l(128.500000), cb0[2].x
mul r7.z, r7.z, l(0.00390625000)
ge r9.x, l(0.050000), r8.y
movc r7.z, r9.x, r7.z, l(-1.000000)
mul_sat r9.xyz, r1.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r1.xyz, r1.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r10.xyz, cb7[27].xyzx, r9.xyzx, r1.xyzx
add r10.xyz, r10.xyzx, -cb7[27].xyzx
mad r10.xyz, r2.xxxx, r10.xyzx, cb7[27].xyzx
mad_sat r2.x, cb7[31].y, r6.y, cb7[31].x
mad_sat r2.x, cb7[31].w, r2.x, cb7[31].z
mov_sat r7.y, r7.y
mad_sat r1.w, r1.w, r8.z, r7.y
mad_sat r7.y, cb7[31].y, r1.w, cb7[31].x
mad_sat r7.y, cb7[31].w, r7.y, cb7[31].z
add r7.y, -r2.x, r7.y
mad r2.x, r2.z, r7.y, r2.x
mul_sat r11.xyz, r5.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r12.xyz, r5.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r10.xyz, r10.xyzx, r11.xyzx, r12.xyzx
mad r13.xy, r0.yzyy, r2.yyyy, r3.zwzz
add r0.w, r0.w, l(-1.000000)
mad r2.y, r2.y, r0.w, l(1.000000)
mad_sat r1.xyz, cb7[32].xyzx, r9.xyzx, r1.xyzx
add r1.xyz, r1.xyzx, -cb7[32].xyzx
mad r1.xyz, r4.xxxx, r1.xyzx, cb7[32].xyzx
mad_sat r1.xyz, r1.xyzx, r11.xyzx, r12.xyzx
mad_sat r2.z, cb7[34].y, r6.y, cb7[34].x
mad_sat r2.z, cb7[34].w, r2.z, cb7[34].z
mad_sat r1.w, cb7[34].y, r1.w, cb7[34].x
mad_sat r1.w, cb7[34].w, r1.w, cb7[34].z
add r1.w, -r2.z, r1.w
mad r1.w, r4.z, r1.w, r2.z
mad r0.yz, r0.yyzy, r4.yyyy, r3.zzwz
mad r0.w, r4.y, r0.w, l(1.000000)
add r4.xyz, -r1.xyzx, r10.xyzx
mad r1.xyz, r6.wwww, r4.xyzx, r1.xyzx
add r4.xy, -r0.yzyy, r13.xyxx
mad r0.yz, r6.wwww, r4.xxyx, r0.yyzy
add r2.x, -r1.w, r2.x
mad r1.w, r6.w, r2.x, r1.w
add r2.x, r2.w, -r4.w
mad r4.y, r6.w, r2.x, r4.w
add r2.x, -r0.w, r2.y
mad r0.w, r6.w, r2.x, r0.w
add r2.x, l(128.500000), cb7[30].x
mul r2.x, r2.x, l(0.00390625000)
ge r2.y, l(0.050000), r2.w
movc r2.x, r2.y, r2.x, l(-1.000000)
min r0.w, r0.w, r1.w
lt r1.w, l(0.000100), r3.x
mul r2.y, r3.x, l(-2.000000)
mad r2.z, r3.x, l(-2.000000), l(-0.200000)
mul r2.z, r0.w, r2.z
mad r2.y, r2.z, l(-5.002501), r2.y
min r2.y, r0.w, r2.y
movc r4.x, r1.w, r2.y, r0.w
add r1.xyz, -r5.xyzx, r1.xyzx
mad r1.xyz, r7.xxxx, r1.xyzx, r5.xyzx
add r0.yz, -r3.zzwz, r0.yyzy
mad r5.xy, r7.xxxx, r0.yzyy, r3.zwzz
mov r8.w, r6.y
add r0.yz, -r8.wwyw, r4.xxyx
mad r0.yz, r7.xxxx, r0.yyzy, r8.wwyw
mul r0.w, r3.y, r7.x
movc o0.w, r5.w, r2.x, r7.z
ne r1.w, l(0.000000, 0.000000, 0.000000, 0.000000), cb7[28].w
and r2.xyz, r1.wwww, cb7[28].xyzx
mul r1.w, r7.w, cb0[16].x
mul r2.xyz, r2.xyzx, r1.wwww
mul r2.xyz, r7.xxxx, r2.xyzx
mul r3.xyz, r6.wwww, r2.xyzx
mad r2.xyz, r2.xyzx, r6.wwww, r1.xyzx
max r1.w, r2.y, r2.x
max r1.w, r2.z, r1.w
add_sat r1.w, r1.w, l(-1.000000)
add r1.w, -r1.w, l(1.000000)
mad r1.xyz, r1.xyzx, r1.wwww, r3.xyzx
max r1.w, r1.y, r1.x
max r1.w, r1.z, r1.w
max r1.w, r1.w, l(1.000000)
div r1.xyz, r1.xyzx, r1.wwww
max r1.w, r3.y, r3.x
max r1.w, r3.z, r1.w
dp2 r2.x, r5.xyxx, r5.xyxx
add r2.x, -r2.x, l(1.000000)
max r2.x, r2.x, l(0.000000)
sqrt r5.z, r2.x
dp3 r2.x, r5.xyzx, r5.xyzx
rsq r2.x, r2.x
mul r2.xyz, r2.xxxx, r5.xyzx
mul r3.xyz, r6.zzzz, v0.xyzx
mul r4.xyz, r2.yyyy, v2.xyzx
mad r2.xyw, v1.xyxz, r2.xxxx, r4.xyxz
mad r2.xyz, r3.xyzx, r2.zzzz, r2.xywx
dp3 r2.w, r2.xyzx, r2.xyzx
rsq r2.w, r2.w
mul r2.xyz, r2.wwww, r2.xyzx
ne r2.w, l(0.000000), cb0[4].x
if_nz r2.w
  deriv_rtx_coarse r4.xy, v3.xyxx
  dp2 r2.w, r4.xyxx, r4.xyxx
  sqrt r2.w, r2.w
  deriv_rty_coarse r4.xy, v3.xyxx
  dp2 r3.w, r4.xyxx, r4.xyxx
  sqrt r3.w, r3.w
  max r2.w, r2.w, r3.w
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w
  log r2.w, r2.w
  round_ni r3.w, r2.w
  exp r3.w, r3.w
  round_pi r4.x, r2.w
  exp r4.x, r4.x
  mul r4.yz, r3.wwww, v3.xxyx
  round_ni r4.yz, r4.yyzy
  dp2 r3.w, r4.yzyy, l(17.000000, 0.100000, 0.000000, 0.000000)
  sincos r3.w, null, r3.w
  mul r3.w, r3.w, l(10000.000000)
  mad r4.y, r4.z, l(13.000000), r4.y
  sincos r4.y, null, r4.y
  add r4.y, |r4.y|, l(0.100000)
  mul r3.w, r3.w, r4.y
  frc r3.w, r3.w
  mul r4.xy, r4.xxxx, v3.xyxx
  round_ni r4.xy, r4.xyxx
  dp2 r4.z, r4.xyxx, l(17.000000, 0.100000, 0.000000, 0.000000)
  sincos r4.z, null, r4.z
  mul r4.z, r4.z, l(10000.000000)
  mad r4.x, r4.y, l(13.000000), r4.x
  sincos r4.x, null, r4.x
  add r4.x, |r4.x|, l(0.100000)
  mul r4.x, r4.x, r4.z
  frc r4.x, r4.x
  frc r2.w, r2.w
  add r4.x, -r3.w, r4.x
  mad r3.w, r2.w, r4.x, r3.w
  add r4.x, -r2.w, l(1.000000)
  min r2.w, r2.w, r4.x
  mul r4.x, r3.w, r3.w
  add r4.y, r2.w, r2.w
  add r4.z, -r2.w, l(1.000000)
  mul r4.y, r4.z, r4.y
  mad r4.w, -r2.w, l(0.500000), r3.w
  div r4.xw, r4.xxxw, r4.yyyz
  add r5.x, -r3.w, l(1.000000)
  mul r5.x, r5.x, r5.x
  div r4.y, r5.x, r4.y
  add r4.y, -r4.y, l(1.000000)
  lt r4.z, r3.w, r4.z
  lt r2.w, r3.w, r2.w
  movc r2.w, r2.w, r4.x, r4.w
  movc r2.w, r4.z, r2.w, r4.y
  ge r3.w, l(0.500000), cb0[3].x
  add r4.x, cb0[3].x, cb0[3].x
  mad r4.x, r2.w, -r4.x, r4.x
  mad r4.y, cb0[3].x, l(2.000000), l(-2.000000)
  mad r2.w, r2.w, r4.y, l(1.000000)
  movc r2.w, r3.w, r4.x, r2.w
else
  mov r2.w, cb0[3].x
endif
add r2.w, -r2.w, r8.x
lt r2.w, r2.w, l(0.000000)
discard_nz r2.w
mov_sat r2.w, cb0[14].x
dp3 r3.w, r3.xyzx, r3.xyzx
rsq r3.w, r3.w
mul r3.xyz, r3.wwww, r3.xyzx
dp3 r3.x, cb0[7].xyzx, r3.xyzx
add r3.y, -cb0[5].x, cb0[6].x
mad_sat r3.x, r3.x, r3.y, cb0[5].x
add r3.y, v4.z, -cb0[8].z
mul r3.y, r3.y, cb0[9].x
max r3.y, r3.y, l(0.000000)
log r3.y, r3.y
mul r3.y, r3.y, cb0[10].x
exp r3.y, r3.y
mul_sat r3.y, r3.y, cb0[11].x
mul r3.x, r3.y, r3.x
mad_sat r0.x, r0.x, cb0[12].x, cb0[12].y
mul r0.x, r0.x, r3.x
dp3 r3.x, r1.xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
max r3.x, r3.x, l(0.000100)
log r3.x, r3.x
mul r3.x, r3.x, -cb0[13].x
exp r3.x, r3.x
mul r0.x, r0.x, r3.x
add o2.w, r2.w, v0.w
mad r0.x, r0.x, cb0[15].x, r1.w
mad r0.y, r0.y, l(0.125000), l(0.375000)
mad_sat o1.xyz, r2.xyzx, r0.yyyy, l(0.500000, 0.500000, 0.500000, 0.000000)
add r0.x, r0.x, l(0.00781250000)
log r0.x, r0.x
mad_sat r0.x, r0.x, l(0.0769230798), l(0.538461566)
mov_sat r6.x, r6.x
add r0.x, r0.x, r6.x
mul o2.yz, r0.xxwx, l(0.000000, 0.500000, 0.800000, 0.000000)
mov o0.xyz, r1.xyzx
mov o1.w, l(0)
mov o2.x, r0.z
ret
// Approximately 0 instruction slots used
