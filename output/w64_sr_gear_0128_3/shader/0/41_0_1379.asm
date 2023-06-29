//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:12 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float   xyz
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyz         4     NONE   float   xyz
// SV_POSITION              0   xyzw        5      POS   float
// SV_isFrontFace           0   x           6    FFACE    uint
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
dcl_constantbuffer cb0[18], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb7[63], dynamicIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t9
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 15
add r0.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.x, r0.xyzx, r0.xyzx
sqrt r0.x, r0.x
ftou r0.y, v2.w
uge r0.z, r0.y, l(4)
if_nz r0.z
  mad r0.zw, v3.zzzw, cb7[6].xxxy, cb7[6].zzzw
  mad r1.xy, v3.zwzz, cb7[7].xyxx, cb7[7].zwzz
  sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.zwzz, t8.wxyz, s1
  sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.xyxx, t9.xyzw, s1
  mad r0.zw, r1.xxxy, cb7[8].xxxx, cb7[8].yyyy
  add_sat r1.x, r1.z, cb7[8].z
else
  uge r1.y, r0.y, l(2)
  if_nz r1.y
    mad r1.yz, v3.zzwz, cb7[3].xxyx, cb7[3].zzwz
    mad r3.xy, v3.zwzz, cb7[4].xyxx, cb7[4].zwzz
    sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.yzyy, t6.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r1.yzw, r3.xyxx, t7.wxyz, s1
    mad r0.zw, r1.yyyz, cb7[5].xxxx, cb7[5].yyyy
    add_sat r1.x, r1.w, cb7[5].z
  else
    mad r1.yz, v3.zzwz, cb7[0].xxyx, cb7[0].zzwz
    mad r3.xy, v3.zwzz, cb7[1].xyxx, cb7[1].zwzz
    sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.yzyy, t4.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r1.yzw, r3.xyxx, t5.wxyz, s1
    mad r0.zw, r1.yyyz, cb7[2].xxxx, cb7[2].yyyy
    add_sat r1.x, r1.w, cb7[2].z
  endif
