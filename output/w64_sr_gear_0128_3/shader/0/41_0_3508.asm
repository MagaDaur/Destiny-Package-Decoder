//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:04 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float   xyz
// TEXCOORD                 2   xyzw        2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyz         4     NONE   float   xyz
// TEXCOORD                 8   xyzw        5     NONE   float   x
// SV_POSITION              0   xyzw        6      POS   float
// SV_isFrontFace           0   x           7    FFACE    uint
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
dcl_constantbuffer cb0[32], immediateIndexed
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
dcl_resource_texture2d (float,float,float,float) t12
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.x
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 13
add r0.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.w, r0.xyzx, r0.xyzx
rsq r1.x, r0.w
mul r0.xyz, r0.xyzx, r1.xxxx
sqrt r0.w, r0.w
dp3 r0.x, r0.xyzx, v0.xyzx
sample_indexable(texture2d)(float,float,float,float) r1.xyz, v3.xyxx, t3.xyzw, s6
add r0.y, -r1.z, r1.y
lt r0.y, r0.y, l(0.00470588217)
movc r0.y, r0.y, r1.y, r1.z
deriv_rtx_coarse r2.xy, r1.xyxx
deriv_rtx_coarse r2.z, r0.y
deriv_rty_coarse r3.xy, r1.xyxx
deriv_rty_coarse r3.z, r0.y
mul r1.zw, r2.yyyz, r2.xxxx
mul r2.xy, r3.yzyy, r3.xxxx
lt r2.zw, |r2.xxxy|, |r1.zzzw|
movc r1.zw, r2.zzzw, r1.zzzw, r2.xxxy
add r0.z, r1.x, l(-0.500000)
lt r0.z, |r0.z|, l(0.00470588217)
add r2.x, r1.y, r1.x
add r2.x, r2.x, l(-1.000000)
lt r2.x, |r2.x|, l(0.00588235306)
lt r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
and r1.z, r1.z, r2.x
add r2.x, -r1.y, l(1.000000)
movc r1.z, r1.z, r2.x, r1.x
add r2.x, r0.y, r1.z
add r2.x, r2.x, l(-1.000000)
lt r2.x, |r2.x|, l(0.00588235306)
and r1.w, r1.w, r2.x
add r2.x, -r0.y, l(1.000000)
movc r1.z, r1.w, r2.x, r1.z
movc r0.z, r0.z, r1.z, r1.x
ge r0.yz, r0.yyzy, l(0.000000, 0.500000, 0.500000, 0.000000)
if_nz r0.y
  mad r1.xz, v3.zzwz, cb7[6].xxyx, cb7[6].zzwz
  mad r2.xy, v3.zwzz, cb7[7].xyxx, cb7[7].zwzz
  sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xzxx, t8.wxyz, s1
  sample_indexable(texture2d)(float,float,float,float) r1.xzw, r2.xyxx, t9.xwyz, s1
  mad r1.xz, r1.xxzx, cb7[8].xxxx, cb7[8].yyyy
  add_sat r0.y, r1.w, cb7[8].z
  mov r1.w, l(4)
else
  ge r1.y, r1.y, l(0.500000)
  if_nz r1.y
    mad r2.xy, v3.zwzz, cb7[3].xyxx, cb7[3].zwzz
    mad r2.zw, v3.zzzw, cb7[4].xxxy, cb7[4].zzzw
    sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t6.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t7.xyzw, s1
    mad r1.xz, r2.xxyx, cb7[5].xxxx, cb7[5].yyyy
    add_sat r0.y, r2.z, cb7[5].z
    mov r1.w, l(2)
  else
    mad r2.xy, v3.zwzz, cb7[0].xyxx, cb7[0].zwzz
    mad r2.zw, v3.zzzw, cb7[1].xxxy, cb7[1].zzzw
    sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r2.xyxx, t4.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r2.xyz, r2.zwzz, t5.xyzw, s1
    mad r1.xz, r2.xxyx, cb7[2].xxxx, cb7[2].yyyy
    add_sat r0.y, r2.z, cb7[2].z
    mov r1.w, l(0)
  endif
