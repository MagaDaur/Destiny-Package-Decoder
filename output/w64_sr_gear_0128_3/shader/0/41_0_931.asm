//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:13 2023
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
// TEXCOORD                 8   xyzw        5     NONE   float
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
dcl_constantbuffer cb0[24], immediateIndexed
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
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t9
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_input_ps_sgv v7.x, is_front_face
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_temps 13
add r0.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r0.x, r0.xyzx, r0.xyzx
sqrt r0.x, r0.x
sample_indexable(texture2d)(float,float,float,float) r0.yzw, v3.xyxx, t3.wxyz, s5
add r1.x, -r0.w, r0.z
lt r1.x, r1.x, l(0.00470588217)
movc r0.w, r1.x, r0.z, r0.w
deriv_rtx_coarse r1.xyz, r0.yzwy
deriv_rty_coarse r2.xyz, r0.yzwy
mul r1.xy, r1.yzyy, r1.xxxx
mul r1.zw, r2.yyyz, r2.xxxx
lt r2.xy, |r1.zwzz|, |r1.xyxx|
movc r1.xy, r2.xyxx, r1.xyxx, r1.zwzz
add r1.z, r0.y, l(-0.500000)
add r1.w, r0.z, r0.y
add r1.w, r1.w, l(-1.000000)
lt r1.zw, |r1.zzzw|, l(0.000000, 0.000000, 0.00470588217, 0.00588235306)
lt r1.xy, r1.xyxx, l(0.000000, 0.000000, 0.000000, 0.000000)
and r1.x, r1.x, r1.w
add r1.w, -r0.z, l(1.000000)
movc r1.x, r1.x, r1.w, r0.y
add r1.w, r0.w, r1.x
add r1.w, r1.w, l(-1.000000)
lt r1.w, |r1.w|, l(0.00588235306)
and r1.y, r1.y, r1.w
add r1.w, -r0.w, l(1.000000)
movc r1.x, r1.y, r1.w, r1.x
movc r0.y, r1.z, r1.x, r0.y
ge r0.yw, r0.yyyw, l(0.000000, 0.500000, 0.000000, 0.500000)
if_nz r0.w
  mad r1.xy, v3.zwzz, cb7[6].xyxx, cb7[6].zwzz
  mad r1.zw, v3.zzzw, cb7[7].xxxy, cb7[7].zzzw
  sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t8.wxyz, s1
  sample_indexable(texture2d)(float,float,float,float) r1.xyz, r1.zwzz, t9.xyzw, s1
  mad r1.xy, r1.xyxx, cb7[8].xxxx, cb7[8].yyyy
  add_sat r0.w, r1.z, cb7[8].z
  mov r1.z, l(4)
else
  ge r0.z, r0.z, l(0.500000)
  if_nz r0.z
    mad r3.xy, v3.zwzz, cb7[3].xyxx, cb7[3].zwzz
    mad r3.zw, v3.zzzw, cb7[4].xxxy, cb7[4].zzzw
    sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r3.xyxx, t6.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t7.xyzw, s1
    mad r1.xy, r3.xyxx, cb7[5].xxxx, cb7[5].yyyy
    add_sat r0.w, r3.z, cb7[5].z
    mov r1.z, l(2)
  else
    mad r3.xy, v3.zwzz, cb7[0].xyxx, cb7[0].zwzz
    mad r3.zw, v3.zzzw, cb7[1].xxxy, cb7[1].zzzw
    sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r3.xyxx, t4.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.zwzz, t5.xyzw, s1
    mad r1.xy, r3.xyxx, cb7[2].xxxx, cb7[2].yyyy
    add_sat r0.w, r3.z, cb7[2].z
    mov r1.z, l(0)
  endif
