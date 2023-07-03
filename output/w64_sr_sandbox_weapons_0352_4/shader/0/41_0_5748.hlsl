// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
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
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float2 v8 : TEXCOORD8,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
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
  r0.x = r0.x * -1.21914005 + 1.21914005;
  r0.x = min(1, r0.x);
  r0.xyzw = cb0[100].xyzw + -r0.xxxx;
  r1.xy = float2(-0.5,-0.5) + v0.xy;
  r1.z = abs(r1.x) + -abs(r1.y);
  r1.w = abs(r1.x) + abs(r1.y);
  r1.z = r1.z / r1.w;
  r1.z = -1 + r1.z;
  r2.xy = cmp(float2(0,0) < r1.xy);
  r2.zw = cmp(r1.xy < float2(0,0));
  r2.xy = (int2)-r2.xy + (int2)r2.zw;
  r2.xy = (int2)r2.xy;
  r1.z = r1.z * r2.y + 2;
  r1.z = r2.x * r1.z;
  r1.z = 0.125 * r1.z;
  r2.x = frac(r1.z);
  r2.y = dot(abs(r1.xy), abs(r1.xy));
  r1.zw = r2.xy * v4.xy + v4.zw;
  r1.z = t3.Sample(s2_s, r1.zw).x;
  r1.w = dot(float2(0.29884091,0.954302967), r1.xy);
  r1.x = dot(float2(-0.954302967,0.29884091), r1.xy);
  r1.y = 0.5 + r1.x;
  r1.x = 0.5 + r1.w;
  r1.x = t2.Sample(s2_s, r1.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r1.z;
  r1.y = r1.x * -0.100000001 + 0.200000003;
  r1.z = r1.x * -0.100000001 + v0.w;
  r1.x = saturate(v8.x * r1.x);
  r2.w = saturate(v0.z * r1.x);
  r1.x = 0.100000001 + r1.z;
  r3.zw = float2(0,0);
  r4.xy = cb12[12].zw * v9.xy;
  r1.zw = cb12[12].xy * r4.xy;
  r3.xy = (int2)r1.zw;
  r1.z = t10.Load(r3.xyz).x;
  r1.z = r1.z * cb2[0].y + cb2[0].x;
  r1.z = 1 / r1.z;
  r1.x = r1.z + -r1.x;
  r1.x = saturate(r1.x / r1.y);
  r1.x = 1 + -r1.x;
  r3.y = v7.y + r1.x;
  r1.x = 1 + -r1.x;
  r1.yz = v0.xy * v3.xy + v3.zw;
  r3.x = t0.Sample(s2_s, r1.yz).x;
  r1.yzw = t1.Sample(s3_s, r3.xy).xyz;
  r3.x = max(0.00100000005, v7.z);
  r3.x = log2(r3.x);
  r3.x = 2.20000005 * r3.x;
  r3.x = exp2(r3.x);
  r1.yzw = -r3.xxx + r1.yzw;
  r3.x = 1 + -r3.x;
  r3.x = max(9.99999975e-006, r3.x);
  r1.yzw = r1.yzw / r3.xxx;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r1.yzw = v5.xyz * r1.yzw;
  r2.xyz = v8.yyy * r1.yzw;
  r0.xyzw = r2.xyzw * r0.xyzw;
  r1.y = dot(-v2.xyz, -v2.xyz);
  r1.y = sqrt(r1.y);
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r4.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s1_s, r4.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r4.xy, 0).w;
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