//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:02 2023
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
// SV_POSITION              0   xyzw        6      POS   float   xy
// SV_isFrontFace           0   x           7    FFACE    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[34], immediateIndexed
dcl_constantbuffer cb13[5], immediateIndexed
dcl_constantbuffer cb12[15], immediateIndexed
dcl_constantbuffer cb3[16], immediateIndexed
dcl_constantbuffer cb8[8], immediateIndexed
dcl_constantbuffer cb7[63], dynamicIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_sampler s6, mode_default
dcl_sampler s7, mode_default
dcl_sampler s8, mode_default
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture3d (float,float,float,float) t16
dcl_resource_texture3d (float,float,float,float) t17
dcl_resource_texture3d (float,float,float,float) t18
dcl_resource_texture3d (float,float,float,float) t19
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t26
dcl_resource_texture2d (float,float,float,float) t27
dcl_resource_texture2d (float,float,float,float) t28
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.x
dcl_input_ps_siv linear noperspective v6.xy, position
dcl_output o0.xyzw
dcl_temps 13
mul r0.xy, v6.xyxx, cb12[12].zwzz
add r1.xyz, -v4.xyzx, cb12[14].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r1.xyzx
add r3.xyz, v4.xyzx, -cb12[14].xyzx
dp3 r0.w, -cb12[6].xyzx, r3.xyzx
dp3 r3.x, r2.xyzx, v1.xyzx
dp3 r3.y, r2.xyzx, v2.xyzx
mul r1.w, v0.w, v0.w
sample_indexable(texture2d)(float,float,float,float) r4.xyz, v3.xyxx, t3.xyzw, s5
add r2.w, -r4.z, r4.y
lt r2.w, r2.w, l(0.00470588217)
movc r2.w, r2.w, r4.y, r4.z
deriv_rtx_coarse r5.xy, r4.xyxx
deriv_rtx_coarse r5.z, r2.w
deriv_rty_coarse r6.xy, r4.xyxx
deriv_rty_coarse r6.z, r2.w
mul r3.zw, r5.yyyz, r5.xxxx
mul r4.zw, r6.yyyz, r6.xxxx
lt r5.xy, |r4.zwzz|, |r3.zwzz|
movc r3.zw, r5.xxxy, r3.zzzw, r4.zzzw
add r4.z, r4.x, l(-0.500000)
add r4.w, r4.y, r4.x
add r4.w, r4.w, l(-1.000000)
lt r4.zw, |r4.zzzw|, l(0.000000, 0.000000, 0.00470588217, 0.00588235306)
lt r3.zw, r3.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
and r3.z, r3.z, r4.w
add r4.w, -r4.y, l(1.000000)
movc r3.z, r3.z, r4.w, r4.x
add r4.w, r2.w, r3.z
add r4.w, r4.w, l(-1.000000)
lt r4.w, |r4.w|, l(0.00588235306)
and r3.w, r3.w, r4.w
add r4.w, -r2.w, l(1.000000)
movc r3.z, r3.w, r4.w, r3.z
movc r3.z, r4.z, r3.z, r4.x
ge r2.w, r2.w, l(0.500000)
if_nz r2.w
  mad r4.xz, v3.zzwz, cb7[7].xxyx, cb7[7].zzwz
  sample_indexable(texture2d)(float,float,float,float) r4.xz, r4.xzxx, t9.xzyw, s1
  mad r4.xz, r4.xxzx, cb7[8].xxxx, cb7[8].yyyy
  mov r2.w, l(4)
else
  ge r3.w, r4.y, l(0.500000)
  if_nz r3.w
    mad r4.yw, v3.zzzw, cb7[4].xxxy, cb7[4].zzzw
    sample_indexable(texture2d)(float,float,float,float) r4.yw, r4.ywyy, t7.zxwy, s1
    mad r4.xz, r4.yywy, cb7[5].xxxx, cb7[5].yyyy
    mov r2.w, l(2)
  else
    mad r4.yw, v3.zzzw, cb7[1].xxxy, cb7[1].zzzw
    sample_indexable(texture2d)(float,float,float,float) r4.yw, r4.ywyy, t5.zxwy, s1
    mad r4.xz, r4.yywy, cb7[2].xxxx, cb7[2].yyyy
    mov r2.w, l(0)
  endif
