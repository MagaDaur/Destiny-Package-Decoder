// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[4];
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

  r0.xyz = t7.Sample(s1_s, v3.xy).xyz;
  r1.xyz = saturate(float3(4,4,4) * r0.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r0.xyz);
  r1.xyz = cb7[3].xyz * r1.xyz + r2.xyz;
  r1.xyz = r1.xyz + -r0.xyz;
  r0.w = t6.Sample(s1_s, v3.xy).x;
  o0.xyz = r0.www * r1.xyz + r0.xyz;
  r0.x = cb7[6].x + 128.5;
  r0.x = 0.00390625 * r0.x;
  r0.y = cmp(cb7[6].x >= 0);
  r0.z = saturate(cb7[5].w);
  r0.z = r0.w * r0.z;
  r1.x = cmp(0.0500000007 >= r0.z);
  o2.x = r0.z;
  r0.y = r0.y ? r1.x : 0;
  r0.xy = r0.yy ? r0.xx : float2(0.200000003,0);
  o0.w = r0.y;
  r0.x = cmp(0.5 < r0.x);
  o1.w = r0.x ? 0.330000 : 0;
  r0.x = saturate(cb7[6].y);
  r0.y = r0.x * -2 + -0.200000003;
  r0.x = -2 * r0.x;
  r0.z = saturate(cb0[0].x);
  r1.xyz = t9.Sample(s1_s, v3.xy).xyz;
  r1.z = saturate(cb0[3].z + r1.z);
  r1.xy = r1.xy * cb0[3].xx + cb0[3].yy;
  r0.z = min(r1.z, r0.z);
  r1.z = saturate(cb7[7].y * r0.z + cb7[7].x);
  r1.z = saturate(cb7[7].w * r1.z + cb7[7].z);
  r1.z = r1.z + -r0.z;
  r0.z = r0.w * r1.z + r0.z;
  r0.y = r0.y * r0.z;
  r0.x = r0.y * -5.00250101 + r0.x;
  r0.x = min(r0.z, r0.x);
  r0.x = r0.x + -r0.z;
  r0.x = r0.w * r0.x + r0.z;
  r0.y = cb7[6].z * r0.w;
  o2.z = 0.800000012 * r0.y;
  r0.y = cmp(9.99999975e-005 < cb7[6].y);
  r0.x = r0.y ? r0.x : r0.z;
  r0.x = r0.x * 0.125 + 0.375;
  r0.yzw = v2.xyz * r1.yyy;
  r0.yzw = v1.xyz * r1.xxx + r0.yzw;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r0.yzw = v0.xyz * r1.xxx + r0.yzw;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  o1.xyz = saturate(r0.yzw * r0.xxx + float3(0.5,0.5,0.5));
  r0.x = t8.Sample(s1_s, v3.xy).z;
  r0.x = saturate(r0.x);
  o2.y = 0.5 * r0.x;
  o2.w = v0.w;
  return;
}