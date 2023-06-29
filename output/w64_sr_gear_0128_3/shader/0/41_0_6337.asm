//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:56 2023
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
dcl_constantbuffer cb0[26], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb7[63], dynamicIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
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
dcl_input_ps linear v2.xyzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 15
add r0.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r1.x, r0.w
mul r0.xyz, r0.xyzx, r1.xxxx
sqrt r0.w, r0.w
dp3 r1.x, r0.xyzx, v0.xyzx
dp3 r2.x, r0.xyzx, v1.xyzx
dp3 r2.y, r0.xyzx, v2.xyzx
ftou r0.x, v2.w
uge r0.y, r0.x, l(4)
if_nz r0.y
  mad r0.yz, v3.zzwz, cb7[6].xxyx, cb7[6].zzwz
  mad r1.yz, v3.zzwz, cb7[7].xxyx, cb7[7].zzwz
  sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r0.yzyy, t8.wxyz, s1
  sample_indexable(texture2d)(float,float,float,float) r1.yzw, r1.yzyy, t9.wxyz, s1
  mad r0.yz, r1.yyzy, cb7[8].xxxx, cb7[8].yyyy
  add_sat r1.y, r1.w, cb7[8].z
else
  uge r1.z, r0.x, l(2)
  if_nz r1.z
    mad r1.zw, v3.zzzw, cb7[3].xxxy, cb7[3].zzzw
    mad r2.zw, v3.zzzw, cb7[4].xxxy, cb7[4].zzzw
    sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.zwzz, t6.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t7.xyzw, s1
    mad r0.yz, r4.xxyx, cb7[5].xxxx, cb7[5].yyyy
    add_sat r1.y, r4.z, cb7[5].z
  else
    mad r1.zw, v3.zzzw, cb7[0].xxxy, cb7[0].zzzw
    mad r2.zw, v3.zzzw, cb7[1].xxxy, cb7[1].zzzw
    sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.zwzz, t4.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r4.xyz, r2.zwzz, t5.xyzw, s1
    mad r0.yz, r4.xxyx, cb7[2].xxxx, cb7[2].yyyy
    add_sat r1.y, r4.z, cb7[2].z
  endif
