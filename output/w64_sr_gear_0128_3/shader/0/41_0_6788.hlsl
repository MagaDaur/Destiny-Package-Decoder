// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[97];
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

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r1.x = frac(r0.z);
  r0.z = dot(abs(r0.xy), abs(r0.xy));
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * 20 + -1);
  r0.x = r0.x * r0.x;
  r0.x = 0.200000003 * r0.x;
  r0.y = log2(r0.z);
  r0.y = cb0[96].x * r0.y;
  r1.y = exp2(r0.y);
  r0.yz = r1.xy * cb0[8].xy + cb0[8].zw;
  r0.yz = t0.Sample(s1_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.xy = r0.yz * r0.xx + v0.xy;
  r0.xy = r0.xy * float2(1.20000005,1.20000005) + float2(-0.100000001,-0.100000001);
  r0.x = t1.Sample(s2_s, r0.xy).x;
  r0.x = saturate(r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v3.xy;
  r0.y = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s3_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = saturate(-v0.w + r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r1.x = cb13[1].x;
  r1.y = 1;
  r0.yz = cb13[1].ww * r1.xy;
  r0.yw = cb8[7].xy * r0.yy;
  r0.z = cb13[1].x * r0.z;
  r1.z = cb8[7].z * r0.z;
  r1.xy = float2(0.421990991,0.881132007) * r0.yw;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}