// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);




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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = max(0.00100000005, v3.z);
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = 1 + -r0.x;
  r0.y = max(9.99999975e-006, r0.x);
  r0.x = r0.x / r0.y;
  r0.x = max(0, r0.x);
  r0.y = 1;
  r0.z = v4.z;
  r0.yz = r0.xx * r0.yz;
  r0.x = v4.z * r0.y;
  r0.xyzw = r0.xzxz * float4(2,0.574881971,2,0.574881971) + float4(-1,-1,-1,-1);
  r0.xyzw = float4(0.00999999978,0.00999999978,0.00999999978,0.00999999978) * r0.xyzw;
  r1.xy = float2(0.5,1) * v0.xy;
  r1.x = t0.Sample(s1_s, r1.xy).x;
  r1.x = r1.x * v4.y + v4.x;
  r1.y = -1 + v3.x;
  r1.y = saturate(0.5 * r1.y);
  r1.x = saturate(r1.x * r1.y);
  r1.x = saturate(v0.z * r1.x);
  r0.xyzw = r1.xxxx * r0.xyzw;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}