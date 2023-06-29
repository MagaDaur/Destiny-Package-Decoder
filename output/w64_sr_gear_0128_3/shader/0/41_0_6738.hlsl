// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[117];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD4,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = float4(0.200000003,0.200000003,0.200000003,1) * v0.xyxy;
  r0.x = t0.Sample(s1_s, r0.xy).x;
  r0.y = t1.Sample(s1_s, r0.zw).x;
  r0.x = r0.x * r0.y;
  r0.x = r0.x * v3.w + v3.z;
  r0.y = -0.5 + v3.x;
  r0.y = saturate(0.5 * r0.y);
  r0.x = saturate(r0.x * r0.y);
  r0.x = saturate(v0.z * r0.x);
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v4.xy;
  r0.yz = cb12[12].xy * r2.xy;
  r1.xy = (int2)r0.yz;
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(20 * r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y + -cb0[107].x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 0.015625 * r0.x;
  r0.x = saturate(r0.x * cb0[116].x + cb0[116].y);
  r0.y = min(1, r0.y);
  r2.z = sqrt(r0.y);
  r0.y = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r1.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r1.xyzw = float4(-0,-0,-0,-1) + r1.xyzw;
  r1.xyzw = r0.yyyy * r1.xyzw + float4(0,0,0,1);
  r0.yzw = cb0[11].xyz * w1.xww;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r0.yzw = r0.yzw * r1.www + r1.xyz;
  r1.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r1.xyzw = -r2.xyzw + r1.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  o0.xyz = r1.xyz * cb13[1].xxx + r0.yzw;
  o0.w = 1;
  return;
}