endif
imad r4.xyzw, l(9, 9, 9, 9), r0.xxxx, l(9, 10, 11, 12)
imad r5.xyzw, l(9, 9, 9, 9), r0.xxxx, l(13, 14, 15, 16)
imad r0.x, l(9), r0.x, l(17)
mov_sat r6.xyzw, cb7[r4.z + 0].xyzw
mov_sat r1.zw, cb7[r4.w + 0].yyyz
mov_sat r7.xyzw, cb7[r0.x + 0].xyzw
sample_indexable(texture2d)(float,float,float,float) r8.xyz, v3.xyxx, t0.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r2.zw, v3.xyxx, t1.zwxy, s4
mad r2.zw, r2.zzzw, cb0[25].xxxx, cb0[25].yyyy
sample_indexable(texture2d)(float,float,float,float) r9.xyzw, v3.xyxx, t2.xyzw, s5
ge r0.x, r9.w, l(0.156862751)
and r4.z, r0.x, l(0x3f800000)
add r10.xyz, r9.ywzy, l(-0.250000, -0.188235298, -0.156862751, 0.000000)
mul_sat r10.yz, r10.yyzy, l(0.000000, 1.231884, 1.18604648, 0.000000)
mad_sat r8.w, cb7[r5.z + 0].y, r10.y, cb7[r5.z + 0].x
mad_sat r5.z, cb7[r5.z + 0].w, r8.w, cb7[r5.z + 0].z
mul_sat r11.xy, r9.wyww, l(7.968750, 4.000000, 0.000000, 0.000000)
add r8.w, l(128.500000), cb0[2].x
mul r8.w, r8.w, l(0.00390625000)
ge r9.z, l(0.050000), r11.x
movc r8.w, r9.z, r8.w, l(-1.000000)
mul_sat r12.xyz, r3.yzwy, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r3.yzw, r3.yyzw, l(0.000000, -0.250000, -0.250000, -0.250000)
mad_sat r13.xyz, cb7[r4.x + 0].xyzx, r12.xyzx, r3.yzwy
add r13.xyz, r13.xyzx, -cb7[r4.x + 0].xyzx
mad r13.xyz, r6.xxxx, r13.xyzx, cb7[r4.x + 0].xyzx
mad_sat r4.x, cb7[r5.x + 0].y, r9.y, cb7[r5.x + 0].x
mad_sat r4.x, cb7[r5.x + 0].w, r4.x, cb7[r5.x + 0].z
mov_sat r10.x, r10.x
mad_sat r3.x, r3.x, r11.y, r10.x
mad_sat r6.x, cb7[r5.x + 0].y, r3.x, cb7[r5.x + 0].x
mad_sat r5.x, cb7[r5.x + 0].w, r6.x, cb7[r5.x + 0].z
add r5.x, -r4.x, r5.x
mad r4.x, r6.z, r5.x, r4.x
mul_sat r10.xyw, r8.xyxz, l(4.000000, 4.000000, 0.000000, 4.000000)
add_sat r14.xyz, r8.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r13.xyz, r13.xyzx, r10.xywx, r14.xyzx
mad r6.xz, r0.yyzy, r6.yyyy, r2.zzwz
add r1.y, r1.y, l(-1.000000)
mad r5.x, r6.y, r1.y, l(1.000000)
mad_sat r3.yzw, cb7[r5.y + 0].xxyz, r12.xxyz, r3.yyzw
add r3.yzw, r3.yyzw, -cb7[r5.y + 0].xxyz
mad r3.yzw, r7.xxxx, r3.yyzw, cb7[r5.y + 0].xxyz
mad_sat r3.yzw, r3.yyzw, r10.xxyw, r14.xxyz
mad_sat r5.y, cb7[r5.w + 0].y, r9.y, cb7[r5.w + 0].x
mad_sat r5.y, cb7[r5.w + 0].w, r5.y, cb7[r5.w + 0].z
mad_sat r3.x, cb7[r5.w + 0].y, r3.x, cb7[r5.w + 0].x
mad_sat r3.x, cb7[r5.w + 0].w, r3.x, cb7[r5.w + 0].z
add r3.x, -r5.y, r3.x
mad r3.x, r7.z, r3.x, r5.y
mad r0.yz, r0.yyzy, r7.yyyy, r2.zzwz
mad r1.y, r7.y, r1.y, l(1.000000)
add r7.xyz, -r3.yzwy, r13.xyzx
mad r3.yzw, r5.zzzz, r7.xxyz, r3.yyzw
add r5.yw, -r0.yyyz, r6.xxxz
mad r0.yz, r5.zzzz, r5.yywy, r0.yyzy
add r4.x, -r3.x, r4.x
mad r3.x, r5.z, r4.x, r3.x
add r4.x, r6.w, -r7.w
mad r6.y, r5.z, r4.x, r7.w
add r4.x, -r1.y, r5.x
mad r1.y, r5.z, r4.x, r1.y
add r4.x, l(128.500000), cb7[r4.w + 0].x
mul r4.x, r4.x, l(0.00390625000)
ge r4.w, l(0.050000), r6.w
movc r4.x, r4.w, r4.x, l(-1.000000)
min r1.y, r1.y, r3.x
lt r3.x, l(0.000100), r1.z
mul r4.w, r1.z, l(-2.000000)
mad r1.z, r1.z, l(-2.000000), l(-0.200000)
mul r1.z, r1.y, r1.z
mad r1.z, r1.z, l(-5.002501), r4.w
min r1.z, r1.z, r1.y
movc r6.x, r3.x, r1.z, r1.y
add r3.xyz, -r8.xyzx, r3.yzwy
mad r3.xyz, r4.zzzz, r3.xyzx, r8.xyzx
add r0.yz, -r2.zzwz, r0.yyzy
mad r7.xy, r4.zzzz, r0.yzyy, r2.zwzz
mov r11.z, r9.y
add r0.yz, -r11.zzxz, r6.xxyx
mad r0.yz, r4.zzzz, r0.yyzy, r11.zzxz
mul r1.y, r1.w, r4.z
movc o0.w, r0.x, r4.x, r8.w
ne r0.x, l(0.000000, 0.000000, 0.000000, 0.000000), cb7[r4.y + 0].w
and r4.xyw, r0.xxxx, cb7[r4.y + 0].xyxz
mul r1.zw, r2.xxxy, cb0[14].xxxx
div r1.zw, r1.zzzw, r1.xxxx
add r1.zw, -r1.zzzw, v3.xxxy
mul r0.x, r1.x, r1.x
mad_sat r1.x, r0.x, cb0[15].x, cb0[15].y
mad r1.x, cb0[17].x, r1.x, cb0[16].x
mad r2.xy, r1.zwzz, cb0[18].xyxx, cb0[18].zwzz
mad r1.zw, r1.zzzw, cb0[19].xxxy, cb0[19].zzzw
sample_indexable(texture2d)(float,float,float,float) r1.zw, r1.zwzz, t10.zwxy, s2
add r1.zw, r1.zzzw, -cb0[21].xxxy
mad r1.zw, r1.zzzw, cb0[20].xxxx, r2.xxxy
sample_indexable(texture2d)(float,float,float,float) r1.z, r1.zwzz, t11.yzxw, s2
mad_sat r1.z, cb0[22].y, r1.z, cb0[22].x
mul r1.x, r1.z, r1.x
mad_sat r0.x, r0.x, cb0[23].x, cb0[23].y
mul r0.x, r0.x, r1.x
mul r0.x, r0.x, r10.z
mul r0.x, r0.x, cb0[24].x
mul r1.xzw, r4.xxyw, r0.xxxx
mul r1.xzw, r4.zzzz, r1.xxzw
mul r2.xyz, r5.zzzz, r1.xzwx
mad r1.xzw, r1.xxzw, r5.zzzz, r3.xxyz
max r0.x, r1.z, r1.x
max r0.x, r1.w, r0.x
add_sat r0.x, r0.x, l(-1.000000)
add r0.x, -r0.x, l(1.000000)
mad r1.xzw, r3.xxyz, r0.xxxx, r2.xxyz
max r0.x, r1.z, r1.x
max r0.x, r1.w, r0.x
max r0.x, r0.x, l(1.000000)
div r1.xzw, r1.xxzw, r0.xxxx
max r0.x, r2.y, r2.x
max r0.x, r2.z, r0.x
dp2 r2.x, r7.xyxx, r7.xyxx
add r2.x, -r2.x, l(1.000000)
max r2.x, r2.x, l(0.000000)
sqrt r7.z, r2.x
dp3 r2.x, r7.xyzx, r7.xyzx
rsq r2.x, r2.x
mul r2.xyz, r2.xxxx, r7.xyzx
mul r3.xyz, r2.yyyy, v2.xyzx
mad r2.xyw, v1.xyxz, r2.xxxx, r3.xyxz
mad r2.xyz, v0.xyzx, r2.zzzz, r2.xywx
dp3 r2.w, r2.xyzx, r2.xyzx
rsq r2.w, r2.w
mul r2.xyz, r2.wwww, r2.xyzx
mov_sat r2.w, cb0[12].x
dp3 r3.x, v0.xyzx, v0.xyzx
rsq r3.x, r3.x
mul r3.xyz, r3.xxxx, v0.xyzx
dp3 r3.x, cb0[5].xyzx, r3.xyzx
add r3.y, -cb0[3].x, cb0[4].x
mad_sat r3.x, r3.x, r3.y, cb0[3].x
add r3.y, v4.z, -cb0[6].z
mul r3.y, r3.y, cb0[7].x
max r3.y, r3.y, l(0.000000)
log r3.y, r3.y
mul r3.y, r3.y, cb0[8].x
exp r3.y, r3.y
mul_sat r3.y, r3.y, cb0[9].x
mul r3.x, r3.y, r3.x
mad_sat r0.w, r0.w, cb0[10].x, cb0[10].y
mul r0.w, r0.w, r3.x
dp3 r3.x, r1.xzwx, l(0.300000, 0.590000, 0.110000, 0.000000)
max r3.x, r3.x, l(0.000100)
log r3.x, r3.x
mul r3.x, r3.x, -cb0[11].x
exp r3.x, r3.x
mul r0.w, r0.w, r3.x
add o2.w, r2.w, v0.w
mad r0.x, r0.w, cb0[13].x, r0.x
mad r0.y, r0.y, l(0.125000), l(0.375000)
mad_sat o1.xyz, r2.xyzx, r0.yyyy, l(0.500000, 0.500000, 0.500000, 0.000000)
add r0.x, r0.x, l(0.00781250000)
log r0.x, r0.x
mad_sat r0.x, r0.x, l(0.0769230798), l(0.538461566)
mov_sat r9.x, r9.x
add r0.x, r0.x, r9.x
mul o2.y, r0.x, l(0.500000)
mul o2.z, r1.y, l(0.800000)
mov o0.xyz, r1.xzwx
mov o1.w, l(0)
mov o2.x, r0.z
ret
// Approximately 0 instruction slots used