endif
imad r3.xyzw, l(9, 9, 9, 9), r0.yyyy, l(9, 10, 11, 12)
imad r4.xyzw, l(9, 9, 9, 9), r0.yyyy, l(13, 14, 15, 16)
imad r0.y, l(9), r0.y, l(17)
mov_sat r5.xyzw, cb7[r3.z + 0].xyzw
mov_sat r1.yz, cb7[r3.w + 0].yyzy
mov_sat r6.xyzw, cb7[r0.y + 0].xyzw
sample_indexable(texture2d)(float,float,float,float) r7.xyz, v3.xyxx, t0.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r8.xy, v3.xyxx, t1.xyzw, s3
mad r8.xy, r8.xyxx, cb0[17].xxxx, cb0[17].yyyy
sample_indexable(texture2d)(float,float,float,float) r9.xyzw, v3.xyxx, t2.xyzw, s4
ge r0.y, r9.w, l(0.156862751)
and r1.w, r0.y, l(0x3f800000)
add r10.xyz, r9.ywzy, l(-0.250000, -0.188235298, -0.156862751, 0.000000)
mul_sat r8.zw, r10.yyyz, l(0.000000, 0.000000, 1.231884, 1.18604648)
mul_sat r11.xyz, r9.zwyz, l(7.968750, 7.968750, 4.000000, 0.000000)
mad_sat r3.z, cb7[r4.z + 0].y, r8.z, cb7[r4.z + 0].x
mad_sat r3.z, cb7[r4.z + 0].w, r3.z, cb7[r4.z + 0].z
add r4.z, l(128.500000), cb0[2].x
mul r4.z, r4.z, l(0.00390625000)
ge r7.w, l(0.050000), r11.y
movc r4.z, r7.w, r4.z, l(-1.000000)
mul_sat r10.yzw, r2.yyzw, l(0.000000, 4.000000, 4.000000, 4.000000)
add_sat r2.yzw, r2.yyzw, l(0.000000, -0.250000, -0.250000, -0.250000)
mad_sat r12.xyz, cb7[r3.x + 0].xyzx, r10.yzwy, r2.yzwy
add r12.xyz, r12.xyzx, -cb7[r3.x + 0].xyzx
mad r12.xyz, r5.xxxx, r12.xyzx, cb7[r3.x + 0].xyzx
mad_sat r3.x, cb7[r4.x + 0].y, r9.y, cb7[r4.x + 0].x
mad_sat r3.x, cb7[r4.x + 0].w, r3.x, cb7[r4.x + 0].z
mov_sat r10.x, r10.x
mad_sat r2.x, r2.x, r11.z, r10.x
mad_sat r5.x, cb7[r4.x + 0].y, r2.x, cb7[r4.x + 0].x
mad_sat r4.x, cb7[r4.x + 0].w, r5.x, cb7[r4.x + 0].z
add r4.x, -r3.x, r4.x
mad r3.x, r5.z, r4.x, r3.x
mul_sat r13.xyz, r7.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r14.xyz, r7.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r12.xyz, r12.xyzx, r13.xyzx, r14.xyzx
mad r5.xz, r0.zzwz, r5.yyyy, r8.xxyx
add r1.x, r1.x, l(-1.000000)
mad r4.x, r5.y, r1.x, l(1.000000)
mad_sat r2.yzw, cb7[r4.y + 0].xxyz, r10.yyzw, r2.yyzw
add r2.yzw, r2.yyzw, -cb7[r4.y + 0].xxyz
mad r2.yzw, r6.xxxx, r2.yyzw, cb7[r4.y + 0].xxyz
mad_sat r2.yzw, r2.yyzw, r13.xxyz, r14.xxyz
mad_sat r4.y, cb7[r4.w + 0].y, r9.y, cb7[r4.w + 0].x
mad_sat r4.y, cb7[r4.w + 0].w, r4.y, cb7[r4.w + 0].z
mad_sat r2.x, cb7[r4.w + 0].y, r2.x, cb7[r4.w + 0].x
mad_sat r2.x, cb7[r4.w + 0].w, r2.x, cb7[r4.w + 0].z
add r2.x, -r4.y, r2.x
mad r2.x, r6.z, r2.x, r4.y
mad r0.zw, r0.zzzw, r6.yyyy, r8.xxxy
mad r1.x, r6.y, r1.x, l(1.000000)
add r6.xyz, -r2.yzwy, r12.xyzx
mad r2.yzw, r3.zzzz, r6.xxyz, r2.yyzw
add r4.yw, -r0.zzzw, r5.xxxz
mad r0.zw, r3.zzzz, r4.yyyw, r0.zzzw
add r3.x, -r2.x, r3.x
mad r2.x, r3.z, r3.x, r2.x
add r3.x, r5.w, -r6.w
mad r5.y, r3.z, r3.x, r6.w
add r3.x, -r1.x, r4.x
mad r1.x, r3.z, r3.x, r1.x
add r3.x, l(128.500000), cb7[r3.w + 0].x
mul r3.x, r3.x, l(0.00390625000)
ge r3.w, l(0.050000), r5.w
movc r3.x, r3.w, r3.x, l(-1.000000)
min r1.x, r1.x, r2.x
lt r2.x, l(0.000100), r1.y
mul r3.w, r1.y, l(-2.000000)
mad r1.y, r1.y, l(-2.000000), l(-0.200000)
mul r1.y, r1.x, r1.y
mad r1.y, r1.y, l(-5.002501), r3.w
min r1.y, r1.y, r1.x
movc r5.x, r2.x, r1.y, r1.x
add r2.xyz, -r7.xyzx, r2.yzwy
mad r2.xyz, r1.wwww, r2.xyzx, r7.xyzx
add r0.zw, -r8.xxxy, r0.zzzw
mad r6.xy, r1.wwww, r0.zwzz, r8.xyxx
mov r11.w, r9.y
add r0.zw, -r11.wwwy, r5.xxxy
mad r0.zw, r1.wwww, r0.zzzw, r11.wwwy
mul r1.x, r1.z, r1.w
movc o0.w, r0.y, r3.x, r4.z
ne r0.y, l(0.000000, 0.000000, 0.000000, 0.000000), cb7[r3.y + 0].w
and r3.xyw, r0.yyyy, cb7[r3.y + 0].xyxz
mul r0.y, r8.w, cb0[16].x
mul r3.xyw, r3.xyxw, r0.yyyy
mul r1.yzw, r1.wwww, r3.xxyw
mul r3.xyw, r3.zzzz, r1.yzyw
mad r1.yzw, r1.yyzw, r3.zzzz, r2.xxyz
max r0.y, r1.z, r1.y
max r0.y, r1.w, r0.y
add_sat r0.y, r0.y, l(-1.000000)
add r0.y, -r0.y, l(1.000000)
mad r1.yzw, r2.xxyz, r0.yyyy, r3.xxyw
max r0.y, r1.z, r1.y
max r0.y, r1.w, r0.y
max r0.y, r0.y, l(1.000000)
div r1.yzw, r1.yyzw, r0.yyyy
max r0.y, r3.y, r3.x
max r0.y, r3.w, r0.y
dp2 r2.x, r6.xyxx, r6.xyxx
add r2.x, -r2.x, l(1.000000)
max r2.x, r2.x, l(0.000000)
sqrt r6.z, r2.x
dp3 r2.x, r6.xyzx, r6.xyzx
rsq r2.x, r2.x
mul r2.xyz, r2.xxxx, r6.xyzx
mul r3.xyz, r2.yyyy, v2.xyzx
mad r2.xyw, v1.xyxz, r2.xxxx, r3.xyxz
mad r2.xyz, v0.xyzx, r2.zzzz, r2.xywx
dp3 r2.w, r2.xyzx, r2.xyzx
rsq r2.w, r2.w
mul r2.xyz, r2.wwww, r2.xyzx
ne r2.w, l(0.000000), cb0[4].x
if_nz r2.w
  deriv_rtx_coarse r3.xy, v3.xyxx
  dp2 r2.w, r3.xyxx, r3.xyxx
  sqrt r2.w, r2.w
  deriv_rty_coarse r3.xy, v3.xyxx
  dp2 r3.x, r3.xyxx, r3.xyxx
  sqrt r3.x, r3.x
  max r2.w, r2.w, r3.x
  div r2.w, l(1.000000, 1.000000, 1.000000, 1.000000), r2.w
  log r2.w, r2.w
  round_ni r3.x, r2.w
  exp r3.x, r3.x
  round_pi r3.y, r2.w
  exp r3.y, r3.y
  mul r3.xz, r3.xxxx, v3.xxyx
  round_ni r3.xz, r3.xxzx
  dp2 r3.w, r3.xzxx, l(17.000000, 0.100000, 0.000000, 0.000000)
  sincos r3.w, null, r3.w
  mul r3.w, r3.w, l(10000.000000)
  mad r3.x, r3.z, l(13.000000), r3.x
  sincos r3.x, null, r3.x
  add r3.x, |r3.x|, l(0.100000)
  mul r3.x, r3.x, r3.w
  mul r3.yz, r3.yyyy, v3.xxyx
  round_ni r3.yz, r3.yyzy
  dp2 r3.w, r3.yzyy, l(17.000000, 0.100000, 0.000000, 0.000000)
  sincos r3.w, null, r3.w
  mul r3.w, r3.w, l(10000.000000)
  mad r3.y, r3.z, l(13.000000), r3.y
  sincos r3.y, null, r3.y
  add r3.y, |r3.y|, l(0.100000)
  mul r3.y, r3.y, r3.w
  frc r3.xy, r3.xyxx
  frc r2.w, r2.w
  add r3.y, -r3.x, r3.y
  mad r3.x, r2.w, r3.y, r3.x
  add r3.y, -r2.w, l(1.000000)
  min r2.w, r2.w, r3.y
  add r3.z, r2.w, r2.w
  add r3.w, -r2.w, l(1.000000)
  mul r3.yz, r3.xxwx, r3.xxzx
  div r3.y, r3.y, r3.z
  mad r4.x, -r2.w, l(0.500000), r3.x
  div r4.x, r4.x, r3.w
  add r4.y, -r3.x, l(1.000000)
  mul r4.y, r4.y, r4.y
  div r3.z, r4.y, r3.z
  add r3.z, -r3.z, l(1.000000)
  lt r3.w, r3.x, r3.w
  lt r2.w, r3.x, r2.w
  movc r2.w, r2.w, r3.y, r4.x
  movc r2.w, r3.w, r2.w, r3.z
  ge r3.x, l(0.500000), cb0[3].x
  add r3.y, cb0[3].x, cb0[3].x
  mad r3.y, r2.w, -r3.y, r3.y
  mad r3.z, cb0[3].x, l(2.000000), l(-2.000000)
  mad r2.w, r2.w, r3.z, l(1.000000)
  movc r2.w, r3.x, r3.y, r2.w
