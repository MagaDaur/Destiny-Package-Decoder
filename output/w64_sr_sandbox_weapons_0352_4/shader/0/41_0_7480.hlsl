// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
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
  float4 cb0[121];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float3 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[120].x * v5.x;
  r0.x = floor(r0.x);
  r0.xy = cb0[117].xy * r0.xx;
  r0.zw = round(v4.yx);
  r1.xyz = t0.Sample(s1_s, v0.xy).xyz;
  r2.xy = r1.xy * v4.zz + v0.xy;
  r1.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = v3.xyz * r1.xyz;
  r1.xyz = v5.zzz * r1.xyz;
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r2.xy = v4.zz * float2(-0.5,-0.5) + r2.xy;
  r2.zw = r2.xy * float2(-2,-2) + float2(1,1);
  r0.zw = r0.zw * r2.zw + r2.xy;
  r0.xy = r0.zw * cb0[116].xy + r0.xy;
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = saturate(v5.y + r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = -cb0[111].x + r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  r0.x = cmp(r0.y < 0);
  if (r0.x != 0) discard;
  o0.w = 0;
  return;
}