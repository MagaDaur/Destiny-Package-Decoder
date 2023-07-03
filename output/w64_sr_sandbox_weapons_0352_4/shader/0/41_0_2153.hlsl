// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

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
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD6,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r0.w);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * 0.363635987 + -0.0909089968);
  r1.xyz = v2.xyz * r1.xxx;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = 5.31914806 * r0.x;
  r0.x = min(1, r0.x);
  r0.x = r0.w * r0.x;
  r0.yz = v0.xy + v0.xy;
  r0.y = t0.Sample(s1_s, r0.yz).x;
  r0.z = t1.Sample(s1_s, v0.xy).x;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * r0.x;
  r0.x = saturate(v5.w * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.yz = cb12[12].zw * v6.xy;
  r0.yz = cb12[12].xy * r0.yz;
  r1.xy = (int2)r0.yz;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(r0.y / v5.z);
  r1.y = 1 + -r0.y;
  r0.y = 1 + -r1.y;
  r0.x = r0.x * r0.y;
  r0.yz = t2.Sample(s1_s, v0.xy).xy;
  r0.yz = r0.yz * v5.xx + v0.xy;
  r0.yz = v5.xx * float2(-0.5,-0.5) + r0.yz;
  r0.yz = r0.yz * v3.xy + v3.zw;
  r1.x = t2.Sample(s1_s, r0.yz).x;
  r0.yzw = t3.Sample(s2_s, r1.xy).xyz;
  r1.x = max(0.00100000005, v5.y);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.yzw = -r1.xxx + r0.yzw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.yzw = r0.yzw / r1.xxx;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r1.x = w1.x;
  r1.z = 1;
  r0.yzw = r1.xxz * r0.yzw;
  r1.x = cb13[1].w;
  r1.z = w1.x;
  r0.yzw = r1.xxz * r0.yzw;
  r0.yzw = cb13[1].xxw * r0.yzw;
  r0.yz = cb8[7].xy * r0.yz;
  r0.w = cb13[1].x * r0.w;
  r1.z = cb8[7].z * r0.w;
  r1.xy = float2(0.116196997,0.533203006) * r0.yz;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}