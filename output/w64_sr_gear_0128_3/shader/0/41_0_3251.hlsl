// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

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
  float4 cb2[6];
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
  float4 cb0[112];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float2 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb13[1].w * cb13[1].x;
  r0.xyz = cb8[7].xyz * r0.xxx;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[111].x + cb0[111].y);
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v4.xy;
  r1.z = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s3_s, r1.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * float3(0.639999986,0.715520024,0.800000012) + r2.xyz;
  r2.xyzw = t11.Sample(s2_s, r1.xy).xyzw;
  r3.xyzw = t13.Sample(s2_s, r1.xy).xyzw;
  r1.xy = t10.Sample(s1_s, r1.xy).yw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + r3.xyzw;
  r2.xyz = cb8[5].xyz * r2.xyz;
  r2.xyz = r2.www * cb8[6].xyz + r2.xyz;
  r0.xyz = r2.xyz * cb13[1].xxx + r0.xyz;
  r0.w = -1 + r1.y;
  r1.x = cmp(v0.w < r1.x);
  r0.w = cb2[5].x * r0.w + 1;
  r1.y = r1.x ? 0 : 1;
  r1.x = r1.x ? 1.000000 : 0;
  r0.w = r0.w * r1.y + r1.x;
  r1.y = t0.Sample(s4_s, v0.xy).x;
  r1.y = log2(r1.y);
  r1.y = 2.20000005 * r1.y;
  r1.y = exp2(r1.y);
  r1.y = saturate(v3.y * r1.y);
  r1.y = saturate(v0.z * r1.y);
  r2.xyzw = r1.yyyy * r0.wwww;
  r1.xyzw = r1.yyyy * r1.xxxx;
  o0.xyz = r2.www * r0.xyz;
  o1.xyz = r1.xyz * r0.xyz;
  o0.w = r2.w;
  o2.xyzw = r2.xyzw;
  o1.w = r1.w;
  o3.xyzw = r1.xyzw;
  return;
}