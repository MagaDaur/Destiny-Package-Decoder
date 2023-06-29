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
// SV_POSITION              0   xyzw        5      POS   float   xy
// SV_isFrontFace           0   x           6    FFACE    uint
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
dcl_constantbuffer cb0[48], immediateIndexed
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
dcl_sampler s9, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t7
dcl_resource_texture2d (float,float,float,float) t8
dcl_resource_texture2d (float,float,float,float) t9
dcl_resource_texture3d (float,float,float,float) t16
dcl_resource_texture3d (float,float,float,float) t17
dcl_resource_texture3d (float,float,float,float) t18
dcl_resource_texture3d (float,float,float,float) t19
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t26
dcl_resource_texturecube (float,float,float,float) t27
dcl_resource_texture2d (float,float,float,float) t28
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyzw
dcl_input_ps linear v3.xyzw
dcl_input_ps linear v4.xyz
dcl_input_ps_siv linear noperspective v5.xy, position
dcl_output o0.xyzw
dcl_temps 19
mul r0.xy, v5.xyxx, cb12[12].zwzz
add r1.xyz, -v4.xyzx, cb12[14].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r1.xyzx
add r3.xyz, v4.xyzx, -cb12[14].xyzx
dp3 r1.w, -cb12[6].xyzx, r3.xyzx
dp3 r3.x, r2.xyzx, v1.xyzx
dp3 r3.y, r2.xyzx, v2.xyzx
mul r2.w, v0.w, v0.w
ftou r3.z, v2.w
uge r3.w, r3.z, l(4)
if_nz r3.w
  mad r4.xy, v3.zwzz, cb7[6].xyxx, cb7[6].zwzz
  mad r4.zw, v3.zzzw, cb7[7].xxxy, cb7[7].zzzw
  sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.xyxx, t8.wxyz, s1
  sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.zwzz, t9.xyzw, s1
  mad r4.xy, r4.xyxx, cb7[8].xxxx, cb7[8].yyyy
  add_sat r3.w, r4.z, cb7[8].z
else
  uge r4.z, r3.z, l(2)
  if_nz r4.z
    mad r4.zw, v3.zzzw, cb7[3].xxxy, cb7[3].zzzw
    mad r6.xy, v3.zwzz, cb7[4].xyxx, cb7[4].zwzz
    sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.zwzz, t6.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t7.xyzw, s1
    mad r4.xy, r6.xyxx, cb7[5].xxxx, cb7[5].yyyy
    add_sat r3.w, r6.z, cb7[5].z
  else
    mad r4.zw, v3.zzzw, cb7[0].xxxy, cb7[0].zzzw
    mad r6.xy, v3.zwzz, cb7[1].xyxx, cb7[1].zwzz
    sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r4.zwzz, t4.wxyz, s1
    sample_indexable(texture2d)(float,float,float,float) r6.xyz, r6.xyxx, t5.xyzw, s1
    mad r4.xy, r6.xyxx, cb7[2].xxxx, cb7[2].yyyy
    add_sat r3.w, r6.z, cb7[2].z
  endif
