//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:53 2023
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
dcl_constantbuffer cb0[100], immediateIndexed
dcl_constantbuffer cb9[64], dynamicIndexed
dcl_constantbuffer cb10[2], immediateIndexed
dcl_uav_typed_buffer (float,float,float,float) u0
dcl_input vThreadID.x
dcl_temps 9
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
  add r0.w, r1.y, cb0[21].x
  ftou r0.w, r0.w
  xor r2.x, r0.w, l(61)
  ushr r0.w, r0.w, l(16)
  xor r0.w, r0.w, r2.x
  imul null, r0.w, r0.w, l(9)
  ushr r2.x, r0.w, l(4)
  xor r0.w, r0.w, r2.x
  imul null, r0.w, r0.w, l(0x27d4eb2d)
  ushr r2.x, r0.w, l(15)
  xor r0.w, r0.w, r2.x
  imad r0.w, r0.w, l(0x0019660d), l(0x3c6ef35f)
  utof r2.x, r0.w
  imad r0.w, r0.w, l(0x0019660d), l(0x3c6ef35f)
  utof r2.y, r0.w
  imad r0.w, r0.w, l(0x0019660d), l(0x3c6ef35f)
  utof r2.z, r0.w
  mul r3.xyw, r2.yzyz, l(2.328306437E-010, 2.328306437E-010, 0.000000, 4.074536195E-011)
  mad r4.xy, r2.zzzz, l(6.929481988E-011, 1.091393420E-009, 0.000000, 0.000000), l(0.000000, -3.687499, 0.000000, 0.000000)
  ge r5.xyz, r2.zzzz, l(0.000000, 3607772416.000000, 4294967296.000000, 0.000000)
  and r5.xyz, r5.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
  add r2.zw, r5.yyyz, r5.xxxy
  add r2.zw, r2.zzzw, l(0.000000, 0.000000, 0.000001, 0.000001)
  mul r2.zw, r2.zzzw, l(0.000000, 0.000000, 0.500000, 0.500000)
  frc r2.zw, r2.zzzw
  mul r2.zw, r4.xxxy, r2.zzzw
  mul r2.zw, r2.zzzw, l(0.000000, 0.000000, 2.000000, 2.000000)
  add r2.z, r2.w, r2.z
  add_sat r2.z, r2.z, l(0.000001)
  mad r2.z, r2.z, l(0.900000), l(0.100000)
  mad r4.xy, r2.yyyy, l(1.293504609E-010, 5.198421693E-010, 0.000000, 0.000000), l(0.000000, -1.232705, 0.000000, 0.000000)
  ge r5.xyz, r2.yyyy, l(0.000000, 3156801024.000000, 4294967296.000000, 0.000000)
  and r5.xyz, r5.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
  add r2.yw, r5.yyyz, r5.xxxy
  add r2.yw, r2.yyyw, l(0.000000, 0.000001, 0.000000, 0.000001)
  mul r2.yw, r2.yyyw, l(0.000000, 0.500000, 0.000000, 0.500000)
  frc r2.yw, r2.yyyw
  mul r2.yw, r4.xxxy, r2.yyyw
  mul r2.yw, r2.yyyw, l(0.000000, 2.000000, 0.000000, 2.000000)
  add r2.y, r2.w, r2.y
  add_sat r2.y, r2.y, l(0.000001)
  mad r2.y, r2.y, l(-50.000000), l(60.000000)
  mul r1.w, r2.x, l(2.328306437E-010)
  mad r4.xy, r2.xxxx, l(1.000310321E-010, 1.428027585E-009, 0.000000, 0.000000), l(0.000000, -5.133332, 0.000000, 0.000000)
  ge r5.xyz, r2.xxxx, l(0.000000, 3865470464.000000, 4294967296.000000, 0.000000)
  and r5.xyz, r5.xyzx, l(0x3f800000, 0x3f800000, 0x3f800000, 0)
  add r2.xw, r5.yyyz, r5.xxxy
  add r2.xw, r2.xxxw, l(0.000001, 0.000000, 0.000000, 0.000001)
  mul r2.xyw, r2.xyxw, l(0.500000, 0.017453, 0.000000, 0.500000)
  frc r2.xw, r2.xxxw
  mul r2.xw, r4.xxxy, r2.xxxw
  mul r2.xw, r2.xxxw, l(2.000000, 0.000000, 0.000000, 2.000000)
  add r2.x, r2.w, r2.x
  add_sat r2.x, r2.x, l(0.000001)
  mad r1.z, r2.x, l(0.150000), l(0.250000)
  imad r0.w, r0.w, l(0x0019660d), l(0x3c6ef35f)
  utof r0.w, r0.w
  mul r0.w, r0.w, l(1.462918120E-009)
  sincos r2.x, r4.x, r0.w
  mul r5.y, r3.w, r2.x
  mul r5.z, r3.w, r4.x
  sincos r2.x, r4.x, r2.y
  dp2 r0.w, r5.yzyy, r5.yzyy
  sqrt r0.w, r0.w
  max r0.w, r0.w, l(0.000100)
  div r2.yw, r5.yyyz, r0.wwww
  mul r4.yz, r2.xxxx, r2.yywy
  mul r2.xyz, r2.zzzz, r4.xyzx
  mul r4.xyz, cb9[r0.z + 0].zxyz, cb9[r0.z + 32].yzxy
  mad r4.xyz, cb9[r0.z + 0].yzxy, cb9[r0.z + 32].zxyz, -r4.xyzx
  dp3 r0.w, cb9[r0.z + 0].xyzx, cb9[r0.z + 32].xyzx
  mov r4.w, -r0.w
  mov r6.xyz, cb9[r0.z + 0].xyzx
  mov r6.w, l(0)
  mad r4.xyzw, cb9[r0.z + 32].wwww, r6.xyzw, r4.xyzw
  mul r6.xyz, r4.yzxy, -cb9[r0.z + 32].zxyz
  mad r6.xyz, -cb9[r0.z + 32].yzxy, r4.zxyz, -r6.xyzx
  mad r4.xyz, cb9[r0.z + 32].wwww, r4.xyzx, r6.xyzx
  mad r4.xyz, r4.wwww, -cb9[r0.z + 32].xyzx, r4.xyzx
  mul r6.xyz, cb9[r0.y + 32].yzxy, -cb9[r0.z + 32].zxyz
  mad r6.xyz, -cb9[r0.z + 32].yzxy, cb9[r0.y + 32].zxyz, -r6.xyzx
  dp3 r0.w, -cb9[r0.z + 32].xyzx, cb9[r0.y + 32].xyzx
  mov r7.w, -r0.w
  mad r7.xyz, cb9[r0.z + 32].wwww, cb9[r0.y + 32].xyzx, r6.xyzx
  mul r6.xyzw, l(-1.000000, -1.000000, -1.000000, 1.000000), cb9[r0.z + 32].xyzw
  mad r6.xyzw, cb9[r0.y + 32].wwww, r6.xyzw, r7.xyzw
  mul r7.xyz, cb9[r0.y + 0].zxyz, cb9[r0.z + 32].yzxy
  mad r7.xyz, cb9[r0.y + 0].yzxy, cb9[r0.z + 32].zxyz, -r7.xyzx
  dp3 r0.w, cb9[r0.y + 0].xyzx, cb9[r0.z + 32].xyzx
  mov r7.w, -r0.w
  mov r8.xyz, cb9[r0.y + 0].xyzx
  mov r8.w, l(0)
  mad r7.xyzw, cb9[r0.z + 32].wwww, r8.xyzw, r7.xyzw
  mul r8.xyz, r7.yzxy, -cb9[r0.z + 32].zxyz
  mad r8.xyz, -cb9[r0.z + 32].yzxy, r7.zxyz, -r8.xyzx
  mad r7.xyz, cb9[r0.z + 32].wwww, r7.xyzx, r8.xyzx
  mad r0.yzw, r7.wwww, -cb9[r0.z + 32].xxyz, r7.xxyz
  add r0.yzw, r0.yyzw, -r4.xxyz
  mov r5.xw, l(0,0,0,0)
  mul r4.xyz, r5.zwyz, -r6.yzxy
  mad r4.xyz, r5.yzwy, -r6.zxyz, -r4.xyzx
  dp2 r2.w, r5.yzyy, -r6.yzyy
  mov r4.w, -r2.w
  mad r4.xyzw, r6.wwww, r5.xyzw, r4.xyzw
  mul r5.xyz, r4.yzxy, r6.zxyz
  mad r5.xyz, r6.yzxy, r4.zxyz, -r5.xyzx
  mad r4.xyz, r6.wwww, r4.xyzx, r5.xyzx
  mad r4.xyz, r4.wwww, r6.xyzx, r4.xyzx
  add r4.xyz, r0.yzwy, r4.xyzx
  mul r0.yzw, r2.zzxy, -r6.yyzx
  mad r5.xyz, r2.yzxy, -r6.zxyz, -r0.yzwy
  dp3 r0.y, r2.xyzx, -r6.xyzx
  mov r5.w, -r0.y
  mul r2.xyz, r2.xyzx, r6.wwww
  mov r2.w, l(0)
  add r2.xyzw, r2.xyzw, r5.xyzw
  mul r0.yzw, r2.yyzx, r6.zzxy
  mad r0.yzw, r6.yyzx, r2.zzxy, -r0.yyzw
  mad r0.yzw, r6.wwww, r2.xxyz, r0.yyzw
  mad r2.xyz, r2.wwww, r6.xyzx, r0.yzwy
  ishl r0.y, vThreadID.x, l(2)
  iadd r0.x, r0.y, r0.x
  mov r2.w, l(0)
  store_uav_typed u0.xyzw, r0.xxxx, r2.xyzw
  iadd r0.yzw, r0.xxxx, l(0, 1, 2, 3)
  mov r4.w, l(0)
  store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  mov r1.x, l(0)
  store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
  mov r3.zw, l(0,0,0,0)
  store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
endif
ret
// Approximately 0 instruction slots used
