// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

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
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.y = -r0.x * r0.x + 1;
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * -1.33333302 + 1.33333302);
  r0.y = max(0, r0.y);
  r0.z = cb0[101].x * r0.y;
  r0.y = cb0[97].x * r0.y;
  r1.xy = float2(-0.0450000018,-0.515999973) + v0.xx;
  r0.w = 1 + -abs(r1.y);
  r1.x = abs(r1.x) * -3.71747208 + 1;
  r1.x = max(0, r1.x);
  r1.x = ceil(r1.x);
  r0.y = r1.x * r0.y;
  r0.w = max(0, r0.w);
  r0.w = ceil(r0.w);
  r0.z = r0.z * r0.w;
  r0.w = cb0[99].x + -v0.y;
  r0.w = 1 + r0.w;
  r0.w = floor(r0.w);
  r0.yz = r0.yz * r0.ww;
  r1.xyz = cb0[103].xyz * r0.zzz;
  r0.yzw = r0.yyy * cb0[100].xyz + r1.xyz;
  r0.yzw = r0.yzw * r0.xxx + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.x = saturate(cb0[9].x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = cb0[9].yyy * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v3.xy;
  r1.z = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.x = r1.x * r0.x;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}