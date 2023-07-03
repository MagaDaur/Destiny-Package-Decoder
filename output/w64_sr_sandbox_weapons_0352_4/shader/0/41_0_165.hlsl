// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:46 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[97];
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
  float2 v9 : TEXCOORD9,
  float4 v10 : SV_POSITION0,
  uint v11 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v10.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.y = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.zw = v0.xy * v5.xy + v5.zw;
  r0.z = t0.Sample(s2_s, r0.zw).x;
  r0.w = saturate(r0.z * v9.x + v8.w);
  r0.w = saturate(v0.z * r0.w);
  r0.y = r0.w * r0.y;
  r0.x = r0.y * r0.x;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.w = r0.z * -0.150000006 + v0.w;
  r0.z = r0.z * -0.099999994 + 0.25;
  r0.w = 0.150000006 + r0.w;
  r0.y = r0.y + -r0.w;
  r0.y = saturate(r0.y / r0.z);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r1.x = 1;
  r1.yz = cb13[1].ww;
  r0.yzw = v9.yyy * r1.xyz;
  r0.yzw = cb13[1].wxx * r0.yzw;
  r1.x = cb13[1].x;
  r1.yz = float2(0,0);
  r0.yzw = r1.xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  r0.y = saturate(cb0[96].x);
  o0.w = r0.x * r0.y;
  return;
}