// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
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

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(r0.xyz, v0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[6].x + cb0[6].y);
  r0.x = log2(r0.x);
  r0.x = cb0[7].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = min(1, r0.x);
  o0.xyz = cb0[1].xyz * r0.yyy + cb0[0].xyz;
  r0.y = dot(v0.xyz, v0.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v0.xyz * r0.yyy;
  r1.x = cmp(0.000000 != cb0[3].x);
  if (r1.x != 0) {
    r1.xy = ddx_coarse(v3.xy);
    r1.x = dot(r1.xy, r1.xy);
    r1.yz = ddy_coarse(v3.xy);
    r1.y = dot(r1.yz, r1.yz);
    r1.xy = sqrt(r1.xy);
    r1.x = max(r1.x, r1.y);
    r1.x = 1 / r1.x;
    r1.x = log2(r1.x);
    r1.y = floor(r1.x);
    r1.y = exp2(r1.y);
    r1.z = ceil(r1.x);
    r1.z = exp2(r1.z);
    r1.yw = v3.xy * r1.yy;
    r1.yw = floor(r1.yw);
    r2.x = dot(r1.yw, float2(17,0.100000001));
    r2.x = sin(r2.x);
    r2.x = 10000 * r2.x;
    r1.y = r1.w * 13 + r1.y;
    r1.y = sin(r1.y);
    r1.y = 0.100000001 + abs(r1.y);
    r1.y = r2.x * r1.y;
    r1.zw = v3.xy * r1.zz;
    r1.zw = floor(r1.zw);
    r2.x = dot(r1.zw, float2(17,0.100000001));
    r2.x = sin(r2.x);
    r2.x = 10000 * r2.x;
    r1.z = r1.w * 13 + r1.z;
    r1.z = sin(r1.z);
    r1.z = 0.100000001 + abs(r1.z);
    r1.z = r2.x * r1.z;
    r1.xyz = frac(r1.xyz);
    r1.z = r1.z + -r1.y;
    r1.y = r1.x * r1.z + r1.y;
    r1.z = 1 + -r1.x;
    r1.x = min(r1.x, r1.z);
    r1.z = r1.y * r1.y;
    r1.w = r1.x + r1.x;
    r2.xz = float2(1,1) + -r1.xy;
    r1.w = r2.x * r1.w;
    r1.z = r1.z / r1.w;
    r2.y = -r1.x * 0.5 + r1.y;
    r2.y = r2.y / r2.x;
    r2.z = r2.z * r2.z;
    r1.w = r2.z / r1.w;
    r1.w = 1 + -r1.w;
    r2.x = cmp(r1.y < r2.x);
    r1.x = cmp(r1.y < r1.x);
    r1.x = r1.x ? r1.z : r2.y;
    r1.x = r2.x ? r1.x : r1.w;
    r1.y = cmp(0.5 >= cb0[2].x);
    r1.z = cb0[2].x + cb0[2].x;
    r1.z = r1.x * -r1.z + r1.z;
    r1.w = cb0[2].x * 2 + -2;
    r1.x = r1.x * r1.w + 1;
    r1.x = r1.y ? r1.z : r1.x;
  } else {
    r1.x = cb0[2].x;
  }
  r0.x = -r1.x + r0.x;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o1.xyz = saturate(r0.yzw * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5));
  o0.w = 0.998046875;
  o1.w = 0.330000013;
  o2.xyz = float3(0,0.5,0);
  o2.w = v0.w;
  return;
}