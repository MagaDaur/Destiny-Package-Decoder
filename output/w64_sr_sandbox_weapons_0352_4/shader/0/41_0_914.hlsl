// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:45 2023
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

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
  float4 cb0[19];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r0.zw = r0.xy * cb0[1].xy + cb0[1].zw;
  r0.xy = r0.xy * cb0[0].xy + cb0[0].zw;
  r0.zw = t4.Sample(s1_s, r0.zw).xy;
  r0.zw = r0.zw * cb0[2].xy + v3.xy;
  r0.zw = cb0[2].zw + r0.zw;
  r1.xy = r0.zw * cb0[4].xy + cb0[4].zw;
  r0.zw = r0.zw * cb0[5].xy + cb0[5].zw;
  r0.z = t4.Sample(s1_s, r0.zw).x;
  r0.w = t4.Sample(s1_s, r1.xy).x;
  r0.z = r0.w * r0.z;
  r0.z = saturate(r0.z * cb0[6].x + cb0[6].y);
  r1.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = dot(r1.xyz, v0.xyz);
  r0.w = r0.w * r0.w;
  r1.x = saturate(r0.w * cb0[7].x + cb0[7].y);
  r0.w = saturate(r0.w * cb0[13].x + cb0[13].y);
  r1.x = log2(r1.x);
  r1.x = cb0[8].x * r1.x;
  r1.x = exp2(r1.x);
  r1.x = r1.x * r0.z;
  r1.y = cb0[9].x;
  r0.z = t5.Sample(s2_s, r1.xy).y;
  r0.z = cb0[3].y * r0.z;
  r1.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.xy = r0.xy * cb0[10].xy + cb0[10].zw;
  r0.x = t6.Sample(s1_s, r0.xy).y;
  r0.y = t6.Sample(s1_s, r1.xy).y;
  r0.x = r0.x * r0.y;
  r0.x = cb0[12].x * r0.x;
  r0.x = r0.x * 4.59478998 + cb0[12].y;
  r0.x = saturate(r0.x * r0.w + r0.z);
  r0.xyzw = cb0[15].xyzw * r0.xxxx + cb0[14].xyzw;
  r0.xyz = cb0[16].xxx * r0.xyz;
  r0.w = saturate(cb0[18].x * r0.w);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}