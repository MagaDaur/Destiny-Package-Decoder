// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[98];
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
  float3 v6 : TEXCOORD6,
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[8].xy + cb0[8].zw;
  r0.x = t2.Sample(s3_s, r0.xy).x;
  r0.x = r0.x * v6.y + v6.x;
  r0.y = -0.5 + v4.w;
  r0.y = saturate(0.5 * r0.y);
  r0.x = saturate(r0.x * r0.y);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v7.xy;
  r0.y = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(6.66666651 * r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.yz = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.y = t0.Sample(s1_s, r0.yz).x;
  r0.y = saturate(r0.y);
  r0.yzw = r0.yyy * float3(1.42358398,1.42358398,1.42358398) + cb0[97].xyz;
  r1.x = t1.Sample(s1_s, v0.xy).x;
  r1.x = saturate(r1.x);
  r1.xyz = cb0[13].xyz * r1.xxx + float3(0.333000004,0.333000004,0.333000004);
  r0.yzw = r1.xyz * r0.yzw;
  r0.yzw = saturate(r0.yzw * float3(3,3,3) + float3(-0.800000012,-0.800000012,-0.800000012));
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v4.xyz * r0.yzw;
  r0.yzw = v6.zzz * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}