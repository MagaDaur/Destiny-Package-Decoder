//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:08 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyzw        1     NONE   float   xyzw
// TANGENT                  0   xyzw        2     NONE   float   xyzw
// TEXCOORD                 0   xy          3     NONE   float   xy
// SV_VERTEXID              0   x           4   VERTID    uint   x
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyzw        1     NONE   float   xyzw
// TEXCOORD                 2   xyzw        2     NONE   float   xyzw
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyz         4     NONE   float   xyz
// TEXCOORD                 8   xyzw        5     NONE   float   xyzw
// SV_POSITION              0   xyzw        6      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[12], immediateIndexed
dcl_constantbuffer cb12[16], immediateIndexed
dcl_constantbuffer cb1[24], dynamicIndexed
dcl_resource_buffer (float,float,float,float) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_input v0.xyzw
dcl_input v1.xyzw
dcl_input v2.xyzw
dcl_input v3.xy
dcl_input_sgv v4.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyzw
dcl_output o3.xyzw
dcl_output o4.xyz
dcl_output o5.xyzw
dcl_output_siv o6.xyzw, position
dcl_temps 16
umin r0.x, v4.x, cb1[4].w
ld_indexable(buffer)(float,float,float,float) r0.xyzw, r0.xxxx, t0.xyzw
mad r1.xyz, v0.xyzx, cb1[5].wwww, cb1[5].xyzx
mul r1.w, cb0[1].x, cb0[9].x
mul r2.x, cb0[8].x, cb0[11].x
mul r2.y, r1.w, cb0[11].x
mul r2.z, cb0[10].x, cb0[11].x
add r1.w, l(1.000000), -cb0[5].x
add r2.w, -r0.y, l(1.000000)
mad r2.w, -r2.w, cb0[6].x, l(1.000000)
mul r1.w, r1.w, r2.w
mad r3.x, cb0[1].x, cb0[2].x, cb0[0].x
add r3.y, cb0[0].y, cb0[3].x
mad r3.z, cb0[1].x, cb0[4].x, cb0[0].z
mul r1.w, r1.w, l(3.141000)
sincos r4.x, r5.x, r1.w
dp3 r1.w, r3.xyzx, r3.xyzx
rsq r1.w, r1.w
mul r3.xyz, r1.wwww, r3.xyzx
mul r3.xyz, r3.xyzx, r4.xxxx
add r1.xyz, r1.xyzx, -r2.xyzx
mul r4.xyz, -r3.yzxy, r1.zxyz
mad r4.xyz, r1.yzxy, -r3.zxyz, -r4.xyzx
dp3 r1.w, r1.xyzx, -r3.xyzx
mov r4.w, -r1.w
mul r1.xyz, r1.xyzx, r5.xxxx
mov r1.w, l(0)
add r1.xyzw, r1.xyzw, r4.xyzw
mul r4.xyz, r1.yzxy, r3.zxyz
mad r4.xyz, r3.yzxy, r1.zxyz, -r4.xyzx
mad r1.xyz, r5.xxxx, r1.xyzx, r4.xyzx
mad r1.xyz, r1.wwww, r3.xyzx, r1.xyzx
add r1.xyz, r2.xyzx, r1.xyzx
mul r2.xyz, -r3.yzxy, v1.zxyz
mad r2.xyz, v1.yzxy, -r3.zxyz, -r2.xyzx
dp3 r3.w, v1.xyzx, -r3.xyzx
mov r2.w, -r3.w
mov r4.xyz, v1.xyzx
mov r4.w, l(0)
mad r2.xyzw, r5.xxxx, r4.xyzw, r2.xyzw
mul r4.xyz, r2.yzxy, r3.zxyz
mad r4.xyz, r3.yzxy, r2.zxyz, -r4.xyzx
mad r2.xyz, r5.xxxx, r2.xyzx, r4.xyzx
mad r2.xyz, r2.wwww, r3.xyzx, r2.xyzx
mul r4.xyz, -r3.yzxy, v2.zxyz
mad r4.xyz, v2.yzxy, -r3.zxyz, -r4.xyzx
dp3 r2.w, v2.xyzx, -r3.xyzx
mov r4.w, -r2.w
mov r6.xyz, v2.xyzx
mov r6.w, l(0)
mad r4.xyzw, r5.xxxx, r6.xyzw, r4.xyzw
mul r5.yzw, r3.zzxy, r4.yyzx
mad r5.yzw, r3.yyzx, r4.zzxy, -r5.yyzw
mad r4.xyz, r5.xxxx, r4.xyzx, r5.yzwy
mad r3.xyz, r4.wwww, r3.xyzx, r4.xyzx
mul r2.w, v0.w, l(32767.099609)
ftoi r2.w, r2.w
imax r3.w, -r2.w, r2.w
ige r4.x, r3.w, l(2048)
ilt r4.y, r2.w, l(0)
ishl r4.z, v4.x, l(1)
movc r4.z, r4.y, r4.z, v4.x
ishl r3.w, r3.w, l(3)
iadd r3.w, r3.w, l(0xffffc000)
bfi r3.w, l(3), l(0), r4.z, r3.w
ld_indexable(buffer)(uint,uint,uint,uint) r5.xyzw, r3.wwww, t1.xyzw
movc r2.w, r4.x, r5.x, r2.w
imul null, r4.z, r2.w, l(3)
imad r6.xy, l(3, 3, 0, 0), r2.wwww, l(1, 2, 0, 0)
if_nz r4.x
  utof r4.xw, r5.zzzw
  mul r4.xw, r4.xxxw, l(0.00392156886, 0.000000, 0.000000, 0.00392156886)
  mov r7.x, cb1[r4.z + 8].w
  mov r7.y, cb1[r6.x + 8].w
  mov r7.z, cb1[r6.y + 8].w
  imul null, r2.w, r5.y, l(3)
  imad r5.xy, l(3, 3, 0, 0), r5.yyyy, l(1, 2, 0, 0)
  mul r8.xyz, r4.wwww, cb1[r2.w + 8].xyzx
  mul r9.x, r4.w, cb1[r2.w + 8].w
  mul r9.y, r4.w, cb1[r5.x + 8].w
  mul r9.z, r4.w, cb1[r5.y + 8].w
  mul r5.xzw, r4.wwww, cb1[r5.x + 8].xxyz
  mul r10.xyz, r4.wwww, cb1[r5.y + 8].xyzx
  mad r8.xyz, cb1[r4.z + 8].xyzx, r4.xxxx, r8.xyzx
  mad r7.xyz, r7.xyzx, r4.xxxx, r9.xyzx
  mad r5.xyz, cb1[r6.x + 8].xyzx, r4.xxxx, r5.xzwx
  mad r9.xyz, cb1[r6.y + 8].xyzx, r4.xxxx, r10.xyzx
  if_nz r4.y
    iadd r2.w, r3.w, l(1)
    ld_indexable(buffer)(uint,uint,uint,uint) r10.xyzw, r2.wwww, t1.xyzw
    utof r4.xy, r10.zwzz
    mul r4.xy, r4.xyxx, l(0.00392156886, 0.00392156886, 0.000000, 0.000000)
    imul null, r6.zw, r10.xxxy, l(0, 0, 3, 3)
    imad r10.xyzw, l(3, 3, 3, 3), r10.xxyy, l(1, 2, 1, 2)
    mul r11.x, r4.x, cb1[r6.z + 8].w
    mul r11.y, r4.x, cb1[r10.x + 8].w
    mul r11.z, r4.x, cb1[r10.y + 8].w
    mad r12.xyz, r4.xxxx, cb1[r6.z + 8].xyzx, r8.xyzx
    add r11.xyz, r7.xyzx, r11.xyzx
    mad r13.xyz, r4.xxxx, cb1[r10.x + 8].xyzx, r5.xyzx
    mad r14.xyz, r4.xxxx, cb1[r10.y + 8].xyzx, r9.xyzx
    mul r15.x, r4.y, cb1[r6.w + 8].w
    mul r15.y, r4.y, cb1[r10.z + 8].w
    mul r15.z, r4.y, cb1[r10.w + 8].w
    mad r8.xyz, r4.yyyy, cb1[r6.w + 8].xyzx, r12.xyzx
    add r7.xyz, r11.xyzx, r15.xyzx
    mad r5.xyz, r4.yyyy, cb1[r10.z + 8].xyzx, r13.xyzx
    mad r9.xyz, r4.yyyy, cb1[r10.w + 8].xyzx, r14.xyzx
  endif
