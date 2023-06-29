//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:03 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xy          0     NONE   float   xy
// TEXCOORD                 1   xyz         1     NONE   float
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
dcl_constantbuffer cb0[5], immediateIndexed
dcl_constantbuffer cb13[4], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_texture2d (float,float,float,float) t2
dcl_input_ps linear v0.xy
dcl_output o0.xyzw
dcl_temps 2
sample_indexable(texture2d)(float,float,float,float) r0.x, v0.xyxx, t2.zxyw, s1
mul_sat r0.x, r0.x, l(7.968750)
ne r0.y, l(0.000000), cb0[4].x
if_nz r0.y
  deriv_rtx_coarse r0.yz, v0.xxyx
  dp2 r0.y, r0.yzyy, r0.yzyy
  deriv_rty_coarse r0.zw, v0.xxxy
  dp2 r0.z, r0.zwzz, r0.zwzz
  sqrt r0.yz, r0.yyzy
  max r0.y, r0.z, r0.y
  div r0.y, l(1.000000, 1.000000, 1.000000, 1.000000), r0.y
  log r0.y, r0.y
  round_ni r0.z, r0.y
  exp r0.z, r0.z
  round_pi r0.w, r0.y
  exp r0.w, r0.w
  mul r1.xy, r0.zzzz, v0.xyxx
  round_ni r1.xy, r1.xyxx
  dp2 r0.z, r1.xyxx, l(17.000000, 0.100000, 0.000000, 0.000000)
  sincos r0.z, null, r0.z
  mul r0.z, r0.z, l(10000.000000)
  mad r1.x, r1.y, l(13.000000), r1.x
  sincos r1.x, null, r1.x
  add r1.x, |r1.x|, l(0.100000)
  mul r0.z, r0.z, r1.x
  mul r1.xy, r0.wwww, v0.xyxx
  round_ni r1.xy, r1.xyxx
  dp2 r0.w, r1.xyxx, l(17.000000, 0.100000, 0.000000, 0.000000)
  sincos r0.w, null, r0.w
  mul r0.w, r0.w, l(10000.000000)
  mad r1.x, r1.y, l(13.000000), r1.x
  sincos r1.x, null, r1.x
  add r1.x, |r1.x|, l(0.100000)
  mul r0.w, r0.w, r1.x
  frc r0.yzw, r0.yyzw
  add r0.w, -r0.z, r0.w
  mad r0.z, r0.y, r0.w, r0.z
  add r0.w, -r0.y, l(1.000000)
  min r0.y, r0.w, r0.y
  mul r0.w, r0.z, r0.z
  add r1.x, r0.y, r0.y
  add r1.yw, -r0.yyyz, l(0.000000, 1.000000, 0.000000, 1.000000)
  mul r1.xw, r1.yyyw, r1.xxxw
  div r0.w, r0.w, r1.x
  mad r1.z, -r0.y, l(0.500000), r0.z
  div r1.xz, r1.wwzw, r1.xxyx
  add r1.x, -r1.x, l(1.000000)
  lt r1.y, r0.z, r1.y
  lt r0.y, r0.z, r0.y
  movc r0.y, r0.y, r0.w, r1.z
  movc r0.y, r1.y, r0.y, r1.x
  ge r0.z, l(0.500000), cb13[3].x
  add r0.w, cb13[3].x, cb13[3].x
  mad r0.w, r0.y, -r0.w, r0.w
  mad r1.x, cb13[3].x, l(2.000000), l(-2.000000)
  mad r0.y, r0.y, r1.x, l(1.000000)
  movc r0.y, r0.z, r0.w, r0.y
else
  mov r0.y, cb13[3].x
endif
add r0.x, -r0.y, r0.x
lt r0.x, r0.x, l(0.000000)
discard_nz r0.x
mov o0.xyzw, l(1.000000,1.000000,1.000000,1.000000)
ret
// Approximately 0 instruction slots used
