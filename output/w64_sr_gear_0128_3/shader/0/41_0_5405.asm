//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:59 2023
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
// TEXCOORD                 8   xyzw        5     NONE   float    y
// SV_POSITION              0   xyzw        6      POS   float
// SV_isFrontFace           0   x           7    FFACE    uint   x
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
dcl_constantbuffer cb0[39], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb7[63], dynamicIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_sampler s6, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xy
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.y
dcl_input_ps_sgv v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 14
add r0.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r1.x, r0.w
mul r0.xyz, r0.xyzx, r1.xxxx
sqrt r0.w, r0.w
dp3 r0.x, r0.xyzx, v0.xyzx
mad r0.yz, v3.xxyx, cb0[37].xxyx, cb0[37].zzwz
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v3.xyxx, t3.xyzw, s6
add r1.w, -r1.z, r1.y
lt r1.w, r1.w, l(0.00470588217)
movc r1.z, r1.w, r1.y, r1.z
deriv_rtx_coarse r2.xyz, r1.xyzx
deriv_rty_coarse r3.xyz, r1.xyzx
mul r2.xy, r2.yzyy, r2.xxxx
mul r2.zw, r3.yyyz, r3.xxxx
lt r3.xy, |r2.zwzz|, |r2.xyxx|
movc r2.xy, r3.xyxx, r2.xyxx, r2.zwzz
add r1.w, r1.x, l(-0.500000)
lt r1.w, |r1.w|, l(0.00470588217)
add r2.z, r1.y, r1.x
add r2.z, r2.z, l(-1.000000)
lt r2.z, |r2.z|, l(0.00588235306)
lt r2.xy, r2.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
and r2.x, r2.x, r2.z
add r2.z, -r1.y, l(1.000000)
movc r2.x, r2.x, r2.z, r1.x
add r2.z, r1.z, r2.x
add r2.z, r2.z, l(-1.000000)
lt r2.z, |r2.z|, l(0.00588235306)
and r2.y, r2.y, r2.z
add r2.z, -r1.z, l(1.000000)
movc r2.x, r2.y, r2.z, r2.x
movc r1.x, r1.w, r2.x, r1.x
ge r1.z, r1.z, l(0.500000)
if_nz r1.z
  mad r1.zw, r0.yyyz, cb7[6].xxxy, cb7[6].zzzw
  mad r2.xy, r0.yzyy, cb7[7].xyxx, cb7[7].zwzz
  sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.zwzz, t8.wxyz, s1
  sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.xyxx, t9.xyzw, s1
  mad r1.zw, r2.xxxy, cb7[8].xxxx, cb7[8].yyyy
  add_sat r2.x, r2.z, cb7[8].z
  mov r2.y, l(4)
else
  ge r1.y, r1.y, l(0.500000)
  if_nz r1.y
    mad r2.zw, r0.yyyz, cb7[3].xxxy, cb7[3].zzzw
    mad r4.xy, r0.yzyy, cb7[4].xyxx, cb7[4].zwzz
    sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.zwzz, t6.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t7.xyzw, s1
    mad r1.zw, r4.xxxy, cb7[5].xxxx, cb7[5].yyyy
    add_sat r2.x, r4.z, cb7[5].z
    mov r2.y, l(2)
  else
    mad r2.zw, r0.yyyz, cb7[0].xxxy, cb7[0].zzzw
    mad r0.yz, r0.yyzy, cb7[1].xxyx, cb7[1].zzwz
    sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.zwzz, t4.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r4.xyz, r0.yzyy, t5.xyzw, s1
    mad r1.zw, r4.xxxy, cb7[2].xxxx, cb7[2].yyyy
    add_sat r2.x, r4.z, cb7[2].z
    mov r2.y, l(0)
  endif
