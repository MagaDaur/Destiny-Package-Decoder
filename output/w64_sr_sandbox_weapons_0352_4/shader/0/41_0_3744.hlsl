// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:34 2023
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
  float4 cb0[125];
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
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb13[1].w;
  r0.y = 1;
  r0.xy = v5.ww * r0.xy;
  r0.xy = cb13[1].xw * r0.xy;
  r0.y = cb13[1].x * r0.y;
  r0.xz = cb8[7].xy * r0.xx;
  r1.z = cb8[7].z * r0.y;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.w = 0.015625 * r0.y;
  r0.y = saturate(r0.y * cb0[113].x + cb0[113].y);
  r0.w = min(1, r0.w);
  r2.z = sqrt(r0.w);
  r2.xy = cb12[12].zw * v6.xy;
  r0.w = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + float4(0,0,0,1);
  r1.xy = r3.ww * r0.xz;
  r4.xy = float2(0.300543994,0.590619028);
  r4.z = r3.w;
  r0.xzw = r1.xyz * r4.xyz + r3.xyz;
  r1.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r2.xy = cb12[12].xy * r2.xy;
  r2.xy = (int2)r2.xy;
  r1.xyzw = -r3.xyzw + r1.xyzw;
  r1.xyzw = r0.yyyy * r1.xyzw + r3.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xzw;
  r2.zw = float2(0,0);
  r0.w = t10.Load(r2.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.w = -v0.w + r0.w;
  r0.w = saturate(r0.w / v5.y);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r1.xy = v0.xy * v3.xy + v3.zw;
  r1.x = t0.Sample(s3_s, r1.xy).x;
  r1.x = log2(r1.x);
  r1.y = 1 / cb0[124].x;
  r1.x = r1.y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = v5.z * r1.x;
  r1.y = -0.800000012 + v4.z;
  r1.y = saturate(0.416666657 * r1.y);
  r1.x = saturate(r1.x * r1.y);
  r1.x = saturate(v0.z * r1.x);
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}