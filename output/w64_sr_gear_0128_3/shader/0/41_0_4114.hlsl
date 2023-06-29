// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
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

  r0.x = dot(v0.xyz, v0.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v0.xyz * r0.xxx;
  r0.w = cmp(0.000000 != cb0[2].x);
  if (r0.w != 0) {
    r1.xy = ddx_coarse(v3.xy);
    r0.w = dot(r1.xy, r1.xy);
    r0.w = sqrt(r0.w);
    r1.xy = ddy_coarse(v3.xy);
    r1.x = dot(r1.xy, r1.xy);
    r1.x = sqrt(r1.x);
    r0.w = max(r1.x, r0.w);
    r0.w = 1 / r0.w;
    r0.w = log2(r0.w);
    r1.x = floor(r0.w);
    r1.x = exp2(r1.x);
    r1.y = ceil(r0.w);
    r1.y = exp2(r1.y);
    r1.xz = v3.xy * r1.xx;
    r1.xz = floor(r1.xz);
    r1.w = dot(r1.xz, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r1.x = r1.z * 13 + r1.x;
    r1.x = sin(r1.x);
    r1.x = 0.100000001 + abs(r1.x);
    r1.x = r1.w * r1.x;
    r1.yz = v3.xy * r1.yy;
    r1.yz = floor(r1.yz);
    r1.w = dot(r1.yz, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r1.y = r1.z * 13 + r1.y;
    r1.y = sin(r1.y);
    r1.y = 0.100000001 + abs(r1.y);
    r1.y = r1.w * r1.y;
    r1.xy = frac(r1.xy);
    r0.w = frac(r0.w);
    r1.y = r1.y + -r1.x;
    r1.x = r0.w * r1.y + r1.x;
    r1.y = 1 + -r0.w;
    r0.w = min(r1.y, r0.w);
    r1.z = r0.w + r0.w;
    r1.w = 1 + -r0.w;
    r1.yz = r1.xz * r1.xw;
    r1.y = r1.y / r1.z;
    r2.x = -r0.w * 0.5 + r1.x;
    r2.x = r2.x / r1.w;
    r2.y = 1 + -r1.x;
    r2.y = r2.y * r2.y;
    r1.z = r2.y / r1.z;
    r1.z = 1 + -r1.z;
    r1.w = cmp(r1.x < r1.w);
    r0.w = cmp(r1.x < r0.w);
    r0.w = r0.w ? r1.y : r2.x;
    r0.w = r1.w ? r0.w : r1.z;
    r1.x = cmp(0.5 >= cb0[1].x);
    r1.y = cb0[1].x + cb0[1].x;
    r1.y = r0.w * -r1.y + r1.y;
    r1.z = cb0[1].x * 2 + -2;
    r0.w = r0.w * r1.z + 1;
    r0.w = r1.x ? r1.y : r0.w;
  } else {
    r0.w = cb0[1].x;
  }
  r0.w = cmp(-r0.w < 0);
  if (r0.w != 0) discard;
  o1.xyz = saturate(r0.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
  o0.xyz = cb0[0].xyz;
  o0.w = 0;
  o1.w = 0;
  o2.xyz = float3(0,0.5,0);
  o2.w = v0.w;
  return;
}