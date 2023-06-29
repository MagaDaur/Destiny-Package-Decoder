// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:43 2023
Texture2D<float4> t4 : register(t4);

SamplerState s1_s : register(s1);

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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = t4.Sample(s1_s, v3.xy).xyzw;
  r0.w = cb0[2].y * r0.w + cb0[2].x;
  r1.x = cmp(0 < r0.w);
  if (r1.x != 0) {
    r1.x = saturate(1 + -r0.w);
    r0.xyz = r0.www * r0.xyz;
    r0.w = 1 + -r1.x;
    r1.yz = float2(1,0);
  } else {
    r0.xyzw = float4(0,0,0,0);
    r1.xyz = float3(1,0,1);
  }
  r1.w = saturate(cb0[3].y);
  r2.x = dot(v0.xyz, v0.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = v0.xyz * r2.xxx;
  r3.xyw = r1.www * r0.www;
  o0.xyz = r1.www * r0.xyz;
  r0.x = -1 + r1.x;
  o0.w = r1.w * r0.x + 1;
  r0.x = r1.y * 0.125 + 0.375;
  r0.xyz = saturate(r2.xyz * r0.xxx + float3(0.5,0.5,0.5));
  o1.xyz = r0.xyz * r3.xyw;
  o1.w = -r0.w * r1.w + 1;
  r3.z = r3.w * r1.z;
  o2.xyzw = r3.xyzw * float4(0,0.5,0.800000012,-1) + float4(0,0,0,1);
  return;
}