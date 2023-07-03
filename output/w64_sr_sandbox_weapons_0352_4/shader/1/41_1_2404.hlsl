// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
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
  float4 cb0[114];
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
  uint v10 : SV_VERTEXID0,
  uint v11 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD8,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v10.x, vertex_id
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
  r0.x = (int)v10.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v10.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = v3.yx * r0.yx;
  r0.z = v8.y * 6.28200006 + v2.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb1[1].xyz * v2.yyy;
  r1.xyz = cb1[0].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v2.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[4].xyz * v7.yyy;
  r0.yzw = r2.xyz * r0.yyy + r1.xyz;
  r1.xyz = cb12[7].xyz + -r1.xyz;
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.yzw = cb12[5].xyz * v7.yyy;
  r0.xyz = r1.yzw * r0.xxx + r0.yzw;
  r2.xyzw = cb12[1].xyzw * r0.yyyy;
  r2.xyzw = cb12[0].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r0.zzzz + r2.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r0.w;
  r1.y = r1.x * 4 + -2;
  r1.x = 10000 + -r1.x;
  r1.x = saturate(min(r1.y, r1.x));
  r1.x = cb0[12].y * r1.x;
  r1.x = cb0[113].x * r1.x;
  r1.y = cmp(0.999000013 < v1.w);
  r1.x = r1.y ? 0 : r1.x;
  o0.z = r1.x;
  o1.xyz = cb12[6].xyz;
  p1.x = v8.x;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v4.xyzw;
  o5.xyzw = v5.xyzw;
  o6.xyzw = v6.xyzw;
  o7.xyzw = v7.xyzw;
  r1.y = v7.w + v7.z;
  r1.xy = cmp(r1.xy < float2(9.99999997e-007,9.99999997e-007));
  r1.x = (int)r1.y | (int)r1.x;
  o8.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}