endif
ge r3.z, r3.z, l(0.500000)
iadd r3.w, r2.w, l(1)
movc r2.w, r3.z, r3.w, r2.w
imul null, r2.w, r2.w, l(9)
mov_sat r3.z, cb7[r2.w + 11].y
mov_sat r3.w, cb7[r2.w + 12].z
mov_sat r4.y, cb7[r2.w + 17].y
sample_indexable(texture2d)(float,float,float,float) r5.xy, v3.xyxx, t1.xyzw, s3
mad r5.xy, r5.xyxx, cb0[4].xxxx, cb0[4].yyyy
sample_indexable(texture2d)(float,float,float,float) r4.w, v3.xyxx, t2.xyzw, s4
ge r5.z, r4.w, l(0.156862751)
and r5.z, r5.z, l(0x3f800000)
add r4.w, r4.w, l(-0.188235298)
mul_sat r4.w, r4.w, l(1.231884)
mad_sat r4.w, cb7[r2.w + 15].y, r4.w, cb7[r2.w + 15].x
mad_sat r2.w, cb7[r2.w + 15].w, r4.w, cb7[r2.w + 15].z
mad r6.xy, r4.xzxx, r3.zzzz, r5.xyxx
mad r4.xy, r4.xzxx, r4.yyyy, r5.xyxx
add r4.zw, -r4.xxxy, r6.xxxy
mad r4.xy, r2.wwww, r4.zwzz, r4.xyxx
add r4.xy, -r5.xyxx, r4.xyxx
mad r4.xy, r5.zzzz, r4.xyxx, r5.xyxx
mul r2.w, r3.w, r5.z
dp2 r3.z, r4.xyxx, r4.xyxx
add r3.z, -r3.z, l(1.000000)
max r3.z, r3.z, l(0.000000)
sqrt r4.z, r3.z
dp3 r3.z, r4.xyzx, r4.xyzx
rsq r3.z, r3.z
mul r4.xyz, r3.zzzz, r4.xyzx
mul r5.xyz, r4.yyyy, v2.xyzx
mad r4.xyw, v1.xyxz, r4.xxxx, r5.xyxz
mad r4.xyz, v0.xyzx, r4.zzzz, r4.xywx
dp3 r3.z, r4.xyzx, r4.xyzx
rsq r3.z, r3.z
mul r4.xyz, r3.zzzz, r4.xyzx
dp3 r3.z, r2.xyzx, v0.xyzx
mul r3.w, r3.z, r3.z
mad_sat r3.w, r3.w, cb0[6].x, cb0[6].y
mul r3.w, r3.w, r3.w
mad r5.xyzw, cb0[8].xyzw, r3.wwww, cb0[7].xyzw
mul r3.xy, r3.xyxx, cb0[9].xxxx
div r3.xy, r3.xyxx, r3.zzzz
add r3.xy, -r3.xyxx, v3.xyxx
mad r3.zw, r3.xxxy, cb0[10].xxxy, cb0[10].zzzw
mad r6.xy, r3.xyxx, cb0[11].xyxx, cb0[11].zwzz
sample_indexable(texture2d)(float,float,float,float) r6.xy, r6.xyxx, t26.xyzw, s2
add r6.xy, r6.xyxx, -cb0[13].xyxx
mad r3.zw, r6.xxxy, cb0[12].xxxx, r3.zzzw
sample_indexable(texture2d)(float,float,float,float) r3.z, r3.zwzz, t27.yzxw, s2
mov_sat r3.z, r3.z
mad r7.xyzw, cb0[15].xyzw, r3.zzzz, cb0[14].xyzw
mad r3.xy, r3.xyxx, cb0[16].xyxx, cb0[16].zwzz
mad r3.xy, r6.xyxx, cb0[12].xxxx, r3.xyxx
sample_indexable(texture2d)(float,float,float,float) r3.x, r3.xyxx, t28.xyzw, s2
mov_sat r3.x, r3.x
mad r3.xyzw, cb0[18].xyzw, r3.xxxx, cb0[17].xyzw
add r3.xyzw, r3.xyzw, r7.xyzw
mul r3.xyzw, r3.xyzw, r5.xyzw
max r5.x, v5.x, l(0.000000)
log r5.x, r5.x
mul r5.x, r5.x, cb0[19].x
exp r5.x, r5.x
mul r3.xyzw, r3.xyzw, r5.xxxx
add r5.x, v3.y, cb0[20].z
mad_sat r5.x, cb0[20].y, |r5.x|, cb0[20].x
mad r5.xyzw, cb0[22].xyzw, r5.xxxx, cb0[21].xyzw
mul r3.xyzw, r3.xyzw, r5.xyzw
mul r3.xyzw, r3.xyzw, cb0[23].xxxx
mul r3.xyzw, r3.xyzw, cb0[24].xxxx
max r1.w, r1.w, l(0.000100)
log r1.w, r1.w
mul r1.w, r1.w, cb0[33].x
exp r1.w, r1.w
add r5.xyz, v4.xyzx, -cb3[0].xyzx
div r5.xyz, |r5.xyzx|, cb3[6].xyzx
add r6.xyz, l(-2.000000, -2.000000, -2.000000, 0.000000), cb3[3].xyzx
div r5.xyz, r5.xyzx, r6.xyzx
max r5.x, r5.y, r5.x
max r5.x, r5.z, r5.x
max r5.x, r5.x, l(0.510000)
log r5.x, r5.x
round_ni r5.x, r5.x
add r5.z, r5.x, l(1.000000)
lt r5.w, r5.z, cb3[8].x
exp r6.x, r5.z
mul r6.yzw, r6.xxxx, cb3[6].xxyz
div r7.xyz, cb3[0].xyzx, r6.yzwy
round_ni r7.xyz, r7.xyzx
mad r6.yzw, -r7.xxyz, r6.yyzw, v4.xxyz
div r6.yzw, r6.yyzw, cb3[6].xxyz
div r6.yzw, r6.yyzw, cb3[3].xxyz
div r6.xyz, r6.yzwy, r6.xxxx
mov r5.xy, l(0.500000,0.500000,0,0)
mad r5.xyz, r6.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r5.xyzx
add r5.z, r5.z, l(0.500000)
mul r6.xy, r5.xyxx, cb3[2].xyxx
mad r6.w, r5.z, cb3[2].z, cb3[9].x
add r5.xyz, r6.xywx, l(0.500000, 0.500000, 0.500000, 0.000000)
div r5.xyz, r5.xyzx, cb3[4].xyzx
mov r6.xy, cb8[4].zwzz
mov r6.z, l(0)
movc r5.xyz, r5.wwww, r5.xyzx, r6.xyzx
sample_l_indexable(texture3d)(float,float,float,float) r7.xyzw, r5.xyzx, t16.xyzw, s8, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r8.xyzw, r5.xyzx, t17.xyzw, s8, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r9.xyzw, r5.xyzx, t18.xyzw, s8, l(0.000000)
mul r0.w, r0.w, cb3[15].x
mad_sat r0.w, r0.w, l(1.500000), cb3[15].y
lt r5.w, r0.w, l(1.000000)
if_nz r5.w
  sample_l_indexable(texture3d)(float,float,float,float) r10.xyzw, r6.xyzx, t16.xyzw, s8, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r11.xyzw, r6.xyzx, t17.xyzw, s8, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r6.xyzw, r6.xyzx, t18.xyzw, s8, l(0.000000)
  add r12.xyzw, r7.xyzw, -r10.xyzw
  mad r7.xyzw, r0.wwww, r12.xyzw, r10.xyzw
  add r10.xyzw, r8.xyzw, -r11.xyzw
  mad r8.xyzw, r0.wwww, r10.xyzw, r11.xyzw
  add r10.xyzw, -r6.xyzw, r9.xyzw
  mad r9.xyzw, r0.wwww, r10.xyzw, r6.xyzw