else
  mov r2.w, cb0[3].x
endif
add r2.w, -r2.w, r11.x
lt r2.w, r2.w, l(0.000000)
discard_nz r2.w
mov_sat r2.w, cb0[14].x
dp3 r3.x, v0.xyzx, v0.xyzx
rsq r3.x, r3.x
mul r3.xyz, r3.xxxx, v0.xyzx
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
dp3 r3.x, r1.yzwy, l(0.300000, 0.590000, 0.110000, 0.000000)
max r3.x, r3.x, l(0.000100)
log r3.x, r3.x
mul r3.x, r3.x, -cb0[13].x
exp r3.x, r3.x
mul r0.x, r0.x, r3.x
add o2.w, r2.w, v0.w
mad r0.x, r0.x, cb0[15].x, r0.y
mad r0.y, r0.z, l(0.125000), l(0.375000)
mad_sat o1.xyz, r2.xyzx, r0.yyyy, l(0.500000, 0.500000, 0.500000, 0.000000)
add r0.x, r0.x, l(0.00781250000)
log r0.x, r0.x
mad_sat r0.x, r0.x, l(0.0769230798), l(0.538461566)
mov_sat r9.x, r9.x
add r0.x, r0.x, r9.x
mul o2.y, r0.x, l(0.500000)
mul o2.z, r1.x, l(0.800000)
mov o0.xyz, r1.yzwy
mov o1.w, l(0)
mov o2.x, r0.w
ret
// Approximately 0 instruction slots used
