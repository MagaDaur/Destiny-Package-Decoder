// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

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
  float2 v8 : TEXCOORD8,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v9.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.y = 1 / v6.w;
  r0.zw = t2.Sample(s2_s, v0.xy).xy;
  r2.xy = r0.zw * v7.xx + v0.xy;
  r0.zw = r0.zw * v6.zz + v0.xy;
  r0.zw = v6.zz * float2(-0.5,-0.5) + r0.zw;
  r0.zw = r0.zw * v3.xy + v3.zw;
  r0.z = t0.Sample(s2_s, r0.zw).x;
  r2.xy = v7.xx * float2(-0.5,-0.5) + r2.xy;
  r0.w = t1.Sample(s2_s, r2.xy).x;
  r2.x = log2(r0.w);
  r2.yz = r0.ww * float2(-0.0249999985,0.075000003) + float2(0.125,0.0500000007);
  r0.y = r2.x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = saturate(r0.y * v8.x + v7.w);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.w = r2.z * v7.z + v0.w;
  r1.x = v7.z * r2.y;
  r0.y = r0.y + -r0.w;
  r0.y = saturate(r0.y / r1.x);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.y = max(0.00100000005, v7.y);
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.z = r0.z + -r0.y;
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-006, r0.y);
  r0.y = r0.z / r0.y;
  r0.y = max(0, r0.y);
  r0.yzw = v4.xyz * r0.yyy;
  r0.yzw = v8.yyy * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}