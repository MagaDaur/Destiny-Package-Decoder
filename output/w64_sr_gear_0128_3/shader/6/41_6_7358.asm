//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:52 2023
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
dcl_constantbuffer cb0[99], immediateIndexed
dcl_resource_buffer (float,float,float,float) t0
dcl_uav_typed_buffer (float,float,float,float) u0
dcl_input vThreadID.x
dcl_temps 6
dcl_thread_group 64, 1, 1
add r0.x, l(0.500000), cb0[88].x
ftou r0.x, r0.x
ult r0.x, vThreadID.x, r0.x
if_nz r0.x
  ftou r0.x, cb0[98].x
  ftou r0.y, cb0[89].x
  imad r0.y, l(3), vThreadID.x, r0.y
  ld_indexable(buffer)(float,float,float,float) r1.xyzw, r0.yyyy, t0.xyzw
  iadd r0.yz, r0.yyyy, l(0, 1, 2, 0)
  ld_indexable(buffer)(float,float,float,float) r2.xyzw, r0.yyyy, t0.xyzw
  ld_indexable(buffer)(float,float,float,float) r0.yz, r0.zzzz, t0.zxyw
  mov_sat r0.w, r1.w
  mad r3.xyz, r0.wwww, l(0.000000, 0.700000, 1.000000, 0.000000), l(1.000000, 0.300000, 2.000000, 0.000000)
  mad r4.xy, r0.wwww, l(11.111111, -11.111115, 0.000000, 0.000000), l(0.000000, 11.111115, 0.000000, 0.000000)
  ge r5.xyzw, r0.wwww, l(0.000000, 0.090000, 0.910000, 1.000000)
  and r5.xyzw, r5.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  add r5.xyz, r5.yzwy, r5.xyzx
  add r5.xyz, r5.xyzx, l(0.000001, 0.000001, 0.000001, 0.000000)
  mul r5.xyz, r5.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
  frc r5.xyz, r5.xyzx
  mul r5.xz, r4.xxyx, r5.xxzx
  add r4.xy, r5.xyxx, r5.xyxx
  add r0.w, r4.y, r4.x
  mad r0.w, r5.z, l(2.000000), r0.w
  min r0.w, r0.w, l(1.000000)
  mul_sat r4.x, l(0.200000), cb0[6].x
  mad r4.yzw, r4.xxxx, l(0.000000, 986895.062500, 0.000000, -986895.062500), l(0.000000, -394757.031250, 1.000000, 582268.062500)
  ge r5.xyzw, r4.xxxx, l(0.399999, 0.400000, 0.589999, 0.590000)
  and r5.xyz, r5.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
  add r5.xy, r5.yzyy, r5.xyxx
  add r5.xy, r5.xyxx, l(0.000001, 0.000001, 0.000000, 0.000000)
  mul r5.xy, r5.xyxx, l(0.500000, 0.500000, 0.000000, 0.000000)
  frc r5.xy, r5.xyxx
  mul r4.xy, r4.yzyy, r5.xyxx
  mov r4.z, l(2.000000)
  mul r4.xy, r4.xyxx, r4.zzzz
  add r4.x, r4.y, r4.x
  mad_sat r4.x, r4.w, r5.z, r4.x
  mul r0.w, r0.w, r4.x
  movc r4.y, r5.w, l(0), r0.w
  ishl r0.w, vThreadID.x, l(2)
  iadd r0.x, r0.w, r0.x
  store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
  iadd r1.xyz, r0.xxxx, l(1, 2, 3, 0)
  store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
  mov r3.w, r0.y
  store_uav_typed u0.xyzw, r1.yyyy, r3.xyzw
  mov r4.x, r0.z
  mov r4.zw, l(0,0,0,0)
  store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
endif
ret
// Approximately 0 instruction slots used