endif
imad r6.xyzw, l(9, 9, 9, 9), r3.zzzz, l(9, 11, 12, 13)
imad r7.xyzw, l(9, 9, 9, 9), r3.zzzz, l(14, 15, 16, 17)
mov_sat r8.xyzw, cb7[r6.y + 0].xyzw
mov_sat r4.zw, cb7[r6.z + 0].yyyz
mov_sat r9.xyzw, cb7[r7.w + 0].xyzw
sample_indexable(texture2d)(float,float,float,float) r10.xyz, v3.xyxx, t0.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r6.yz, v3.xyxx, t1.zxyw, s4
mad r6.yz, r6.yyzy, cb0[4].xxxx, cb0[4].yyyy
sample_indexable(texture2d)(float,float,float,float) r11.zw, v3.xyxx, t2.xzyw, s5
ge r3.z, r11.w, l(0.156862751)
and r3.z, r3.z, l(0x3f800000)
add r12.xy, r11.zwzz, l(-0.250000, -0.188235298, 0.000000, 0.000000)
mul_sat r7.w, r12.y, l(1.231884)
mad_sat r7.w, cb7[r7.y + 0].y, r7.w, cb7[r7.y + 0].x
mad_sat r7.y, cb7[r7.y + 0].w, r7.w, cb7[r7.y + 0].z
mul_sat r11.xy, r11.wzww, l(7.968750, 4.000000, 0.000000, 0.000000)
mul_sat r12.yzw, r5.yyzw, l(0.000000, 4.000000, 4.000000, 4.000000)
add_sat r5.yzw, r5.yyzw, l(0.000000, -0.250000, -0.250000, -0.250000)
mad_sat r13.xyz, cb7[r6.x + 0].xyzx, r12.yzwy, r5.yzwy
add r13.xyz, r13.xyzx, -cb7[r6.x + 0].xyzx
mad r13.xyz, r8.xxxx, r13.xyzx, cb7[r6.x + 0].xyzx
mad_sat r7.w, cb7[r6.w + 0].y, r11.z, cb7[r6.w + 0].x
mad_sat r7.w, cb7[r6.w + 0].w, r7.w, cb7[r6.w + 0].z
mov_sat r12.x, r12.x
mad_sat r5.x, r5.x, r11.y, r12.x
mad_sat r8.x, cb7[r6.w + 0].y, r5.x, cb7[r6.w + 0].x
mad_sat r6.w, cb7[r6.w + 0].w, r8.x, cb7[r6.w + 0].z
add r6.w, -r7.w, r6.w
mad r6.w, r8.z, r6.w, r7.w
mul_sat r14.xyz, r10.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r15.xyz, r10.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r13.xyz, r13.xyzx, r14.xyzx, r15.xyzx
mad r8.xz, r4.xxyx, r8.yyyy, r6.yyzy
add r3.w, r3.w, l(-1.000000)
mad r7.w, r8.y, r3.w, l(1.000000)
mad_sat r5.yzw, cb7[r7.x + 0].xxyz, r12.yyzw, r5.yyzw
add r5.yzw, r5.yyzw, -cb7[r7.x + 0].xxyz
mad r5.yzw, r9.xxxx, r5.yyzw, cb7[r7.x + 0].xxyz
mad_sat r5.yzw, r5.yyzw, r14.xxyz, r15.xxyz
mad_sat r7.x, cb7[r7.z + 0].y, r11.z, cb7[r7.z + 0].x
mad_sat r7.x, cb7[r7.z + 0].w, r7.x, cb7[r7.z + 0].z
mad_sat r5.x, cb7[r7.z + 0].y, r5.x, cb7[r7.z + 0].x
mad_sat r5.x, cb7[r7.z + 0].w, r5.x, cb7[r7.z + 0].z
add r5.x, -r7.x, r5.x
mad r5.x, r9.z, r5.x, r7.x
mad r4.xy, r4.xyxx, r9.yyyy, r6.yzyy
mad r3.w, r9.y, r3.w, l(1.000000)
add r9.xyz, -r5.yzwy, r13.xyzx
mad r5.yzw, r7.yyyy, r9.xxyz, r5.yyzw
add r7.xz, -r4.xxyx, r8.xxzx
mad r4.xy, r7.yyyy, r7.xzxx, r4.xyxx
add r6.w, -r5.x, r6.w
mad r5.x, r7.y, r6.w, r5.x
add r6.w, r8.w, -r9.w
mad r8.z, r7.y, r6.w, r9.w
add r6.w, -r3.w, r7.w
mad r3.w, r7.y, r6.w, r3.w
min r3.w, r3.w, r5.x
lt r5.x, l(0.000100), r4.z
mul r6.w, r4.z, l(-2.000000)
mad r4.z, r4.z, l(-2.000000), l(-0.200000)
mul r4.z, r3.w, r4.z
mad r4.z, r4.z, l(-5.002501), r6.w
min r4.z, r3.w, r4.z
movc r8.xyw, r5.xxxx, r4.zzzz, r3.wwww
add r5.xyz, -r10.xyzx, r5.yzwy
mad r5.xyz, r3.zzzz, r5.xyzx, r10.xyzx
add r4.xy, -r6.yzyy, r4.xyxx
mad r4.xy, r3.zzzz, r4.xyxx, r6.yzyy
add r7.xyzw, r8.xyzw, -r11.zzxz
mad r7.xyzw, r3.zzzz, r7.wxyz, r11.zzzx
mul r3.w, r4.w, r3.z
dp2 r4.w, r4.xyxx, r4.xyxx
add r4.w, -r4.w, l(1.000000)
max r4.w, r4.w, l(0.000000)
sqrt r4.z, r4.w
dp3 r4.w, r4.xyzx, r4.xyzx
rsq r4.w, r4.w
mul r4.xyz, r4.wwww, r4.xyzx
mul r6.yzw, r4.yyyy, v2.xxyz
mad r4.xyw, v1.xyxz, r4.xxxx, r6.yzyw
mad r4.xyz, v0.xyzx, r4.zzzz, r4.xywx
dp3 r4.w, r4.xyzx, r4.xyzx
rsq r4.w, r4.w
mul r8.xyz, r4.wwww, r4.xyzx
dp3 r5.w, r2.xyzx, v0.xyzx
dp3 r6.y, r2.xyzx, r8.xyzx
add r6.z, r6.y, r6.y
mad r9.xyz, r8.xyzx, r6.zzzz, -r2.xyzx
mul r6.zw, r3.xxxy, cb0[6].xxxx
div r6.zw, r6.zzzw, r5.wwww
add r6.zw, -r6.zzzw, v3.xxxy
mul r10.x, r6.y, r6.y
mad_sat r10.x, r10.x, cb0[7].x, cb0[7].y
mad r10.xyz, cb0[9].xyzx, r10.xxxx, cb0[8].xyzx
mul r3.xy, r3.xyxx, cb0[10].xxxx
div r3.xy, r3.xyxx, r5.wwww
add r3.xy, -r3.xyxx, r6.zwzz
mad r3.xy, r3.xyxx, cb0[11].xyxx, cb0[11].zwzz
mad r6.zw, r3.yyyx, cb0[12].yyyx, cb0[12].wwwz
round_ne r11.xy, r6.zwzz
add r6.zw, r6.zzzw, -r11.xxxy
mad r11.xy, |r6.zwzz|, l(-16.000000, -16.000000, 0.000000, 0.000000), l(8.000000, 8.000000, 0.000000, 0.000000)
mul r6.zw, r6.zzzw, r11.xxxy
mad r11.xy, |r6.zwzz|, l(0.225000, 0.225000, 0.000000, 0.000000), l(0.775000, 0.775000, 0.000000, 0.000000)
mul r6.zw, r6.zzzw, r11.xxxy
mad r3.xy, cb0[13].yxyy, r6.zwzz, r3.xyxx
add r11.xy, r3.xyxx, -cb0[15].xyxx
dp2 r6.z, r11.xyxx, r11.xyxx
mul r6.z, r6.z, cb0[14].x
mov r11.z, -r11.x
mad r3.xy, r11.yzyy, r6.zzzz, r3.xyxx
sample_indexable(texture2d)(float,float,float,float) r3.x, r3.xyxx, t26.xyzw, s2
mad_sat r3.x, cb0[16].y, r3.x, cb0[16].x
mul r10.xyz, r3.xxxx, r10.xyzx
mul r3.x, r5.w, r5.w
mad_sat r3.x, r3.x, cb0[17].x, cb0[17].y
mul r11.xyz, r3.xxxx, r10.xyzx
mul_sat r12.xyz, r5.xyzx, l(4.000000, 4.000000, 4.000000, 0.000000)
add_sat r5.xyz, r5.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad r5.xyz, cb7[r6.x + 0].xyzx, r12.xyzx, r5.xyzx
mad r5.xyz, -r10.xyzx, r3.xxxx, r5.xyzx
mad r3.xyz, r3.zzzz, r5.xyzx, r11.xyzx
add r5.xy, -r7.wxww, l(1.000000, 1.000000, 0.000000, 0.000000)
mul r6.xzw, r3.xxyz, r5.xxxx
mul r3.xyz, r7.wwww, r3.xyzx
mad r3.xyz, r5.xxxx, l(0.040000, 0.040000, 0.040000, 0.000000), r3.xyzx
max r5.x, r2.w, l(0.000100)
log r5.x, r5.x
mul r5.x, r5.x, cb0[47].x
exp r5.x, r5.x
mul r5.x, r5.x, r5.x
mul r2.w, r2.w, r2.w
add r10.xyz, v4.xyzx, -cb3[0].xyzx
div r10.xyz, |r10.xyzx|, cb3[6].xyzx
add r11.xyz, l(-2.000000, -2.000000, -2.000000, 0.000000), cb3[3].xyzx
div r10.xyz, r10.xyzx, r11.xyzx
max r5.z, r10.y, r10.x
max r5.z, r10.z, r5.z
max r5.z, r5.z, l(0.510000)
log r5.z, r5.z
round_ni r5.z, r5.z
add r10.z, r5.z, l(1.000000)
lt r5.z, r10.z, cb3[8].x
exp r5.w, r10.z
mul r11.xyz, r5.wwww, cb3[6].xyzx
div r12.xyz, cb3[0].xyzx, r11.xyzx
round_ni r12.xyz, r12.xyzx
mad r11.xyz, -r12.xyzx, r11.xyzx, v4.xyzx
div r11.xyz, r11.xyzx, cb3[6].xyzx
div r11.xyz, r11.xyzx, cb3[3].xyzx
div r11.xyz, r11.xyzx, r5.wwww
mov r10.xy, l(0.500000,0.500000,0,0)
mad r10.xyz, r11.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r10.xyzx
add r5.w, r10.z, l(0.500000)
mul r10.xy, r10.xyxx, cb3[2].xyxx
mad r10.w, r5.w, cb3[2].z, cb3[9].x
add r10.xyz, r10.xywx, l(0.500000, 0.500000, 0.500000, 0.000000)
div r10.xyz, r10.xyzx, cb3[4].xyzx
mov r11.xy, cb8[4].zwzz
mov r11.z, l(0)
movc r10.xyz, r5.zzzz, r10.xyzx, r11.xyzx
sample_l_indexable(texture3d)(float,float,float,float) r12.xyzw, r10.xyzx, t16.xyzw, s8, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r13.xyzw, r10.xyzx, t17.xyzw, s8, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r14.xyzw, r10.xyzx, t18.xyzw, s8, l(0.000000)
mul r1.w, r1.w, cb3[15].x
mad_sat r1.w, r1.w, l(1.500000), cb3[15].y
lt r5.z, r1.w, l(1.000000)
if_nz r5.z
  sample_l_indexable(texture3d)(float,float,float,float) r15.xyzw, r11.xyzx, t16.xyzw, s8, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r16.xyzw, r11.xyzx, t17.xyzw, s8, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r11.xyzw, r11.xyzx, t18.xyzw, s8, l(0.000000)
  add r17.xyzw, r12.xyzw, -r15.xyzw
  mad r12.xyzw, r1.wwww, r17.xyzw, r15.xyzw
  add r15.xyzw, r13.xyzw, -r16.xyzw
  mad r13.xyzw, r1.wwww, r15.xyzw, r16.xyzw
  add r15.xyzw, -r11.xyzw, r14.xyzw
  mad r14.xyzw, r1.wwww, r15.xyzw, r11.xyzw