endif
ge r0.y, r1.x, l(0.500000)
iadd r0.z, r2.y, l(1)
movc r0.y, r0.y, r0.z, r2.y
imul null, r0.y, r0.y, l(9)
mov_sat r4.xyzw, cb7[r0.y + 11].xyzw
mov_sat r1.xy, cb7[r0.y + 12].yzyy
mov_sat r5.xyzw, cb7[r0.y + 17].xyzw
sample_indexable(texture2d)(float,float,float,float) r2.yzw, v3.xyxx, t0.wxyz, s3
sample_indexable(texture2d)(float,float,float,float) r6.xy, v3.xyxx, t1.xyzw, s4
mad r6.xy, r6.xyxx, cb0[38].xxxx, cb0[38].yyyy
sample_indexable(texture2d)(float,float,float,float) r7.xyzw, v3.xyxx, t2.xyzw, s5
ge r0.z, r7.w, l(0.156862751)
and r6.z, r0.z, l(0x3f800000)
add r8.xyz, r7.ywzy, l(-0.250000, -0.188235298, -0.156862751, 0.000000)
mul_sat r8.yz, r8.yyzy, l(0.000000, 1.231884, 1.18604648, 0.000000)
mul_sat r9.xyz, r7.zwyz, l(7.968750, 7.968750, 4.000000, 0.000000)
movc r6.w, v7.x, l(1.000000), l(-1.000000)
mad_sat r7.z, cb7[r0.y + 15].y, r8.y, cb7[r0.y + 15].x
mad_sat r7.z, cb7[r0.y + 15].w, r7.z, cb7[r0.y + 15].z
add r7.w, l(128.500000), cb0[2].x
mul r7.w, r7.w, l(0.00390625000)
ge r8.y, l(0.050000), r9.y
movc r7.w, r8.y, r7.w, l(-1.000000)
mul_sat r10.xyz, r3.yzwy, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r3.yzw, r3.yyzw, l(0.000000, -0.250000, -0.250000, -0.250000)
mad_sat r11.xyz, cb7[r0.y + 9].xyzx, r10.xyzx, r3.yzwy
add r11.xyz, r11.xyzx, -cb7[r0.y + 9].xyzx
mad r11.xyz, r4.xxxx, r11.xyzx, cb7[r0.y + 9].xyzx
mad_sat r4.x, cb7[r0.y + 13].y, r7.y, cb7[r0.y + 13].x
mad_sat r4.x, cb7[r0.y + 13].w, r4.x, cb7[r0.y + 13].z
mov_sat r8.x, r8.x
mad_sat r3.x, r3.x, r9.z, r8.x
mad_sat r8.x, cb7[r0.y + 13].y, r3.x, cb7[r0.y + 13].x
mad_sat r8.x, cb7[r0.y + 13].w, r8.x, cb7[r0.y + 13].z
add r8.x, -r4.x, r8.x
mad r4.x, r4.z, r8.x, r4.x
mul_sat r8.xyw, r2.yzyw, l(4.000000, 4.000000, 0.000000, 4.000000)
add_sat r12.xyz, r2.yzwy, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r11.xyz, r11.xyzx, r8.xywx, r12.xyzx
mad r13.xy, r1.zwzz, r4.yyyy, r6.xyxx
add r2.x, r2.x, l(-1.000000)
mad r4.y, r4.y, r2.x, l(1.000000)
mad_sat r3.yzw, cb7[r0.y + 14].xxyz, r10.xxyz, r3.yyzw
add r3.yzw, r3.yyzw, -cb7[r0.y + 14].xxyz
mad r3.yzw, r5.xxxx, r3.yyzw, cb7[r0.y + 14].xxyz
mad_sat r3.yzw, r3.yyzw, r8.xxyw, r12.xxyz
mad_sat r4.z, cb7[r0.y + 16].y, r7.y, cb7[r0.y + 16].x
mad_sat r4.z, cb7[r0.y + 16].w, r4.z, cb7[r0.y + 16].z
mad_sat r3.x, cb7[r0.y + 16].y, r3.x, cb7[r0.y + 16].x
mad_sat r3.x, cb7[r0.y + 16].w, r3.x, cb7[r0.y + 16].z
add r3.x, -r4.z, r3.x
mad r3.x, r5.z, r3.x, r4.z
mad r1.zw, r1.zzzw, r5.yyyy, r6.xxxy
mad r2.x, r5.y, r2.x, l(1.000000)
add r5.xyz, -r3.yzwy, r11.xyzx
mad r10.xyz, r7.zzzz, r5.xyzx, r3.yzwy
add r3.yz, -r1.zzwz, r13.xxyx
mad r1.zw, r7.zzzz, r3.yyyz, r1.zzzw
add r3.y, -r3.x, r4.x
mad r10.w, r7.z, r3.y, r3.x
add r3.x, r4.w, -r5.w
mad r3.y, r7.z, r3.x, r5.w
add r3.z, -r2.x, r4.y
mad r2.x, r7.z, r3.z, r2.x
add r3.z, cb0[21].x, -cb0[36].x
lt r3.z, |r3.z|, l(0.000010)
and r3.z, r3.z, l(0x3f800000)
add r3.w, -v5.y, l(1.000000)
mul_sat r4.x, r3.w, r8.z
mad_sat r4.y, r4.x, cb0[34].x, cb0[34].y
add r4.z, -cb0[6].x, cb0[21].x
lt r4.z, |r4.z|, l(0.000010)
and r4.z, r4.z, l(0x3f800000)
add r5.x, cb0[21].x, -cb0[24].x
lt r5.x, |r5.x|, l(0.000010)
add r5.y, cb0[21].x, -cb0[23].x
lt r5.y, |r5.y|, l(0.000010)
add r5.z, cb0[21].x, -cb0[22].x
lt r5.z, |r5.z|, l(0.000010)
and r5.xyz, r5.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
add r8.xyw, cb0[19].xyxz, -cb0[20].xyxz
mad r8.xyw, r5.zzzz, r8.xyxw, cb0[20].xyxz
add r11.xyz, -r8.xywx, cb0[18].xyzx
mad r5.yzw, r5.yyyy, r11.xxyz, r8.xxyw
add r8.xyw, -r5.yzyw, cb0[17].xyxz
mad r5.xyz, r5.xxxx, r8.xywx, r5.yzwy
add r8.xyw, -r5.xyxz, cb0[16].xyxz
mad r5.xyz, r4.zzzz, r8.xywx, r5.xyzx
mad r5.w, r4.x, cb0[35].x, cb0[35].y
add r11.xyz, -r5.xyzx, cb0[33].xyzx
add r11.w, r4.y, -r5.w
mad r11.xyzw, r3.zzzz, r11.xyzw, r5.xyzw
add r12.xyzw, -r10.xyzw, r11.xyzw
mad r10.xyzw, r11.wwww, r12.xyzw, r10.xyzw
add r0.y, l(128.500000), cb7[r0.y + 12].x
mul r0.y, r0.y, l(0.00390625000)
ge r3.z, l(0.050000), r4.w
movc r0.y, r3.z, r0.y, l(-1.000000)
min r2.x, r2.x, r10.w
lt r3.z, l(0.000100), r1.x
mul r4.y, r1.x, l(-2.000000)
mad r1.x, r1.x, l(-2.000000), l(-0.200000)
mul r1.x, r2.x, r1.x
mad r1.x, r1.x, l(-5.002501), r4.y
min r1.x, r1.x, r2.x
movc r3.x, r3.z, r1.x, r2.x
add r4.yzw, -r2.yyzw, r10.xxyz
mad r2.xyz, r6.zzzz, r4.yzwy, r2.yzwy
add r1.xz, -r6.xxyx, r1.zzwz
mad r10.xy, r6.zzzz, r1.xzxx, r6.xyxx
mov r9.w, r7.y
add r1.xz, -r9.wwyw, r3.xxyx
mad r1.xz, r6.zzzz, r1.xxzx, r9.wwyw
mul r1.y, r1.y, r6.z
movc o0.w, r0.z, r0.y, r7.w
mad_sat r0.y, r8.z, cb0[26].x, cb0[26].y
mul r0.y, r3.w, r0.y
mul r0.y, r0.y, cb0[6].x
mad r0.y, r4.x, cb0[25].x, r0.y
mul r3.xyz, r0.yyyy, r5.xyzx
mad r0.yz, v3.xxyx, cb0[27].xxyx, cb0[27].zzwz
sample_indexable(texture2d)(float,float,float,float) r0.yz, r0.yzyy, t10.zxyw, s2
add r0.yz, r0.yyzy, -cb0[29].xxyx
mad r0.yz, r0.yyzy, cb0[28].xxxx, v3.xxyx
mad r0.yz, r0.yyzy, cb0[30].xxyx, cb0[30].zzwz
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r0.yzyy, t11.xyzw, s2
mad r4.xyz, r4.xyzx, cb0[31].xxxx, cb0[31].yyyy
mul r0.x, r0.x, r0.x
mad_sat r0.x, r0.x, cb0[32].x, cb0[32].y
mul r0.xyz, r0.xxxx, r4.xyzx
mul r4.xyz, r0.xyzx, r3.xyzx
mad r0.xyz, r3.xyzx, r0.xyzx, r2.xyzx
max r0.x, r0.y, r0.x
max r0.x, r0.z, r0.x
add_sat r0.x, r0.x, l(-1.000000)
add r0.x, -r0.x, l(1.000000)
mad r0.xyz, r2.xyzx, r0.xxxx, r4.xyzx
max r1.w, r0.y, r0.x
max r1.w, r0.z, r1.w
max r1.w, r1.w, l(1.000000)
div r0.xyz, r0.xyzx, r1.wwww
max r1.w, r4.y, r4.x
max r1.w, r4.z, r1.w
dp2 r2.x, r10.xyxx, r10.xyxx
add r2.x, -r2.x, l(1.000000)
max r2.x, r2.x, l(0.000000)
sqrt r10.z, r2.x
dp3 r2.x, r10.xyzx, r10.xyzx
rsq r2.x, r2.x
mul r2.xyz, r2.xxxx, r10.xyzx
mul r3.xyz, r6.wwww, v0.xyzx
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
add r2.w, -r2.w, r9.x
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
mad_sat r0.w, r0.w, cb0[12].x, cb0[12].y
mul r0.w, r0.w, r3.x
dp3 r3.x, r0.xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
max r3.x, r3.x, l(0.000100)
log r3.x, r3.x
mul r3.x, r3.x, -cb0[13].x
exp r3.x, r3.x
mul r0.w, r0.w, r3.x
add o2.w, r2.w, v0.w
mad r0.w, r0.w, cb0[15].x, r1.w
mad r1.x, r1.x, l(0.125000), l(0.375000)
mad_sat o1.xyz, r2.xyzx, r1.xxxx, l(0.500000, 0.500000, 0.500000, 0.000000)
add r0.w, r0.w, l(0.00781250000)
log r0.w, r0.w
mad_sat r0.w, r0.w, l(0.0769230798), l(0.538461566)
mov_sat r7.x, r7.x
add r0.w, r0.w, r7.x
mul o2.y, r0.w, l(0.500000)
mul o2.z, r1.y, l(0.800000)
mov o0.xyz, r0.xyzx
mov o1.w, l(0)
mov o2.x, r1.z
ret
// Approximately 0 instruction slots used
