// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb5 : register(b5)
{
  float4 cb5[10];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www + cb0[34].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = v6.x ? 1 : -1;
  r1.xyz = v0.xyz * r0.www;
  r2.xy = v3.xy * cb0[0].xy + cb0[0].zw;
  r2.zw = t5.Sample(s1_s, r2.xy).zx;
  r0.w = -cb0[33].x + r2.w;
  r2.z = saturate(r2.z);
  r1.w = cb5[9].z + r0.w;
  r0.w = cb5[8].z + r0.w;
  r3.xyz = r0.www * r1.xyz + v2.xyz;
  r4.xyz = r1.www * r1.xyz + v2.xyz;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r0.w = dot(r4.xyz, r0.xyz);
  r0.w = -r0.w * r0.w + 1;
  r0.w = sqrt(r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[9].x * r0.w;
  r0.w = exp2(r0.w);
  r1.w = t5.Sample(s1_s, v3.xy).x;
  r1.w = saturate(r1.w);
  r0.w = r1.w * r0.w;
  r0.w = cb5[9].y * r0.w;
  r4.xyz = saturate(cb5[7].xyz * r0.www);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r0.x = dot(r3.xyz, r0.xyz);
  r0.x = -r0.x * r0.x + 1;
  r0.x = sqrt(r0.x);
  r0.x = log2(r0.x);
  r0.x = cb5[8].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb5[8].y * r0.x;
  r0.xyz = saturate(cb5[6].xyz * r0.xxx);
  r0.xyz = r4.xyz + r0.xyz;
  r3.xyz = t4.Sample(s1_s, r2.xy).xyz;
  r2.xy = t6.Sample(s1_s, r2.xy).xy;
  r2.xy = r2.xy * cb0[3].xx + cb0[3].yy;
  r4.xyz = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r3.xyz = cb5[1].xyz * r4.xyz + r3.xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r3.xyz = cb5[4].xyz + -r0.xyz;
  r4.xy = saturate(cb5[5].yw);
  o0.xyz = r4.yyy * r3.xyz + r0.xyz;
  r0.x = cmp(cb5[5].x >= 0);
  r0.y = cmp(0.0500000007 >= cb5[1].w);
  r0.x = r0.y ? r0.x : 0;
  r0.y = cb5[5].x + 128.5;
  r0.y = 0.00390625 * r0.y;
  r0.xy = r0.xx ? r0.yy : float2(0.200000003,0);
  o0.w = r0.y;
  r0.x = cmp(0.5 < r0.x);
  o1.w = r0.x ? 0.330000 : 0;
  r0.xyz = v2.xyz * r2.yyy;
  r0.xyz = v1.xyz * r2.xxx + r0.xyz;
  r0.w = dot(r2.xy, r2.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r0.w = sqrt(r0.w);
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = -2 * r4.x;
  r1.x = r4.x * -2 + -0.200000003;
  r1.y = saturate(cb5[2].x);
  r1.y = saturate(cb5[2].w * r1.y + cb5[2].z);
  r1.x = r1.x * r1.y;
  r0.w = r1.x * -5.00250101 + r0.w;
  r0.w = min(r1.y, r0.w);
  r1.x = cmp(9.99999975e-005 < cb5[5].y);
  r0.w = r1.x ? r0.w : r1.y;
  r0.w = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  r0.x = cb5[4].w + 0.0078125;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = r0.x + r2.z;
  o2.y = 0.5 * r0.x;
  o2.x = cb5[1].w;
  o2.z = cb5[5].z * 0.800000012;
  o2.w = v0.w;
  return;
}