// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

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
  float4 cb0[12];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v6.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.yz = v0.xy * cb0[8].xy + cb0[8].zw;
  r0.yz = t3.Sample(s2_s, r0.yz).xy;
  r0.yz = r0.yz * float2(0.150000006,0.150000006) + v0.xy;
  r0.yz = float2(-0.075000003,-0.075000003) + r0.yz;
  r0.y = t2.Sample(s2_s, r0.yz).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.z = saturate(r0.y * v5.y + -0.00499999989);
  r0.z = saturate(v0.z * r0.z);
  r0.x = r0.z * r0.x;
  r1.zw = float2(0,0);
  r0.z = t10.Load(r1.xyz).x;
  r0.z = r0.z * cb2[0].y + cb2[0].x;
  r0.z = 1 / r0.z;
  r0.w = r0.y * -0.0447999984 + v0.w;
  r0.y = r0.y * 0.708400011 + 0.167999998;
  r0.w = 0.0447999984 + r0.w;
  r0.z = r0.z + -r0.w;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r0.z = 1 + -r0.y;
  r1.y = cb0[11].x + r0.y;
  r0.x = r0.x * r0.z;
  r0.yz = v0.xy * v3.xy + v3.zw;
  r1.x = t0.Sample(s2_s, r0.yz).x;
  r0.yzw = t1.Sample(s3_s, r1.xy).xyz;
  r1.x = max(0.00100000005, v4.w);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.yzw = -r1.xxx + r0.yzw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.yzw = r0.yzw / r1.xxx;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r1.x = v5.z;
  r1.z = 1;
  r0.yzw = r1.xxz * r0.yzw;
  r1.x = cb13[1].w;
  r1.z = v5.z;
  r0.yzw = r1.xxz * r0.yzw;
  r0.yzw = cb13[1].xxw * r0.yzw;
  r0.yz = cb8[7].xy * r0.yz;
  r0.w = cb13[1].x * r0.w;
  r1.z = cb8[7].z * r0.w;
  r1.xy = float2(0.0387319997,0.837202013) * r0.yz;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}