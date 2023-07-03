// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t4 : register(t4);

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
  float4 cb0[110];
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
  float4 r0,r1,r2,r3;
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
  r0.x = cb0[108].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[109].x * r0.y + r0.x;
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * -3.17813396 + 1.53440297);
  r0.xyzw = cb0[105].xyzw + -r0.xxxx;
  r1.x = 6.28318548 * v4.w;
  sincos(r1.x, r2.x, r3.x);
  r1.x = sin(-r1.x);
  r1.z = r2.x;
  r1.y = r3.x;
  r2.xy = float2(-0.5,-0.5) + v0.xy;
  r1.z = dot(r1.yz, r2.xy);
  r1.x = dot(r1.xy, r2.xy);
  r1.y = 0.5 + r1.x;
  r1.x = 0.5 + r1.z;
  r1.xy = t4.Sample(s1_s, r1.xy).xy;
  r1.xy = r1.xy * float2(0.100000001,0.100000001) + v0.xy;
  r1.xy = float2(-0.0500000007,-0.0500000007) + r1.xy;
  r1.xy = r1.xy * v3.xy + v3.zw;
  r1.x = t0.Sample(s1_s, r1.xy).x;
  r1.zw = cb12[12].zw * v5.xy;
  r1.zw = cb12[12].xy * r1.zw;
  r2.xy = (int2)r1.zw;
  r2.zw = float2(0,0);
  r1.z = t10.Load(r2.xyz).x;
  r1.z = r1.z * cb2[0].y + cb2[0].x;
  r1.z = 1 / r1.z;
  r1.z = -v0.w + r1.z;
  r1.z = saturate(0.25 * r1.z);
  r1.y = 1 + -r1.z;
  r1.xzw = t1.Sample(s2_s, r1.xy).xyz;
  r1.y = 1 + -r1.y;
  r1.xzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xzw;
  r1.xzw = float3(1.00000024,1.00000024,1.00000024) * r1.xzw;
  r1.xzw = max(float3(0,0,0), r1.xzw);
  r2.xyz = float3(18.3352489,196.162506,250) * r1.xzw;
  r1.x = t2.Sample(s1_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.z = t3.Sample(s1_s, v0.xy).x;
  r1.z = log2(r1.z);
  r1.z = 2.20000005 * r1.z;
  r1.z = exp2(r1.z);
  r1.x = r1.x * r1.z;
  r1.x = saturate(w1.x * r1.x);
  r2.w = saturate(v0.z * r1.x);
  r0.xyzw = r2.xyzw * r0.xyzw;
  r0.w = r0.w * r1.y;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}