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
  ld_indexable(buffer)(float,float,float,float) r3.xy, r0.zzzz, t0.xyzw
  mov_sat r0.y, r1.w
  mad r0.zw, r0.yyyy, l(0.000000, 0.000000, 11.111111, -11.111115), l(0.000000, 0.000000, 0.000000, 11.111115)
  ge r4.xyzw, r0.yyyy, l(0.000000, 0.090000, 0.910000, 1.000000)
  and r4.xyzw, r4.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
  add r4.xyz, r4.yzwy, r4.xyzx
  add r4.xyz, r4.xyzx, l(0.000001, 0.000001, 0.000001, 0.000000)
  mul r4.xyz, r4.xyzx, l(0.500000, 0.500000, 0.500000, 0.000000)
  frc r4.xyz, r4.xyzx
  mul r4.xz, r0.zzwz, r4.xxzx
  add r0.yz, r4.xxyx, r4.xxyx
  add r0.y, r0.z, r0.y
  mad r0.y, r4.z, l(2.000000), r0.y
  min r0.y, r0.y, l(1.000000)
  mul_sat r0.z, l(0.200000), cb0[6].x
  mad r4.xyz, r0.zzzz, l(986895.062500, 0.000000, -986895.062500, 0.000000), l(-592136.062500, 1.000000, 779647.125000, 0.000000)
  ge r5.xyzw, r0.zzzz, l(0.599999, 0.600000, 0.789999, 0.790000)
  and r5.xyz, r5.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
  add r0.zw, r5.yyyz, r5.xxxy
  add r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.000001, 0.000001)
  mul r0.yzw, r0.yyzw, l(0.000000, 0.030000, 0.500000, 0.500000)
  frc r0.zw, r0.zzzw
  mul r0.zw, r4.xxxy, r0.zzzw
  mov r4.x, l(2.000000)
  mul r0.zw, r0.zzzw, r4.xxxx
  add r0.z, r0.w, r0.z
  mad_sat r0.z, r4.z, r5.z, r0.z
  mul r0.y, r0.z, r0.y
  movc r3.z, r5.w, l(0), r0.y
  imad r0.x, l(3), vThreadID.x, r0.x
  store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
  iadd r0.yz, r0.xxxx, l(0, 1, 2, 0)
  store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  mov r3.w, l(0)
  store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
endif
ret
// Approximately 0 instruction slots used
