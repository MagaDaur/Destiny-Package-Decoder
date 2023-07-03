// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = t0.Sample(s1_s, v3.xy).xyw;
  r1.xyz = r0.zzz * cb0[0].xyz + r0.xxx;
  r0.w = max(r1.y, r1.z);
  r0.w = max(r1.x, r0.w);
  r0.w = saturate(-1 + r0.w);
  r0.w = 1 + -r0.w;
  r1.xyz = cb0[0].xyz * r0.zzz;
  r0.xzw = r0.xxx * r0.www + r1.xyz;
  r0.y = cb0[34].y * r0.y + cb0[34].x;
  r0.y = max(cb0[32].x, r0.y);
  r0.y = saturate(min(cb0[33].x, r0.y));
  r1.w = max(r0.z, r0.w);
  r1.w = max(r1.w, r0.x);
  r1.w = max(1, r1.w);
  o0.xyz = r0.xzw / r1.www;
  o0.w = 0;
  r0.xzw = t1.Sample(s1_s, v3.xy).xyz;
  r0.w = saturate(cb0[1].z + r0.w);
  r0.xz = r0.xz * cb0[1].xx + cb0[1].yy;
  r0.y = min(r0.y, r0.w);
  r0.y = r0.y * 0.125 + 0.375;
  r2.xyz = v2.xyz * r0.zzz;
  r2.xyz = v1.xyz * r0.xxx + r2.xyz;
  r0.x = dot(r0.xz, r0.xz);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r0.x = sqrt(r0.x);
  r0.xzw = v0.xyz * r0.xxx + r2.xyz;
  r1.w = dot(r0.xzw, r0.xzw);
  r1.w = rsqrt(r1.w);
  r0.xzw = r1.www * r0.xzw;
  o1.xyz = saturate(r0.xzw * r0.yyy + float3(0.5,0.5,0.5));
  o1.w = 0;
  r0.x = max(r1.y, r1.z);
  r0.x = max(r1.x, r0.x);
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = 1 + r0.x;
  o2.y = 0.5 * r0.x;
  o2.x = cb0[31].x;
  o2.z = 0;
  o2.w = v0.w;
  return;
}