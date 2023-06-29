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
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
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
dcl_constantbuffer cb0[49], immediateIndexed
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
dcl_resource_texture2d (float,float,float,float) t6
dcl_resource_texture2d (float,float,float,float) t15
dcl_resource_texture3d (float,float,float,float) t16
dcl_resource_texture3d (float,float,float,float) t17
dcl_resource_texture3d (float,float,float,float) t18
dcl_resource_texture3d (float,float,float,float) t19
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_resource_texturecube (float,float,float,float) t24
dcl_resource_texturecube (float,float,float,float) t25
dcl_input_ps linear v0.xyzw
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
mad r3.xy, v3.xyxx, cb0[11].xyxx, cb0[11].zwzz
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r3.xyxx, t5.xyzw, s4
mad r3.yw, r3.xxxy, cb0[21].xxxx, cb0[21].yyyy
dp2 r2.w, r3.ywyy, r3.ywyy
add r2.w, -r2.w, l(1.000000)
max r2.w, r2.w, l(0.000000)
sqrt r2.w, r2.w
add_sat r3.z, r3.z, cb0[21].z
mul r4.xyz, r3.wwww, v2.xyzx
mad r4.xyz, v1.xyzx, r3.yyyy, r4.xyzx
mad r4.xyz, v0.xyzx, r2.wwww, r4.xyzx
dp3 r2.w, r4.xyzx, r4.xyzx
rsq r2.w, r2.w
mul r5.xyz, r2.wwww, r4.xyzx
add r3.yw, v3.xxxy, -cb0[7].xxxy
dp2 r3.y, r3.ywyy, r3.ywyy
sqrt r3.y, r3.y
mad_sat r3.y, r3.y, cb0[9].x, cb0[9].y
mad r6.xyz, cb0[14].xyzx, r3.yyyy, cb0[13].xyzx
add r7.xy, v3.xyxx, -cb0[15].xyxx
dp2 r3.w, r7.xyxx, r7.xyxx
sqrt r3.w, r3.w
mad_sat r3.w, r3.w, cb0[17].x, cb0[17].y
add r3.w, r3.w, cb0[18].x
mad_sat r4.w, r3.y, cb0[19].x, cb0[19].y
mul r3.w, r3.w, r4.w
mul_sat r3.w, r3.w, cb0[20].x
mad_sat r3.x, cb0[10].x, r3.x, cb0[12].x
add r3.y, -r3.y, l(1.000000)
mul r6.xyz, r6.xyzx, cb0[48].xxxx
min r3.x, r3.z, r3.x
add r3.z, -r3.y, l(1.000000)
mul r7.xyz, r3.zzzz, r6.xyzx
mul r6.xyz, r3.yyyy, r6.xyzx
mad r6.xyz, r3.zzzz, l(0.040000, 0.040000, 0.040000, 0.000000), r6.xyzx
max r3.z, v0.w, l(0.000100)
log r3.z, r3.z
mul r3.z, r3.z, cb0[46].x
exp r3.z, r3.z
mul r3.z, r3.z, r3.z
mul r4.w, v0.w, v0.w
add r8.xyz, v4.xyzx, -cb3[0].xyzx
div r8.xyz, |r8.xyzx|, cb3[6].xyzx
add r9.xyz, l(-2.000000, -2.000000, -2.000000, 0.000000), cb3[3].xyzx
div r8.xyz, r8.xyzx, r9.xyzx
max r6.w, r8.y, r8.x
max r6.w, r8.z, r6.w
max r6.w, r6.w, l(0.510000)
log r6.w, r6.w
round_ni r6.w, r6.w
add r8.z, r6.w, l(1.000000)
lt r6.w, r8.z, cb3[8].x
exp r7.w, r8.z
mul r9.xyz, r7.wwww, cb3[6].xyzx
div r10.xyz, cb3[0].xyzx, r9.xyzx
round_ni r10.xyz, r10.xyzx
mad r9.xyz, -r10.xyzx, r9.xyzx, v4.xyzx
div r9.xyz, r9.xyzx, cb3[6].xyzx
div r9.xyz, r9.xyzx, cb3[3].xyzx
div r9.xyz, r9.xyzx, r7.wwww
mov r8.xy, l(0.500000,0.500000,0,0)
mad r8.xyz, r9.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000), r8.xyzx
add r7.w, r8.z, l(0.500000)
mul r8.xy, r8.xyxx, cb3[2].xyxx
mad r8.w, r7.w, cb3[2].z, cb3[9].x
add r8.xyz, r8.xywx, l(0.500000, 0.500000, 0.500000, 0.000000)
div r8.xyz, r8.xyzx, cb3[4].xyzx
mov r9.xy, cb8[4].zwzz
mov r9.z, l(0)
movc r8.xyz, r6.wwww, r8.xyzx, r9.xyzx
sample_l_indexable(texture3d)(float,float,float,float) r10.xyzw, r8.xyzx, t16.xyzw, s6, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r11.xyzw, r8.xyzx, t17.xyzw, s6, l(0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r12.xyzw, r8.xyzx, t18.xyzw, s6, l(0.000000)
mul r1.w, r1.w, cb3[15].x
mad_sat r1.w, r1.w, l(1.500000), cb3[15].y
lt r6.w, r1.w, l(1.000000)
if_nz r6.w
  sample_l_indexable(texture3d)(float,float,float,float) r13.xyzw, r9.xyzx, t16.xyzw, s6, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r14.xyzw, r9.xyzx, t17.xyzw, s6, l(0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r9.xyzw, r9.xyzx, t18.xyzw, s6, l(0.000000)
  add r15.xyzw, r10.xyzw, -r13.xyzw
  mad r10.xyzw, r1.wwww, r15.xyzw, r13.xyzw
  add r13.xyzw, r11.xyzw, -r14.xyzw
  mad r11.xyzw, r1.wwww, r13.xyzw, r14.xyzw
  add r13.xyzw, -r9.xyzw, r12.xyzw
  mad r12.xyzw, r1.wwww, r13.xyzw, r9.xyzw
endif
mov r5.w, l(1.000000)
dp4 r9.x, r10.xyzw, r5.xyzw
dp4 r9.y, r11.xyzw, r5.xyzw
dp4 r9.z, r12.xyzw, r5.xyzw
max r9.xyz, r9.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
sample_l_indexable(texture3d)(float,float,float,float) r5.w, r8.xyzx, t19.yzwx, s5, l(0.000000)
add r5.w, r5.w, l(-1.000000)
mad r1.w, r1.w, r5.w, l(1.000000)
dp3_sat r5.w, cb0[24].xyzx, r5.xyzx
mul r8.xyz, r3.zzzz, cb0[23].xyzx
mul r8.xyz, r1.wwww, r8.xyzx
mul r8.xyz, r5.wwww, r8.xyzx
mad r8.xyz, r8.xyzx, l(0.318309873, 0.318309873, 0.318309873, 0.000000), r9.xyzx
dp3 r1.w, r5.xyzx, r2.xyzx
add r3.z, r1.w, r1.w
mad r2.xyz, r5.xyzx, r3.zzzz, -r2.xyzx
mul r3.z, r3.x, l(1.500000)
min r3.z, r3.z, l(1.000000)
mad r2.xyz, -r4.xyzx, r2.wwww, r2.xyzx
mad r2.xyz, r3.zzzz, r2.xyzx, r5.xyzx
dp3 r2.w, r2.xyzx, r2.xyzx
rsq r2.w, r2.w
mul r9.xyz, r2.wwww, r2.xyzx
dp3 r2.x, r10.xyzx, r10.xyzx
rsq r2.x, r2.x
mul r4.xyz, r2.xxxx, r10.xyzx
dp3 r2.x, r11.xyzx, r11.xyzx
rsq r2.x, r2.x
mul r13.xyz, r2.xxxx, r11.xyzx
dp3 r2.x, r12.xyzx, r12.xyzx
rsq r2.x, r2.x
mul r14.xyz, r2.xxxx, r12.xyzx
mul r13.xyz, r13.xyzx, l(0.590000, 0.590000, 0.590000, 0.000000)
mad r4.xyz, r4.xyzx, l(0.300000, 0.300000, 0.300000, 0.000000), r13.xyzx
mad r4.xyz, r14.xyzx, l(0.110000, 0.110000, 0.110000, 0.000000), r4.xyzx
dp3 r2.x, r4.xyzx, r4.xyzx
rsq r2.x, r2.x
mul r4.xyz, r2.xxxx, r4.xyzx
mul r13.xyz, r4.xyzx, l(0.666666746, 0.666666746, 0.666666746, 0.000000)
mov r13.w, l(0.333333373)
dp4 r10.x, r10.xyzw, r13.xyzw
dp4 r10.y, r11.xyzw, r13.xyzw
dp4 r10.z, r12.xyzw, r13.xyzw
dp4 r2.x, r13.xyzw, r13.xyzw
div r10.xyz, r10.xyzx, r2.xxxx
max r10.xyz, r10.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mad r1.xyz, r1.xyzx, r0.wwww, r4.xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, r1.xyzx
dp3_sat r0.w, r1.xyzx, r5.xyzx
dp3_sat r2.x, r5.xyzx, r4.xyzx
dp3_sat r1.x, r4.xyzx, r1.xyzx
mad r1.y, -r3.x, l(0.900000), l(1.000000)
mul r1.y, r1.y, r1.y
mul r1.y, r1.y, r1.y
add r1.x, -r1.x, l(1.000000)
mad r1.z, r3.y, l(0.840000), l(0.040000)
mul r2.y, r1.x, r1.x
mul r2.y, r2.y, r2.y
mul r3.y, r1.x, r2.y
mad r1.x, -r1.x, r2.y, l(1.000000)
div r1.z, l(1.000000, 1.000000, 1.000000, 1.000000), r1.z
mad r1.x, r1.z, r3.y, r1.x
mad r1.z, r0.w, r1.y, -r0.w
mad r0.w, r1.z, r0.w, l(1.000000)
mul r0.w, r0.w, r0.w
div r0.w, r1.y, r0.w
mul r0.w, r0.w, r1.x
mul r0.xyw, r0.xyxw, l(4.000000, 4.000000, 0.000000, 0.0397887304)
mul r1.xyz, r0.wwww, r10.xyzx
mul r1.xyz, r2.xxxx, r1.xyzx
add r0.w, -r3.x, l(1.000000)
sqrt r2.x, r0.w
mul r2.y, r2.x, l(8.000000)
max r3.y, r4.w, l(0.000100)
log r3.y, r3.y
mul r3.z, r3.y, cb0[37].x
exp r3.z, r3.z
add r4.x, r1.w, r3.z
log r4.x, r4.x
mul r4.x, r3.x, r4.x
exp r4.x, r4.x
add r4.x, r3.z, r4.x
add_sat r4.x, r4.x, l(-1.000000)
mad_sat r4.x, cb0[36].x, r4.x, cb0[36].y
add r4.x, -r3.z, r4.x
mad r3.z, r3.x, r4.x, r3.z
lt r4.x, l(-0.500000), cb0[42].x
add r4.yzw, -v4.xxyz, cb12[7].xxyz
dp3 r4.y, r4.yzwy, r4.yzwy
sqrt r4.y, r4.y
mad_sat r4.y, r4.y, cb0[39].x, cb0[39].y
add r4.z, -cb0[41].x, cb0[42].x
mad r4.y, r4.y, r4.z, cb0[41].x
movc r4.x, r4.x, r4.y, cb0[41].x
mad r9.w, r2.z, r2.w, l(1.000000)
dp3 r2.z, r9.xywx, r9.xywx
rsq r2.z, r2.z
mul r2.zw, r2.zzzz, r9.xxxy
mad r2.zw, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000), l(0.000000, 0.000000, 0.500000, 0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r2.yzw, r2.zwzz, t6.wxyz, s7, r2.y
mul r2.yzw, r3.zzzz, r2.yyzw
mul r4.yzw, r4.xxxx, r2.yyzw
mul r3.z, r2.x, cb8[25].w
sample_l_indexable(texturecube)(float,float,float,float) r5.xyzw, r9.xyzx, t25.xyzw, s8, r3.z
lt r3.z, cb8[29].w, l(0.500000)
mul r10.xyz, r5.xyzx, r5.xyzx
movc r5.xyz, r3.zzzz, r10.xyzx, r5.xyzx
mul r10.xyz, v4.yyyy, cb8[33].xyzx
mad r10.xyz, cb8[32].xyzx, v4.xxxx, r10.xyzx
mad r10.xyz, cb8[34].xyzx, v4.zzzz, r10.xyzx
add r10.xyz, r10.xyzx, cb8[35].xyzx
mul r3.y, r3.y, cb0[34].x
exp r3.y, r3.y
add r3.z, r1.w, r3.y
log r3.z, r3.z
mul r3.z, r3.z, r3.x
exp r3.z, r3.z
add r3.z, r3.y, r3.z
add_sat r3.z, r3.z, l(-1.000000)
mad_sat r3.z, cb0[33].x, r3.z, cb0[33].y
add r3.z, -r3.y, r3.z
mad r3.y, r3.x, r3.z, r3.y
mul r3.z, r3.y, cb8[24].w
add r11.xyz, cb8[30].xyzx, cb8[31].xyzx
mul r11.xyz, r3.zzzz, r11.xyzx
mul r5.xyz, r5.xyzx, r11.xyzx
mov_sat r11.xyz, -r10.xyzx
mad_sat r11.xyz, r11.xyzx, cb8[22].xyzx, -cb8[24].xyzx
add r11.xyz, -r11.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mov_sat r12.xyz, r10.xyzx
mad_sat r12.xyz, r12.xyzx, cb8[23].xyzx, -cb8[25].xyzx
add r12.xyz, -r12.xyzx, l(1.000000, 1.000000, 1.000000, 0.000000)
mul r3.z, r12.y, r12.x
mul r3.z, r12.z, r3.z
mul r3.z, r11.x, r3.z
mul r3.z, r11.y, r3.z
mul r3.z, r11.z, r3.z
lt r6.w, l(0.000000), cb8[27].w
log r10.xyz, |r10.xyzx|
mul r10.xyz, r10.xyzx, cb8[27].wwww
exp r10.xyz, r10.xyzx
dp3 r7.w, r10.xyzx, cb8[27].xyzx
log r7.w, r7.w
mul r7.w, r7.w, cb8[28].x
exp r7.w, r7.w
mad_sat r7.w, cb8[28].y, r7.w, cb8[28].z
add r7.w, -r7.w, l(1.000000)
mul r7.w, r3.z, r7.w
movc r3.z, r6.w, r7.w, r3.z
mul r3.z, r3.z, r5.w
lt r5.w, l(0.000000), cb8[29].y
mul r10.xyz, r5.xyzx, cb0[43].xxxx
mul r5.xyz, r5.xyzx, cb0[40].xxxx
movc r5.xyz, r5.wwww, r10.xyzx, r5.xyzx
mul r3.z, r3.z, cb8[28].w
mad r2.yzw, -r2.yyzw, r4.xxxx, r5.xxyz
mad r2.yzw, r3.zzzz, r2.yyzw, r4.yyzw
mul r2.x, r2.x, cb8[11].w
sample_l_indexable(texturecube)(float,float,float,float) r4.xyzw, r9.xyzx, t24.xyzw, s8, r2.x
lt r2.x, cb8[15].w, l(0.500000)
mul r5.xyz, r4.xyzx, r4.xyzx
movc r4.xyz, r2.xxxx, r5.xyzx, r4.xyzx
mul r5.xyz, v4.yyyy, cb8[19].xyzx
mad r5.xyz, cb8[18].xyzx, v4.xxxx, r5.xyzx
mad r5.xyz, cb8[20].xyzx, v4.zzzz, r5.xyzx
add r5.xyz, r5.xyzx, cb8[21].xyzx
mul r2.x, r3.y, cb8[10].w
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
lt r3.y, l(0.000000), cb8[13].w
log r5.xyz, |r5.xyzx|
mul r5.xyz, r5.xyzx, cb8[13].wwww
exp r5.xyz, r5.xyzx
dp3 r3.z, r5.xyzx, cb8[13].xyzx
log r3.z, r3.z
mul r3.z, r3.z, cb8[14].x
exp r3.z, r3.z
mad_sat r3.z, cb8[14].y, r3.z, cb8[14].z
add r3.z, -r3.z, l(1.000000)
mul r3.z, r2.x, r3.z
movc r2.x, r3.y, r3.z, r2.x
mul r2.x, r2.x, r4.w
lt r3.y, l(0.000000), cb8[15].y
mul r5.xyz, r4.xyzx, cb0[43].xxxx
mul r4.xyz, r4.xyzx, cb0[40].xxxx
movc r4.xyz, r3.yyyy, r5.xyzx, r4.xyzx
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
mad r3.x, r3.x, l(0.600000), l(0.400000)
mad r0.w, -r1.w, r0.w, l(1.000000)
mul r0.w, r0.w, r3.x
mad r3.xyz, r6.xyzx, r0.wwww, r2.wwww
max r0.w, r3.w, l(0.001000)
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
mul r3.xyz, r0.wwww, r3.xyzx
mul r1.xyz, r0.wwww, r1.xyzx
mul r2.xyz, r2.xyzx, r3.xyzx
mad r1.xyz, r6.xyzx, r1.xyzx, r2.xyzx
mad r1.xyz, r7.xyzx, r8.xyzx, r1.xyzx
add r2.xyz, v4.xyzx, -cb12[7].xyzx
mul r0.w, l(0.750000), cb0[6].x
max r0.w, r0.w, l(0.000000)
dp3 r1.w, r2.xyzx, r2.xyzx
sqrt r2.w, r1.w
rsq r1.w, r1.w
mul r4.xy, r1.wwww, r2.xyxx
mad r4.w, r2.z, r1.w, l(1.000000)
dp3 r1.w, r4.xywx, r4.xywx
rsq r1.w, r1.w
mul r2.xy, r1.wwww, r4.xyxx
mad r2.xy, r2.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000), l(0.500000, 0.500000, 0.000000, 0.000000)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, r2.xyxx, t4.xyzw, s2
div r1.w, r2.z, r2.w
add r0.w, -r0.w, r2.w
mul_sat r0.w, r0.w, l(0.000020)
sqrt r2.x, r0.w
mad r2.y, r1.w, l(0.500000), l(0.500000)
sample_l_indexable(texture2d)(float,float,float,float) r4.xyzw, r2.xyxx, t15.xyzw, s3, l(0.000000)
mul r0.w, cb0[4].x, cb13[1].x
mad r0.w, -r0.w, r4.w, r0.w
mul r1.w, r2.w, l(0.015625)
min r1.w, r1.w, l(1.000000)
sqrt r0.z, r1.w
sample_l_indexable(texture3d)(float,float,float,float) r0.z, r0.xyzx, t21.yzxw, s1, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r0.xyxx, t20.xyzw, s1, l(0.000000)
add r2.xyzw, r2.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r2.xyzw, r0.zzzz, r2.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mul r0.xyz, r1.xyzx, r4.xyzx
mad r0.xyz, r0.xyzx, r2.wwww, r2.xyzx
mad r0.xyz, r3.xyzx, r0.wwww, r0.xyzx
mul o0.xyz, r3.wwww, r0.xyzx
mov o0.w, r3.w
ret
// Approximately 0 instruction slots used
