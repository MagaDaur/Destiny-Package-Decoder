//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:11 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                31   xyz         0     NONE   float   xyz
// TEXCOORD                30   x           1     NONE    uint
// SV_POSITION              0   xyzw        2      POS   float   xyz
// TEXCOORD                 0   xyzw        3     NONE   float
// TEXCOORD                 1   xyzw        4     NONE   float
// TEXCOORD                 2   xyzw        5     NONE   float
// TEXCOORD                 3   xyzw        6     NONE   float
// TEXCOORD                 4   xyzw        7     NONE   float
// SV_PrimitiveID           0    N/A   primID   PRIMID    uint     NO
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// SV_POSITION              0   xyzw        1      POS   float   xyzw
//
gs_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[30], immediateIndexed
dcl_constantbuffer cb12[7], immediateIndexed
dcl_constantbuffer cb9[64], dynamicIndexed
dcl_constantbuffer cb10[1], immediateIndexed
dcl_input v[1][0].xyz
dcl_input v[1][1].x
dcl_input_siv v[1][2].xyzw, position
dcl_input v[1][3].xyzw
dcl_input v[1][4].xyzw
dcl_input v[1][5].xyzw
dcl_input v[1][6].xyzw
dcl_input v[1][7].xyzw
dcl_input vPrim
dcl_temps 5
dcl_inputprimitive point
dcl_stream m0
dcl_outputtopology trianglestrip
dcl_output o0.xyzw
dcl_output_siv o1.xyzw, position
dcl_maxout 36
lt r0.x, l(0.500000), cb0[0].x
if_nz r0.x
  mad r0.xyz, -cb12[4].xyzx, l(0.035000, 0.035000, 0.035000, 0.000000), v[0][2].xyzx
  mad r1.xyz, cb12[5].xyzx, l(0.035000, 0.035000, 0.035000, 0.000000), r0.xyzx
  mad r0.xyz, -cb12[5].xyzx, l(0.035000, 0.035000, 0.035000, 0.000000), r0.xyzx
  mad r2.xyz, cb12[4].xyzx, l(0.035000, 0.035000, 0.035000, 0.000000), v[0][2].xyzx
  mad r3.xyz, cb12[5].xyzx, l(0.035000, 0.035000, 0.035000, 0.000000), r2.xyzx
  mad r2.xyz, -cb12[5].xyzx, l(0.035000, 0.035000, 0.035000, 0.000000), r2.xyzx
  mul r4.xyzw, r1.yyyy, cb12[1].xyzw
  mad r4.xyzw, cb12[0].xyzw, r1.xxxx, r4.xyzw
  mad r1.xyzw, cb12[2].xyzw, r1.zzzz, r4.xyzw
  add r1.xyzw, r1.xyzw, cb12[3].xyzw
  mul r4.xyzw, r0.yyyy, cb12[1].xyzw
  mad r4.xyzw, cb12[0].xyzw, r0.xxxx, r4.xyzw
  mad r0.xyzw, cb12[2].xyzw, r0.zzzz, r4.xyzw
  add r0.xyzw, r0.xyzw, cb12[3].xyzw
  mul r4.xyzw, r3.yyyy, cb12[1].xyzw
  mad r4.xyzw, cb12[0].xyzw, r3.xxxx, r4.xyzw
  mad r3.xyzw, cb12[2].xyzw, r3.zzzz, r4.xyzw
  add r3.xyzw, r3.xyzw, cb12[3].xyzw
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r1.xyzw
  emit_stream m0
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r0.xyzw
  emit_stream m0
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r3.xyzw
  emit_stream m0
  cut_stream m0
  mul r1.xyzw, r2.yyyy, cb12[1].xyzw
  mad r1.xyzw, cb12[0].xyzw, r2.xxxx, r1.xyzw
  mad r1.xyzw, cb12[2].xyzw, r2.zzzz, r1.xyzw
  add r1.xyzw, r1.xyzw, cb12[3].xyzw
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r3.xyzw
  emit_stream m0
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r0.xyzw
  emit_stream m0
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r1.xyzw
  emit_stream m0
  cut_stream m0
