// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[7];
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
  float4 cb0[126];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r0.x = dot(abs(r0.xy), abs(r0.xy));
  r0.x = log2(r0.x);
  r0.x = cb0[96].x * r0.x;
  r0.y = exp2(r0.x);
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r0.x = frac(r0.z);
  r0.xy = r0.xy * cb0[8].xy + cb0[8].zw;
  r0.xy = t0.Sample(s1_s, r0.xy).xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = r0.xy * cb0[99].xx + v0.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * -4 + 1.79999995);
  r0.x = saturate(r0.x * cb0[125].x + -0.5);
  r0.x = saturate(v0.z * r0.x);
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v3.xy;
  r0.yz = cb12[12].xy * r2.xy;
  r1.xy = (int2)r0.yz;
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = saturate(-v0.w + r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y + -cb0[116].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r1.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r0.xyzw = -r1.xyzw + r0.xyzw;
  r2.w = dot(-v2.xyz, -v2.xyz);
  r2.w = sqrt(r2.w);
  r3.x = saturate(r2.w * cb0[120].x + cb0[120].y);
  r2.w = 0.015625 * r2.w;
  r2.w = min(1, r2.w);
  r2.z = sqrt(r2.w);
  r2.z = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r2.xyw = t20.SampleLevel(s3_s, r2.xy, 0).xyz;
  r0.xyzw = r3.xxxx * r0.xyzw + r1.xyzw;
  r0.xyz = cb8[5].xyz * r0.xyz;
  r0.xyz = r0.www * cb8[6].xyz + r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  o0.xyz = r2.zzz * r2.xyw + r0.xyz;
  o0.w = 1;
  return;
}