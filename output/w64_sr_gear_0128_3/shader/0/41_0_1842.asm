//
// Generated by Microsoft (R) D3D Shader Disassembler
//
//   using 3Dmigoto v1.3.16 on Thu Jun 29 22:54:10 2023
//
//
// Input signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// TEXCOORD                 0   xyzw        0     NONE   float
// TEXCOORD                 1   xyzw        1     NONE   float
// TEXCOORD                 2   xyz         2     NONE   float
// TEXCOORD                 3   xyzw        3     NONE   float
// TEXCOORD                 4   xyz         4     NONE   float
// SV_POSITION              0   xyzw        5      POS   float
// SV_isFrontFace           0   x           6    FFACE    uint
//
//
// Output signature:
//
// Name                 Index   Mask Register SysValue  Format   Used
// -------------------- ----- ------ -------- -------- ------- ------
// SV_TARGET                0   xyzw        0   TARGET   float   xyzw
//
ps_5_0
dcl_globalFlags refactoringAllowed
dcl_constantbuffer cb0[8], immediateIndexed
dcl_output o0.xyzw
dcl_temps 1
mov_sat r0.x, cb0[7].x
mul r0.x, r0.x, cb0[6].x
mul o0.w, r0.x, l(0.010000)
mov o0.xyz, cb0[5].xyzx
ret
// Approximately 0 instruction slots used
