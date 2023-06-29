//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:04 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyzw        1     NONE   float
// TANGENT                  0   xyzw        2     NONE   float
// TEXCOORD                 0   xy          3     NONE   float
// SV_VERTEXID              0   x           4   VERTID    uint   x
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_POSITION              0   xyzw        0      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[17], immediateIndexed
dcl_constantbuffer cb12[16], immediateIndexed
dcl_constantbuffer cb1[24], dynamicIndexed
dcl_resource_buffer (float,float,float,float) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input v0.xyzw
dcl_input_sgv v4.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_temps 13
umin r0.x, v4.x, cb1[4].w
ld_indexable(buffer)(float,float,float,float) r0.xyz, r0.xxxx, t0.xyzw
mad r1.xyz, v0.xyzx, cb1[5].wwww, cb1[5].xyzx
mul r0.w, cb0[3].x, cb0[14].x
mul r2.x, cb0[13].x, cb0[16].x
mul r2.y, r0.w, cb0[16].x
mul r2.z, cb0[15].x, cb0[16].x
mul r0.w, cb0[7].x, cb0[8].x
add r1.w, l(1.000000), -cb0[9].x
add r0.xy, -r0.yxyy, l(1.000000, 1.000000, 0.000000, 0.000000)
mad r0.x, -r0.x, cb0[10].x, l(1.000000)
add r2.w, -r1.w, l(1.000000)
mad r0.y, -r0.y, cb0[12].x, l(1.000000)
mul r0.y, r0.y, r2.w
mad r0.x, r1.w, r0.x, r0.y
mad r0.x, r0.w, r0.z, r0.x
add r0.y, l(1.000000), -cb0[1].x
add r0.w, l(1.000000), -cb0[2].x
mul r1.w, cb0[3].x, cb0[4].x
mul r2.w, cb0[3].x, cb0[6].x
mad r3.x, cb0[0].x, r0.z, r1.w
mad r3.y, r0.y, r0.z, cb0[5].x
mad r3.z, r0.w, r0.z, r2.w
mul r0.x, r0.x, l(3.141000)
sincos r0.x, r4.x, r0.x
dp3 r0.y, r3.xyzx, r3.xyzx
rsq r0.y, r0.y
mul r0.yzw, r0.yyyy, r3.xxyz
mul r0.xyz, r0.yzwy, r0.xxxx
add r1.xyz, r1.xyzx, -r2.xyzx
mul r3.xyz, -r0.yzxy, r1.zxyz
mad r3.xyz, r1.yzxy, -r0.zxyz, -r3.xyzx
dp3 r0.w, r1.xyzx, -r0.xyzx
mov r3.w, -r0.w
mul r1.xyz, r1.xyzx, r4.xxxx
mov r1.w, l(0)
add r1.xyzw, r1.xyzw, r3.xyzw
mul r3.xyz, r0.zxyz, r1.yzxy
mad r3.xyz, r0.yzxy, r1.zxyz, -r3.xyzx
mad r1.xyz, r4.xxxx, r1.xyzx, r3.xyzx
mad r0.xyz, r1.wwww, r0.xyzx, r1.xyzx
add r0.xyz, r2.xyzx, r0.xyzx
mul r1.x, v0.w, l(32767.099609)
ftoi r1.x, r1.x
imax r1.y, -r1.x, r1.x
ige r1.z, r1.y, l(2048)
ilt r1.w, r1.x, l(0)
ishl r2.x, v4.x, l(1)
movc r2.x, r1.w, r2.x, v4.x
ishl r1.y, r1.y, l(3)
iadd r1.y, r1.y, l(0xffffc000)
bfi r1.y, l(3), l(0), r2.x, r1.y
ld_indexable(buffer)(uint,uint,uint,uint) r2.xyzw, r1.yyyy, t1.xyzw
movc r1.x, r1.z, r2.x, r1.x
imul null, r2.x, r1.x, l(3)
imad r3.xy, l(3, 3, 0, 0), r1.xxxx, l(1, 2, 0, 0)
if_nz r1.z
  utof r1.xz, r2.zzwz
  mul r1.xz, r1.xxzx, l(0.00392156886, 0.000000, 0.00392156886, 0.000000)
  mov r4.x, cb1[r2.x + 8].w
  mov r4.y, cb1[r3.x + 8].w
  mov r4.z, cb1[r3.y + 8].w
  imul null, r2.z, r2.y, l(3)
  imad r2.yw, l(0, 3, 0, 3), r2.yyyy, l(0, 1, 0, 2)
  mul r5.xyz, r1.zzzz, cb1[r2.z + 8].xyzx
  mul r6.x, r1.z, cb1[r2.z + 8].w
  mul r6.y, r1.z, cb1[r2.y + 8].w
  mul r6.z, r1.z, cb1[r2.w + 8].w
  mul r7.xyz, r1.zzzz, cb1[r2.y + 8].xyzx
  mul r2.yzw, r1.zzzz, cb1[r2.w + 8].xxyz
  mad r5.xyz, cb1[r2.x + 8].xyzx, r1.xxxx, r5.xyzx
  mad r4.xyz, r4.xyzx, r1.xxxx, r6.xyzx
  mad r6.xyz, cb1[r3.x + 8].xyzx, r1.xxxx, r7.xyzx
  mad r7.xyz, cb1[r3.y + 8].xyzx, r1.xxxx, r2.yzwy
  if_nz r1.w
    iadd r1.x, r1.y, l(1)
    ld_indexable(buffer)(uint,uint,uint,uint) r1.xyzw, r1.xxxx, t1.xyzw
    utof r1.zw, r1.zzzw
    mul r1.zw, r1.zzzw, l(0.000000, 0.000000, 0.00392156886, 0.00392156886)
    imul null, r2.yz, r1.xxyx, l(0, 3, 3, 0)
    imad r8.xyzw, l(3, 3, 3, 3), r1.xxyy, l(1, 2, 1, 2)
    mul r9.x, r1.z, cb1[r2.y + 8].w
    mul r9.y, r1.z, cb1[r8.x + 8].w
    mul r9.z, r1.z, cb1[r8.y + 8].w
    mad r10.xyz, r1.zzzz, cb1[r2.y + 8].xyzx, r5.xyzx
    add r9.xyz, r4.xyzx, r9.xyzx
    mad r11.xyz, r1.zzzz, cb1[r8.x + 8].xyzx, r6.xyzx
    mad r1.xyz, r1.zzzz, cb1[r8.y + 8].xyzx, r7.xyzx
    mul r12.x, r1.w, cb1[r2.z + 8].w
    mul r12.y, r1.w, cb1[r8.z + 8].w
    mul r12.z, r1.w, cb1[r8.w + 8].w
    mad r5.xyz, r1.wwww, cb1[r2.z + 8].xyzx, r10.xyzx
    add r4.xyz, r9.xyzx, r12.xyzx
    mad r6.xyz, r1.wwww, cb1[r8.z + 8].xyzx, r11.xyzx
    mad r7.xyz, r1.wwww, cb1[r8.w + 8].xyzx, r1.xyzx
  endif
