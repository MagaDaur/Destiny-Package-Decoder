// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[40];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[34].x + 128.5;
  r0.x = 0.00390625 * r0.x;
  r0.y = cmp(0.0500000007 >= cb0[35].x);
  r0.x = r0.y ? r0.x : -1;
  o0.w = r0.x;
  r0.x = cmp(0.5 < r0.x);
  o1.w = r0.x ? 0.330000 : 0;
  o0.xyz = cb0[0].xyz;
  r0.xy = t0.Sample(s1_s, v3.xy).xy;
  r0.xy = -cb0[2].xy + r0.xy;
  r0.xy = r0.xy * cb0[1].xx + v3.xy;
  r0.xy = r0.xy * cb0[3].xy + cb0[3].zw;
  r0.xyz = t1.Sample(s1_s, r0.xy).xyz;
  r0.xy = r0.xy * cb0[4].xx + cb0[4].yy;
  r0.z = saturate(cb0[4].z + r0.z);
  r1.xyz = v2.xyz * r0.yyy;
  r1.xyz = v1.xyz * r0.xxx + r1.xyz;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r0.xyw = v0.xyz * r0.xxx + r1.xyz;
  r1.x = dot(r0.xyw, r0.xyw);
  r1.x = rsqrt(r1.x);
  r0.xyw = r1.xxx * r0.xyw;
  r1.xy = v3.xy * cb0[37].xy + cb0[37].zw;
  r1.x = t2.Sample(s1_s, r1.xy).x;
  r1.x = cb0[38].y * r1.x + cb0[38].x;
  r1.x = cb0[36].x + r1.x;
  r1.x = saturate(cb0[39].y * r1.x + cb0[39].x);
  r0.z = min(r1.x, r0.z);
  r0.z = r0.z * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyw * r0.zzz + float3(0.5,0.5,0.5));
  o2.x = cb0[35].x;
  o2.yz = float2(0.5,0);
  o2.w = v0.w;
  return;
}