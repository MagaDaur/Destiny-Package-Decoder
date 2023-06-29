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
// TEXCOORD                 0   xyzw        0     NONE   float   xyz
// TEXCOORD                 1   xyzw        1     NONE   float
// TEXCOORD                 2   xyzw        2     NONE   float
// TEXCOORD                 3   xyzw        3     NONE   float   xy
// TEXCOORD                 4   xyz         4     NONE   float   xyz
// TEXCOORD                 8   xyzw        5     NONE   float   xyz
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
dcl_constantbuffer cb0[30], immediateIndexed
dcl_constantbuffer cb13[2], immediateIndexed
dcl_constantbuffer cb12[15], immediateIndexed
dcl_constantbuffer cb8[8], immediateIndexed
dcl_constantbuffer cb7[61], dynamicIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_sampler s5, mode_default
dcl_resource_texture2d (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_resource_texture2d (float,float,float,float) t26
dcl_resource_texture2d (float,float,float,float) t27
dcl_input_ps linear v0.xyz
dcl_input_ps linear v3.xy
dcl_input_ps linear v4.xyz
dcl_input_ps linear v5.xyz
dcl_input_ps_siv linear noperspective v6.xy, position
dcl_output o0.xyzw
dcl_temps 7
mul r0.xy, v6.xyxx, cb12[12].zwzz
add r1.xyz, -v4.xyzx, cb12[14].xyzx
dp3 r0.w, r1.xyzx, r1.xyzx
rsq r0.w, r0.w
mul r2.xyz, r0.wwww, r1.xyzx
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v3.xyxx, t3.xyzw, s4
add r0.w, -r3.z, r3.y
lt r0.w, r0.w, l(0.00470588217)
movc r0.w, r0.w, r3.y, r3.z
deriv_rtx_coarse r4.xy, r3.xyxx
deriv_rtx_coarse r4.z, r0.w
deriv_rty_coarse r5.xy, r3.xyxx
deriv_rty_coarse r5.z, r0.w
mul r3.zw, r4.yyyz, r4.xxxx
mul r4.xy, r5.yzyy, r5.xxxx
lt r4.zw, |r4.xxxy|, |r3.zzzw|
movc r3.zw, r4.zzzw, r3.zzzw, r4.xxxy
add r1.w, r3.x, l(-0.500000)
lt r1.w, |r1.w|, l(0.00470588217)
add r2.w, r3.y, r3.x
add r2.w, r2.w, l(-1.000000)
lt r2.w, |r2.w|, l(0.00588235306)
lt r3.zw, r3.zzzw, l(0.000000, 0.000000, 0.000000, 0.000000)
and r2.w, r2.w, r3.z
add r3.z, -r3.y, l(1.000000)
movc r2.w, r2.w, r3.z, r3.x
add r3.z, r0.w, r2.w
add r3.z, r3.z, l(-1.000000)
lt r3.z, |r3.z|, l(0.00588235306)
and r3.z, r3.w, r3.z
add r3.w, -r0.w, l(1.000000)
movc r2.w, r3.z, r3.w, r2.w
movc r1.w, r1.w, r2.w, r3.x
ge r0.w, r0.w, l(0.500000)
if_nz r0.w
  mov r0.w, l(4)
else
  ge r2.w, r3.y, l(0.500000)
  if_nz r2.w
    mov r0.w, l(2)
  else
    mov r0.w, l(0)
  endif
endif
ge r1.w, r1.w, l(0.500000)
iadd r2.w, r0.w, l(1)
movc r0.w, r1.w, r2.w, r0.w
imul null, r0.w, r0.w, l(9)
sample_indexable(texture2d)(float,float,float,float) r3.xyz, v3.xyxx, t0.xyzw, s2
sample_indexable(texture2d)(float,float,float,float) r4.xy, v3.xyxx, t2.zwxy, s3
ge r1.w, r4.y, l(0.156862751)
and r1.w, r1.w, l(0x3f800000)
add r4.xy, r4.yxyy, l(-0.188235298, -0.156862751, 0.000000, 0.000000)
mul_sat r4.xy, r4.xyxx, l(1.231884, 1.18604648, 0.000000, 0.000000)
mad_sat r2.w, cb7[r0.w + 15].y, r4.x, cb7[r0.w + 15].x
mad_sat r2.w, cb7[r0.w + 15].w, r2.w, cb7[r0.w + 15].z
mul_sat r4.xzw, r3.xxyz, l(4.000000, 0.000000, 4.000000, 4.000000)
add_sat r5.xyz, r3.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad_sat r6.xyz, cb7[r0.w + 9].xyzx, r4.xzwx, r5.xyzx
mad_sat r4.xzw, cb7[r0.w + 14].xxyz, r4.xxzw, r5.xxyz
add r5.xyz, -r4.xzwx, r6.xyzx
mad r4.xzw, r2.wwww, r5.xxyz, r4.xxzw
mad r4.xzw, r4.xxzw, cb0[7].xxyz, -r3.xxyz
mad r3.xyz, r1.wwww, r4.xzwx, r3.xyzx
ne r3.w, l(0.000000, 0.000000, 0.000000, 0.000000), cb7[r0.w + 10].w
and r4.xzw, r3.wwww, cb7[r0.w + 10].xxyz
add_sat r3.w, v5.z, cb0[4].x
mul r3.w, r3.w, cb0[5].x
mul r5.x, r4.y, cb0[6].x
mul r3.w, r3.w, r5.x
mul r4.xzw, r4.xxzw, r3.wwww
mul r4.xzw, r1.wwww, r4.xxzw
mul r5.xyz, r2.wwww, r4.xzwx
mad r4.xzw, r4.xxzw, r2.wwww, r3.xxyz
max r2.w, r4.z, r4.x
max r2.w, r4.w, r2.w
add_sat r2.w, r2.w, l(-1.000000)
add r2.w, -r2.w, l(1.000000)
mad r3.xyz, r3.xyzx, r2.wwww, r5.xyzx
max r2.w, r3.y, r3.x
max r2.w, r3.z, r2.w
max r2.w, r2.w, l(1.000000)
div r3.xyz, r3.xyzx, r2.wwww
dp3 r2.x, r2.xyzx, v0.xyzx
mul_sat r2.yzw, r3.xxyz, l(0.000000, 4.000000, 4.000000, 4.000000)
add_sat r3.xyz, r3.xyzx, l(-0.250000, -0.250000, -0.250000, 0.000000)
mad r2.yzw, cb7[r0.w + 9].xxyz, r2.yyzw, r3.xxyz
add r2.yzw, r2.yyzw, -cb0[10].xxyz
mad r2.yzw, r1.wwww, r2.yyzw, cb0[10].xxyz
mul r0.w, r2.x, r2.x
mad_sat r0.w, r0.w, cb0[11].x, cb0[11].y
mad r0.w, cb0[12].y, r0.w, cb0[12].x
mul r0.w, r4.y, r0.w
dp2 r2.x, cb0[13].xyxx, v3.xyxx
add r3.x, r2.x, cb0[13].z
dp2 r2.x, cb0[14].xyxx, v3.xyxx
add r3.y, r2.x, cb0[14].z
mad r3.xy, r3.xyxx, cb0[15].xyxx, cb0[15].zwzz
sample_indexable(texture2d)(float,float,float,float) r2.x, r3.xyxx, t26.xyzw, s1
mad_sat r2.x, r2.x, cb0[16].x, cb0[16].y
mad r3.xy, v3.xyxx, cb0[17].xyxx, cb0[17].zwzz
sample_indexable(texture2d)(float,float,float,float) r3.x, r3.xyxx, t27.xyzw, s1
add r2.x, r2.x, r3.x
mul r0.w, r0.w, r2.x
mul r0.w, r0.w, cb0[18].x
mul r0.w, r0.w, cb0[19].x
add r2.x, v5.y, cb0[20].x
mad r2.x, cb0[21].w, r2.x, cb0[21].z
add r2.x, r2.x, l(0.250000)
round_ne r3.x, r2.x
add r2.x, r2.x, -r3.x
mad r3.x, |r2.x|, l(-16.000000), l(8.000000)
mul r2.x, r2.x, r3.x
mad r3.x, |r2.x|, l(0.225000), l(0.775000)
mul r2.x, r2.x, r3.x
mad r2.x, cb0[21].x, r2.x, cb0[21].y
add r2.x, r2.x, -cb0[22].x
mad r3.xy, cb0[23].zwzz, r2.xxxx, cb0[23].xyxx
min_sat r2.x, r3.y, r3.x
add_sat r3.x, v5.x, cb0[24].x
log r3.x, r3.x
mul r3.x, r3.x, cb0[25].x
exp r3.x, r3.x
max r3.y, v5.y, l(0.000000)
log r3.y, r3.y
mul r3.y, r3.y, cb0[26].x
exp r3.y, r3.y
mul r3.x, r3.y, r3.x
mul r2.x, r2.x, r3.x
mul r2.x, r2.x, cb0[27].x
mul r0.w, r0.w, r2.x
max r0.w, r0.w, cb0[28].x
min r0.w, r0.w, cb0[29].x
add r0.w, r0.w, -cb0[10].w
mad r0.w, r1.w, r0.w, cb0[10].w
mul r2.xyz, r2.yzwy, cb13[1].wwww
mul r2.xyz, r2.xyzx, cb13[1].xxxx
dp3 r1.x, -r1.xyzx, -r1.xyzx
sqrt r1.x, r1.x
mul r1.x, r1.x, l(0.015625)
min r1.x, r1.x, l(1.000000)
sqrt r0.z, r1.x
sample_l_indexable(texture3d)(float,float,float,float) r0.z, r0.xyzx, t21.yzxw, s5, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r0.x, r0.xyxx, t20.wxyz, s5, l(0.000000)
add r0.x, r0.x, l(-1.000000)
mad r0.x, r0.z, r0.x, l(1.000000)
mul r1.xyz, r2.xyzx, cb8[7].xyzx
mul r0.x, r0.x, r0.w
mul o0.xyz, r0.xxxx, r1.xyzx
mov o0.w, l(0)
ret
// Approximately 0 instruction slots used
