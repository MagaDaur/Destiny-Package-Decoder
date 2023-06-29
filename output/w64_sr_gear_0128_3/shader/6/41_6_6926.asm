//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:55 2023
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
dcl_constantbuffer cb0[137], immediateIndexed
dcl_constantbuffer cb9[64], dynamicIndexed
dcl_constantbuffer cb10[3], immediateIndexed
dcl_uav_typed_buffer (float,float,float,float) u0
dcl_input vThreadID.x
dcl_temps 9
dcl_thread_group 64, 1, 1
add r0.x, l(0.500000), cb0[89].x
ftou r0.x, r0.x
ult r0.x, vThreadID.x, r0.x
if_nz r0.x
  ftou r0.x, cb0[99].x
  add r0.y, l(0.250000), cb10[2].x
  ftoi r0.y, r0.y
  ftoi r0.z, cb0[23].x
  iadd r0.y, r0.z, r0.y
  add r0.z, l(0.250000), cb10[1].x
  lt r0.w, cb0[23].x, cb0[24].x
  and r0.w, r0.w, cb0[23].x
  ftoi r0.zw, r0.zzzw
  iadd r0.z, r0.w, r0.z
  utof r0.w, vThreadID.x
  add r1.z, r0.w, cb0[19].x
  add r2.x, r1.z, cb0[21].x
  ftou r2.x, r2.x
  xor r2.y, r2.x, l(61)
  ushr r2.x, r2.x, l(16)
  xor r2.x, r2.x, r2.y
  imul null, r2.x, r2.x, l(9)
  ushr r2.y, r2.x, l(4)
  xor r2.x, r2.y, r2.x
  imul null, r2.x, r2.x, l(0x27d4eb2d)
  ushr r2.y, r2.x, l(15)
  xor r2.x, r2.y, r2.x
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.y, r2.x
  mul r1.w, r2.y, l(2.328306437E-010)
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.x, r2.x
  mul r2.x, r2.x, l(2.328306437E-010)
  add r0.w, r0.w, l(1.000000)
  div r0.w, r0.w, cb0[89].x
  add r3.x, -r0.w, l(1.000000)
  mul r3.x, r3.x, cb0[22].x
  mul r3.yzw, l(0.000000, 0.000000, 1.000000, 0.000000), cb0[6].zzzz
  lt r4.x, cb0[134].x, l(0.500000)
  add r4.yzw, -cb0[136].xxyz, cb9[r0.y + 0].xxyz
  mad r4.yzw, r0.wwww, r4.yyzw, cb0[136].xxyz
  add r5.xyzw, -cb0[135].xyzw, cb9[r0.y + 32].xyzw
  mad r5.xyzw, r0.wwww, r5.xyzw, cb0[135].xyzw
  dp4 r0.w, r5.xyzw, r5.xyzw
  rsq r0.w, r0.w
  mul r5.xyzw, r0.wwww, r5.xyzw
  movc r5.xyzw, r4.xxxx, cb9[r0.y + 32].xyzw, r5.xyzw
  movc r4.xyz, r4.xxxx, cb9[r0.y + 0].xyzx, r4.yzwy
  mul r6.xyz, cb9[r0.z + 0].zxyz, cb9[r0.z + 32].yzxy
  mad r6.xyz, cb9[r0.z + 0].yzxy, cb9[r0.z + 32].zxyz, -r6.xyzx
  dp3 r0.y, cb9[r0.z + 0].xyzx, cb9[r0.z + 32].xyzx
  mov r6.w, -r0.y
  mov r7.xyz, cb9[r0.z + 0].xyzx
  mov r7.w, l(0)
  mad r6.xyzw, cb9[r0.z + 32].wwww, r7.xyzw, r6.xyzw
  mul r7.xyz, r6.yzxy, -cb9[r0.z + 32].zxyz
  mad r7.xyz, -cb9[r0.z + 32].yzxy, r6.zxyz, -r7.xyzx
  mad r6.xyz, cb9[r0.z + 32].wwww, r6.xyzx, r7.xyzx
  mad r6.xyz, r6.wwww, -cb9[r0.z + 32].xyzx, r6.xyzx
  mul r7.xyz, r5.yzxy, -cb9[r0.z + 32].zxyz
  mad r7.xyz, -cb9[r0.z + 32].yzxy, r5.zxyz, -r7.xyzx
  dp3 r0.y, -cb9[r0.z + 32].xyzx, r5.xyzx
  mov r8.w, -r0.y
  mad r8.xyz, cb9[r0.z + 32].wwww, r5.xyzx, r7.xyzx
  mul r7.xyzw, l(-1.000000, -1.000000, -1.000000, 1.000000), cb9[r0.z + 32].xyzw
  mad r5.xyzw, r5.wwww, r7.xyzw, r8.xyzw
  mul r7.xyz, r4.zxyz, cb9[r0.z + 32].yzxy
  mad r7.xyz, r4.yzxy, cb9[r0.z + 32].zxyz, -r7.xyzx
  dp3 r0.y, r4.xyzx, cb9[r0.z + 32].xyzx
  mov r7.w, -r0.y
  mul r4.xyz, r4.xyzx, cb9[r0.z + 32].wwww
  mov r4.w, l(0)
  add r4.xyzw, r4.xyzw, r7.xyzw
  mul r7.xyz, r4.yzxy, -cb9[r0.z + 32].zxyz
  mad r7.xyz, -cb9[r0.z + 32].yzxy, r4.zxyz, -r7.xyzx
  mad r4.xyz, cb9[r0.z + 32].wwww, r4.xyzx, r7.xyzx
  mad r0.yzw, r4.wwww, -cb9[r0.z + 32].xxyz, r4.xxyz
  add r4.xyz, r0.yzwy, -r6.xyzx
  mul r6.xyzw, r3.wwzz, -r5.zxyx
  mad r7.xyz, -r3.yzwy, -r5.yzxy, r6.xyzx
  mov r7.w, -r6.w
  mul r6.xyz, l(1.000000, 0.000000, 0.000000, 0.000000), cb0[6].zzzz
  mov r6.w, l(0)
  mad r6.xyzw, r5.wwww, r6.xyzw, r7.xyzw
  mul r0.yzw, r5.zzxy, r6.yyzx
  mad r0.yzw, r5.yyzx, r6.zzxy, -r0.yyzw
  mad r0.yzw, r5.wwww, r6.xxyz, r0.yyzw
  mad r5.xyz, r6.wwww, r5.xyzx, r0.yzwy
  mul r0.yz, r3.xxxx, l(0.000000, 5.000000, 1.000000, 0.000000)
  div r0.z, r0.z, cb0[34].x
  add r5.w, -r0.z, cb0[5].z
  ishl r0.z, vThreadID.x, l(2)
  iadd r0.x, r0.z, r0.x
  store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
  iadd r3.xyz, r0.xxxx, l(1, 2, 3, 0)
  mov r4.w, r0.y
  store_uav_typed u0.xyzw, r3.xxxx, r4.xyzw
  mov r1.xy, l(0,0,0,0)
  store_uav_typed u0.xyzw, r3.yyyy, r1.xyzw
  mov r2.yzw, l(0,0,0,0)
  store_uav_typed u0.xyzw, r3.zzzz, r2.xyzw
endif
ret
// Approximately 0 instruction slots used