endif
mov r8.w, l(1.000000)
dp4 r11.x, r12.xyzw, r8.xyzw
dp4 r11.y, r13.xyzw, r8.xyzw
dp4 r11.z, r14.xyzw, r8.xyzw
max r11.xyz, r11.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mov r9.w, l(1.000000)
dp4 r15.x, r12.xyzw, r9.xyzw
dp4 r15.y, r13.xyzw, r9.xyzw
dp4 r15.z, r14.xyzw, r9.xyzw
max r15.xyz, r15.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
dp3 r5.z, r12.xyzx, r12.xyzx
rsq r5.z, r5.z
mul r16.xyz, r5.zzzz, r12.xyzx
dp3 r5.z, r13.xyzx, r13.xyzx
rsq r5.z, r5.z
mul r17.xyz, r5.zzzz, r13.xyzx
dp3 r5.z, r14.xyzx, r14.xyzx
rsq r5.z, r5.z
mul r18.xyz, r5.zzzz, r14.xyzx
mul r17.xyz, r17.xyzx, l(0.590000, 0.590000, 0.590000, 0.000000)
mad r16.xyz, r16.xyzx, l(0.300000, 0.300000, 0.300000, 0.000000), r17.xyzx
mad r16.xyz, r18.xyzx, l(0.110000, 0.110000, 0.110000, 0.000000), r16.xyzx
dp3 r5.z, r16.xyzx, r16.xyzx
rsq r5.z, r5.z
mul r16.xyz, r5.zzzz, r16.xyzx
mov r16.w, l(1.000000)
dp4 r17.x, r12.xyzw, r16.xyzw
dp4 r17.y, r13.xyzw, r16.xyzw
dp4 r17.z, r14.xyzw, r16.xyzw
max r17.xyz, r17.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
dp3_sat r5.z, r16.xyzx, -r2.xyzx
mul r16.xyzw, r8.xyzw, l(-1.000000, -1.000000, -1.000000, 1.000000)
dp4 r12.x, r12.xyzw, r16.xyzw
dp4 r12.y, r13.xyzw, r16.xyzw
dp4 r12.z, r14.xyzw, r16.xyzw
max r12.xyz, r12.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r12.xyz, r12.xyzx, cb13[4].xxxx
log r5.z, r5.z
mul r5.z, r5.z, cb13[4].y
exp r5.z, r5.z
mad r12.xyz, r5.zzzz, r17.xyzx, r12.xyzx
mad r11.xyz, r12.xyzx, r3.wwww, r11.xyzx
sample_l_indexable(texture3d)(float,float,float,float) r5.z, r10.xyzx, t19.yzxw, s7, l(0.000000)
add r5.z, r5.z, l(-1.000000)
mad r1.w, r1.w, r5.z, l(1.000000)
dp3_sat r5.z, cb0[21].xyzx, r8.xyzx
min r5.w, r3.w, l(0.200000)
add r5.z, r5.w, r5.z
min r5.z, r5.z, l(1.000000)
dp3_sat r5.w, cb0[21].xyzx, -r8.xyzx
dp3_sat r2.x, cb0[21].xyzx, -r2.xyzx
log r2.x, r2.x
mul r2.x, r2.x, cb13[4].y
exp r2.x, r2.x
mad_sat r2.x, r5.w, cb13[4].x, r2.x
mul r2.x, r3.w, r2.x
mul r10.xyz, r5.xxxx, cb0[20].xyzx
mul r10.xyz, r1.wwww, r10.xyzx
mul r10.xyz, r10.xyzx, l(0.318309873, 0.318309873, 0.318309873, 0.000000)
mul r12.xyz, r5.zzzz, r10.xyzx
mad r2.xyz, r10.xyzx, r2.xxxx, r12.xyzx
add r2.xyz, r2.xyzx, r11.xyzx
mul r10.xy, r7.yxyy, l(1.500000, -0.500000, 0.000000, 0.000000)
mov_sat r10.xy, r10.xyxx
mad r4.xyz, -r4.xyzx, r4.wwww, r9.xyzx
mad r4.xyz, r10.xxxx, r4.xyzx, r8.xyzx
dp3 r3.w, r4.xyzx, r4.xyzx
rsq r3.w, r3.w
mul r9.xyz, r3.wwww, r4.xyzx
lt r4.x, l(0.001000), r1.w
mad r10.xzw, r1.xxyz, r0.wwww, cb0[30].xxyz
dp3 r0.w, r10.xzwx, r10.xzwx
rsq r0.w, r0.w
mul r10.xzw, r0.wwww, r10.xxzw
dp3_sat r0.w, r10.xzwx, r8.xyzx
dp3_sat r4.y, r8.xyzx, cb0[30].xyzx
dp3_sat r4.w, cb0[30].xyzx, r10.xzwx
mul r5.x, r1.w, r5.x
mad_sat r5.z, -r7.z, l(0.900000), l(1.000000)
mul r5.z, r5.z, r5.z
mul r5.z, r5.z, r5.z
add r4.w, -r4.w, l(1.000000)
mad r5.w, r7.w, l(0.840000), l(0.040000)
mul r7.y, r4.w, r4.w
mul r7.y, r7.y, r7.y
mul r7.z, r4.w, r7.y
mad r4.w, -r4.w, r7.y, l(1.000000)
div r5.w, l(1.000000, 1.000000, 1.000000, 1.000000), r5.w
mad r4.w, r5.w, r7.z, r4.w
mad r5.w, r0.w, r5.z, -r0.w
mad r0.w, r5.w, r0.w, l(1.000000)
mul r0.w, r0.w, r0.w
div r0.w, r5.z, r0.w
mul r0.w, r0.w, r4.w
mul r0.w, r0.w, r5.x
mul r0.w, r0.w, l(0.0397887304)
mul r5.xzw, r0.wwww, cb0[29].xxyz
mul r5.xzw, r4.yyyy, r5.xxzw
and r4.xyw, r4.xxxx, r5.xzxw
sqrt r0.w, r5.y
add r5.x, -r0.w, l(1.000000)
add r5.y, -cb0[34].x, cb0[35].x
mad r5.x, r5.x, r5.y, cb0[34].x
lod r5.y, r9.xyzx, t27.x, s9
max r5.x, r5.x, r5.y
sample_l_indexable(texturecube)(float,float,float,float) r5.xyzw, r9.xyzx, t27.xyzw, s9, r5.x
mad r7.yzw, r1.wwww, cb0[36].xxyz, r15.xxyz
mul r5.xyz, r5.xyzx, r7.yzwy
mov_sat r7.x, r7.x
max r2.w, r2.w, l(0.000100)
log r2.w, r2.w
mul r7.y, r2.w, cb0[38].x
exp r7.y, r7.y
add r7.z, r6.y, r7.y
log r7.z, r7.z
mul r7.z, r7.z, r7.x
exp r7.z, r7.z
add r7.z, r7.y, r7.z
add_sat r7.z, r7.z, l(-1.000000)
mad_sat r7.z, cb0[37].x, r7.z, cb0[37].y
add r7.z, -r7.y, r7.z
mad r7.y, r7.x, r7.z, r7.y
add r5.w, r5.w, l(-1.000000)
mad_sat r1.w, r1.w, r5.w, l(1.000000)
mul r0.w, r0.w, l(8.000000)
mad r9.w, r4.z, r3.w, l(1.000000)
dp3 r3.w, r9.xywx, r9.xywx
rsq r3.w, r3.w
mul r7.zw, r3.wwww, r9.xxxy
mad r7.zw, r7.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000), l(0.000000, 0.000000, 0.500000, 0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r8.xyz, r7.zwzz, t28.xyzw, s9, r0.w
lt r0.w, l(-0.500000), cb0[44].x
add r9.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r3.w, r9.xyzx, r9.xyzx
sqrt r3.w, r3.w
mad_sat r3.w, r3.w, cb0[42].x, cb0[42].y
add r4.z, -cb0[43].x, cb0[44].x
mad r3.w, r3.w, r4.z, cb0[43].x
movc r0.w, r0.w, r3.w, cb0[43].x
mul r2.w, r2.w, cb0[40].x
exp r2.w, r2.w
add r3.w, r2.w, r6.y
log r3.w, r3.w
mul r3.w, r3.w, r7.x
exp r3.w, r3.w
add r3.w, r2.w, r3.w
add_sat r3.w, r3.w, l(-1.000000)
mad_sat r3.w, cb0[39].x, r3.w, cb0[39].y
add r3.w, -r2.w, r3.w
mad r2.w, r7.x, r3.w, r2.w
mul r8.xyz, r0.wwww, r8.xyzx
mul r8.xyz, r2.wwww, r8.xyzx
mad r5.xyz, r5.xyzx, r7.yyyy, -r8.xyzx
mad r5.xyz, r1.wwww, r5.xyzx, r8.xyzx
add r0.w, -r7.x, l(1.000000)
add_sat r1.w, -r6.y, l(1.000000)
mul r2.w, r1.w, r1.w
mul r2.w, r2.w, r2.w
mul r1.w, r1.w, r2.w
add r0.w, -r10.y, r0.w
add_sat r0.w, r0.w, r0.w
add r0.w, -r0.w, l(1.000000)
mul r2.w, r0.w, r1.w
mad r3.w, r7.x, l(0.600000), l(0.400000)
mad r0.w, -r1.w, r0.w, l(1.000000)
mul r0.w, r0.w, r3.w
mad r7.xyz, r3.xyzx, r0.wwww, r2.wwww
mul r5.xyz, r5.xyzx, r7.xyzx
mad r3.xyz, r3.xyzx, r4.xywx, r5.xyzx
mad r2.xyz, r6.xzwx, r2.xyzx, r3.xyzx
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
mul o0.xyz, r0.xxxx, r0.yzwy
mov o0.w, l(0)
ret
// Approximately 0 instruction slots used
