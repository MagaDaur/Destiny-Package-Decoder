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
// TEXCOORD                 0   xyzw        0     NONE   float   xyzw
// TEXCOORD                 1   xyz         1     NONE   float   xyz
// TEXCOORD                 8      w        1     NONE   float      w
// TEXCOORD                 2   xyz         2     NONE   float   xyz
// TEXCOORD                 3   xyzw        3     NONE   float
// TEXCOORD                 4   xyzw        4     NONE   float   xyzw
// TEXCOORD                 5   xyzw        5     NONE   float   xyzw
// TEXCOORD                 6   xyzw        6     NONE   float     z
// TEXCOORD                 7   xyzw        7     NONE   float
// TEXCOORD                30   xyz         8     NONE   float   xyz
// SV_POSITION              0   xyzw        9      POS   float   xy
// SV_isFrontFace           0   x          10    FFACE    uint
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
dcl_constantbuffer cb0[135], immediateIndexed
dcl_constantbuffer cb13[2], immediateIndexed
dcl_constantbuffer cb12[13], immediateIndexed
dcl_constantbuffer cb2[1], immediateIndexed
dcl_constantbuffer cb8[8], immediateIndexed
dcl_sampler s1, mode_default
dcl_sampler s2, mode_default
dcl_sampler s3, mode_default
dcl_sampler s4, mode_default
dcl_resource_texturecube (float,float,float,float) t0
dcl_resource_texture2d (float,float,float,float) t1
dcl_resource_texture2d (float,float,float,float) t2
dcl_resource_texture2d (float,float,float,float) t10
dcl_resource_texture2d (float,float,float,float) t11
dcl_resource_texture2d (float,float,float,float) t13
dcl_resource_texture2d (float,float,float,float) t20
dcl_resource_texture3d (float,float,float,float) t21
dcl_input_ps linear v0.xyzw
dcl_input_ps linear v1.xyz
dcl_input_ps linear v1.w
dcl_input_ps linear v2.xyz
dcl_input_ps linear v4.xyzw
dcl_input_ps linear v5.xyzw
dcl_input_ps linear v6.z
dcl_input_ps linear v8.xyz
dcl_input_ps_siv linear noperspective v9.xy, position
dcl_output o0.xyzw
dcl_temps 5
dp3 r0.x, v8.xyzx, v8.xyzx
rsq r0.x, r0.x
mul r0.xyz, r0.xxxx, v8.xyzx
dp3 r0.w, v1.xyzx, v1.xyzx
rsq r0.w, r0.w
mul r1.xyz, r0.wwww, v1.xyzx
mul r2.xyz, r0.yzxy, r1.zxyz
mad r2.xyz, r1.yzxy, r0.zxyz, -r2.xyzx
mad r3.xy, v0.xyxx, v5.xyxx, v5.zwzz
sample_indexable(texture2d)(float,float,float,float) r3.xy, r3.xyxx, t1.xyzw, s2
mad r3.zw, r3.xxxy, l(0.000000, 0.000000, 1.494141, 1.494141), l(0.000000, 0.000000, -0.750000, -0.750000)
add r3.xy, r3.xyxx, l(-0.500000, -0.500000, 0.000000, 0.000000)
mad r3.xy, r3.xyxx, cb0[106].xxxx, v0.xyxx
mad r3.xy, r3.xyxx, v4.xyxx, v4.zwzz
sample_indexable(texture2d)(float,float,float,float) r0.w, r3.xyxx, t2.yzwx, s2
add r0.w, -r0.w, l(1.000000)
mul r2.xyz, -r2.xyzx, r3.wwww
mad r0.xyz, r0.xyzx, r3.zzzz, r2.xyzx
dp2 r1.w, r3.zwzz, r3.zwzz
add r1.w, -r1.w, l(1.000000)
max r1.w, r1.w, l(0.000000)
sqrt r1.w, r1.w
mad r0.xyz, r1.xyzx, r1.wwww, r0.xyzx
dp3 r1.w, r0.xyzx, r0.xyzx
rsq r1.w, r1.w
mul r0.xyz, r0.xyzx, r1.wwww
dp3 r1.w, v2.xyzx, v2.xyzx
rsq r1.w, r1.w
mul r2.xyz, r1.wwww, v2.xyzx
dp3 r0.x, r2.xyzx, r0.xyzx
mul r0.x, r0.x, r0.x
min r0.x, r0.x, l(1.000000)
add r0.y, v0.y, l(-0.750000)
add r0.y, -|r0.y|, l(0.750000)
max r0.y, r0.y, l(0.000000)
mul r0.x, r0.x, r0.y
mul r0.x, r0.x, r0.x
mul r0.x, r0.x, cb0[111].x
mul_sat r0.x, r0.x, r0.w
mad r0.xyz, r0.xxxx, l(0.116221, 0.214713, 0.880462, 0.000000), cb0[112].xyzx
dp3 r0.w, r2.xyzx, r1.xyzx
mul r1.w, r0.w, r0.w
add r0.w, r0.w, r0.w
mad r1.xyz, r1.xyzx, r0.wwww, -r2.xyzx
mad_sat r2.xy, r1.wwww, l(0.666667, -2.000000, 0.000000, 0.000000), l(-0.166667, 1.600000, 0.000000, 0.000000)
mul r0.w, r2.y, r2.y
add_sat r1.w, r2.x, v6.z
mad_sat r1.w, r1.w, l(10.000000), l(-8.100000)
mad r0.w, r0.w, l(0.400000), l(0.100000)
mad r0.xyz, r0.wwww, -r0.xyzx, r0.xyzx
lod r0.w, r1.xyzx, t0.x, s1
max r0.w, r0.w, l(0.000000)
sample_l_indexable(texturecube)(float,float,float,float) r0.w, r1.xyzx, t0.xywz, s1, r0.w
mad_sat r0.w, r0.w, l(1.100000), l(-0.020000)
add r0.w, r0.w, r0.w
mad r0.xyz, r0.wwww, cb0[104].xyzx, r0.xyzx
mad r0.xyz, r0.xyzx, cb0[116].xyzx, l(-2.511886521E-007, -2.511886521E-007, -2.511886521E-007, 0.000000)
mul r0.xyz, r0.xyzx, l(1.00000024, 1.00000024, 1.00000024, 0.000000)
max r0.xyz, r0.xyzx, l(0.000000, 0.000000, 0.000000, 0.000000)
mul r0.xyz, r0.xyzx, cb13[1].wwww
mul r0.xyz, r0.xyzx, cb13[1].xxxx
mul r0.xyz, r0.xyzx, cb8[7].xyzx
dp3 r0.w, -v2.xyzx, -v2.xyzx
sqrt r0.w, r0.w
mul r1.x, r0.w, l(0.015625)
mad_sat r0.w, r0.w, cb0[134].x, cb0[134].y
min r1.x, r1.x, l(1.000000)
sqrt r1.z, r1.x
mul r1.xy, v9.xyxx, cb12[12].zwzz
sample_l_indexable(texture3d)(float,float,float,float) r1.z, r1.xyzx, t21.yzxw, s4, l(0.000000)
sample_l_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t20.xyzw, s4, l(0.000000)
add r2.xyzw, r2.xyzw, l(-0.000000, -0.000000, -0.000000, -1.000000)
mad r2.xyzw, r1.zzzz, r2.xyzw, l(0.000000, 0.000000, 0.000000, 1.000000)
mad r0.xyz, r0.xyzx, r2.wwww, r2.xyzx
sample_indexable(texture2d)(float,float,float,float) r2.xyzw, r1.xyxx, t11.xyzw, s3
sample_indexable(texture2d)(float,float,float,float) r3.xyzw, r1.xyxx, t13.xyzw, s3
mul r1.xy, r1.xyxx, cb12[12].xyxx
ftoi r4.xy, r1.xyxx
add r2.xyzw, r2.xyzw, -r3.xyzw
mad r2.xyzw, r0.wwww, r2.xyzw, r3.xyzw
mul r1.xyz, r2.xyzx, cb8[5].xyzx
mad r1.xyz, r2.wwww, cb8[6].xyzx, r1.xyzx
mad r0.xyz, r1.xyzx, cb13[1].xxxx, r0.xyzx
mov r4.zw, l(0,0,0,0)
ld_indexable(texture2d)(float,float,float,float) r0.w, r4.xyzw, t10.yzwx
mad r0.w, r0.w, cb2[0].y, cb2[0].x
div r0.w, l(1.000000, 1.000000, 1.000000, 1.000000), r0.w
add r0.w, r0.w, -v0.w
mul_sat r0.w, r0.w, l(3.333333)
mul r0.w, r0.w, r1.w
mul_sat r0.w, r0.w, v1.w
mul_sat r0.w, r0.w, v0.z
mul o0.xyz, r0.wwww, r0.xyzx
mov o0.w, r0.w
ret
// Approximately 0 instruction slots used
