//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:50 2023
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
dcl_constantbuffer cb0[147], immediateIndexed
dcl_constantbuffer cb9[64], dynamicIndexed
dcl_constantbuffer cb10[2], immediateIndexed
dcl_uav_typed_buffer (float,float,float,float) u0
dcl_input vThreadID.x
dcl_temps 11
dcl_thread_group 64, 1, 1
add r0.x, l(0.500000), cb0[89].x
ftou r0.x, r0.x
ult r0.x, vThreadID.x, r0.x
if_nz r0.x
  ftou r0.x, cb0[99].x
  add r0.y, l(0.250000), cb10[0].x
  ftoi r0.y, r0.y
  ftoi r0.z, cb0[23].x
  iadd r0.y, r0.z, r0.y
  add r0.z, l(0.250000), cb10[1].x
  lt r0.w, cb0[23].x, cb0[24].x
  and r0.w, r0.w, cb0[23].x
  ftoi r0.zw, r0.zzzw
  iadd r0.z, r0.w, r0.z
  utof r0.w, vThreadID.x
  add r1.y, r0.w, cb0[19].x
  add r2.x, r1.y, cb0[21].x
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
  utof r2.y, r2.x
  mul r3.x, r2.y, l(2.328306437E-010)
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.y, r2.x
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.z, r2.x
  mul r3.yz, r2.yyzy, l(0.000000, 2.328306437E-010, 2.328306437E-010, 0.000000)
  mad r1.z, r2.y, l(1.396983917E-010), l(0.400000)
  add r0.w, r0.w, l(1.000000)
  div r0.w, r0.w, cb0[89].x
  add r2.y, -r0.w, l(1.000000)
  mul r2.y, r2.y, cb0[22].x
  div r4.w, r2.y, r1.z
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.y, r2.x
  mad r5.x, r2.y, l(4.656612873E-010), l(-1.000000)
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.y, r2.x
  mad r5.y, r2.y, l(4.656612873E-010), l(-1.000000)
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.y, r2.x
  mad r5.z, r2.y, l(4.656612873E-010), l(-1.000000)
  dp3 r2.y, r5.xyzx, r5.xyzx
  rsq r2.y, r2.y
  mul r2.yzw, r2.yyyy, r5.xxyz
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r5.x, r2.x
  mul r5.x, r5.x, l(1.462918120E-009)
  imad r2.x, r2.x, l(0x0019660d), l(0x3c6ef35f)
  utof r2.x, r2.x
  mul r2.xyzw, r2.xyzw, l(8.127325896E-011, 0.100000, 0.100000, 0.100000)
  sincos r2.x, r6.x, r2.x
  sincos r5.x, r7.x, r5.x
  mul r6.y, r2.x, r5.x
  mul r6.z, r2.x, r7.x
  mul r5.xyz, r6.xyzx, l(15.000000, 15.000000, 15.000000, 0.000000)
  lt r2.x, cb0[144].x, l(0.500000)
  add r6.xyz, -cb0[146].xyzx, cb9[r0.y + 0].xyzx
  mad r6.xyz, r0.wwww, r6.xyzx, cb0[146].xyzx
  add r7.xyzw, -cb0[145].xyzw, cb9[r0.y + 32].xyzw
  mad r7.xyzw, r0.wwww, r7.xyzw, cb0[145].xyzw
  dp4 r0.w, r7.xyzw, r7.xyzw
  rsq r0.w, r0.w
  mul r7.xyzw, r0.wwww, r7.xyzw
  movc r7.xyzw, r2.xxxx, cb9[r0.y + 32].xyzw, r7.xyzw
  movc r6.xyz, r2.xxxx, cb9[r0.y + 0].xyzx, r6.xyzx
  mul r8.xyz, cb9[r0.z + 0].zxyz, cb9[r0.z + 32].yzxy
  mad r8.xyz, cb9[r0.z + 0].yzxy, cb9[r0.z + 32].zxyz, -r8.xyzx
  dp3 r0.y, cb9[r0.z + 0].xyzx, cb9[r0.z + 32].xyzx
  mov r8.w, -r0.y
  mov r9.xyz, cb9[r0.z + 0].xyzx
  mov r9.w, l(0)
  mad r8.xyzw, cb9[r0.z + 32].wwww, r9.xyzw, r8.xyzw
  mul r9.xyz, r8.yzxy, -cb9[r0.z + 32].zxyz
  mad r9.xyz, -cb9[r0.z + 32].yzxy, r8.zxyz, -r9.xyzx
  mad r8.xyz, cb9[r0.z + 32].wwww, r8.xyzx, r9.xyzx
  mad r8.xyz, r8.wwww, -cb9[r0.z + 32].xyzx, r8.xyzx
  mul r9.xyz, r7.yzxy, -cb9[r0.z + 32].zxyz
  mad r9.xyz, -cb9[r0.z + 32].yzxy, r7.zxyz, -r9.xyzx
  dp3 r0.y, -cb9[r0.z + 32].xyzx, r7.xyzx
  mov r10.w, -r0.y
  mad r10.xyz, cb9[r0.z + 32].wwww, r7.xyzx, r9.xyzx
  mul r9.xyzw, l(-1.000000, -1.000000, -1.000000, 1.000000), cb9[r0.z + 32].xyzw
  mad r7.xyzw, r7.wwww, r9.xyzw, r10.xyzw
  mul r9.xyz, r6.zxyz, cb9[r0.z + 32].yzxy
  mad r9.xyz, r6.yzxy, cb9[r0.z + 32].zxyz, -r9.xyzx
  dp3 r0.y, r6.xyzx, cb9[r0.z + 32].xyzx
  mov r9.w, -r0.y
  mul r6.xyz, r6.xyzx, cb9[r0.z + 32].wwww
  mov r6.w, l(0)
  add r6.xyzw, r6.xyzw, r9.xyzw
  mul r9.xyz, r6.yzxy, -cb9[r0.z + 32].zxyz
  mad r9.xyz, -cb9[r0.z + 32].yzxy, r6.zxyz, -r9.xyzx
  mad r6.xyz, cb9[r0.z + 32].wwww, r6.xyzx, r9.xyzx
  mad r0.yzw, r6.wwww, -cb9[r0.z + 32].xxyz, r6.xxyz
  add r0.yzw, r0.yyzw, -r8.xxyz
  mul r6.xyz, r2.wyzw, -r7.yzxy
  mad r6.xyz, r2.zwyz, -r7.zxyz, -r6.xyzx
  dp3 r2.x, r2.yzwy, -r7.xyzx
  mov r6.w, -r2.x
  mul r2.xyz, r2.yzwy, r7.wwww
  mov r2.w, l(0)
  add r2.xyzw, r2.xyzw, r6.xyzw
  mul r6.xyz, r2.yzxy, r7.zxyz
  mad r6.xyz, r7.yzxy, r2.zxyz, -r6.xyzx
  mad r2.xyz, r7.wwww, r2.xyzx, r6.xyzx
  mad r2.xyz, r2.wwww, r7.xyzx, r2.xyzx
  add r2.xyz, r0.yzwy, r2.xyzx
  mul r0.yzw, r5.zzxy, -r7.yyzx
  mad r6.xyz, r5.yzxy, -r7.zxyz, -r0.yzwy
  dp3 r0.y, r5.xyzx, -r7.xyzx
  mov r6.w, -r0.y
  mul r5.xyz, r5.xyzx, r7.wwww
  mov r5.w, l(0)
  add r5.xyzw, r5.xyzw, r6.xyzw
  mul r0.yzw, r5.yyzx, r7.zzxy
  mad r0.yzw, r7.yyzx, r5.zzxy, -r0.yyzw
  mad r0.yzw, r7.wwww, r5.xxyz, r0.yyzw
  mad r0.yzw, r5.wwww, r7.xxyz, r0.yyzw
  add r4.xyz, r0.yzwy, cb0[140].xyzx
  ishl r0.y, vThreadID.x, l(2)
  iadd r0.x, r0.y, r0.x
  store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
  iadd r0.yzw, r0.xxxx, l(0, 1, 2, 3)
  mov r2.w, l(0)
  store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  mov r1.x, l(0)
  store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
  mov r3.w, l(0)
  store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
endif
ret
// Approximately 0 instruction slots used
