//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:05 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float
// TEXCOORD                 1   xyzw        1     NONE   float
// TEXCOORD                 2   xyzw        2     NONE   float
// TEXCOORD                 3   xyzw        3     NONE   float
// SV_VERTEXID              0   x           4   VERTID    uint   x
// SV_InstanceID            0   x           5   INSTID    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyz         1     NONE   float   xyz
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float   xyzw
// SV_POSITION              0   xyzw        4      POS   float   xyzw
//
vs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[114], immediateIndexed
dcl_constantbuffer cb12[8], immediateIndexed
dcl_constantbuffer cb1[4], immediateIndexed
dcl_resource_buffer (float,float,float,float) t2
dcl_input_sgv v4.x, vertex_id
dcl_output o0.xyzw
dcl_output o1.xyz
dcl_output o2.xyz
dcl_output o3.xyzw
dcl_output_siv o4.xyzw, position
dcl_temps 6
dcl_indexableTemp x0[4], 4
itof r0.x, v4.x
add r0.x, r0.x, l(0.500000)
mad r0.x, r0.x, l(0.500000), l(-0.500000)
round_ne r0.x, r0.x
ftoi r0.y, r0.x
ishl r0.zw, r0.yyyy, l(0, 0, 1, 2)
iadd r0.z, -r0.z, v4.x
itof r0.w, r0.w
add r0.w, r0.w, cb0[36].x
ftou r1.x, r0.w
ld_indexable(buffer)(float,float,float,float) r1.x, r1.xxxx, t2.wxyz
add r1.yz, r0.wwww, l(0.000000, 1.000000, 3.000000, 0.000000)
ftou r1.yz, r1.yyzy
ld_indexable(buffer)(float,float,float,float) r2.xyzw, r1.yyyy, t2.xyzw
ld_indexable(buffer)(float,float,float,float) r1.yz, r1.zzzz, t2.xyzw
mov x0[0].y, l(0)
mov x0[1].y, l(1.000000)
mov x0[2].y, l(0)
mov x0[3].y, l(1.000000)
mul r3.xyz, r2.yyyy, cb1[1].xyzx
mad r3.xyz, cb1[0].xyzx, r2.xxxx, r3.xyzx
mad r3.xyz, cb1[2].xyzx, r2.zzzz, r3.xyzx
add r3.xyz, r3.xyzx, cb1[3].xyzx
lt r0.w, l(1.000000), cb0[110].x
if_nz r0.w
  ilt r0.w, r0.y, l(0)
  if_nz r0.w
    add r0.w, l(1.000000), cb0[36].x
    ftou r0.w, r0.w
    ld_indexable(buffer)(float,float,float,float) r4.xyz, r0.wwww, t2.xyzw
  else
    add r0.w, l(-1.000000), cb0[110].x
    add r0.x, -r0.w, r0.x
    lt r0.x, |r0.x|, l(0.001000)
    if_nz r0.x
      iadd r0.x, r0.y, l(-1)
      itof r0.x, r0.x
      mad r0.x, r0.x, cb0[37].x, cb0[36].x
      add r0.x, r0.x, l(1.000000)
      ftou r0.x, r0.x
      ld_indexable(buffer)(float,float,float,float) r5.xyz, r0.xxxx, t2.xyzw
      mad r4.xyz, r2.xyzx, l(2.000000, 2.000000, 2.000000, 0.000000), -r5.xyzx
    else
      iadd r0.x, r0.y, l(1)
      itof r0.x, r0.x
      mad r0.x, r0.x, cb0[37].x, cb0[36].x
      add r0.x, r0.x, l(1.000000)
      ftou r0.x, r0.x
      ld_indexable(buffer)(float,float,float,float) r4.xyz, r0.xxxx, t2.xyzw
    endif
  endif
else
  mov r4.xyz, l(0,0,0,0)
endif
mul r0.xyw, r4.yyyy, cb1[1].zxzy
mad r0.xyw, cb1[0].zxzy, r4.xxxx, r0.xyxw
mad r0.xyw, cb1[2].zxzy, r4.zzzz, r0.xyxw
add r0.xyw, r0.xyxw, cb1[3].zxzy
add r0.xyw, -r3.zxzy, r0.xyxw
dp3 r1.w, r0.xywx, r0.xywx
sqrt r1.w, r1.w
lt r1.w, l(0.000010), r1.w
movc r0.xyw, r1.wwww, r0.xyxw, l(0,1.000000,0,0)
dp3 r1.w, r0.xywx, r0.xywx
rsq r1.w, r1.w
mul r2.xyz, r0.ywxy, r1.wwww
add r4.xyz, -r3.xyzx, cb12[7].xyzx
mul r5.xyz, r0.xywx, r4.yzxy
mad r0.xyw, r0.wxwy, r4.zxzy, -r5.xyxz
dp3 r1.w, r0.xywx, r0.xywx
rsq r1.w, r1.w
mul r0.xyw, r0.xyxw, r1.wwww
mul r0.xyw, r1.yyyy, r0.xyxw
itof r1.w, r0.z
lt r1.w, r1.w, l(0.500000)
movc r0.xyw, r1.wwww, -r0.xyxw, r0.xyxw
add r0.xyw, r0.xyxw, r3.xyxz
dp3 r1.w, r2.xyzx, r4.xyzx
mad r2.xyz, -r1.wwww, r2.xyzx, r4.xyzx
dp3 r1.w, r2.xyzx, r2.xyzx
rsq r1.w, r1.w
mul o1.xyz, r1.wwww, r2.xyzx
mov o0.y, x0[r0.z + 0].y
mul r3.xyzw, r0.yyyy, cb12[1].xyzw
mad r3.xyzw, cb12[0].xyzw, r0.xxxx, r3.xyzw
mad r3.xyzw, cb12[2].xyzw, r0.wwww, r3.xyzw
add r3.xyzw, r3.xyzw, cb12[3].xyzw
dp3 r0.z, r4.xyzx, r4.xyzx
sqrt r0.z, r0.z
mad r1.w, r0.z, l(4.000000), l(-2.000000)
add r0.z, -r0.z, l(10000.000000)
min_sat r0.z, r0.z, r1.w
mul r0.z, r0.z, cb0[9].y
mul r0.z, r0.z, cb0[113].x
lt r1.w, l(0.999000), r2.w
movc o0.z, r1.w, l(0), r0.z
add o2.xyz, -r0.xywx, cb12[7].xyzx
mov o0.w, r3.w
mov o0.x, r1.x
mov o3.y, l(0)
mov o3.xzw, r1.xxyz
mov o4.xyzw, r3.xyzw
ret
// Approximately 0 instruction slots used
