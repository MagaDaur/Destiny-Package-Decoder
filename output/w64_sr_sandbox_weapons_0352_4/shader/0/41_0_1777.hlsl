// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[27];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = v7.x ? 1 : -1;
  r0.xyz = v0.xyz * r0.xxx;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r0.w = dot(r1.xyz, cb12[6].xyz);
  r0.x = dot(r2.xyz, r0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[21].x + cb0[21].y);
  r1.xyzw = cb0[23].xyzw * r0.xxxx + cb0[22].xyzw;
  r2.zw = float2(0,0);
  r0.xy = cb12[12].zw * v6.xy;
  r3.xy = cb12[12].xy * r0.xy;
  r2.xy = (int2)r3.xy;
  r2.x = t0.Load(r2.xyz).x;
  r2.x = r2.x * cb0[5].y + cb0[5].x;
  r2.x = 1 / r2.x;
  r0.w = r2.x + -abs(r0.w);
  r0.w = saturate(r0.w * cb0[18].x + cb0[18].y);
  r2.xyzw = cb0[20].xyzw * r0.wwww + cb0[19].xyzw;
  r3.xy = v3.xy * cb0[17].xy + cb0[17].zw;
  r0.w = t3.Sample(s3_s, r3.xy).x;
  r2.xyzw = r0.wwww * r2.xyzw;
  r0.w = t2.Sample(s3_s, v3.xy).x;
  r2.xyzw = r0.wwww * r2.xyzw;
  r3.xy = v3.xy * cb0[13].xy + cb0[13].zw;
  r3.xyzw = t1.Sample(s3_s, r3.xy).xyzw;
  r3.xyzw = saturate(r3.xyzw * cb0[14].xxxx + cb0[14].yyyy);
  r4.xy = v3.xy * cb0[15].xy + cb0[15].zw;
  r4.xyzw = t1.Sample(s3_s, r4.xy).xyzw;
  r4.xyzw = saturate(r4.xyzw * cb0[16].xxxx + cb0[16].yyyy);
  r3.xyzw = r4.xyzw * r3.xyzw;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r1.xyzw = cb0[24].xyzw * r1.xyzw;
  r1.xyz = cb0[25].xxx * r1.xyz;
  r0.w = cb0[26].x * r1.w;
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.w = cb0[12].x * 0.75;
  r1.w = max(0, r1.w);
  r2.xyz = -cb12[14].xyz + v4.xyz;
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = sqrt(r2.x);
  r1.w = r2.x + -r1.w;
  r1.w = saturate(1.99999995e-005 * r1.w);
  r3.x = sqrt(r1.w);
  r1.w = r2.z / r2.x;
  r2.x = 0.015625 * r2.x;
  r2.x = min(1, r2.x);
  r0.z = sqrt(r2.x);
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.x = r0.w * r0.x;
  r3.y = r1.w * 0.5 + 0.5;
  r0.yzw = t15.SampleLevel(s2_s, r3.xy, 0).xyz;
  r0.yzw = r1.xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}