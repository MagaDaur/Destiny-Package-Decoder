// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float4 cb0[104];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = t1.Sample(s2_s, v0.xy).xy;
  r0.xy = r0.xy * v3.zz + v0.xy;
  r0.xy = v3.zz * float2(-0.5,-0.5) + r0.xy;
  r0.zw = r0.xy * float2(-2,-2) + float2(1,1);
  r1.y = round(v3.y);
  r1.xw = float2(0,1);
  r0.xy = r1.xy * r0.zw + r0.xy;
  r0.z = cb0[103].x * v4.x;
  r0.z = floor(r0.z);
  r0.zw = cb0[100].xy * r0.zz;
  r0.xy = r0.xy * cb0[99].xy + r0.zw;
  r0.x = t0.Sample(s2_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = saturate(v4.z + r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r2.z = sqrt(r0.y);
  r2.xy = cb12[12].zw * v5.xy;
  r0.y = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r0.z = t20.SampleLevel(s1_s, r2.xy, 0).w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.z = r0.x * r0.y + -cb0[96].x;
  r0.x = r0.x * r0.y;
  r0.y = cmp(r0.z < 0);
  if (r0.y != 0) discard;
  r1.z = cb13[1].w;
  r0.yz = v4.ww * r1.zw;
  r0.yz = cb13[1].xw * r0.yz;
  r0.yw = cb8[7].xy * r0.yy;
  r0.z = cb13[1].x * r0.z;
  r1.z = cb8[7].z * r0.z;
  r1.xy = float2(0.313380003,0.86944598) * r0.yw;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}