endif
iadd r1.y, r1.w, l(1)
movc r0.z, r0.z, r1.y, r1.w
imul null, r0.z, r0.z, l(9)
mov_sat r2.xyzw, cb7[r0.z + 11].xyzw
mov_sat r1.yw, cb7[r0.z + 12].yyyz
mov_sat r4.xyzw, cb7[r0.z + 17].xyzw
sample_indexable(texture2d)(float,float,float,float) r5.xyz, v3.xyxx, t0.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r6.xy, v3.xyxx, t1.xyzw, s4
mad r6.xy, r6.xyxx, cb0[31].xxxx, cb0[31].yyyy
sample_indexable(texture2d)(float,float,float,float) r7.xyzw, v3.xyxx, t2.xyzw, s5
ge r5.w, r7.w, l(0.156862751)
and r6.z, r5.w, l(0x3f800000)
add r8.xyz, r7.ywzy, l(-0.250000, -0.188235298, -0.156862751, 0.000000)
mul_sat r8.yz, r8.yyzy, l(0.000000, 1.231884, 1.18604648, 0.000000)
mad_sat r6.w, cb7[r0.z + 15].y, r8.y, cb7[r0.z + 15].x
mad_sat r6.w, cb7[r0.z + 15].w, r6.w, cb7[r0.z + 15].z
mul_sat r9.xy, r7.wyww, l(7.968750, 4.000000, 0.000000, 0.000000)
add r7.z, l(128.500000), cb0[2].x
mul r7.z, r7.z, l(0.00390625000)
ge r7.w, l(0.050000), r9.x
movc r7.z, r7.w, r7.z, l(-1.000000)
mul_sat r10.xyz, r3.yzwy, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r3.yzw, r3.yyzw, l(0.000000, -0.250000, -0.250000, -0.250000)
mad_sat r11.xyz, cb7[r0.z + 9].xyzx, r10.xyzx, r3.yzwy
add r11.xyz, r11.xyzx, -cb7[r0.z + 9].xyzx
mad r11.xyz, r2.xxxx, r11.xyzx, cb7[r0.z + 9].xyzx
mad_sat r2.x, cb7[r0.z + 13].y, r7.y, cb7[r0.z + 13].x
mad_sat r2.x, cb7[r0.z + 13].w, r2.x, cb7[r0.z + 13].z
mov_sat r8.x, r8.x
mad_sat r3.x, r3.x, r9.y, r8.x
mad_sat r7.w, cb7[r0.z + 13].y, r3.x, cb7[r0.z + 13].x
mad_sat r7.w, cb7[r0.z + 13].w, r7.w, cb7[r0.z + 13].z
add r7.w, -r2.x, r7.w
mad r2.x, r2.z, r7.w, r2.x
mul_sat r8.xyw, r5.xyxz, l(4.000000, 4.000000, 0.000000, 4.000000)
add_sat r12.xyz, r5.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r11.xyz, r11.xyzx, r8.xywx, r12.xyzx
mad r9.yw, r1.xxxz, r2.yyyy, r6.xxxy
add r0.y, r0.y, l(-1.000000)
mad r2.y, r2.y, r0.y, l(1.000000)
mad_sat r3.yzw, cb7[r0.z + 14].xxyz, r10.xxyz, r3.yyzw
add r3.yzw, r3.yyzw, -cb7[r0.z + 14].xxyz
mad r3.yzw, r4.xxxx, r3.yyzw, cb7[r0.z + 14].xxyz
mad_sat r3.yzw, r3.yyzw, r8.xxyw, r12.xxyz
mad_sat r2.z, cb7[r0.z + 16].y, r7.y, cb7[r0.z + 16].x
mad_sat r2.z, cb7[r0.z + 16].w, r2.z, cb7[r0.z + 16].z
mad_sat r3.x, cb7[r0.z + 16].y, r3.x, cb7[r0.z + 16].x
mad_sat r3.x, cb7[r0.z + 16].w, r3.x, cb7[r0.z + 16].z
add r3.x, -r2.z, r3.x
mad r2.z, r4.z, r3.x, r2.z
mad r1.xz, r1.xxzx, r4.yyyy, r6.xxyx
mad r0.y, r4.y, r0.y, l(1.000000)
add r4.xyz, -r3.yzwy, r11.xyzx
mad r3.xyz, r6.wwww, r4.xyzx, r3.yzwy
add r4.xy, -r1.xzxx, r9.ywyy
mad r1.xz, r6.wwww, r4.xxyx, r1.xxzx
add r2.x, -r2.z, r2.x
mad r2.x, r6.w, r2.x, r2.z
add r2.z, r2.w, -r4.w
mad r4.y, r6.w, r2.z, r4.w
add r2.y, -r0.y, r2.y
mad r0.y, r6.w, r2.y, r0.y
add r2.y, l(128.500000), cb7[r0.z + 12].x
mul r2.y, r2.y, l(0.00390625000)
ge r2.z, l(0.050000), r2.w
movc r2.y, r2.z, r2.y, l(-1.000000)
min r0.y, r0.y, r2.x
lt r2.x, l(0.000100), r1.y
mul r2.z, r1.y, l(-2.000000)
mad r1.y, r1.y, l(-2.000000), l(-0.200000)
mul r1.y, r0.y, r1.y
mad r1.y, r1.y, l(-5.002501), r2.z
min r1.y, r0.y, r1.y
movc r4.x, r2.x, r1.y, r0.y
add r2.xzw, -r5.xxyz, r3.xxyz
mad r2.xzw, r6.zzzz, r2.xxzw, r5.xxyz
add r1.xy, -r6.xyxx, r1.xzxx
mad r1.xy, r6.zzzz, r1.xyxx, r6.xyxx
mov r9.z, r7.y
add r3.xy, -r9.zxzz, r4.xyxx
mad r3.xy, r6.zzzz, r3.xyxx, r9.zxzz
mul r0.y, r1.w, r6.z
movc o0.w, r5.w, r2.y, r7.z
ne r1.w, l(0.000000, 0.000000, 0.000000, 0.000000), cb7[r0.z + 10].w
and r4.xyz, r1.wwww, cb7[r0.z + 10].xyzx
mul r0.x, r0.x, r0.x
mad_sat r0.x, r0.x, cb0[14].x, cb0[14].y
mad r0.x, cb0[15].y, r0.x, cb0[15].x
mad_sat r0.z, r8.z, cb0[16].x, cb0[16].y
mul r0.x, r0.z, r0.x
dp2 r0.z, cb0[17].xyxx, v3.xyxx
add r5.x, r0.z, cb0[17].z
dp2 r0.z, cb0[18].xyxx, v3.xyxx
add r5.y, r0.z, cb0[18].z
mad r3.zw, r5.xxxy, cb0[19].xxxy, cb0[19].zzzw
sample_indexable(texture2d)(float,float,float,float) r0.z, r3.zwzz, t10.yzxw, s2
mad r0.z, r0.z, cb0[20].x, cb0[20].y
mul r0.x, r0.z, r0.x
add r0.z, -r8.z, l(1.000000)
mad r0.z, v5.x, cb0[4].x, r0.z
add r1.w, l(1.000000), cb0[4].x
ge r2.y, r1.w, l(0.000000)
movc r2.y, r2.y, l(0.000050), l(-0.000050)
add r1.w, r1.w, r2.y
div r1.w, l(1.000000, 1.000000, 1.000000, 1.000000), r1.w
mad r2.y, r0.z, r1.w, -cb0[21].x
mad r3.zw, cb0[22].zzzw, r2.yyyy, cb0[22].xxxy
min_sat r2.y, r3.w, r3.z
mad r0.z, r0.z, r1.w, -cb0[23].x
mad r3.zw, cb0[24].zzzw, r0.zzzz, cb0[24].xxxy
min_sat r0.z, r3.w, r3.z
add r0.z, r0.z, r2.y
log r0.z, r0.z
mul r0.z, r0.z, cb0[25].x
exp r0.z, r0.z
mad r3.zw, v3.xxxy, cb0[27].xxxy, cb0[27].zzzw
sample_indexable(texture2d)(float,float,float,float) r1.w, r3.zwzz, t11.yzwx, s2
mad r3.zw, v3.xxxy, cb0[28].xxxy, cb0[28].zzzw
sample_indexable(texture2d)(float,float,float,float) r2.y, r3.zwzz, t12.yxzw, s2
mad r1.w, cb0[26].x, r1.w, r2.y
mad r1.w, r1.w, cb0[29].x, cb0[29].y
add r0.z, r0.z, r1.w
mul r0.x, r0.z, r0.x
mul r0.x, r0.x, cb0[30].x
mul r4.xyz, r4.xyzx, r0.xxxx
mul r4.xyz, r6.zzzz, r4.xyzx
mul r5.xyz, r6.wwww, r4.xyzx
mad r4.xyz, r4.xyzx, r6.wwww, r2.xzwx
max r0.x, r4.y, r4.x
max r0.x, r4.z, r0.x
add_sat r0.x, r0.x, l(-1.000000)
add r0.x, -r0.x, l(1.000000)
mad r2.xyz, r2.xzwx, r0.xxxx, r5.xyzx
max r0.x, r2.y, r2.x
max r0.x, r2.z, r0.x
max r0.x, r0.x, l(1.000000)
div r2.xyz, r2.xyzx, r0.xxxx
max r0.x, r5.y, r5.x
max r0.x, r5.z, r0.x
dp2 r0.z, r1.xyxx, r1.xyxx
add r0.z, -r0.z, l(1.000000)
max r0.z, r0.z, l(0.000000)
sqrt r1.z, r0.z
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mul r4.xyz, r1.yyyy, v2.xyzx
mad r1.xyw, v1.xyxz, r1.xxxx, r4.xyxz
mad r1.xyz, v0.xyzx, r1.zzzz, r1.xywx
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mov_sat r0.z, cb0[12].x
dp3 r1.w, v0.xyzx, v0.xyzx
rsq r1.w, r1.w
mul r4.xyz, r1.wwww, v0.xyzx
dp3 r1.w, cb0[5].xyzx, r4.xyzx
add r2.w, -cb0[3].x, cb0[4].x
mad_sat r1.w, r1.w, r2.w, cb0[3].x
add r2.w, v4.z, -cb0[6].z
mul r2.w, r2.w, cb0[7].x
max r2.w, r2.w, l(0.000000)
log r2.w, r2.w
mul r2.w, r2.w, cb0[8].x
exp r2.w, r2.w
mul_sat r2.w, r2.w, cb0[9].x
mul r1.w, r1.w, r2.w
mad_sat r0.w, r0.w, cb0[10].x, cb0[10].y
mul r0.w, r0.w, r1.w
dp3 r1.w, r2.xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
max r1.w, r1.w, l(0.000100)
log r1.w, r1.w
mul r1.w, r1.w, -cb0[11].x
exp r1.w, r1.w
mul r0.w, r0.w, r1.w
add o2.w, r0.z, v0.w
mad r0.x, r0.w, cb0[13].x, r0.x
mad r0.z, r3.x, l(0.125000), l(0.375000)
mad_sat o1.xyz, r1.xyzx, r0.zzzz, l(0.500000, 0.500000, 0.500000, 0.000000)
add r0.x, r0.x, l(0.00781250000)
log r0.x, r0.x
mad_sat r0.x, r0.x, l(0.0769230798), l(0.538461566)
mov_sat r7.x, r7.x
add r0.x, r0.x, r7.x
mul o2.yz, r0.xxyx, l(0.000000, 0.500000, 0.800000, 0.000000)
mov o0.xyz, r2.xyzx
mov o1.w, l(0)
mov o2.x, r3.y
ret
// Approximately 0 instruction slots used
