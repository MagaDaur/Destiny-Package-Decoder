// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:29 2023
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
  float4 cb0[101];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = min(1, abs(r0.x));
  r0.x = 1 + -r0.x;
  r0.x = -r0.x * r0.x + 1;
  r0.x = saturate(r0.x * -7.38279915 + 6.63713598);
  r0.xyzw = cb0[100].xyzw + -r0.xxxx;
  r1.xy = v0.xy * cb0[9].xy + cb0[9].zw;
  r1.xy = t3.Sample(s2_s, r1.xy).xy;
  r1.xy = r1.xy * float2(0.100000001,0.100000001) + v0.xy;
  r1.xy = float2(-0.0500000007,-0.0500000007) + r1.xy;
  r1.xy = r1.xy * cb0[8].xy + cb0[8].zw;
  r1.z = t0.Sample(s2_s, r1.xy).x;
  r2.zw = float2(0,0);
  r3.xy = cb12[12].zw * v3.xy;
  r4.xy = cb12[12].xy * r3.xy;
  r2.xy = (int2)r4.xy;
  r1.w = t10.Load(r2.xyz).x;
  r1.w = r1.w * cb2[0].y + cb2[0].x;
  r1.w = 1 / r1.w;
  r2.x = t2.Sample(s2_s, v0.xy).x;
  r2.y = r2.x * 0.0223999992 + v0.w;
  r1.w = -r2.y + r1.w;
  r2.y = 0.117600001 * r2.x;
  r2.x = saturate(w1.x * r2.x);
  r4.w = saturate(v0.z * r2.x);
  r1.w = saturate(r1.w / r2.y);
  r1.xy = float2(1,1.55900002) + -r1.ww;
  r1.yzw = t1.Sample(s3_s, r1.zy).xyz;
  r1.x = 1 + -r1.x;
  r1.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.yzw;
  r1.yzw = float3(1.00000024,1.00000024,1.00000024) * r1.yzw;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r1.yzw = log2(r1.yzw);
  r1.yzw = float3(2.22222233,2.22222233,2.22222233) * r1.yzw;
  r1.yzw = exp2(r1.yzw);
  r4.xyz = float3(28.0666809,21.054781,180) * r1.yzw;
  r0.xyzw = r4.xyzw * r0.xyzw;
  r1.y = dot(-v2.xyz, -v2.xyz);
  r1.y = sqrt(r1.y);
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r3.xy, 0).w;
  r1.z = -1 + r1.z;
  r1.y = r1.y * r1.z + 1;
  r0.w = r1.y * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = r0.w * r1.x;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}