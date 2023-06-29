// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture2D<float4> t2 : register(t2);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[37];
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

  r0.x = t2.Sample(s1_s, v0.xy).z;
  r0.x = saturate(7.96875 * r0.x);
  r0.y = cmp(0.000000 != cb0[36].x);
  if (r0.y != 0) {
    r0.yz = ddx_coarse(v0.xy);
    r0.y = dot(r0.yz, r0.yz);
    r0.zw = ddy_coarse(v0.xy);
    r0.z = dot(r0.zw, r0.zw);
    r0.yz = sqrt(r0.yz);
    r0.y = max(r0.y, r0.z);
    r0.y = 1 / r0.y;
    r0.y = log2(r0.y);
    r0.z = floor(r0.y);
    r0.z = exp2(r0.z);
    r0.w = ceil(r0.y);
    r0.w = exp2(r0.w);
    r1.xy = v0.xy * r0.zz;
    r1.xy = floor(r1.xy);
    r0.z = dot(r1.xy, float2(17,0.100000001));
    r0.z = sin(r0.z);
    r0.z = 10000 * r0.z;
    r1.x = r1.y * 13 + r1.x;
    r1.x = sin(r1.x);
    r1.x = 0.100000001 + abs(r1.x);
    r0.z = r1.x * r0.z;
    r1.xy = v0.xy * r0.ww;
    r1.xy = floor(r1.xy);
    r0.w = dot(r1.xy, float2(17,0.100000001));
    r0.w = sin(r0.w);
    r0.w = 10000 * r0.w;
    r1.x = r1.y * 13 + r1.x;
    r1.x = sin(r1.x);
    r1.x = 0.100000001 + abs(r1.x);
    r0.w = r1.x * r0.w;
    r0.yzw = frac(r0.yzw);
    r0.w = r0.w + -r0.z;
    r0.z = r0.y * r0.w + r0.z;
    r0.w = 1 + -r0.y;
    r0.y = min(r0.y, r0.w);
    r0.w = r0.z * r0.z;
    r1.x = r0.y + r0.y;
    r1.yw = float2(1,1) + -r0.yz;
    r1.xw = r1.xw * r1.yw;
    r0.w = r0.w / r1.x;
    r1.z = -r0.y * 0.5 + r0.z;
    r1.xz = r1.wz / r1.xy;
    r1.x = 1 + -r1.x;
    r1.y = cmp(r0.z < r1.y);
    r0.y = cmp(r0.z < r0.y);
    r0.y = r0.y ? r0.w : r1.z;
    r0.y = r1.y ? r0.y : r1.x;
    r0.z = cmp(0.5 >= cb0[35].x);
    r0.w = cb0[35].x + cb0[35].x;
    r0.w = r0.y * -r0.w + r0.w;
    r1.x = cb0[35].x * 2 + -2;
    r0.y = r0.y * r1.x + 1;
    r0.y = r0.z ? r0.w : r0.y;
  } else {
    r0.y = cb0[35].x;
  }
  r0.x = r0.x + -r0.y;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  o0.xyzw = float4(1,1,1,1);
  return;
}