// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s4_s : register(s4);

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
  float4 cb0[21];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.x = dot(r0.xyz, v1.xyz);
  r1.y = dot(r0.xyz, v2.xyz);
  r0.x = dot(r0.xyz, v0.xyz);
  r0.yz = cb0[13].xx * r1.xy;
  r0.xy = r0.yz / r0.xx;
  r0.xy = v3.xy + -r0.xy;
  r0.x = t6.Sample(s4_s, r0.xy).x;
  r0.y = t6.Sample(s4_s, v3.xy).x;
  r1.xyzw = cb0[15].xyzw * r0.yyyy;
  r2.xyzw = r0.xxxx * cb0[16].xyzw + -r1.xyzw;
  r1.xyzw = cb0[17].xxxx * r2.xyzw + r1.xyzw;
  r0.xyzw = r0.xxxx * cb0[14].xyzw + r1.xyzw;
  r0.xyzw = cb0[12].xyzw * r0.xyzw;
  r1.x = t4.Sample(s3_s, v3.xy).x;
  r1.x = cmp(cb0[10].x >= r1.x);
  r1.xyzw = r1.xxxx ? cb0[8].xyzw : cb0[9].xyzw;
  r2.x = t5.Sample(s3_s, v3.xy).x;
  r2.x = cmp(cb0[11].x >= r2.x);
  r2.xyzw = r2.xxxx ? cb0[8].xyzw : cb0[9].xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r0.xyzw = cb0[18].xyzw * r0.xyzw;
  r0.xyz = cb0[19].xxx * r0.xyz;
  r0.w = cb0[20].x * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r1.x = cb0[7].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[14].xyz + v4.xyz;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.x = r1.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r2.x = sqrt(r1.x);
  r1.x = r1.w / r1.y;
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r2.y = r1.x * 0.5 + 0.5;
  r1.xyz = t15.SampleLevel(s2_s, r2.xy, 0).xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r3.xy = cb12[12].zw * v5.xy;
  r1.x = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r1.y = t20.SampleLevel(s1_s, r3.xy, 0).w;
  r1.y = -1 + r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}