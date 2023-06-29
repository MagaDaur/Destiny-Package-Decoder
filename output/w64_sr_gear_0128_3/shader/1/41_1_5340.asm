//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:53:59 2023
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
dcl_constantbuffer cb0[14], immediateIndexed
dcl_constantbuffer cb12[16], immediateIndexed
dcl_constantbuffer cb1[24], dynamicIndexed
dcl_sampler s1, mode_default
dcl_resource_buffer (float,float,float,float) t0
dcl_resource_buffer (uint,uint,uint,uint) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t3
dcl_resource_texture2d (float,float,float,float) t4
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
dcl_temps 8
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
ishl r1.x, r0.x, l(1)
bfi r0.x, l(31), l(1), r0.x, l(1)
if_nz r0.z
  utof r1.zw, r1.zzzw
  mul r0.z, r1.z, l(0.00392156886)
  mov r2.x, cb1[r1.x + 8].w
  mov r2.y, cb1[r0.x + 8].w
  ishl r1.z, r1.y, l(1)
  bfi r1.y, l(31), l(1), r1.y, l(1)
  dp4 r2.z, cb1[r1.z + 8].xyzw, cb1[r1.x + 8].xyzw
  ge r2.z, r2.z, l(0.000000)
  movc r2.z, r2.z, l(0.00392156886), l(-0.00392156886)
  mul r1.w, r1.w, r2.z
  mul r3.xyz, r1.wwww, cb1[r1.z + 8].xyzx
  mul r4.xyz, r1.wwww, cb1[r1.y + 8].xyzx
  mul r5.x, r1.w, cb1[r1.z + 8].w
  mul r5.y, r1.w, cb1[r1.y + 8].w
  mad r3.xyz, r0.zzzz, cb1[r1.x + 8].xyzx, r3.xyzx
  mad r1.yzw, r0.zzzz, cb1[r0.x + 8].xxyz, r4.xxyz
  mad r2.xy, r0.zzzz, r2.yxyy, r5.yxyy
  if_nz r0.w
    iadd r0.y, r0.y, l(1)
    ld_indexable(buffer)(uint,uint,uint,uint) r4.xyzw, r0.yyyy, t1.xyzw
    ishl r0.yz, r4.xxyx, l(0, 1, 1, 0)
    bfi r2.zw, l(0, 0, 31, 31), l(0, 0, 1, 1), r4.xxxy, l(0, 0, 1, 1)
    dp4 r0.w, cb1[r0.y + 8].xyzw, cb1[r1.x + 8].xyzw
    utof r4.xy, r4.zwzz
    ge r0.w, r0.w, l(0.000000)
    movc r0.w, r0.w, l(0.00392156886), l(-0.00392156886)
    mul r0.w, r0.w, r4.x
    mul r5.x, r0.w, cb1[r0.y + 8].w
    mul r5.y, r0.w, cb1[r2.z + 8].w
    mad r4.xzw, r0.wwww, cb1[r0.y + 8].xxyz, r3.xxyz
    mad r6.xyz, r0.wwww, cb1[r2.z + 8].xyzx, r1.yzwy
    add r0.yw, r2.yyyx, r5.xxxy
    dp4 r2.z, cb1[r0.z + 8].xyzw, cb1[r1.x + 8].xyzw
    ge r2.z, r2.z, l(0.000000)
    movc r2.z, r2.z, l(0.00392156886), l(-0.00392156886)
    mul r2.z, r2.z, r4.y
    mul r5.x, r2.z, cb1[r0.z + 8].w
    mul r5.y, r2.z, cb1[r2.w + 8].w
    mad r3.xyz, r2.zzzz, cb1[r0.z + 8].xyzx, r4.xzwx
    mad r1.yzw, r2.zzzz, cb1[r2.w + 8].xxyz, r6.xxyz
    add r2.xy, r0.wyww, r5.yxyy
    mov r3.w, r2.y
  else
    mov r3.w, r2.y
  endif
  dp4 r0.y, r3.xyzw, r3.xyzw
  sqrt r0.y, r0.y
  div r4.xyz, r3.xyzx, r0.yyyy
  div r1.yzw, r1.yyzw, r0.yyyy
  mov r2.y, r3.w
  div r0.yz, r2.xxyx, r0.yyyy
  mov r4.w, r0.z
else
  mov r1.yzw, cb1[r0.x + 8].xxyz
  mov r4.xyzw, cb1[r1.x + 8].xyzw
  mov r0.y, cb1[r0.x + 8].w
