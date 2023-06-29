// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb5 : register(b5)
{
  float4 cb5[6];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[3];
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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t5.Sample(s1_s, v3.xy).xyz;
  r1.xyz = saturate(float3(4,4,4) * r0.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r0.xyz);
  r1.xyz = cb5[1].xyz * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.w = t4.Sample(s1_s, v3.xy).x;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  r1.xyz = cb5[4].xyz + -r0.xyz;
  r2.xy = saturate(cb5[5].yw);
  r1.xyz = r2.yyy * r1.xyz;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  r0.x = cb5[5].x + 128.5;
  r0.x = 0.00390625 * r0.x;
  r0.y = cmp(cb5[5].x >= 0);
  r0.z = cb5[1].w * r0.w;
  r1.x = cmp(0.0500000007 >= r0.z);
  o2.x = r0.z;
  r0.y = r0.y ? r1.x : 0;
  r0.xy = r0.yy ? r0.xx : float2(0.200000003,0);
  o0.w = r0.y;
  r0.x = cmp(0.5 < r0.x);
  o1.w = r0.x ? 0.330000 : 0;
  r0.x = -2 * r2.x;
  r0.y = r2.x * -2 + -0.200000003;
  r0.z = saturate(cb5[2].x);
  r0.z = saturate(cb5[2].w * r0.z + cb5[2].z);
  r1.x = r0.w * r0.z;
  r0.y = r1.x * r0.y;
  r0.x = r0.y * -5.00250101 + r0.x;
  r0.x = min(r1.x, r0.x);
  r0.x = -r0.w * r0.z + r0.x;
  r0.x = r0.w * r0.x + r1.x;
  r0.y = cmp(9.99999975e-005 < cb5[5].y);
  r0.x = r0.y ? r0.x : r1.x;
  r0.x = r0.x * 0.125 + 0.375;
  r0.y = v6.x ? 1 : -1;
  r1.xyz = v0.xyz * r0.yyy;
  r0.yz = t7.Sample(s1_s, v3.xy).xy;
  r0.yz = r0.yz * cb0[2].xx + cb0[2].yy;
  r2.xyz = v2.xyz * r0.zzz;
  r2.xyz = v1.xyz * r0.yyy + r2.xyz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy + r2.xyz;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  o1.xyz = saturate(r1.xyz * r0.xxx + float3(0.5,0.5,0.5));
  r0.x = r0.w * cb5[4].w + 0.0078125;
  r0.y = cb5[5].z * r0.w;
  o2.z = 0.800000012 * r0.y;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.y = t6.Sample(s1_s, v3.xy).z;
  r0.y = saturate(r0.y);
  r0.x = r0.x + r0.y;
  o2.y = 0.5 * r0.x;
  o2.w = v0.w;
  return;
}