// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[113];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  uint v11 : SV_VERTEXID0,
  uint v12 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float2 o10 : TEXCOORD10,
  out float4 o11 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  x0[0].xy = float2(-1,1);
  x0[1].xy = float2(-1,-1);
  x0[2].xy = float2(1,1);
  x0[3].xy = float2(1,-1);
  x1[0].xy = float2(0,0);
  x1[1].xy = float2(0,1);
  x1[2].xy = float2(1,0);
  x1[3].xy = float2(1,1);
  r0.x = (int)v11.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v11.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.z = v8.y * 6.28200006 + v4.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.yx;
  r0.y = r0.y * r2.x + r0.w;
  r0.x = r0.x * r2.x + -r0.z;
  r1.xyz = cb1[1].xyz * v4.yyy;
  r1.xyz = cb1[0].xyz * v4.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v4.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[4].xyz * v7.yyy;
  r0.xzw = r2.xyz * r0.xxx + r1.xyz;
  r1.xyz = cb12[7].xyz + -r1.xyz;
  r2.xyz = cb12[5].xyz * v7.yyy;
  r0.xyz = r2.xyz * r0.yyy + r0.xzw;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz * r1.www;
  r0.xyz = r1.xyz * float3(0.200000003,0.200000003,0.200000003) + r0.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  r0.x = r0.w * 0.333332986 + -1;
  r0.y = 10000 + -r0.w;
  r0.x = saturate(min(r0.x, r0.y));
  r0.x = cb0[9].y * r0.x;
  r0.x = cb0[112].x * r0.x;
  r0.y = cmp(0.999000013 < v3.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  o1.xyz = cb12[6].xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyz = v5.xyz;
  o6.w = v6.z;
  o7.xy = v6.xy;
  o7.zw = float2(0,0);
  o8.x = v6.w;
  o8.y = v7.x;
  o8.zw = float2(0,0);
  o9.xy = float2(0,0);
  o9.zw = v7.yz;
  o10.x = v7.w;
  o10.y = v8.x;
  r0.y = v7.w + v7.z;
  r0.xy = cmp(r0.xy < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.y | (int)r0.x;
  o11.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}