//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:58 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyz
// TEXCOORD                 1   xyzw        1     NONE   float   xyz
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xy
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
dcl_constantbuffer cb0[50], immediateIndexed
dcl_constantbuffer cb13[2], immediateIndexed
dcl_constantbuffer cb12[15], immediateIndexed
dcl_constantbuffer cb3[16], immediateIndexed
dcl_constantbuffer cb8[36], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_sampler s6, mode_default
dcl_sampler s7, mode_default
dcl_sampler s8, mode_default
dcl_resource_texture2d (float,float,float,float) t4
dcl_resource_texture2d (float,float,float,float) t5
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t13
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture3d (float,float,float,float) t16
dcl_resource_texture3d (float,float,float,float) t17
dcl_resource_texture3d (float,float,float,float) t18
dcl_resource_texture3d (float,float,float,float) t19
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_resource_texturecube (float,float,float,float) t24
dcl_resource_texturecube (float,float,float,float) t25
dcl_input_ps linear v0.xyz
dcl_input_ps linear v1.xyz
dcl_input_ps linear v2.xyz
dcl_input_ps linear v3.xy
dcl_input_ps linear v4.xyz
dcl_input_ps_siv linear noperspective v5.xy, position
dcl_output o0.xyzw
dcl_temps 16
mul r0.xy, v5.xyxx, cb12[12].zwzz
add r1.xyz, -v4.xyzx, cb12[14].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r1.xyzx
add r3.xyz, v4.xyzx, -cb12[14].xyzx
dp3 r1.w, -cb12[6].xyzx, r3.xyzx
mad r4.xy, v3.xyxx, cb0[12].xyxx, cb0[12].zwzz
sample_indexable(texture2d)(float,float,float,float) r4.xyz, r4.xyxx, t4.xyzw, s4
mad r4.yw, r4.xxxy, cb0[22].xxxx, cb0[22].yyyy
dp2 r2.w, r4.ywyy, r4.ywyy
add r2.w, -r2.w, l(1.000000)
max r2.w, r2.w, l(0.000000)
sqrt r2.w, r2.w
add_sat r3.w, r4.z, cb0[22].z
mul r5.xyz, r4.wwww, v2.xyzx
mad r4.yzw, v1.xxyz, r4.yyyy, r5.xxyz
mad r4.yzw, v0.xxyz, r2.wwww, r4.yyzw
dp3 r2.w, r4.yzwy, r4.yzwy
rsq r2.w, r2.w
mul r5.xyz, r2.wwww, r4.yzwy
add r6.xy, v3.xyxx, -cb0[8].xyxx
dp2 r6.x, r6.xyxx, r6.xyxx
sqrt r6.x, r6.x
mad_sat r6.x, r6.x, cb0[10].x, cb0[10].y
mad r6.yzw, cb0[15].xxyz, r6.xxxx, cb0[14].xxyz
add r7.xy, v3.xyxx, -cb0[16].xyxx
dp2 r7.x, r7.xyxx, r7.xyxx
sqrt r7.x, r7.x
mad_sat r7.x, r7.x, cb0[18].x, cb0[18].y
add r7.x, r7.x, cb0[19].x
mad_sat r7.y, r6.x, cb0[20].x, cb0[20].y
mul r7.x, r7.y, r7.x
mul_sat r7.x, r7.x, cb0[21].x
mad_sat r4.x, cb0[11].x, r4.x, cb0[13].x
add r6.x, -r6.x, l(1.000000)
mul r6.yzw, r6.yyzw, cb0[49].xxxx
min r3.w, r3.w, r4.x
add r4.x, -r6.x, l(1.000000)
mul r7.yzw, r4.xxxx, r6.yyzw
mul r6.yzw, r6.xxxx, r6.yyzw
mad r6.yzw, r4.xxxx, l(0.000000, 0.040000, 0.040000, 0.040000), r6.yyzw
max r4.x, l(0.000100), cb8[6].w
log r4.x, r4.x
mul r4.x, r4.x, cb0[47].x
exp r4.x, r4.x
mul r4.x, r4.x, r4.x
mul r8.x, cb8[6].w, cb8[6].w
add r8.yzw, v4.xxyz, -cb3[0].xxyz
div r8.yzw, |r8.yyzw|, cb3[6].xxyz
add r9.xyz, l(-2.000000, -2.000000, -2.000000, 0.000000), cb3[3].xyzx
div r8.yzw, r8.yyzw, r9.xxyz
max r8.y, r8.z, r8.y
max r8.y, r8.w, r8.y
max r8.y, r8.y, l(0.510000)
log r8.y, r8.y
round_ni r8.y, r8.y
add r9.z, r8.y, l(1.000000)
lt r8.y, r9.z, cb3[8].x
exp r8.z, r9.z
mul r10.xyz, r8.zzzz, cb3[6].xyzx
div r11.xyz, cb3[0].xyzx, r10.xyzx
round_ni r11.xyz, r11.xyzx
mad r10.xyz, -r11.xyzx, r10.xyzx, v4.xyzx
div r10.xyz, r10.xyzx, cb3[6].xyzx
div r10.xyz, r10.xyzx, cb3[3].xyzx
div r10.xyz, r10.xyzx, r8.zzzz
mov r9.xy, l(0.500000,0.500000,0,0)
mad r9.xyz, r10.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r9.xyzx
add r8.z, r9.z, l(0.500000)
mul r9.xy, r9.xyxx, cb3[2].xyxx
mad r9.w, r8.z, cb3[2].z, cb3[9].x
add r9.xyz, r9.xywx, l(0.500000, 0.500000, 0.500000, 0.000000)
div r9.xyz, r9.xyzx, cb3[4].xyzx
mov r10.xy, cb8[4].zwzz
mov r10.z, l(0)
movc r8.yzw, r8.yyyy, r9.xxyz, r10.xxyz
sample_l_indexable(texture3d)(float,float,float,float) r9.xyzw, r8.yzwy, t16.xyzw, s6, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r11.xyzw, r8.yzwy, t17.xyzw, s6, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r12.xyzw, r8.yzwy, t18.xyzw, s6, l(0.000000)
mul r1.w, r1.w, cb3[15].x
mad_sat r1.w, r1.w, l(1.500000), cb3[15].y
lt r10.w, r1.w, l(1.000000)
if_nz r10.w
  sample_l_indexable(texture3d)(float,float,float,float) r13.xyzw, r10.xyzx, t16.xyzw, s6, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r14.xyzw, r10.xyzx, t17.xyzw, s6, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r10.xyzw, r10.xyzx, t18.xyzw, s6, l(0.000000)
  add r15.xyzw, r9.xyzw, -r13.xyzw
  mad r9.xyzw, r1.wwww, r15.xyzw, r13.xyzw
  add r13.xyzw, r11.xyzw, -r14.xyzw
  mad r11.xyzw, r1.wwww, r13.xyzw, r14.xyzw
  add r13.xyzw, -r10.xyzw, r12.xyzw
  mad r12.xyzw, r1.wwww, r13.xyzw, r10.xyzw
