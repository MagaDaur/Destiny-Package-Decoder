// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[57];
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

  r0.xy = -cb0[6].xy + v3.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb0[8].x + cb0[8].y);
  r0.yzw = cb0[1].xyz + -cb0[0].xyz;
  r0.xyz = r0.xxx * r0.yzw + cb0[0].xyz;
  r1.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r1.xyz = t4.Sample(s1_s, r1.xy).xyz;
  r2.xy = v3.xy * cb0[10].xy + cb0[10].zw;
  r2.xyz = t4.Sample(s1_s, r2.xy).xyz;
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = saturate(r1.xyz * cb0[11].xxx + cb0[11].yyy);
  r0.xyz = r1.xyz + r0.xyz;
  r1.xy = -cb0[18].xy + v3.xy;
  r0.w = dot(r1.xy, r1.xy);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * cb0[20].x + cb0[20].y);
  r1.xyz = cb0[13].xyz + -cb0[12].xyz;
  r1.xyz = r0.www * r1.xyz + cb0[12].xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xyz = r0.xyz * cb0[21].xyz + cb0[53].xyz;
  r0.xyz = cb0[21].xyz * r0.xyz;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r1.x, r0.w);
  r0.w = saturate(-1 + r0.w);
  r0.w = 1 + -r0.w;
  r0.xyz = r0.xyz * r0.www + cb0[53].xyz;
  r0.w = max(r0.y, r0.z);
  r0.w = max(r0.x, r0.w);
  r0.w = max(1, r0.w);
  o0.xyz = r0.xyz / r0.www;
  o0.w = 0;
  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v0.xyz * r0.xxx;
  r0.w = saturate(cb0[56].x);
  r0.w = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  o1.w = 0;
  r0.x = max(cb0[53].y, cb0[53].z);
  r0.x = max(cb0[53].x, r0.x);
  r0.x = r0.x * cb0[55].x + 0.0078125;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = 1 + r0.x;
  o2.y = 0.5 * r0.x;
  r0.x = saturate(cb0[54].x);
  o2.w = v0.w + r0.x;
  o2.x = cb0[56].x;
  o2.z = 0;
  return;
}