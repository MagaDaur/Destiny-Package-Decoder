//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:54 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Input
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// no Output
cs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[151], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb9[64], dynamicIndexed
dcl_constantbuffer cb10[2], immediateIndexed
dcl_sampler s1, mode_default
dcl_resource_buffer (float,float,float,float) t0
dcl_resource_texture3d (float,float,float,float) t1
dcl_uav_typed_buffer (float,float,float,float) u0
dcl_input vThreadID.x
dcl_temps 9
dcl_thread_group 64, 1, 1
add r0.x, l(0.500000), cb0[89].x
ftou r0.x, r0.x
ult r0.x, vThreadID.x, r0.x
if_nz r0.x
  ftou r0.x, cb0[99].x
  ftou r0.y, cb0[90].x
  imad r0.y, l(5), vThreadID.x, r0.y
  iadd r1.xyzw, r0.yyyy, l(1, 2, 3, 4)
  ld_indexable(buffer)(float,float,float,float) r2.xyzw, r1.xxxx, t0.xyzw
  ld_indexable(buffer)(float,float,float,float) r3.xyzw, r1.yyyy, t0.xyzw
  ld_indexable(buffer)(float,float,float,float) r0.yzw, r0.yyyy, t0.wxyz
  ld_indexable(buffer)(float,float,float,float) r4.xyzw, r1.zzzz, t0.xyzw
  ld_indexable(buffer)(float,float,float,float) r1.xyz, r1.wwww, t0.xyzw
  add r5.x, l(0.250000), cb10[1].x
  lt r5.y, cb0[23].x, cb0[24].x
  and r5.y, r5.y, cb0[23].x
  ftoi r5.xy, r5.xyxx
  iadd r5.x, r5.y, r5.x
  div r5.y, cb0[22].x, r4.x
  mov_sat r5.z, r1.z
  mad r5.z, r5.z, l(1.500000), l(0.500000)
  add r6.w, r2.w, r5.y
  mad r7.xyz, r2.xyzx, l(0.100000, 0.100000, 0.100000, 0.000000), l(0.500000, 0.500000, 0.500000, 0.000000)
  sample_l_indexable(texture3d)(float,float,float,float) r7.xyz, r7.xyzx, t1.xyzw, s1, l(0.000000)
  mad r7.xyz, r7.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), l(-1.000000, -1.000000, -1.000000, 0.000000)
  mad r0.yzw, r7.xxyz, cb0[22].xxxx, r0.yyzw
  mul_sat r2.w, r5.z, cb0[150].x
  add r2.w, -r2.w, l(1.000000)
  mul r7.xyz, r0.yzwy, r2.wwww
  mad r6.xyz, r7.xyzx, cb0[142].xxxx, r2.xyzx
  mul r0.y, r3.x, cb0[150].x
  mad r3.y, r0.y, l(6.28318548), r3.y
  mul r0.yzw, r6.zzxy, -cb9[r5.x + 32].yyzx
  mad r2.xyz, r6.yzxy, -cb9[r5.x + 32].zxyz, -r0.yzwy
  dp3 r0.y, r6.xyzx, -cb9[r5.x + 32].xyzx
  mov r2.w, -r0.y
  mul r8.xyz, r6.xyzx, cb9[r5.x + 32].wwww
  mov r8.w, l(0)
  add r2.xyzw, r2.xyzw, r8.xyzw
  mul r0.yzw, r2.yyzx, cb9[r5.x + 32].zzxy
  mad r0.yzw, cb9[r5.x + 32].yyzx, r2.zzxy, -r0.yyzw
  mad r0.yzw, cb9[r5.x + 32].wwww, r2.xxyz, r0.yyzw
  mad r0.yzw, r2.wwww, cb9[r5.x + 32].xxyz, r0.yyzw
  add r0.yzw, r0.yyzw, cb9[r5.x + 0].xxyz
  add r0.yzw, r0.yyzw, -cb12[7].xxyz
  dp3 r0.y, r0.yzwy, r0.yzwy
  sqrt r7.w, r0.y
  imad r0.x, l(5), vThreadID.x, r0.x
  store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
  iadd r2.xyzw, r0.xxxx, l(1, 2, 3, 4)
  store_uav_typed u0.xyzw, r2.xxxx, r6.xyzw
  store_uav_typed u0.xyzw, r2.yyyy, r3.xyzw
  store_uav_typed u0.xyzw, r2.zzzz, r4.xyzw
  mov r1.w, l(0)
  store_uav_typed u0.xyzw, r2.wwww, r1.xyzw
endif
ret
// Approximately 0 instruction slots used
