// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[106];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD4,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -0.5 + v0.x;
  r0.x = 1 + -abs(r0.x);
  r0.x = max(0, r0.x);
  r0.y = log2(r0.x);
  r1.x = cb0[97].x + r0.x;
  r0.x = cb0[99].x * r0.y;
  r0.x = exp2(r0.x);
  r0.y = v0.y * -0.300000012 + 1;
  r0.x = r0.y * r0.x;
  r0.x = r0.x * 0.25 + -0.0500000007;
  r1.y = v0.y + -r0.x;
  r0.xy = float2(-0.5,-0.5) + r1.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * -3.33333302 + 1;
  r0.x = max(0, r0.x);
  r0.x = cb0[104].x * r0.x;
  r0.x = floor(r0.x);
  r0.y = cmp(cb0[105].x >= 0);
  r0.y = r0.y ? 4.99999987e-005 : -4.99999987e-005;
  r0.y = cb0[105].x + r0.y;
  r0.x = saturate(r0.x / r0.y);
  r0.y = r0.x * -20 + 20;
  r0.x = r0.x * r0.y;
  r0.x = min(1, r0.x);
  r0.x = saturate(w1.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.yzw = cb13[1].www * v3.xyz;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r0.xyz = r0.yzw * r0.xxx;
  o0.xyz = float3(30,30,30) * r0.xyz;
  o0.w = 0;
  return;
}