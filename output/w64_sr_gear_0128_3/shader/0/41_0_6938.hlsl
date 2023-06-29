// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[109];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD5,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r1.y = frac(r0.z);
  r0.z = dot(abs(r0.xy), abs(r0.xy));
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * -2.5 + 1;
  r0.x = max(0, r0.x);
  r0.x = r0.x * r0.x;
  r0.y = log2(r0.z);
  r0.y = cb0[104].x * r0.y;
  r1.x = exp2(r0.y);
  r0.yz = r1.xy * v3.xy + v3.zw;
  r0.y = t1.Sample(s2_s, r0.yz).x;
  r0.y = saturate(cb0[13].x + r0.y);
  r0.y = saturate(cb0[13].y * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r0.y = -cb0[108].x + r0.y;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  r1.x = 1;
  r1.yz = cb0[0].xx;
  r0.xyz = r1.xyz * r0.xxx;
  r1.x = cb0[0].x;
  r1.yz = w1.xw;
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = w1.x;
  r1.yz = float2(0.404821992,0);
  r0.xyz = r1.xyz * r0.xyz;
  r0.w = max(0, r0.y);
  r0.w = max(r0.x, r0.w);
  r1.x = max(1, r0.w);
  r0.w = 0.0078125 + r0.w;
  r0.w = log2(r0.w);
  r0.w = r0.w * 0.0769230798 + 0.538461566;
  r0.w = min(1, r0.w);
  r0.w = 1 + r0.w;
  o2.y = 0.5 * r0.w;
  o0.xyz = r0.xyz / r1.xxx;
  o0.w = 0;
  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = t0.Sample(s1_s, v0.xy).y;
  r1.x = saturate(r0.w);
  o2.x = r0.w;
  r0.w = r1.x * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  o1.w = 0;
  o2.zw = float2(0,1);
  return;
}