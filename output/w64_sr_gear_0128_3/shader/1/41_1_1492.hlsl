// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
Buffer<float4> t0 : register(t0);

cbuffer cb1 : register(b1)
{
  float4 cb1[24];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[16];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : POSITION0,
  float3 v1 : NORMAL0,
  float4 v2 : TANGENT0,
  float2 v3 : TEXCOORD0,
  float4 v4 : BLENDWEIGHT0,
  uint4 v5 : BLENDINDICES0,
  uint v6 : SV_VERTEXID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD8,
  out float4 o6 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = (int4)v5.xyzw * int4(3,3,3,3);
  r1.xyz = cb1[r0.y+8].xyz * v4.yyy;
  r1.xyz = v4.xxx * cb1[r0.x+8].xyz + r1.xyz;
  r1.xyz = v4.zzz * cb1[r0.z+8].xyz + r1.xyz;
  r1.xyz = v4.www * cb1[r0.w+8].xyz + r1.xyz;
  r2.x = dot(r1.xyz, v1.xyz);
  r3.xyzw = mad(int4(3,3,3,3), (int4)v5.xxyy, int4(1,2,1,2));
  r4.xyz = cb1[r3.z+8].xyz * v4.yyy;
  r4.xyz = v4.xxx * cb1[r3.x+8].xyz + r4.xyz;
  r5.xyzw = mad(int4(3,3,3,3), (int4)v5.zzww, int4(1,2,1,2));
  r4.xyz = v4.zzz * cb1[r5.x+8].xyz + r4.xyz;
  r4.xyz = v4.www * cb1[r5.z+8].xyz + r4.xyz;
  r2.y = dot(r4.xyz, v1.xyz);
  r6.xyz = cb1[r3.w+8].xyz * v4.yyy;
  r6.xyz = v4.xxx * cb1[r3.y+8].xyz + r6.xyz;
  r6.xyz = v4.zzz * cb1[r5.y+8].xyz + r6.xyz;
  r6.xyz = v4.www * cb1[r5.w+8].xyz + r6.xyz;
  r2.z = dot(r6.xyz, v1.xyz);
  o0.xyz = r2.xyz;
  r2.w = saturate(cb1[7].z * r2.z);
  o0.w = saturate(cb1[7].w + r2.w);
  r7.x = dot(r1.xyz, v2.xyz);
  r7.y = dot(r4.xyz, v2.xyz);
  r7.z = dot(r6.xyz, v2.xyz);
  o1.xyz = r7.xyz;
  r8.xyz = v0.xyz * cb1[4].xyz + cb1[5].xyz;
  o1.w = r8.z;
  r9.xyz = r7.yzx * r2.zxy;
  o2.xyz = r2.yzx * r7.zxy + -r9.xyz;
  o3.xyzw = v3.xyxy * cb1[6].xyxy + cb1[6].zwzw;
  r2.x = cb1[r0.x+8].w * v4.x;
  r2.y = cb1[r3.x+8].w * v4.x;
  r2.z = cb1[r3.y+8].w * v4.x;
  r7.x = cb1[r0.y+8].w * v4.y;
  r7.y = cb1[r3.z+8].w * v4.y;
  r7.z = cb1[r3.w+8].w * v4.y;
  r2.xyz = r7.xyz + r2.xyz;
  r0.x = cb1[r0.z+8].w * v4.z;
  r3.x = cb1[r0.w+8].w * v4.w;
  r0.y = cb1[r5.x+8].w * v4.z;
  r0.z = cb1[r5.y+8].w * v4.z;
  r0.xyz = r2.xyz + r0.xyz;
  r3.y = cb1[r5.z+8].w * v4.w;
  r3.z = cb1[r5.w+8].w * v4.w;
  r0.xyz = r3.xyz + r0.xyz;
  r0.xyz = cb12[15].xyz + r0.xyz;
  r1.w = r0.x;
  r8.w = 1;
  r1.x = dot(r1.xyzw, r8.xyzw);
  r4.w = r0.y;
  r6.w = r0.z;
  r1.z = dot(r6.xyzw, r8.xyzw);
  r1.y = dot(r4.xyzw, r8.xyzw);
  o4.xyz = cb12[7].xyz + r1.xyz;
  r0.xyzw = cb12[1].xyzw * r1.yyyy;
  r0.xyzw = cb12[0].xyzw * r1.xxxx + r0.xyzw;
  r0.xyzw = cb12[2].xyzw * r1.zzzz + r0.xyzw;
  o6.xyzw = cb12[14].xyzw + r0.xyzw;
  r0.x = min(asuint(cb1[4].w), (uint)v6.x);
  o5.xyzw = t0.Load(r0.x).xyzw;
  return;
}