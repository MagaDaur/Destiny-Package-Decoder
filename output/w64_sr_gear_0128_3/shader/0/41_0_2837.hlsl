// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:49 2023
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

cbuffer cb0 : register(b0)
{
  float4 cb0[14];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = min(1, r0.x);
  r0.yz = float2(-1.20000005,-0.5) + v0.yy;
  r0.yz = abs(r0.zy) * float2(-6.66666698,-0.833333015) + float2(3,0.875);
  r0.z = max(0, r0.z);
  r0.y = saturate(r0.y);
  r0.y = r0.z * r0.y;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r0.x;
  r0.yz = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.y = t0.Sample(s1_s, r0.yz).x;
  r0.zw = v0.xy * cb0[8].xy + cb0[8].zw;
  r0.z = t0.Sample(s1_s, r0.zw).x;
  r0.y = r0.y * r0.z;
  r0.y = saturate(4.59479332 * r0.y);
  r0.x = r0.x * r0.y + -2.51188652e-007;
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  r1.y = 1;
  r1.xw = cb0[13].yy;
  r0.xy = r1.xy * r0.xx;
  r1.z = cb13[1].w;
  r0.xy = r0.xy * r1.zw;
  r0.xy = cb13[1].xw * r0.xy;
  r0.xz = cb8[7].xy * r0.xx;
  r0.y = cb13[1].x * r0.y;
  r1.z = cb8[7].z * r0.y;
  r1.xy = float2(0.0680000037,0.463167995) * r0.xz;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v3.xy;
  r0.z = t21.SampleLevel(s2_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s2_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.y = saturate(cb0[13].x);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}