endif
add r2.xyzw, r4.xyzw, r4.xyzw
mad r0.xzw, v0.xxyz, cb1[5].wwww, cb1[5].xxyz
mul r3.xyz, r0.xzwx, r4.yzxy
mad r3.xyz, r4.xyzx, r0.zwxz, -r3.xyzx
mad r3.xyz, r4.wwww, r0.wxzw, r3.xyzx
mad r5.xyz, -r2.zxyz, r3.zxyz, r0.xzwx
mad r3.xyz, r2.yzxy, r3.xyzx, r5.xyzx
mad r3.xyz, -r2.zxyz, r1.zwyz, r3.xyzx
mad r3.xyz, r2.yzxy, r1.wyzw, r3.xyzx
mad r1.xyz, r2.wwww, r1.yzwy, r3.xyzx
mad r0.xyz, -r0.yyyy, r2.xyzx, r1.xyzx
add r0.xyz, r0.xyzx, cb12[15].xyzx
mul r1.xyzw, r0.yyyy, cb12[1].xyzw
mad r1.xyzw, cb12[0].xyzw, r0.xxxx, r1.xyzw
mad r1.xyzw, cb12[2].xyzw, r0.zzzz, r1.xyzw
add r1.xyzw, r1.xyzw, cb12[14].xyzw
add r0.xyz, r0.xyzx, cb12[7].xyzx
dp3 r2.w, v1.xyzx, v1.xyzx
rsq r2.w, r2.w
mul r3.xyz, r2.wwww, v1.xyzx
mul r5.xyz, r3.xyzx, r4.yzxy
mad r5.xyz, r4.xyzx, r3.yzxy, -r5.xyzx
mad r5.xyz, r4.wwww, r3.zxyz, r5.xyzx
mad r3.xyz, -r2.zxyz, r5.zxyz, r3.xyzx
mad r3.xyz, r2.yzxy, r5.xyzx, r3.xyzx
dp3 r2.w, v2.xyzx, v2.xyzx
rsq r2.w, r2.w
mul r5.xyz, r2.wwww, v2.xyzx
mul r6.xyz, r4.yzxy, r5.xyzx
mad r4.xyz, r4.xyzx, r5.yzxy, -r6.xyzx
mad r4.xyz, r4.wwww, r5.zxyz, r4.xyzx
mad r5.xyz, -r2.zxyz, r4.zxyz, r5.xyzx
mad r2.xyz, r2.yzxy, r4.xyzx, r5.xyzx
mul r4.xyz, r2.yzxy, r3.zxyz
mad r4.xyz, r3.yzxy, r2.zxyz, -r4.xyzx
mul o2.xyz, r4.xyzx, v2.wwww
mad r4.xy, v3.xyxx, cb1[6].xyxx, cb1[6].zwzz
mul_sat r2.w, r3.z, cb1[7].z
add_sat o0.w, r2.w, cb1[7].w
umin r2.w, v4.x, cb1[4].w
ld_indexable(buffer)(float,float,float,float) r5.xyzw, r2.wwww, t0.xyzw
mul r2.w, v1.w, l(32767.099609)
ftoi r2.w, r2.w
ishr r3.w, r2.w, l(3)
and r3.w, r3.w, l(4095)
and r2.w, r2.w, l(7)
itof r2.w, r2.w
add o2.w, r2.w, l(0.100000)
ld_indexable(buffer)(uint,uint,uint,uint) r6.xyzw, r3.wwww, t1.xyzw
ishl r4.zw, r6.yyyw, l(0, 0, 8, 8)
or r4.zw, r4.zzzw, r6.xxxz
f16tof32 r4.zw, r4.zzzw
mul o3.zw, r4.zzzw, r4.xxxy
mul r2.w, cb0[0].x, cb0[1].x
mul r2.w, r2.w, r5.x
mul r2.w, r2.w, cb0[2].x
add r4.zw, r4.xxxy, -cb0[4].xxxy
dp2 r3.w, r4.zwzz, r4.zwzz
sqrt r3.w, r3.w
add r3.w, r3.w, cb0[3].x
mad r3.w, cb0[5].w, r3.w, cb0[5].z
round_ne r4.z, r3.w
add r3.w, r3.w, -r4.z
mad r4.z, |r3.w|, l(-16.000000), l(8.000000)
mul r3.w, r3.w, r4.z
mad r4.z, |r3.w|, l(0.225000), l(0.775000)
mul r3.w, r3.w, r4.z
mad r3.w, cb0[5].x, r3.w, cb0[5].y
mad r4.zw, r4.xxxy, cb0[6].xxxy, cb0[6].zzzw
sample_l_indexable(texture2d)(float,float,float,float) r4.z, r4.zwzz, t2.yzxw, s1, l(0.000000)
mad r6.xy, r4.xyxx, cb0[7].xyxx, cb0[7].zwzz
sample_l_indexable(texture2d)(float,float,float,float) r4.w, r6.xyxx, t3.yzwx, s1, l(0.000000)
mad r4.w, r4.w, cb0[8].x, cb0[8].y
mad r6.xy, r4.xyxx, cb0[9].xyxx, cb0[9].zwzz
sample_l_indexable(texture2d)(float,float,float,float) r6.x, r6.xyxx, t4.xyzw, s1, l(0.000000)
mad r6.x, r6.x, cb0[10].x, cb0[10].y
mad r4.z, r4.w, r6.x, r4.z
mad_sat r4.z, r4.z, cb0[11].x, cb0[11].y
mad r3.w, r4.z, cb0[12].x, r3.w
mad_sat r4.z, r5.x, cb0[13].x, cb0[13].y
mul r6.z, r3.w, r4.z
mov r6.xy, l(0,0,0,0)
mad r6.xyz, r2.wwww, r3.xyzx, r6.xyzx
add r0.xyz, r0.xyzx, r6.xyzx
mul r7.xyzw, r6.yyyy, cb12[1].xyzw
mad r7.xyzw, cb12[0].xyzw, r6.xxxx, r7.xyzw
mad r6.xyzw, cb12[2].xyzw, r6.zzzz, r7.xyzw
add o6.xyzw, r1.xyzw, r6.xyzw
add r1.xyz, -cb12[7].xyzx, cb12[10].xyzx
add o4.xyz, r0.xyzx, r1.xyzx
mov o0.xyz, r3.xyzx
mov o1.w, r0.w
mov o1.xyz, r2.xyzx
mov o3.xy, r4.xyxx
mov o5.xyzw, r5.xyzw
ret
// Approximately 0 instruction slots used