endif
lt r0.x, l(0.500000), cb0[1].x
if_nz r0.x
  dp3 r0.x, v[0][0].xyzx, v[0][0].xyzx
  sqrt r0.y, r0.x
  mul r0.y, r0.y, l(0.333333343)
  rsq r0.x, r0.x
  mul r0.xzw, r0.xxxx, v[0][0].xxyz
  mul r1.xyz, r0.wxzw, cb12[6].yzxy
  mad r1.xyz, r0.zwxz, cb12[6].zxyz, -r1.xyzx
  dp3 r1.w, r1.xyzx, r1.xyzx
  rsq r1.w, r1.w
  mul r1.xyz, r1.wwww, r1.xyzx
  mad r0.xyz, r0.xzwx, r0.yyyy, v[0][2].xyzx
  mad r2.xyz, -r1.xyzx, l(0.050000, 0.050000, 0.050000, 0.000000), v[0][2].xyzx
  mad r1.xyz, r1.xyzx, l(0.050000, 0.050000, 0.050000, 0.000000), v[0][2].xyzx
  mul r3.xyzw, r0.yyyy, cb12[1].xyzw
  mad r3.xyzw, cb12[0].xyzw, r0.xxxx, r3.xyzw
  mad r0.xyzw, cb12[2].xyzw, r0.zzzz, r3.xyzw
  add r0.xyzw, r0.xyzw, cb12[3].xyzw
  mul r3.xyzw, r2.yyyy, cb12[1].xyzw
  mad r3.xyzw, cb12[0].xyzw, r2.xxxx, r3.xyzw
  mad r2.xyzw, cb12[2].xyzw, r2.zzzz, r3.xyzw
  add r2.xyzw, r2.xyzw, cb12[3].xyzw
  mul r3.xyzw, r1.yyyy, cb12[1].xyzw
  mad r3.xyzw, cb12[0].xyzw, r1.xxxx, r3.xyzw
  mad r1.xyzw, cb12[2].xyzw, r1.zzzz, r3.xyzw
  add r1.xyzw, r1.xyzw, cb12[3].xyzw
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r0.xyzw
  emit_stream m0
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r2.xyzw
  emit_stream m0
  mov o0.xyzw, l(1.000000,0,0,1.000000)
  mov o1.xyzw, r1.xyzw
  emit_stream m0
  cut_stream m0
endif
lt r0.x, l(0.500000), cb0[2].x
if_nz r0.x
  lt r0.x, |cb0[3].x|, l(0.010000)
  if_nz r0.x
    add r0.x, l(0.250000), cb10[0].x
    lt r0.y, cb0[28].x, cb0[29].x
    and r0.y, r0.y, cb0[28].x
    ftoi r0.xy, r0.xyxx
    iadd r0.x, r0.y, r0.x
    mul r0.yzw, l(0.000000, 1.000000, -1.000000, 1.000000), cb9[r0.x + 32].zzyw
    mul r0.yzw, r0.yyzw, cb9[r0.x + 32].zzxy
    mul r1.xyz, l(-1.000000, 1.000000, 1.000000, 0.000000), cb9[r0.x + 32].ywzy
    mad r0.yzw, cb9[r0.x + 32].yyzx, r1.xxyz, -r0.yyzw
    mul r1.xyz, l(1.000000, 1.000000, -1.000000, 0.000000), cb9[r0.x + 32].wzyw
    mad r0.yzw, cb9[r0.x + 32].wwww, r1.xxyz, r0.yyzw
    mad r0.yzw, cb9[r0.x + 32].xxxx, cb9[r0.x + 32].xxyz, r0.yyzw
    mul r1.xyz, r0.wyzw, cb12[6].yzxy
    mad r1.xyz, r0.zwyz, cb12[6].zxyz, -r1.xyzx
    dp3 r1.w, r1.xyzx, r1.xyzx
    rsq r1.w, r1.w
    mul r1.xyz, r1.wwww, r1.xyzx
    add r0.yzw, r0.yyzw, cb9[r0.x + 0].xxyz
    mad r2.xyz, -r1.xyzx, l(0.025000, 0.025000, 0.025000, 0.000000), cb9[r0.x + 0].xyzx
    mad r1.xyz, r1.xyzx, l(0.025000, 0.025000, 0.025000, 0.000000), cb9[r0.x + 0].xyzx
    mul r3.xyzw, r0.zzzz, cb12[1].xyzw
    mad r3.xyzw, cb12[0].xyzw, r0.yyyy, r3.xyzw
    mad r0.xyzw, cb12[2].xyzw, r0.wwww, r3.xyzw
    add r0.xyzw, r0.xyzw, cb12[3].xyzw
    mul r3.xyzw, r2.yyyy, cb12[1].xyzw
    mad r3.xyzw, cb12[0].xyzw, r2.xxxx, r3.xyzw
    mad r2.xyzw, cb12[2].xyzw, r2.zzzz, r3.xyzw
    add r2.xyzw, r2.xyzw, cb12[3].xyzw
    mul r3.xyzw, r1.yyyy, cb12[1].xyzw
    mad r3.xyzw, cb12[0].xyzw, r1.xxxx, r3.xyzw
    mad r1.xyzw, cb12[2].xyzw, r1.zzzz, r3.xyzw
    add r1.xyzw, r1.xyzw, cb12[3].xyzw
    mov o0.xyzw, l(1.000000,1.000000,0,1.000000)
    mov o1.xyzw, r0.xyzw
    emit_stream m0
    mov o0.xyzw, l(1.000000,1.000000,0,1.000000)
    mov o1.xyzw, r2.xyzw
    emit_stream m0
    mov o0.xyzw, l(1.000000,1.000000,0,1.000000)
    mov o1.xyzw, r1.xyzw
    emit_stream m0
    cut_stream m0
  endif
endif
ret
// Approximately 0 instruction slots used
