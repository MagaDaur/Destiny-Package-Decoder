// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
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
  float4 cb0[128];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
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
  r0.x = log2(r0.x);
  r0.x = cb0[112].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[113].x * r0.y + r0.x;
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * -1.89304304 + 1.08471406);
  r0.x = 1 + -r0.x;
  r0.yz = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.y = t2.Sample(s2_s, r0.yz).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.z = t3.Sample(s2_s, v0.xy).x;
  r0.y = r0.y * r0.z;
  r0.z = log2(r0.y);
  r0.yw = r0.yy * float2(0.415199995,-0.437900007) + float2(0.584800005,0.437900007);
  r1.x = 1 / cb0[127].x;
  r0.z = r1.x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = saturate(r0.z * v4.z + v4.y);
  r1.w = saturate(v0.z * r0.z);
  r0.y = v4.x * r0.y;
  r0.z = r0.w * v4.x + v0.w;
  r2.zw = float2(0,0);
  r3.xy = cb12[12].zw * v5.xy;
  r4.xy = cb12[12].xy * r3.xy;
  r2.xy = (int2)r4.xy;
  r0.w = t10.Load(r2.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.z = r0.w + -r0.z;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r2.y = v3.w + r0.y;
  r0.y = 1 + -r0.y;
  r0.zw = v0.xy * cb0[8].xy + cb0[8].zw;
  r2.x = t0.Sample(s2_s, r0.zw).x;
  r2.xyz = t1.Sample(s3_s, r2.xy).xyz;
  r2.xyz = float3(-0.0707402751,-0.0707402751,-0.0707402751) + r2.xyz;
  r2.xyz = float3(1.07612538,1.07612538,1.07612538) * r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = v3.xyz * r2.xyz;
  r1.xyz = v4.www * r2.xyz;
  r1.xyzw = r1.xyzw * r0.xxxx;
  r0.x = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.x = r1.w * r0.x;
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r0.z = dot(-v2.xyz, -v2.xyz);
  r0.z = sqrt(r0.z);
  r0.z = 0.015625 * r0.z;
  r0.z = min(1, r0.z);
  r3.z = sqrt(r0.z);
  r0.z = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r3.xy, 0).w;
  r0.w = -1 + r0.w;
  r0.z = r0.z * r0.w + 1;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  r0.y = saturate(cb0[96].x);
  o0.w = r0.x * r0.y;
  return;
}