endif
mov r4.w, l(1.000000)
dp4 r6.x, r7.xyzw, r4.xyzw
dp4 r6.y, r8.xyzw, r4.xyzw
dp4 r6.z, r9.xyzw, r4.xyzw
max r6.xyz, r6.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
dp3 r5.w, r7.xyzx, r7.xyzx
rsq r5.w, r5.w
mul r10.xyz, r5.wwww, r7.xyzx
dp3 r5.w, r8.xyzx, r8.xyzx
rsq r5.w, r5.w
mul r11.xyz, r5.wwww, r8.xyzx
dp3 r5.w, r9.xyzx, r9.xyzx
rsq r5.w, r5.w
mul r12.xyz, r5.wwww, r9.xyzx
mul r11.xyz, r11.xyzx, l(0.590000, 0.590000, 0.590000, 0.000000)
mad r10.xyz, r10.xyzx, l(0.300000, 0.300000, 0.300000, 0.000000), r11.xyzx
mad r10.xyz, r12.xyzx, l(0.110000, 0.110000, 0.110000, 0.000000), r10.xyzx
dp3 r5.w, r10.xyzx, r10.xyzx
rsq r5.w, r5.w
mul r10.xyz, r5.wwww, r10.xyzx
mov r10.w, l(1.000000)
dp4 r11.x, r7.xyzw, r10.xyzw
dp4 r11.y, r8.xyzw, r10.xyzw
dp4 r11.z, r9.xyzw, r10.xyzw
max r11.xyz, r11.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
dp3_sat r5.w, r10.xyzx, -r2.xyzx
mul r10.xyzw, r4.xyzw, l(-1.000000, -1.000000, -1.000000, 1.000000)
dp4 r7.x, r7.xyzw, r10.xyzw
dp4 r7.y, r8.xyzw, r10.xyzw
dp4 r7.z, r9.xyzw, r10.xyzw
max r7.xyz, r7.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r7.xyz, r7.xyzx, cb13[4].xxxx
log r4.w, r5.w
mul r4.w, r4.w, cb13[4].y
exp r4.w, r4.w
mad r7.xyz, r4.wwww, r11.xyzx, r7.xyzx
mad r6.xyz, r7.xyzx, r2.wwww, r6.xyzx
sample_l_indexable(texture3d)(float,float,float,float) r4.w, r5.xyzx, t19.yzwx, s7, l(0.000000)
add r4.w, r4.w, l(-1.000000)
mad r0.w, r0.w, r4.w, l(1.000000)
dp3_sat r4.w, cb0[28].xyzx, r4.xyzx
min r5.x, r2.w, l(0.200000)
add r4.w, r4.w, r5.x
min r4.w, r4.w, l(1.000000)
dp3_sat r4.x, cb0[28].xyzx, -r4.xyzx
dp3_sat r2.x, cb0[28].xyzx, -r2.xyzx
log r2.x, r2.x
mul r2.x, r2.x, cb13[4].y
exp r2.x, r2.x
mad_sat r2.x, r4.x, cb13[4].x, r2.x
mul r2.x, r2.w, r2.x
mul r2.yzw, r1.wwww, cb0[27].xxyz
mul r2.yzw, r0.wwww, r2.yyzw
mul r2.yzw, r2.yyzw, l(0.000000, 0.318309873, 0.318309873, 0.318309873)
mul r4.xyz, r4.wwww, r2.yzwy
mad r2.xyz, r2.yzwy, r2.xxxx, r4.xyzx
add r2.xyz, r2.xyzx, r6.xyzx
mul r2.xyz, r2.xyzx, r3.xyzx
mul r2.xyz, r2.xyzx, cb13[1].xxxx
dp3 r0.w, -r1.xyzx, -r1.xyzx
sqrt r0.w, r0.w
mul r0.w, r0.w, l(0.015625)
min r0.w, r0.w, l(1.000000)
sqrt r0.z, r0.w
sample_l_indexable(texture3d)(float,float,float,float) r0.z, r0.xyzx, t21.yzxw, s6, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t20.wxyz, s6, l(0.000000)
add r0.x, r0.x, l(-1.000000)
mad r0.x, r0.z, r0.x, l(1.000000)
mul r0.yzw, r2.xxyz, cb8[7].xxyz
mul r0.x, r0.x, r3.w
mul o0.xyz, r0.xxxx, r0.yzwy
mov o0.w, l(0)
ret
// Approximately 0 instruction slots used
