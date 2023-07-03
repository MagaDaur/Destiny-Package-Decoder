// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
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
  float4 cb0[143];
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
  out float3 o10 : TEXCOORD10,
  out float4 o11 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
  float4 r0,r1,r2,r3;
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
  r0.xy = v5.yx * r0.yx;
  r0.z = v9.y * 6.28200006 + v5.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb12[4].xyz * v8.zzz;
  r2.xyz = cb1[1].xyz * v4.yyy;
  r2.xyz = cb1[0].xyz * v4.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v4.zzz + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r0.yzw = r1.xyz * r0.yyy + r2.xyz;
  r1.xyz = cb12[5].xyz * v8.zzz;
  r0.xyz = r1.xyz * r0.xxx + r0.yzw;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  r3.xyz = cb12[7].xyz + -r2.xyz;
  r2.xyz = r0.xyz + -r2.xyz;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = sqrt(r0.x);
  r0.xy = r0.xx * float2(0.166666999,-0.0199999996) + float2(-1.33333302,2);
  r0.x = saturate(min(r0.x, r0.y));
  r0.x = cb0[8].y * r0.x;
  r0.x = cb0[142].x * r0.x;
  r0.y = cmp(0.999000013 < v4.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = r2.xyz * r0.yyy + -cb12[6].xyz;
  o1.xyz = r0.yzw * float3(0.850000024,0.850000024,0.850000024) + cb12[6].xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyzw = v6.xyzw;
  o7.x = v3.w;
  o7.yzw = v7.yzw;
  o8.xzw = float3(0,0,0);
  o8.y = v8.x;
  o9.x = v8.y;
  o9.yzw = float3(0,0,0);
  o10.xy = v8.zw;
  o10.z = v9.x;
  r0.y = v9.x + v8.w;
  r0.xy = cmp(r0.xy < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.y | (int)r0.x;
  o11.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}