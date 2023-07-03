// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

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

cbuffer cb12 : register(b12)
{
  float4 cb12[14];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
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
  float3 v8 : TEXCOORD8,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t0.Sample(s1_s, v0.xy).xy;
  r0.zw = r0.xy * v6.zz + v0.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = r0.xy * v7.yy + v0.xy;
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.yz = v6.zz * float2(-0.5,-0.5) + r0.zw;
  r0.yz = r0.yz * v3.xy + v3.zw;
  r0.y = t2.Sample(s1_s, r0.yz).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r1.x = exp2(r0.y);
  r1.y = v7.x;
  r0.yzw = t3.Sample(s3_s, r1.xy).xyz;
  r1.x = max(0.00100000005, v7.z);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.yzw = -r1.xxx + r0.yzw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.yzw = r0.yzw / r1.xxx;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v4.xyz * r0.yzw;
  r0.yzw = v8.zzz * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = -cb12[13].y + 1;
  r0.x = r1.x * r0.x;
  r0.x = log2(r0.x);
  r1.x = 1 / v6.w;
  r0.x = r1.x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = saturate(r0.x * v8.y + v8.x);
  r0.x = saturate(v0.z * r0.x);
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v9.xy;
  r1.z = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.x = r1.x * r0.x;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}