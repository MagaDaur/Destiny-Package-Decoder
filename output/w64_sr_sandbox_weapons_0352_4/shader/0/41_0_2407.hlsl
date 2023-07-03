// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
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




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD8,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
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
  r0.xy = cb12[12].zw * v8.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.yz = t3.Sample(s2_s, v0.xy).xy;
  r2.xyzw = r0.yzyz * v6.zzww + v0.xyxy;
  r2.xyzw = v6.zzww * float4(-0.5,-0.5,-0.5,-0.5) + r2.xyzw;
  r0.y = t2.Sample(s2_s, r2.zw).x;
  r0.zw = r2.xy * v3.xy + v3.zw;
  r0.z = t0.Sample(s2_s, r0.zw).x;
  r0.z = log2(r0.z);
  r0.z = 2.20000005 * r0.z;
  r2.x = exp2(r0.z);
  r0.y = saturate(r0.y * v7.w + v7.z);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.z = 0.5 * v7.y;
  r0.y = saturate(r0.y / r0.z);
  r0.y = 1 + -r0.y;
  r0.z = 1 + -r0.y;
  r2.y = v7.x + r0.y;
  r1.xyz = t1.Sample(s3_s, r2.xy).xyz;
  r1.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = v4.xyz * r1.xyz;
  r1.xyz = w1.xww * r1.xyz;
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r0.x = r0.x * r0.z;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}