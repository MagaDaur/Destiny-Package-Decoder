// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t2 : register(t2);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb11 : register(b11)
{
  float4 cb11[9];
}

cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[9];
}

cbuffer cb8 : register(b8)
{
  float4 cb8[3];
}

cbuffer cb7 : register(b7)
{
  float4 cb7[8];
}

cbuffer cb6 : register(b6)
{
  float4 cb6[11];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t13.Sample(s3_s, v3.xy).x;
  r0.y = cmp(0 != cb9[8].w);
  if (r0.y != 0) {
    r0.zw = v3.xy * cb8[0].xy + cb8[0].zw;
    r0.z = t5.Sample(s1_s, r0.zw).x;
    r0.z = saturate(cb8[2].y * r0.z + cb8[2].x);
    r0.z = cb8[2].w * r0.z + cb8[2].z;
  } else {
    r0.z = 0;
  }
  r0.z = 1 + -r0.z;
  r0.w = cmp(0 != cb11[8].w);
  if (r0.w != 0) {
    r1.xy = v3.xy * cb10[0].xy + cb10[0].zw;
    r1.x = t9.Sample(s1_s, r1.xy).x;
    r1.x = saturate(cb10[2].y * r1.x + cb10[2].x);
    r1.x = cb10[2].w * r1.x + cb10[2].z;
  } else {
    r1.x = 0;
  }
  r1.x = 1 + -r1.x;
  r1.y = t2.Sample(s2_s, v3.xy).w;
  r2.xyz = cb7[1].xyz + -cb6[4].xyz;
  r2.xyz = r1.yyy * r2.xyz + cb6[4].xyz;
  r2.xyz = r2.xyz * r0.zzz;
  o0.xyz = r2.xyz * r1.xxx;
  r0.x = saturate(cb0[10].y * r0.x + cb0[10].x);
  if (r0.y != 0) {
    r0.yz = v3.xy * cb8[0].xy + cb8[0].zw;
    r0.y = t5.Sample(s1_s, r0.yz).x;
    r0.y = saturate(cb8[2].y * r0.y + cb8[2].x);
    r0.y = cb8[2].w * r0.y + cb8[2].z;
  } else {
    r0.y = 0;
  }
  r0.y = 1 + -r0.y;
  if (r0.w != 0) {
    r0.zw = v3.xy * cb10[0].xy + cb10[0].zw;
    r0.z = t9.Sample(s1_s, r0.zw).x;
    r0.z = saturate(cb10[2].y * r0.z + cb10[2].x);
    r0.z = cb10[2].w * r0.z + cb10[2].z;
  } else {
    r0.z = 0;
  }
  r0.z = 1 + -r0.z;
  r0.w = cb6[10].w * 0.00999999978;
  r1.x = cb7[7].w * 0.00999999978 + -r0.w;
  r0.w = r1.y * r1.x + r0.w;
  r0.y = r0.y * r0.w;
  r0.y = r0.z * r0.y;
  o0.w = r0.x * r0.y;
  return;
}