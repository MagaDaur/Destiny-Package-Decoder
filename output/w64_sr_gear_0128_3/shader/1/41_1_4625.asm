//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:01 2023
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
dcl_constantbuffer cb0[11], immediateIndexed
dcl_constantbuffer cb12[16], immediateIndexed
dcl_constantbuffer cb1[24], dynamicIndexed
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input v0.xyzw
dcl_input_sgv v4.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_temps 14
mad r0.xyz, v0.xyzx, cb1[5].wwww, cb1[5].xyzx
mul r0.w, l(3.141000), cb0[3].x
sincos r1.x, r2.x, r0.w
dp3 r0.w, cb0[2].xyzx, cb0[2].xyzx
rsq r0.w, r0.w
mul r1.yzw, r0.wwww, cb0[2].xxyz
mul r2.yzw, r1.yyzw, r1.xxxx
add r3.xyz, r0.xyzx, -cb0[4].xyzx
mul r4.xyz, -r2.zwyz, r3.zxyz
mad r4.xyz, r3.yzxy, -r2.wyzw, -r4.xyzx
dp3 r0.w, r3.xyzx, -r2.yzwy
mov r4.w, -r0.w
mul r3.xyz, r2.xxxx, r3.xyzx
mov r3.w, l(0)
add r3.xyzw, r3.xyzw, r4.xyzw
mul r4.xyz, r2.wyzw, r3.yzxy
mad r4.xyz, r2.zwyz, r3.zxyz, -r4.xyzx
mad r3.xyz, r2.xxxx, r3.xyzx, r4.xyzx
mad r2.xyz, r3.wwww, r2.yzwy, r3.xyzx
add r2.xyz, r2.xyzx, cb0[4].xyzx
add r3.xyz, -r0.xyzx, r2.xyzx
mul r0.w, l(3.141000), cb0[5].x
sincos r1.x, r4.x, r0.w
mul r1.xyz, r1.yzwy, r1.xxxx
add r4.yzw, r2.xxyz, -cb0[6].xxyz
mul r5.xyz, -r1.yzxy, r4.wyzw
mad r5.xyz, r4.zwyz, -r1.zxyz, -r5.xyzx
dp3 r0.w, r4.yzwy, -r1.xyzx
mov r5.w, -r0.w
mul r6.xyz, r4.yzwy, r4.xxxx
mov r6.w, l(0)
add r5.xyzw, r5.xyzw, r6.xyzw
mul r4.yzw, r1.zzxy, r5.yyzx
mad r4.yzw, r1.yyzx, r5.zzxy, -r4.yyzw
mad r4.xyz, r4.xxxx, r5.xyzx, r4.yzwy
mad r1.xyz, r5.wwww, r1.xyzx, r4.xyzx
add r1.xyz, r1.xyzx, cb0[6].xyzx
add r2.xyz, -r2.xyzx, r1.xyzx
mul r0.w, l(3.141000), cb0[8].x
sincos r4.x, r5.x, r0.w
dp3 r0.w, cb0[7].xyzx, cb0[7].xyzx
rsq r0.w, r0.w
mul r4.yzw, r0.wwww, cb0[7].xxyz
mul r4.xyz, r4.yzwy, r4.xxxx
add r5.yzw, r1.xxyz, -cb0[9].xxyz
mul r6.xyz, -r4.yzxy, r5.wyzw
mad r6.xyz, r5.zwyz, -r4.zxyz, -r6.xyzx
dp3 r0.w, r5.yzwy, -r4.xyzx
mov r6.w, -r0.w
mul r7.xyz, r5.yzwy, r5.xxxx
mov r7.w, l(0)
add r6.xyzw, r6.xyzw, r7.xyzw
mul r5.yzw, r4.zzxy, r6.yyzx
mad r5.yzw, r4.yyzx, r6.zzxy, -r5.yyzw
mad r5.xyz, r5.xxxx, r6.xyzx, r5.yzwy
mad r4.xyz, r6.wwww, r4.xyzx, r5.xyzx
add r4.xyz, r4.xyzx, cb0[9].xyzx
add r1.xyz, -r1.xyzx, r4.xyzx
add r1.xyz, r1.xyzx, r2.xyzx
add r1.xyz, r1.xyzx, r3.xyzx
add r1.xyz, r1.xyzx, -cb0[0].xyzx
mad r1.xyz, cb0[10].xxxx, r1.xyzx, cb0[0].xyzx
mul r0.w, v0.w, l(32767.099609)
ftoi r0.w, r0.w
imax r1.w, -r0.w, r0.w
ige r2.x, r1.w, l(2048)
ilt r2.y, r0.w, l(0)
ishl r2.z, v4.x, l(1)
movc r2.z, r2.y, r2.z, v4.x
ishl r1.w, r1.w, l(3)
iadd r1.w, r1.w, l(0xffffc000)
bfi r1.w, l(3), l(0), r2.z, r1.w
ld_indexable(buffer)(uint,uint,uint,uint) r3.xyzw, r1.wwww, t1.xyzw
movc r0.w, r2.x, r3.x, r0.w
imul null, r2.z, r0.w, l(3)
imad r4.xy, l(3, 3, 0, 0), r0.wwww, l(1, 2, 0, 0)
if_nz r2.x
  utof r2.xw, r3.zzzw
  mul r2.xw, r2.xxxw, l(0.00392156886, 0.000000, 0.000000, 0.00392156886)
  mov r5.x, cb1[r2.z + 8].w
  mov r5.y, cb1[r4.x + 8].w
  mov r5.z, cb1[r4.y + 8].w
  imul null, r0.w, r3.y, l(3)
  imad r3.xy, l(3, 3, 0, 0), r3.yyyy, l(1, 2, 0, 0)
  mul r6.xyz, r2.wwww, cb1[r0.w + 8].xyzx
  mul r7.x, r2.w, cb1[r0.w + 8].w
  mul r7.y, r2.w, cb1[r3.x + 8].w
  mul r7.z, r2.w, cb1[r3.y + 8].w
  mul r3.xzw, r2.wwww, cb1[r3.x + 8].xxyz
  mul r8.xyz, r2.wwww, cb1[r3.y + 8].xyzx
  mad r6.xyz, cb1[r2.z + 8].xyzx, r2.xxxx, r6.xyzx
  mad r5.xyz, r5.xyzx, r2.xxxx, r7.xyzx
  mad r3.xyz, cb1[r4.x + 8].xyzx, r2.xxxx, r3.xzwx
  mad r7.xyz, cb1[r4.y + 8].xyzx, r2.xxxx, r8.xyzx
  if_nz r2.y
    iadd r0.w, r1.w, l(1)
    ld_indexable(buffer)(uint,uint,uint,uint) r8.xyzw, r0.wwww, t1.xyzw
    utof r2.xy, r8.zwzz
    mul r2.xy, r2.xyxx, l(0.00392156886, 0.00392156886, 0.000000, 0.000000)
    imul null, r4.zw, r8.xxxy, l(0, 0, 3, 3)
    imad r8.xyzw, l(3, 3, 3, 3), r8.xxyy, l(1, 2, 1, 2)
    mul r9.x, r2.x, cb1[r4.z + 8].w
    mul r9.y, r2.x, cb1[r8.x + 8].w
    mul r9.z, r2.x, cb1[r8.y + 8].w
    mad r10.xyz, r2.xxxx, cb1[r4.z + 8].xyzx, r6.xyzx
    add r9.xyz, r5.xyzx, r9.xyzx
    mad r11.xyz, r2.xxxx, cb1[r8.x + 8].xyzx, r3.xyzx
    mad r12.xyz, r2.xxxx, cb1[r8.y + 8].xyzx, r7.xyzx
    mul r13.x, r2.y, cb1[r4.w + 8].w
    mul r13.y, r2.y, cb1[r8.z + 8].w
    mul r13.z, r2.y, cb1[r8.w + 8].w
    mad r6.xyz, r2.yyyy, cb1[r4.w + 8].xyzx, r10.xyzx
    add r5.xyz, r9.xyzx, r13.xyzx
    mad r3.xyz, r2.yyyy, cb1[r8.z + 8].xyzx, r11.xyzx
    mad r7.xyz, r2.yyyy, cb1[r8.w + 8].xyzx, r12.xyzx
  endif
else
  mov r6.xyz, cb1[r2.z + 8].xyzx
  mov r5.x, cb1[r2.z + 8].w
  mov r5.y, cb1[r4.x + 8].w
  mov r5.z, cb1[r4.y + 8].w
  mov r3.xyz, cb1[r4.x + 8].xyzx
  mov r7.xyz, cb1[r4.y + 8].xyzx
endif
add r0.xyz, r0.xyzx, r1.xyzx
add r1.xyz, r5.xyzx, cb12[15].xyzx
mov r6.w, r1.x
mov r0.w, l(1.000000)
dp4 r1.x, r6.xyzw, r0.xyzw
mov r3.w, r1.y
dp4 r1.y, r3.xyzw, r0.xyzw
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