else
  mov r5.xyz, cb1[r2.x + 8].xyzx
  mov r4.x, cb1[r2.x + 8].w
  mov r4.y, cb1[r3.x + 8].w
  mov r4.z, cb1[r3.y + 8].w
  mov r6.xyz, cb1[r3.x + 8].xyzx
  mov r7.xyz, cb1[r3.y + 8].xyzx
endif
add r1.xyz, r4.xyzx, cb12[15].xyzx
mov r5.w, r1.x
mov r0.w, l(1.000000)
dp4 r1.x, r5.xyzw, r0.xyzw
mov r6.w, r1.y
dp4 r1.y, r6.xyzw, r0.xyzw
mov r7.w, r1.z
dp4 r0.x, r7.xyzw, r0.xyzw
mul r2.xyzw, r1.yyyy, cb12[1].xyzw
mad r1.xyzw, cb12[0].xyzw, r1.xxxx, r2.xyzw
mad r0.xyzw, cb12[2].xyzw, r0.xxxx, r1.xyzw
add r0.xyzw, r0.xyzw, cb12[14].xyzw
ld_indexable(texture2d)(float,float,float,float) r1.xyzw, l(0, 0, 0, 0), t2.xyzw
div r0.xy, r0.xyxx, r0.wwww
mad r1.xy, r1.xyxx, l(2.000000, 2.000000, 0.000000, 0.000000), r1.zwzz
mad r0.x, r0.x, r1.z, r1.x
add r2.x, r0.x, l(-1.000000)
add r0.x, r1.y, l(-1.000000)
mad r2.y, r0.y, r1.w, -r0.x
mul o0.xy, r0.wwww, r2.xyxx
mov o0.zw, r0.zzzw
ret
// Approximately 0 instruction slots used
