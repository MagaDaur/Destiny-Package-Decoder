// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
cbuffer cb13 : register(b13)
{
  float4 cb13[14];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb13[13].xyz + -v1.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = saturate(cb0[30].y);
  r0.y = r0.y * 0.5 + -1;
  r0.y = cb0[31].x * r0.y + 1;
  r0.x = saturate(r0.x * cb0[32].x + cb0[32].y);
  r0.z = cmp(0.000000 != cb0[34].x);
  if (r0.z != 0) {
    r0.zw = ddx_coarse(v0.xy);
    r0.z = dot(r0.zw, r0.zw);
    r1.xy = ddy_coarse(v0.xy);
    r0.w = dot(r1.xy, r1.xy);
    r0.zw = sqrt(r0.zw);
    r0.z = max(r0.z, r0.w);
    r0.z = 1 / r0.z;
    r0.z = log2(r0.z);
    r0.w = floor(r0.z);
    r0.w = exp2(r0.w);
    r1.x = ceil(r0.z);
    r1.x = exp2(r1.x);
    r1.yz = v0.xy * r0.ww;
    r1.yz = floor(r1.yz);
    r0.w = dot(r1.yz, float2(17,0.100000001));
    r0.w = sin(r0.w);
    r0.w = 10000 * r0.w;
    r1.y = r1.z * 13 + r1.y;
    r1.y = sin(r1.y);
    r1.y = 0.100000001 + abs(r1.y);
    r0.w = r1.y * r0.w;
    r1.xy = v0.xy * r1.xx;
    r1.xy = floor(r1.xy);
    r1.z = dot(r1.xy, float2(17,0.100000001));
    r1.z = sin(r1.z);
    r1.z = 10000 * r1.z;
    r1.x = r1.y * 13 + r1.x;
    r1.x = sin(r1.x);
    r1.x = 0.100000001 + abs(r1.x);
    r1.x = r1.z * r1.x;
    r1.x = frac(r1.x);
    r0.zw = frac(r0.zw);
    r1.x = r1.x + -r0.w;
    r0.w = r0.z * r1.x + r0.w;
    r1.x = 1 + -r0.z;
    r0.z = min(r1.x, r0.z);
    r1.x = r0.w * r0.w;
    r1.y = r0.z + r0.z;
    r1.z = 1 + -r0.z;
    r1.y = r1.y * r1.z;
    r1.w = -r0.z * 0.5 + r0.w;
    r1.xw = r1.xw / r1.yz;
    r2.x = 1 + -r0.w;
    r2.x = r2.x * r2.x;
    r1.y = r2.x / r1.y;
    r1.y = 1 + -r1.y;
    r1.z = cmp(r0.w < r1.z);
    r0.z = cmp(r0.w < r0.z);
    r0.z = r0.z ? r1.x : r1.w;
    r0.z = r1.z ? r0.z : r1.y;
    r0.w = cmp(0.5 >= cb0[33].x);
    r1.x = cb0[33].x + cb0[33].x;
    r1.x = r0.z * -r1.x + r1.x;
    r1.y = cb0[33].x * 2 + -2;
    r0.z = r0.z * r1.y + 1;
    r0.z = r0.w ? r1.x : r0.z;
  } else {
    r0.z = cb0[33].x;
  }
  r0.x = r0.y * r0.x + -r0.z;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(1,1,1,1);
  return;
}