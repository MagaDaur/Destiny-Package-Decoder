// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:35 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

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
  float4 cb0[108];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD5,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * float2(1,0.5) + float2(0,0.5);
  r0.x = t0.Sample(s1_s, r0.xy).x;
  r0.y = 1 + -r0.x;
  r0.xzw = cb0[99].xyz * r0.xxx;
  r0.xyz = r0.yyy * cb0[98].xyz + r0.xzw;
  r1.xy = v0.xy * v3.xy + v3.zw;
  r0.w = t1.Sample(s2_s, r1.xy).x;
  r0.w = 3 * r0.w;
  r0.xyz = r0.xyz * r0.www;
  r0.xyz = cb0[102].xyz * r0.xyz;
  r0.xyz = max(cb0[103].xxx, r0.xyz);
  r0.xyz = min(cb0[104].xxx, r0.xyz);
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = float3(20,20,20) * r0.xyz;
  r1.xy = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.w = t2.Sample(s2_s, r1.xy).x;
  r1.xy = v0.yx * cb0[8].yx + cb0[8].wz;
  r1.x = t2.Sample(s2_s, r1.xy).x;
  r0.w = -r1.x + r0.w;
  r0.w = log2(abs(r0.w));
  r0.w = cb0[107].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = 4 * r0.w;
  r0.w = min(1, r0.w);
  r0.w = saturate(w1.x * r0.w);
  r0.w = saturate(v0.z * r0.w);
  r1.x = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = r1.x * r0.w;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v5.xy;
  r1.z = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s3_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  r0.x = saturate(cb0[96].x);
  o0.w = r0.w * r0.x;
  return;
}