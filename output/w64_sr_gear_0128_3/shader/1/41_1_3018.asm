//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:06 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// POSITION                 0   xyzw        0     NONE   float   xyzw
// NORMAL                   0   xyzw        1     NONE   float   xyz
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
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// TEXCOORD                 4   xyz         4     NONE   float   xyz
// TEXCOORD                 8   xyzw        5     NONE   float   xyzw
// SV_POSITION              0   xyzw        6      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb12[16], immediateIndexed
dcl_constantbuffer cb1[24], dynamicIndexed
dcl_resource_buffer (float,float,float,float) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_input v0.xyzw
dcl_input v1.xyz
dcl_input v2.xyzw
dcl_input v3.xy
dcl_input_sgv v4.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyzw
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output o4.xyz
dcl_output o5.xyzw
dcl_output_siv o6.xyzw, position
dcl_temps 12
mul r0.x, v0.w, l(32767.099609)
ftoi r0.x, r0.x
imax r0.y, -r0.x, r0.x
ige r0.z, r0.y, l(2048)
ilt r0.w, r0.x, l(0)
ishl r1.x, v4.x, l(1)
movc r1.x, r0.w, r1.x, v4.x
ishl r0.y, r0.y, l(3)
iadd r0.y, r0.y, l(0xffffc000)
bfi r0.y, l(3), l(0), r1.x, r0.y
ld_indexable(buffer)(uint,uint,uint,uint) r1.xyzw, r0.yyyy, t1.xyzw
movc r0.x, r0.z, r1.x, r0.x
imul null, r1.x, r0.x, l(3)
imad r2.xy, l(3, 3, 0, 0), r0.xxxx, l(1, 2, 0, 0)
if_nz r0.z
  utof r0.xz, r1.zzwz
  mul r0.xz, r0.xxzx, l(0.00392156886, 0.000000, 0.00392156886, 0.000000)
  mov r3.x, cb1[r1.x + 8].w
  mov r3.y, cb1[r2.x + 8].w
  mov r3.z, cb1[r2.y + 8].w
  imul null, r1.z, r1.y, l(3)
  imad r1.yw, l(0, 3, 0, 3), r1.yyyy, l(0, 1, 0, 2)
  mul r4.xyz, r0.zzzz, cb1[r1.z + 8].xyzx
  mul r5.x, r0.z, cb1[r1.z + 8].w
  mul r5.y, r0.z, cb1[r1.y + 8].w
  mul r5.z, r0.z, cb1[r1.w + 8].w
  mul r6.xyz, r0.zzzz, cb1[r1.y + 8].xyzx
  mul r1.yzw, r0.zzzz, cb1[r1.w + 8].xxyz
  mad r4.xyz, cb1[r1.x + 8].xyzx, r0.xxxx, r4.xyzx
  mad r3.xyz, r3.xyzx, r0.xxxx, r5.xyzx
  mad r5.xyz, cb1[r2.x + 8].xyzx, r0.xxxx, r6.xyzx
  mad r6.xyz, cb1[r2.y + 8].xyzx, r0.xxxx, r1.yzwy
  if_nz r0.w
    iadd r0.x, r0.y, l(1)
    ld_indexable(buffer)(uint,uint,uint,uint) r0.xyzw, r0.xxxx, t1.xyzw
    utof r0.zw, r0.zzzw
    mul r0.zw, r0.zzzw, l(0.000000, 0.000000, 0.00392156886, 0.00392156886)
    imul null, r1.yz, r0.xxyx, l(0, 3, 3, 0)
    imad r7.xyzw, l(3, 3, 3, 3), r0.xxyy, l(1, 2, 1, 2)
    mul r8.x, r0.z, cb1[r1.y + 8].w
    mul r8.y, r0.z, cb1[r7.x + 8].w
    mul r8.z, r0.z, cb1[r7.y + 8].w
    mad r9.xyz, r0.zzzz, cb1[r1.y + 8].xyzx, r4.xyzx
    add r8.xyz, r3.xyzx, r8.xyzx
    mad r10.xyz, r0.zzzz, cb1[r7.x + 8].xyzx, r5.xyzx
    mad r0.xyz, r0.zzzz, cb1[r7.y + 8].xyzx, r6.xyzx
    mul r11.x, r0.w, cb1[r1.z + 8].w
    mul r11.y, r0.w, cb1[r7.z + 8].w
    mul r11.z, r0.w, cb1[r7.w + 8].w
    mad r4.xyz, r0.wwww, cb1[r1.z + 8].xyzx, r9.xyzx
    add r3.xyz, r8.xyzx, r11.xyzx
    mad r5.xyz, r0.wwww, cb1[r7.z + 8].xyzx, r10.xyzx
    mad r6.xyz, r0.wwww, cb1[r7.w + 8].xyzx, r0.xyzx
  endif
else
  mov r4.xyz, cb1[r1.x + 8].xyzx
  mov r3.x, cb1[r1.x + 8].w
  mov r3.y, cb1[r2.x + 8].w
  mov r3.z, cb1[r2.y + 8].w
  mov r5.xyz, cb1[r2.x + 8].xyzx
  mov r6.xyz, cb1[r2.y + 8].xyzx
endif
mad r0.xyz, v0.xyzx, cb1[5].wwww, cb1[5].xyzx
add r1.xyz, r3.xyzx, cb12[15].xyzx
mov r4.w, r1.x
mov r0.w, l(1.000000)
dp4 r2.x, r4.xyzw, r0.xyzw
mov r5.w, r1.y
dp4 r2.y, r5.xyzw, r0.xyzw
mov r6.w, r1.z
dp4 r2.z, r6.xyzw, r0.xyzw
mul r0.xyzw, r2.yyyy, cb12[1].xyzw
mad r0.xyzw, cb12[0].xyzw, r2.xxxx, r0.xyzw
mad r0.xyzw, cb12[2].xyzw, r2.zzzz, r0.xyzw
add o6.xyzw, r0.xyzw, cb12[14].xyzw
dp3 r0.x, v1.xyzx, v1.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v1.xyzx
dp3 r1.x, r4.xyzx, r0.xyzx
dp3 r1.y, r5.xyzx, r0.xyzx
dp3 r1.z, r6.xyzx, r0.xyzx
dp3 r0.x, v2.xyzx, v2.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v2.xyzx
dp3 r3.z, r4.xyzx, r0.xyzx
dp3 r3.x, r5.xyzx, r0.xyzx
dp3 r3.y, r6.xyzx, r0.xyzx
mul r0.xyz, r1.zxyz, r3.xyzx
mad r0.xyz, r1.yzxy, r3.yzxy, -r0.xyzx
mul o2.xyz, r0.xyzx, v2.wwww
mad o3.xyzw, v3.xyxy, cb1[6].xyxy, cb1[6].zwzw
mul_sat r0.x, r1.z, cb1[7].z
add_sat o0.w, r0.x, cb1[7].w
umin r0.x, v4.x, cb1[4].w
ld_indexable(buffer)(float,float,float,float) o5.xyzw, r0.xxxx, t0.xyzw
add o4.xyz, r2.xyzx, cb12[7].xyzx
mov o0.xyz, r1.xyzx
mov o1.xyzw, r3.zxyy
ret
// Approximately 0 instruction slots used
