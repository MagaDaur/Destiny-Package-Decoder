// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
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
  float2 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t0.Sample(s1_s, v0.xy).xyzw;
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.w = saturate(v3.y * r0.w);
  r0.w = saturate(v0.z * r0.w);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r1.xyzw = cb0[1].xyxy * r0.yyyy;
  r1.xyzw = cb0[0].xyxy * r0.xxxx + r1.xyzw;
  r1.xyzw = cb0[2].xyxy * r0.zzzz + r1.xyzw;
  r1.xyzw = r1.xyzw * r0.wwww;
  r0.x = cmp(r0.w < 0.00100000005);
  o0.xyzw = saturate(float4(1,1,-1,-1) * r1.xyzw);
  r1.x = cb12[7].z + -v2.z;
  r1.yzw = float3(0.300000012,1,0);
  o1.xyzw = r0.xxxx ? float4(0,0,0,0) : r1.xyzw;
  return;
}