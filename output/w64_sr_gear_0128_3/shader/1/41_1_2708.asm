//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:07 2023
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
dcl_constantbuffer cb0[35], immediateIndexed
dcl_constantbuffer cb12[16], immediateIndexed
dcl_constantbuffer cb1[24], dynamicIndexed
dcl_resource_buffer (float,float,float,float) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_input v0.xyzw
dcl_input_sgv v4.x, vertex_id
dcl_output_siv o0.xyzw, position
dcl_temps 14
umin r0.x, v4.x, cb1[4].w
ld_indexable(buffer)(float,float,float,float) r0.xy, r0.xxxx, t0.xyzw
mad r1.xyz, v0.xyzx, cb1[5].wwww, cb1[5].xyzx
lt r0.y, l(0.000000), r0.y
and r0.y, r0.y, l(0x3f800000)
add r2.xyz, cb0[21].xyzx, -cb0[22].xyzx
mad r2.xyz, r0.yyyy, r2.xyzx, cb0[22].xyzx
mul r0.z, cb0[2].x, cb0[3].x
dp3 r0.w, cb0[4].xyzx, cb0[4].xyzx
sqrt r0.w, r0.w
mul r1.w, cb0[6].x, cb0[7].x
mul r1.w, r1.w, cb0[5].x
max r2.w, cb0[8].x, cb0[9].x
min r2.w, r2.w, cb0[10].x
mul r2.w, r0.w, r2.w
mad r2.w, r2.w, cb0[11].x, -r1.w
mad r1.w, cb0[12].x, r2.w, r1.w
mad r0.z, r0.z, r0.w, r1.w
mad r0.z, cb0[13].x, cb0[14].x, r0.z
max r0.z, r0.z, cb0[15].x
min r0.z, r0.z, cb0[16].x
add r1.w, l(-1.000000), cb0[18].x
lt r1.w, |r1.w|, l(0.000010)
and r1.w, r1.w, l(0x3f800000)
add r0.x, r0.x, -cb0[17].x
mad r0.x, r1.w, r0.x, cb0[17].x
mul r0.z, r0.x, r0.z
mul r0.z, r0.z, cb0[19].x
mul r0.z, r0.z, cb0[20].x
add r3.xyz, cb0[0].xyzx, -cb0[1].xyzx
mad r3.xyz, r0.yyyy, r3.xyzx, cb0[1].xyzx
mul r0.z, r0.z, l(3.141000)
sincos r4.x, r5.x, r0.z
dp3 r0.z, r3.xyzx, r3.xyzx
rsq r0.z, r0.z
mul r3.xyz, r0.zzzz, r3.xyzx
mul r3.xyz, r3.xyzx, r4.xxxx
add r4.xyz, r1.xyzx, -r2.xyzx
mul r5.yzw, -r3.yyzx, r4.zzxy
mad r6.xyz, r4.yzxy, -r3.zxyz, -r5.yzwy
dp3 r0.z, r4.xyzx, -r3.xyzx
mov r6.w, -r0.z
mul r4.xyz, r4.xyzx, r5.xxxx
mov r4.w, l(0)
add r4.xyzw, r4.xyzw, r6.xyzw
mul r5.yzw, r3.zzxy, r4.yyzx
mad r5.yzw, r3.yyzx, r4.zzxy, -r5.yyzw
mad r4.xyz, r5.xxxx, r4.xyzx, r5.yzwy
mad r3.xyz, r4.wwww, r3.xyzx, r4.xyzx
add r4.xyz, r2.xyzx, r3.xyzx
add r5.xyz, -r1.xyzx, r4.xyzx
mul r0.z, cb0[24].x, cb0[25].x
mul r0.z, r0.z, cb0[23].x
max r1.w, cb0[26].x, cb0[27].x
min r1.w, r1.w, cb0[28].x
mul r0.w, r0.w, r1.w
mad r0.w, r0.w, cb0[29].x, -r0.z
mad r0.z, cb0[30].x, r0.w, r0.z
max r0.z, r0.z, cb0[31].x
min r0.z, r0.z, cb0[32].x
mul r0.x, r0.x, r0.z
mul r0.x, r0.x, cb0[33].x
mul r0.x, r0.x, cb0[34].x
add r6.xyz, -cb0[0].xyzx, cb0[1].xyzx
mad r0.yzw, r0.yyyy, r6.xxyz, cb0[0].xxyz
mul r0.x, r0.x, l(3.141000)
sincos r0.x, r6.x, r0.x
dp3 r1.w, r0.yzwy, r0.yzwy
rsq r1.w, r1.w
mul r0.yzw, r0.yyzw, r1.wwww
mul r0.xyz, r0.yzwy, r0.xxxx
mul r6.yzw, -r0.yyzx, r3.zzxy
mad r7.xyz, r3.yzxy, -r0.zxyz, -r6.yzwy
dp3 r0.w, r3.xyzx, -r0.xyzx
mov r7.w, -r0.w
mul r3.xyz, r3.xyzx, r6.xxxx
mov r3.w, l(0)
add r3.xyzw, r3.xyzw, r7.xyzw
mul r6.yzw, r0.zzxy, r3.yyzx
mad r6.yzw, r0.yyzx, r3.zzxy, -r6.yyzw
mad r3.xyz, r6.xxxx, r3.xyzx, r6.yzwy
mad r0.xyz, r3.wwww, r0.xyzx, r3.xyzx
add r0.xyz, r2.xyzx, r0.xyzx
add r0.xyz, -r4.xyzx, r0.xyzx
add r0.xyz, r0.xyzx, r5.xyzx
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
