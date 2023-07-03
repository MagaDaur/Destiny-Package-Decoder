// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:37 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

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

cbuffer cb0 : register(b0)
{
  float4 cb0[129];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD11,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  float4 v11 : SV_POSITION0,
  uint v12 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(0.200000003,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r0.y = dot(abs(r0.xy), abs(r0.xy));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r0.x = frac(r0.z);
  r0.xy = r0.xy * v4.xy + v4.zw;
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.x = t3.Sample(s1_s, r0.xy).x;
  r0.x = saturate(r0.x);
  r0.y = t2.Sample(s1_s, v0.xy).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.x = r0.y * r0.x;
  r0.x = 4.59479332 * r0.x;
  r0.x = min(1, r0.x);
  r0.x = cmp(v9.w >= r0.x);
  r0.x = r0.x ? 0 : 1;
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v11.xy;
  r0.yz = cb12[12].xy * r2.xy;
  r1.xy = (int2)r0.yz;
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(4 * r0.y);
  r0.y = log2(r0.y);
  r0.y = cb0[105].x * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r0.x * r0.y;
  r0.x = saturate(cb0[128].x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.x = r0.x * r0.y;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r2.z = sqrt(r0.y);
  r0.y = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r0.z = t20.SampleLevel(s2_s, r2.xy, 0).w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r0.yz = v0.xy * v5.xy + v5.zw;
  r0.yz = t1.Sample(s1_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r1.xy = v0.xy * v6.xy + v6.zw;
  r0.yz = r0.yz * v9.xx + r1.xy;
  r0.y = t1.Sample(s1_s, r0.yz).x;
  r0.z = v10.y;
  r0.yzw = t0.Sample(s1_s, r0.yz).xyz;
  r0.yzw = v7.xyz * r0.yzw;
  r0.yzw = r0.yzw * v10.xxx + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = w1.xww * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = float3(0.200000003,0.579999983,0.540000021) * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  r0.y = saturate(v10.z);
  o0.w = r0.x * r0.y;
  return;
}