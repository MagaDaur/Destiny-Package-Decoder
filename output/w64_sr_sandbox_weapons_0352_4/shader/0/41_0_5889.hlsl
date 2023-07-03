// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:26 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD4,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
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
  r0.xy = cb12[12].zw * v4.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.yz = round(v3.yx);
  r1.xy = v0.xy * float2(-2,-2) + float2(1,1);
  r0.yz = r0.yz * r1.xy + v0.xy;
  r0.yz = t0.Sample(s2_s, r0.yz).xw;
  r0.yz = log2(r0.yz);
  r0.yz = float2(2.20000005,2.20000005) * r0.yz;
  r0.yz = exp2(r0.yz);
  r0.z = saturate(r0.z * v3.w + -0.200000003);
  r0.y = -2.51188652e-007 + r0.y;
  r0.y = 1.00000024 * r0.y;
  r0.y = max(0, r0.y);
  r0.y = w1.x * r0.y;
  r0.y = cb13[1].w * r0.y;
  r0.y = cb13[1].x * r0.y;
  r1.xyz = cb8[7].xyz * r0.yyy;
  r1.xyz = float3(0.960416019,0.141414002,0.0371990018) * r1.xyz;
  r0.y = saturate(v0.z * r0.z);
  r0.x = r0.y * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}