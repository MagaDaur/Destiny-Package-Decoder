// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
cbuffer cb0 : register(b0)
{
  float4 cb0[3];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cmp(0.000000 != cb0[2].x);
  if (r0.x != 0) {
    r0.xy = ddx_coarse(v0.xy);
    r0.x = dot(r0.xy, r0.xy);
    r0.yz = ddy_coarse(v0.xy);
    r0.y = dot(r0.yz, r0.yz);
    r0.xy = sqrt(r0.xy);
    r0.x = max(r0.x, r0.y);
    r0.x = 1 / r0.x;
    r0.x = log2(r0.x);
    r0.y = floor(r0.x);
    r0.y = exp2(r0.y);
    r0.z = ceil(r0.x);
    r0.z = exp2(r0.z);
    r0.yw = v0.xy * r0.yy;
    r0.yw = floor(r0.yw);
    r1.x = dot(r0.yw, float2(17,0.100000001));
    r1.x = sin(r1.x);
    r1.x = 10000 * r1.x;
    r0.y = r0.w * 13 + r0.y;
    r0.y = sin(r0.y);
    r0.y = 0.100000001 + abs(r0.y);
    r0.y = r1.x * r0.y;
    r0.zw = v0.xy * r0.zz;
    r0.zw = floor(r0.zw);
    r1.x = dot(r0.zw, float2(17,0.100000001));
    r1.x = sin(r1.x);
    r1.x = 10000 * r1.x;
    r0.z = r0.w * 13 + r0.z;
    r0.z = sin(r0.z);
    r0.z = 0.100000001 + abs(r0.z);
    r0.z = r1.x * r0.z;
    r0.xyz = frac(r0.xyz);
    r0.z = r0.z + -r0.y;
    r0.y = r0.x * r0.z + r0.y;
    r0.z = 1 + -r0.x;
    r0.x = min(r0.x, r0.z);
    r0.z = r0.y * r0.y;
    r0.w = r0.x + r0.x;
    r1.xz = float2(1,1) + -r0.xy;
    r0.w = r1.x * r0.w;
    r0.z = r0.z / r0.w;
    r1.y = -r0.x * 0.5 + r0.y;
    r1.y = r1.y / r1.x;
    r1.z = r1.z * r1.z;
    r0.w = r1.z / r0.w;
    r0.w = 1 + -r0.w;
    r1.x = cmp(r0.y < r1.x);
    r0.x = cmp(r0.y < r0.x);
    r0.x = r0.x ? r0.z : r1.y;
    r0.x = r1.x ? r0.x : r0.w;
    r0.y = cmp(0.5 >= cb0[1].x);
    r0.z = cb0[1].x + cb0[1].x;
    r0.z = r0.x * -r0.z + r0.z;
    r0.w = cb0[1].x * 2 + -2;
    r0.x = r0.x * r0.w + 1;
    r0.x = r0.y ? r0.z : r0.x;
  } else {
    r0.x = cb0[1].x;
  }
  r0.x = cmp(-r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(1,1,1,1);
  return;
}