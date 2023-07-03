// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[104];
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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.xy = t0.Sample(s1_s, r0.xy).xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = r0.xy * cb0[99].xx + v0.xy;
  r0.xy = r0.xy * cb0[8].xy + cb0[8].zw;
  r0.xyz = t1.Sample(s1_s, r0.xy).xyz;
  r0.xyz = saturate(r0.xyz * v3.xxx + v3.yyy);
  r0.w = -0.977999985 + v0.x;
  r0.w = abs(r0.w) * -0.800000012 + 0.75;
  r0.w = max(0, r0.w);
  r1.xyz = cb0[12].xyz * r0.www;
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v2.xyz * r0.www;
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = r0.w * r0.w;
  r0.w = saturate(r0.w * -5.31914997 + 1.70212805);
  r1.xyz = cb0[11].xyz * r0.www;
  r0.xyz = r0.xyz * cb0[103].xyz + -r1.xyz;
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = w1.xww * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = saturate(v3.w);
  r0.w = saturate(v0.z * r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}