endif
mov r5.w, l(1.000000)
dp4 r10.x, r9.xyzw, r5.xyzw
dp4 r10.y, r11.xyzw, r5.xyzw
dp4 r10.z, r12.xyzw, r5.xyzw
max r10.xyz, r10.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r5.w, r8.yzwy, t19.yzwx, s5, l(0.000000)
add r5.w, r5.w, l(-1.000000)
mad r1.w, r1.w, r5.w, l(1.000000)
dp3_sat r5.w, cb0[25].xyzx, r5.xyzx
mul r8.yzw, r4.xxxx, cb0[24].xxyz
mul r8.yzw, r1.wwww, r8.yyzw
mul r8.yzw, r5.wwww, r8.yyzw
mad r8.yzw, r8.yyzw, l(0.000000, 0.318309873, 0.318309873, 0.318309873), r10.xxyz
dp3 r1.w, r5.xyzx, r2.xyzx
add r4.x, r1.w, r1.w
mad r2.xyz, r5.xyzx, r4.xxxx, -r2.xyzx
mul r4.x, r3.w, l(1.500000)
min r4.x, r4.x, l(1.000000)
mad r2.xyz, -r4.yzwy, r2.wwww, r2.xyzx
mad r2.xyz, r4.xxxx, r2.xyzx, r5.xyzx
dp3 r2.w, r2.xyzx, r2.xyzx
rsq r2.w, r2.w
mul r4.xyz, r2.wwww, r2.xyzx
dp3 r2.x, r9.xyzx, r9.xyzx
rsq r2.x, r2.x
mul r10.xyz, r2.xxxx, r9.xyzx
dp3 r2.x, r11.xyzx, r11.xyzx
rsq r2.x, r2.x
mul r13.xyz, r2.xxxx, r11.xyzx
dp3 r2.x, r12.xyzx, r12.xyzx
rsq r2.x, r2.x
mul r14.xyz, r2.xxxx, r12.xyzx
mul r13.xyz, r13.xyzx, l(0.590000, 0.590000, 0.590000, 0.000000)
mad r10.xyz, r10.xyzx, l(0.300000, 0.300000, 0.300000, 0.000000), r13.xyzx
mad r10.xyz, r14.xyzx, l(0.110000, 0.110000, 0.110000, 0.000000), r10.xyzx
dp3 r2.x, r10.xyzx, r10.xyzx
rsq r2.x, r2.x
mul r10.xyz, r2.xxxx, r10.xyzx
mul r13.xyz, r10.xyzx, l(0.666666746, 0.666666746, 0.666666746, 0.000000)
mov r13.w, l(0.333333373)
dp4 r9.x, r9.xyzw, r13.xyzw
dp4 r9.y, r11.xyzw, r13.xyzw
dp4 r9.z, r12.xyzw, r13.xyzw
dp4 r2.x, r13.xyzw, r13.xyzw
div r9.xyz, r9.xyzx, r2.xxxx
max r9.xyz, r9.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mad r1.xyz, r1.xyzx, r0.wwww, r10.xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx
dp3_sat r0.w, r1.xyzx, r5.xyzx
dp3_sat r2.x, r5.xyzx, r10.xyzx
dp3_sat r1.x, r10.xyzx, r1.xyzx
mad r1.y, -r3.w, l(0.900000), l(1.000000)
mul r1.y, r1.y, r1.y
mul r1.y, r1.y, r1.y
add r1.x, -r1.x, l(1.000000)
mad r1.z, r6.x, l(0.840000), l(0.040000)
mul r2.y, r1.x, r1.x
mul r2.y, r2.y, r2.y
mul r5.x, r1.x, r2.y
mad r1.x, -r1.x, r2.y, l(1.000000)
div r1.z, l(1.000000, 1.000000, 1.000000, 1.000000), r1.z
mad r1.x, r1.z, r5.x, r1.x
mad r1.z, r0.w, r1.y, -r0.w
mad r0.w, r1.z, r0.w, l(1.000000)
mul r0.w, r0.w, r0.w
div r0.w, r1.y, r0.w
mul r0.w, r0.w, r1.x
mul r0.w, r0.w, l(0.0397887304)
mul r1.xyz, r0.wwww, r9.xyzx
mul r1.xyz, r2.xxxx, r1.xyzx
add r0.w, -r3.w, l(1.000000)
sqrt r2.x, r0.w
mul r2.y, r2.x, l(8.000000)
max r5.x, r8.x, l(0.000100)
log r5.x, r5.x
mul r5.y, r5.x, cb0[38].x
exp r5.y, r5.y
add r5.z, r1.w, r5.y
log r5.z, r5.z
mul r5.z, r3.w, r5.z
exp r5.z, r5.z
add r5.z, r5.y, r5.z
add_sat r5.z, r5.z, l(-1.000000)
mad_sat r5.z, cb0[37].x, r5.z, cb0[37].y
add r5.z, -r5.y, r5.z
mad r5.y, r3.w, r5.z, r5.y
lt r5.z, l(-0.500000), cb0[43].x
add r9.xyz, -v4.xyzx, cb12[7].xyzx
dp3 r5.w, r9.xyzx, r9.xyzx
sqrt r5.w, r5.w
mad_sat r5.w, r5.w, cb0[40].x, cb0[40].y
add r6.x, -cb0[42].x, cb0[43].x
mad r5.w, r5.w, r6.x, cb0[42].x
movc r5.z, r5.z, r5.w, cb0[42].x
mad r4.w, r2.z, r2.w, l(1.000000)
dp3 r2.z, r4.xywx, r4.xywx
rsq r2.z, r2.z
mul r2.zw, r2.zzzz, r4.xxxy
mad r2.zw, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000), l(0.000000, 0.000000, 0.500000, 0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r2.yzw, r2.zwzz, t5.wxyz, s7, r2.y
mul r2.yzw, r5.yyyy, r2.yyzw
mul r9.xyz, r5.zzzz, r2.yzwy
mul r4.w, r2.x, cb8[25].w
sample_l_indexable(texturecube)(float,float,float,float) r10.xyzw, r4.xyzx, t25.xyzw, s8, r4.w
lt r4.w, cb8[29].w, l(0.500000)
mul r11.xyz, r10.xyzx, r10.xyzx
movc r10.xyz, r4.wwww, r11.xyzx, r10.xyzx
mul r11.xyz, v4.yyyy, cb8[33].xyzx
mad r11.xyz, cb8[32].xyzx, v4.xxxx, r11.xyzx
mad r11.xyz, cb8[34].xyzx, v4.zzzz, r11.xyzx
add r11.xyz, r11.xyzx, cb8[35].xyzx
mul r4.w, r5.x, cb0[35].x
exp r4.w, r4.w
add r5.x, r1.w, r4.w
log r5.x, r5.x
mul r5.x, r3.w, r5.x
exp r5.x, r5.x
add r5.x, r4.w, r5.x
add_sat r5.x, r5.x, l(-1.000000)
mad_sat r5.x, cb0[34].x, r5.x, cb0[34].y
add r5.x, -r4.w, r5.x
mad r4.w, r3.w, r5.x, r4.w
mul r5.x, r4.w, cb8[24].w
add r12.xyz, cb8[30].xyzx, cb8[31].xyzx
mul r5.xyw, r5.xxxx, r12.xyxz
mul r5.xyw, r5.xyxw, r10.xyxz
mov_sat r10.xyz, -r11.xyzx
mad_sat r10.xyz, r10.xyzx, cb8[22].xyzx, -cb8[24].xyzx
add r10.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mov_sat r12.xyz, r11.xyzx
mad_sat r12.xyz, r12.xyzx, cb8[23].xyzx, -cb8[25].xyzx
add r12.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r6.x, r12.y, r12.x
mul r6.x, r12.z, r6.x
mul r6.x, r10.x, r6.x
mul r6.x, r10.y, r6.x
mul r6.x, r10.z, r6.x
lt r8.x, l(0.000000), cb8[27].w
log r10.xyz, |r11.xyzx|
mul r10.xyz, r10.xyzx, cb8[27].wwww
exp r10.xyz, r10.xyzx
dp3 r9.w, r10.xyzx, cb8[27].xyzx
log r9.w, r9.w
mul r9.w, r9.w, cb8[28].x
exp r9.w, r9.w
mad_sat r9.w, cb8[28].y, r9.w, cb8[28].z
add r9.w, -r9.w, l(1.000000)
mul r9.w, r6.x, r9.w
movc r6.x, r8.x, r9.w, r6.x
mul r6.x, r6.x, r10.w
lt r8.x, l(0.000000), cb8[29].y
mul r10.xyz, r5.xywx, cb0[44].xxxx
mul r5.xyw, r5.xyxw, cb0[41].xxxx
movc r5.xyw, r8.xxxx, r10.xyxz, r5.xyxw
mul r6.x, r6.x, cb8[28].w
mad r2.yzw, -r2.yyzw, r5.zzzz, r5.xxyw
mad r2.yzw, r6.xxxx, r2.yyzw, r9.xxyz
mul r2.x, r2.x, cb8[11].w
sample_l_indexable(texturecube)(float,float,float,float) r5.xyzw, r4.xyzx, t24.xyzw, s8, r2.x
lt r2.x, cb8[15].w, l(0.500000)
mul r4.xyz, r5.xyzx, r5.xyzx
movc r4.xyz, r2.xxxx, r4.xyzx, r5.xyzx
mul r5.xyz, v4.yyyy, cb8[19].xyzx
mad r5.xyz, cb8[18].xyzx, v4.xxxx, r5.xyzx
mad r5.xyz, cb8[20].xyzx, v4.zzzz, r5.xyzx
add r5.xyz, r5.xyzx, cb8[21].xyzx
mul r2.x, r4.w, cb8[10].w
add r9.xyz, cb8[16].xyzx, cb8[17].xyzx
mul r9.xyz, r2.xxxx, r9.xyzx
mul r4.xyz, r4.xyzx, r9.xyzx
mov_sat r9.xyz, -r5.xyzx
mad_sat r9.xyz, r9.xyzx, cb8[8].xyzx, -cb8[10].xyzx
add r9.xyz, -r9.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mov_sat r10.xyz, r5.xyzx
mad_sat r10.xyz, r10.xyzx, cb8[9].xyzx, -cb8[11].xyzx
add r10.xyz, -r10.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r2.x, r10.y, r10.x
mul r2.x, r10.z, r2.x
mul r2.x, r9.x, r2.x
mul r2.x, r9.y, r2.x
mul r2.x, r9.z, r2.x
lt r4.w, l(0.000000), cb8[13].w
log r5.xyz, |r5.xyzx|
mul r5.xyz, r5.xyzx, cb8[13].wwww
exp r5.xyz, r5.xyzx
dp3 r5.x, r5.xyzx, cb8[13].xyzx
log r5.x, r5.x
mul r5.x, r5.x, cb8[14].x
exp r5.x, r5.x
mad_sat r5.x, cb8[14].y, r5.x, cb8[14].z
add r5.x, -r5.x, l(1.000000)
mul r5.x, r2.x, r5.x
movc r2.x, r4.w, r5.x, r2.x
mul r2.x, r2.x, r5.w
lt r4.w, l(0.000000), cb8[15].y
mul r5.xyz, r4.xyzx, cb0[44].xxxx
mul r4.xyz, r4.xyzx, cb0[41].xxxx
movc r4.xyz, r4.wwww, r5.xyzx, r4.xyzx
mul r2.x, r2.x, cb8[14].w
add r4.xyz, -r2.yzwy, r4.xyzx
mad r2.xyz, r2.xxxx, r4.xyzx, r2.yzwy
add_sat r1.w, -r1.w, l(1.000000)
mul r2.w, r1.w, r1.w
mul r2.w, r2.w, r2.w
mul r1.w, r1.w, r2.w
add r0.w, r0.w, r0.w
min r0.w, r0.w, l(1.000000)
add r0.w, -r0.w, l(1.000000)
mul r2.w, r0.w, r1.w
mad r3.w, r3.w, l(0.600000), l(0.400000)
mad r0.w, -r1.w, r0.w, l(1.000000)
mul r0.w, r0.w, r3.w
mad r4.xyz, r6.yzwy, r0.wwww, r2.wwww
max r0.w, r7.x, l(0.001000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
mul r4.xyz, r0.wwww, r4.xyzx
mul r1.xyz, r0.wwww, r1.xyzx
mul r2.xyz, r2.xyzx, r4.xyzx
mad r1.xyz, r6.yzwy, r1.xyzx, r2.xyzx
mad r1.xyz, r7.yzwy, r8.yzwy, r1.xyzx
mul r1.xyz, r1.xyzx, cb13[1].xxxx
mul r0.w, l(0.750000), cb0[7].x
max r0.w, r0.w, l(0.000000)
dp3 r1.w, r3.xyzx, r3.xyzx
sqrt r1.w, r1.w
mad_sat r2.x, r1.w, cb0[3].x, cb0[3].y
sample_indexable(texture2d)(float,float,float,float) r4.xyzw, r0.xyxx, t11.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r5.xyzw, r0.xyxx, t13.xyzw, s2
add r4.xyzw, r4.xyzw, -r5.xyzw
mad r2.xyzw, r2.xxxx, r4.xyzw, r5.xyzw
div r3.x, r3.z, r1.w
add r0.w, -r0.w, r1.w
mul_sat r0.w, r0.w, l(0.000020)
sqrt r4.x, r0.w
mad r4.y, r3.x, l(0.500000), l(0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r3.xyzw, r4.xyxx, t15.xyzw, s3, l(0.000000)
mul r0.w, cb0[5].x, cb13[1].x
mad r4.x, r3.w, cb0[6].x, -r3.w
mad r2.w, r2.w, r4.x, r2.w
mul r2.w, r0.w, r2.w
mad r0.w, -r0.w, r3.w, r0.w
mul r2.xyz, r0.wwww, r2.xyzx
mad r2.xyz, cb0[4].xyzx, r2.wwww, r2.xyzx
mul r0.w, r1.w, l(0.015625)
min r0.w, r0.w, l(1.000000)
sqrt r0.z, r0.w
sample_l_indexable(texture3d)(float,float,float,float) r0.z, r0.xyzx, t21.yzxw, s1, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r0.xyxx, t20.xyzw, s1, l(0.000000)
add r4.xyzw, r4.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r0.xyzw, r0.zzzz, r4.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mul r1.xyz, r1.xyzx, r3.xyzx
mad r0.xyz, r1.xyzx, r0.wwww, r0.xyzx
add r0.xyz, r2.xyzx, r0.xyzx
mul o0.xyz, r7.xxxx, r0.xyzx
mov o0.w, r7.x
ret
// Approximately 0 instruction slots used