else
  mov r8.xyz, cb1[r4.z + 8].xyzx
  mov r7.x, cb1[r4.z + 8].w
  mov r7.y, cb1[r6.x + 8].w
  mov r7.z, cb1[r6.y + 8].w
  mov r5.xyz, cb1[r6.x + 8].xyzx
  mov r9.xyz, cb1[r6.y + 8].xyzx
endif
add r4.xyz, r7.xyzx, cb12[15].xyzx
mov r8.w, r4.x
mov r1.w, l(1.000000)
dp4 r6.x, r8.xyzw, r1.xyzw
mov r5.w, r4.y
dp4 r6.y, r5.xyzw, r1.xyzw
mov r9.w, r4.z
dp4 r6.z, r9.xyzw, r1.xyzw
mul r4.xyzw, r6.yyyy, cb12[1].xyzw
mad r4.xyzw, cb12[0].xyzw, r6.xxxx, r4.xyzw
mad r4.xyzw, cb12[2].xyzw, r6.zzzz, r4.xyzw
add o6.xyzw, r4.xyzw, cb12[14].xyzw
add r1.xyw, r6.xyxz, cb12[7].xyxz
dp3 r2.w, r2.xyzx, r2.xyzx
rsq r2.w, r2.w
mul r2.xyz, r2.wwww, r2.xyzx
dp3 r4.x, r8.xyzx, r2.xyzx
dp3 r4.y, r5.xyzx, r2.xyzx
dp3 r4.z, r9.xyzx, r2.xyzx
dp3 r2.x, r3.xyzx, r3.xyzx
rsq r2.x, r2.x
mul r2.xyz, r2.xxxx, r3.xyzx
dp3 r3.x, r8.xyzx, r2.xyzx
dp3 r3.y, r5.xyzx, r2.xyzx
dp3 r3.z, r9.xyzx, r2.xyzx
mul r2.xyz, r3.yzxy, r4.zxyz
mad r2.xyz, r4.yzxy, r3.zxyz, -r2.xyzx
mul o2.xyz, r2.xyzx, v2.wwww
mad r2.xy, v3.xyxx, cb1[6].xyxx, cb1[6].zwzz
mul_sat r2.z, r4.z, cb1[7].z
add_sat o0.w, r2.z, cb1[7].w
mul r2.z, v1.w, l(32767.099609)
ftoi r2.z, r2.z
ishr r2.w, r2.z, l(3)
and r2.zw, r2.zzzw, l(0, 0, 7, 4095)
itof r2.z, r2.z
add o2.w, r2.z, l(0.100000)
ld_indexable(buffer)(uint,uint,uint,uint) r5.xyzw, r2.wwww, t1.xyzw
ishl r2.zw, r5.yyyw, l(0, 0, 8, 8)
or r2.zw, r2.zzzw, r5.xxxz
f16tof32 r2.zw, r2.zzzw
mul o3.zw, r2.zzzw, r2.xxxy
add r5.xyz, -cb12[7].xyzx, cb12[10].xyzx
add o4.xyz, r1.xywx, r5.xyzx
mov o0.xyz, r4.xyzx
mov o1.w, r1.z
mov o1.xyz, r3.xyzx
mov o3.xy, r2.xyxx
mov o5.xyzw, r0.xyzw
ret
// Approximately 0 instruction slots used