endif
iadd r0.z, r1.z, l(1)
movc r0.y, r0.y, r0.z, r1.z
imul null, r0.y, r0.y, l(9)
mov_sat r3.xyzw, cb7[r0.y + 11].xyzw
mov_sat r1.zw, cb7[r0.y + 12].yyyz
mov_sat r4.xyzw, cb7[r0.y + 17].xyzw
sample_indexable(texture2d)(float,float,float,float) r5.xyz, v3.xyxx, t0.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r6.xy, v3.xyxx, t1.xyzw, s3
mad r6.xy, r6.xyxx, cb0[23].xxxx, cb0[23].yyyy
sample_indexable(texture2d)(float,float,float,float) r7.xyzw, v3.xyxx, t2.xyzw, s4
ge r0.z, r7.w, l(0.156862751)
and r5.w, r0.z, l(0x3f800000)
add r8.xyz, r7.ywzy, l(-0.250000, -0.188235298, -0.156862751, 0.000000)
mul_sat r6.zw, r8.yyyz, l(0.000000, 0.000000, 1.231884, 1.18604648)
movc r7.z, v7.x, l(1.000000), l(-1.000000)
mad_sat r6.z, cb7[r0.y + 15].y, r6.z, cb7[r0.y + 15].x
mad_sat r6.z, cb7[r0.y + 15].w, r6.z, cb7[r0.y + 15].z
mul_sat r9.xy, r7.wyww, l(7.968750, 4.000000, 0.000000, 0.000000)
add r7.w, l(128.500000), cb0[10].x
mul r7.w, r7.w, l(0.00390625000)
ge r8.y, l(0.050000), r9.x
movc r7.w, r8.y, r7.w, l(-1.000000)
mul_sat r8.yzw, r2.yyzw, l(0.000000, 4.000000, 4.000000, 4.000000)
add_sat r2.yzw, r2.yyzw, l(0.000000, -0.250000, -0.250000, -0.250000)
mad_sat r10.xyz, cb7[r0.y + 9].xyzx, r8.yzwy, r2.yzwy
add r10.xyz, r10.xyzx, -cb7[r0.y + 9].xyzx
mad r10.xyz, r3.xxxx, r10.xyzx, cb7[r0.y + 9].xyzx
mad_sat r3.x, cb7[r0.y + 13].y, r7.y, cb7[r0.y + 13].x
mad_sat r3.x, cb7[r0.y + 13].w, r3.x, cb7[r0.y + 13].z
mov_sat r8.x, r8.x
mad_sat r2.x, r2.x, r9.y, r8.x
mad_sat r8.x, cb7[r0.y + 13].y, r2.x, cb7[r0.y + 13].x
mad_sat r8.x, cb7[r0.y + 13].w, r8.x, cb7[r0.y + 13].z
add r8.x, -r3.x, r8.x
mad r3.x, r3.z, r8.x, r3.x
mul_sat r11.xyz, r5.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r12.xyz, r5.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r10.xyz, r10.xyzx, r11.xyzx, r12.xyzx
mad r9.yw, r1.xxxy, r3.yyyy, r6.xxxy
add r0.w, r0.w, l(-1.000000)
mad r3.y, r3.y, r0.w, l(1.000000)
mad_sat r2.yzw, cb7[r0.y + 14].xxyz, r8.yyzw, r2.yyzw
add r2.yzw, r2.yyzw, -cb7[r0.y + 14].xxyz
mad r2.yzw, r4.xxxx, r2.yyzw, cb7[r0.y + 14].xxyz
mad_sat r2.yzw, r2.yyzw, r11.xxyz, r12.xxyz
mad_sat r3.z, cb7[r0.y + 16].y, r7.y, cb7[r0.y + 16].x
mad_sat r3.z, cb7[r0.y + 16].w, r3.z, cb7[r0.y + 16].z
mad_sat r2.x, cb7[r0.y + 16].y, r2.x, cb7[r0.y + 16].x
mad_sat r2.x, cb7[r0.y + 16].w, r2.x, cb7[r0.y + 16].z
add r2.x, -r3.z, r2.x
mad r2.x, r4.z, r2.x, r3.z
mad r1.xy, r1.xyxx, r4.yyyy, r6.xyxx
mad r0.w, r4.y, r0.w, l(1.000000)
add r4.xyz, -r2.yzwy, r10.xyzx
mad r2.yzw, r6.zzzz, r4.xxyz, r2.yyzw
add r4.xy, -r1.xyxx, r9.ywyy
mad r1.xy, r6.zzzz, r4.xyxx, r1.xyxx
add r3.x, -r2.x, r3.x
mad r2.x, r6.z, r3.x, r2.x
add r3.x, r3.w, -r4.w
mad r4.y, r6.z, r3.x, r4.w
add r3.x, -r0.w, r3.y
mad r0.w, r6.z, r3.x, r0.w
add r3.x, l(128.500000), cb7[r0.y + 12].x
mul r3.x, r3.x, l(0.00390625000)
ge r3.y, l(0.050000), r3.w
movc r3.x, r3.y, r3.x, l(-1.000000)
min r0.w, r0.w, r2.x
lt r2.x, l(0.000100), r1.z
mul r3.y, r1.z, l(-2.000000)
mad r1.z, r1.z, l(-2.000000), l(-0.200000)
mul r1.z, r0.w, r1.z
mad r1.z, r1.z, l(-5.002501), r3.y
min r1.z, r0.w, r1.z
movc r4.x, r2.x, r1.z, r0.w
add r2.xyz, -r5.xyzx, r2.yzwy
mad r2.xyz, r5.wwww, r2.xyzx, r5.xyzx
add r1.xy, -r6.xyxx, r1.xyxx
mad r1.xy, r5.wwww, r1.xyxx, r6.xyxx
mov r9.z, r7.y
add r3.yz, -r9.zzxz, r4.xxyx
mad r3.yz, r5.wwww, r3.yyzy, r9.zzxz
mul r0.w, r1.w, r5.w
movc o0.w, r0.z, r3.x, r7.w
ne r0.z, l(0.000000, 0.000000, 0.000000, 0.000000), cb7[r0.y + 10].w
and r4.xyz, r0.zzzz, cb7[r0.y + 10].xyzx
mul r0.y, r6.w, cb0[22].x
mul r4.xyz, r4.xyzx, r0.yyyy
mul r4.xyz, r5.wwww, r4.xyzx
mul r5.xyz, r6.zzzz, r4.xyzx
mad r4.xyz, r4.xyzx, r6.zzzz, r2.xyzx
max r0.y, r4.y, r4.x
max r0.y, r4.z, r0.y
add_sat r0.y, r0.y, l(-1.000000)
add r0.y, -r0.y, l(1.000000)
mad r2.xyz, r2.xyzx, r0.yyyy, r5.xyzx
max r0.y, r2.y, r2.x
max r0.y, r2.z, r0.y
max r0.y, r0.y, l(1.000000)
div r2.xyz, r2.xyzx, r0.yyyy
max r0.y, r5.y, r5.x
max r0.y, r5.z, r0.y
dp2 r0.z, r1.xyxx, r1.xyxx
add r0.z, -r0.z, l(1.000000)
max r0.z, r0.z, l(0.000000)
sqrt r1.z, r0.z
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mul r4.xyz, r7.zzzz, v0.xyzx
mul r5.xyz, r1.yyyy, v2.xyzx
mad r1.xyw, v1.xyxz, r1.xxxx, r5.xyxz
mad r1.xyz, r4.xyzx, r1.zzzz, r1.xywx
dp3 r0.z, r1.xyzx, r1.xyzx
rsq r0.z, r0.z
mul r1.xyz, r0.zzzz, r1.xyzx
mov_sat r0.z, cb0[20].x
dp3 r1.w, r4.xyzx, r4.xyzx
rsq r1.w, r1.w
mul r4.xyz, r1.wwww, r4.xyzx
dp3 r1.w, cb0[13].xyzx, r4.xyzx
add r2.w, -cb0[11].x, cb0[12].x
mad_sat r1.w, r1.w, r2.w, cb0[11].x
add r2.w, v4.z, -cb0[14].z
mul r2.w, r2.w, cb0[15].x
max r2.w, r2.w, l(0.000000)
log r2.w, r2.w
mul r2.w, r2.w, cb0[16].x
exp r2.w, r2.w
mul_sat r2.w, r2.w, cb0[17].x
mul r1.w, r1.w, r2.w
mad_sat r0.x, r0.x, cb0[18].x, cb0[18].y
mul r0.x, r0.x, r1.w
dp3 r1.w, r2.xyzx, l(0.300000, 0.590000, 0.110000, 0.000000)
max r1.w, r1.w, l(0.000100)
log r1.w, r1.w
mul r1.w, r1.w, -cb0[19].x
exp r1.w, r1.w
mul r0.x, r0.x, r1.w
add o2.w, r0.z, v0.w
mad r0.x, r0.x, cb0[21].x, r0.y
mad r0.y, r3.y, l(0.125000), l(0.375000)
mad_sat o1.xyz, r1.xyzx, r0.yyyy, l(0.500000, 0.500000, 0.500000, 0.000000)
add r0.x, r0.x, l(0.00781250000)
log r0.x, r0.x
mad_sat r0.x, r0.x, l(0.0769230798), l(0.538461566)
mov_sat r7.x, r7.x
add r0.x, r0.x, r7.x
mul o2.yz, r0.xxwx, l(0.000000, 0.500000, 0.800000, 0.000000)
mov o0.xyz, r2.xyzx
mov o1.w, l(0)
mov o2.x, r3.z
ret
// Approximately 0 instruction slots used
