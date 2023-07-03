// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:31 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float4 cb0[120];
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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
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
  r0.x = cb0[114].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[115].x * r0.y + r0.x;
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * -5.52638912 + 4.2884779);
  r0.xyzw = cb0[111].xyzw + -r0.xxxx;
  r1.xy = v0.xy * cb0[8].xy + cb0[8].zw;
  r1.x = t2.Sample(s1_s, r1.xy).x;
  r1.x = -2.51188652e-007 + r1.x;
  r1.x = 1.00000024 * r1.x;
  r1.x = max(0, r1.x);
  r1.x = v3.y * r1.x;
  r1.xyz = float3(0.666000009,0.666000009,0.666000009) * r1.xxx;
  r2.xy = v0.yx * cb0[9].xy + cb0[9].zw;
  r2.x = t1.Sample(s1_s, r2.xy).x;
  r2.x = saturate(0.100000001 * r2.x);
  r2.y = t0.Sample(s1_s, v0.xy).x;
  r2.y = saturate(4 * r2.y);
  r2.x = r2.y * r2.x;
  r2.y = saturate(r2.x * cb0[12].w + v3.x);
  r1.w = saturate(v0.z * r2.y);
  r0.xyzw = r1.xyzw * r0.xyzw;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[119].x + cb0[119].y);
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r3.xy = cb12[12].zw * v4.xy;
  r1.y = t21.SampleLevel(s3_s, r3.xyz, 0).x;
  r4.xyzw = t20.SampleLevel(s3_s, r3.xy, 0).xyzw;
  r4.xyzw = float4(-0,-0,-0,-1) + r4.xyzw;
  r4.xyzw = r1.yyyy * r4.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r4.www + r4.xyz;
  r4.xyzw = t11.Sample(s2_s, r3.xy).xyzw;
  r5.xyzw = t13.Sample(s2_s, r3.xy).xyzw;
  r1.yz = cb12[12].xy * r3.xy;
  r3.xy = (int2)r1.yz;
  r4.xyzw = -r5.xyzw + r4.xyzw;
  r1.xyzw = r1.xxxx * r4.xyzw + r5.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xyz;
  r3.zw = float2(0,0);
  r1.x = t10.Load(r3.xyz).x;
  r1.x = r1.x * cb2[0].y + cb2[0].x;
  r1.x = 1 / r1.x;
  r1.y = r2.x * 0.123500004 + v0.w;
  r1.z = r2.x * 0.461100012 + 0.325899988;
  r1.y = 0.0785000026 + r1.y;
  r1.x = r1.x + -r1.y;
  r1.x = saturate(r1.x / r1.z);
  r1.x = 1 + -r1.x;
  r1.x = 1 + -r1.x;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}