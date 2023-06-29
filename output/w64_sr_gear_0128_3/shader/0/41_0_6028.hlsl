// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float4 cb0[18];
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

  r0.x = dot(cb0[13].xy, v3.xy);
  r0.x = cb0[13].z + r0.x;
  r0.z = dot(cb0[14].xy, v3.xy);
  r0.y = cb0[14].z + r0.z;
  r0.xyz = t5.Sample(s4_s, r0.xy).xyz;
  r0.xyz = r0.xyz * cb0[15].xxx + cb0[15].yyy;
  r1.xy = v3.xy * cb0[11].xy + cb0[11].zw;
  r1.xyz = t4.Sample(s4_s, r1.xy).xyz;
  r2.xy = v3.xy * cb0[12].xy + cb0[12].zw;
  r2.xyz = t4.Sample(s4_s, r2.xy).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + -r0.xyz;
  r0.w = 1 + -v5.x;
  r0.xyz = saturate(r0.xyz + -r0.www);
  r0.yzw = cb0[16].xyz * r0.xyz;
  r0.x = v5.x * r0.x;
  r0.yzw = cb0[17].xxx * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r1.x = cb0[10].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[14].xyz + v4.xyz;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.x = r1.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r2.x = sqrt(r1.x);
  r1.x = r1.w / r1.y;
  r2.y = r1.x * 0.5 + 0.5;
  r2.xyzw = t15.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r0.yzw = r2.xyz * r0.yzw;
  r1.x = 0.015625 * r1.y;
  r1.y = saturate(r1.y * cb0[6].x + cb0[6].y);
  r1.x = min(1, r1.x);
  r2.z = sqrt(r1.x);
  r2.xy = cb12[12].zw * v6.xy;
  r1.x = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.xxxx * r3.xyzw + float4(0,0,0,1);
  r0.yzw = r0.yzw * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r1.xyzw = r1.yyyy * r3.xyzw + r4.xyzw;
  r2.x = r2.w * cb0[9].x + -r2.w;
  r1.w = r1.w * r2.x + r1.w;
  r2.x = cb13[1].x * cb0[8].x;
  r1.w = r2.x * r1.w;
  r2.x = -r2.x * r2.w + r2.x;
  r1.xyz = r2.xxx * r1.xyz;
  r1.xyz = cb0[7].xyz * r1.www + r1.xyz;
  r0.yzw = r1.xyz + r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}