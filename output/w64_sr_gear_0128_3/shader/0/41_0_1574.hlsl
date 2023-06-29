// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

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
  float4 cb0[105];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float2 v6 : TEXCOORD6,
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.x = t0.Sample(s3_s, r0.xy).x;
  r0.z = t2.Sample(s3_s, v0.xy).x;
  r0.z = log2(r0.z);
  r0.z = 2.20000005 * r0.z;
  r0.z = exp2(r0.z);
  r0.w = r0.z * 0.0667999983 + v0.w;
  r0.w = 0.0229000002 + r0.w;
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v7.xy;
  r3.xy = cb12[12].xy * r2.xy;
  r1.xy = (int2)r3.xy;
  r1.x = t10.Load(r1.xyz).x;
  r1.x = r1.x * cb2[0].y + cb2[0].x;
  r1.x = 1 / r1.x;
  r0.w = r1.x + -r0.w;
  r1.x = r0.z * 0.314999998 + 0.0560999997;
  r0.z = saturate(v6.x * r0.z);
  r0.z = saturate(v0.z * r0.z);
  r0.w = saturate(r0.w / r1.x);
  r0.w = 1 + -r0.w;
  r0.y = v5.z + r0.w;
  r0.w = 1 + -r0.w;
  r0.z = r0.z * r0.w;
  r0.xyw = t1.Sample(s4_s, r0.xy).xyz;
  r0.xyw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyw;
  r0.xyw = float3(1.00000024,1.00000024,1.00000024) * r0.xyw;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.xyw = v4.xyz * r0.xyw;
  r0.xyw = v6.yyy * r0.xyw;
  r0.xyw = cb13[1].www * r0.xyw;
  r0.xyw = cb13[1].xxx * r0.xyw;
  r0.xyw = cb8[7].xyz * r0.xyw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[104].x + cb0[104].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.xyw = r0.xyw * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyw = r1.xyz * cb13[1].xxx + r0.xyw;
  o0.xyz = r0.xyw * r0.zzz;
  o0.w = r0.z;
  return;
}