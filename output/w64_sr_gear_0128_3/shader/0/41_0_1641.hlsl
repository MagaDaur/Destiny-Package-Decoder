// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb5 : register(b5)
{
  float4 cb5[10];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[48];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xy = v3.xy * cb0[0].xy + cb0[0].zw;
  r1.zw = t7.Sample(s1_s, r1.xy).xy;
  r1.zw = r1.zw * cb0[14].xx + cb0[14].yy;
  r2.x = dot(r1.zw, r1.zw);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r2.x = sqrt(r2.x);
  r2.y = v7.x ? 1 : -1;
  r2.yzw = v0.xyz * r2.yyy;
  r3.xyzw = t4.Sample(s1_s, r1.xy).xyzw;
  r4.xy = v3.xy * cb0[1].xy + cb0[1].zw;
  r4.xyz = t5.Sample(s2_s, r4.xy).xyz;
  r5.xyz = saturate(float3(4,4,4) * r3.xyz);
  r6.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r4.xyz = r4.xyz * r5.xyz + r6.xyz;
  r4.xyz = r4.xyz + -r3.xyz;
  r3.xyz = cb0[2].xxx * r4.xyz + r3.xyz;
  r4.xyz = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r3.xyz = cb5[1].xyz * r4.xyz + r3.xyz;
  r4.xyz = v2.xyz * r1.www;
  r4.xyz = v1.xyz * r1.zzz + r4.xyz;
  r4.xyz = r2.yzw * r2.xxx + r4.xyz;
  r1.z = dot(r4.xyz, r4.xyz);
  r1.z = rsqrt(r1.z);
  r4.xyz = r4.xyz * r1.zzz;
  r0.xyz = r0.xyz * r0.www + cb0[47].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r1.xyz = t6.Sample(s1_s, r1.xy).yzx;
  r0.w = -cb0[44].x + r1.z;
  r1.z = cb5[8].z + r0.w;
  r5.xyz = r1.zzz * r2.yzw + v2.xyz;
  r1.z = dot(r5.xyz, r5.xyz);
  r1.z = rsqrt(r1.z);
  r5.xyz = r5.xyz * r1.zzz;
  r0.w = cb5[9].z + r0.w;
  r6.xyz = r0.www * r2.yzw + v2.xyz;
  r0.w = dot(r6.xyz, r6.xyz);
  r0.w = rsqrt(r0.w);
  r6.xyz = r6.xyz * r0.www;
  r0.w = dot(r5.xyz, r0.xyz);
  r0.w = -r0.w * r0.w + 1;
  r0.w = sqrt(r0.w);
  r0.w = log2(r0.w);
  r0.w = cb5[8].x * r0.w;
  r0.w = exp2(r0.w);
  r0.x = dot(r6.xyz, r0.xyz);
  r0.x = -r0.x * r0.x + 1;
  r0.x = sqrt(r0.x);
  r0.x = log2(r0.x);
  r0.x = cb5[9].x * r0.x;
  r0.x = exp2(r0.x);
  r1.xy = saturate(r1.xy);
  r0.xy = r1.xx * r0.xw;
  r0.z = dot(r2.yzw, cb0[47].xyz);
  r0.z = saturate(cb0[45].x * r0.z + cb0[46].x);
  r0.xy = r0.xy * r0.zz;
  r0.y = cb5[8].y * r0.y;
  r0.x = cb5[9].y * r0.x;
  r0.yzw = saturate(cb5[6].xyz * r0.yyy);
  r1.xzw = saturate(cb5[7].xyz * r0.xxx);
  r0.xyz = r1.xzw + r0.yzw;
  r0.xyz = r3.xyz + r0.xyz;
  r0.w = cmp(0.000000 != cb0[11].x);
  if (r0.w != 0) {
    r1.xz = ddx_coarse(v3.xy);
    r0.w = dot(r1.xz, r1.xz);
    r0.w = sqrt(r0.w);
    r1.xz = ddy_coarse(v3.xy);
    r1.x = dot(r1.xz, r1.xz);
    r1.x = sqrt(r1.x);
    r0.w = max(r1.x, r0.w);
    r0.w = 1 / r0.w;
    r0.w = log2(r0.w);
    r1.x = floor(r0.w);
    r1.x = exp2(r1.x);
    r1.z = ceil(r0.w);
    r1.z = exp2(r1.z);
    r1.xw = v3.xy * r1.xx;
    r1.xw = floor(r1.xw);
    r2.x = dot(r1.xw, float2(17,0.100000001));
    r2.x = sin(r2.x);
    r2.x = 10000 * r2.x;
    r1.x = r1.w * 13 + r1.x;
    r1.x = sin(r1.x);
    r1.x = 0.100000001 + abs(r1.x);
    r1.x = r2.x * r1.x;
    r1.zw = v3.xy * r1.zz;
    r1.zw = floor(r1.zw);
    r2.x = dot(r1.zw, float2(17,0.100000001));
    r2.x = sin(r2.x);
    r2.x = 10000 * r2.x;
    r1.z = r1.w * 13 + r1.z;
    r1.z = sin(r1.z);
    r1.z = 0.100000001 + abs(r1.z);
    r1.z = r2.x * r1.z;
    r1.xz = frac(r1.xz);
    r0.w = frac(r0.w);
    r1.z = r1.z + -r1.x;
    r1.x = r0.w * r1.z + r1.x;
    r1.z = 1 + -r0.w;
    r0.w = min(r1.z, r0.w);
    r1.z = r1.x * r1.x;
    r1.w = r0.w + r0.w;
    r2.x = 1 + -r0.w;
    r1.w = r2.x * r1.w;
    r1.z = r1.z / r1.w;
    r2.y = -r0.w * 0.5 + r1.x;
    r2.y = r2.y / r2.x;
    r2.z = 1 + -r1.x;
    r2.z = r2.z * r2.z;
    r1.w = r2.z / r1.w;
    r1.w = 1 + -r1.w;
    r2.x = cmp(r1.x < r2.x);
    r0.w = cmp(r1.x < r0.w);
    r0.w = r0.w ? r1.z : r2.y;
    r0.w = r2.x ? r0.w : r1.w;
    r1.x = cmp(0.5 >= cb0[10].x);
    r1.z = cb0[10].x + cb0[10].x;
    r1.z = r0.w * -r1.z + r1.z;
    r1.w = cb0[10].x * 2 + -2;
    r0.w = r0.w * r1.w + 1;
    r0.w = r1.x ? r1.z : r0.w;
  } else {
    r0.w = cb0[10].x;
  }
  r0.w = r3.w + -r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = cmp(cb5[5].x >= 0);
  r1.x = cmp(0.0500000007 >= cb5[1].w);
  r0.w = r0.w ? r1.x : 0;
  r1.x = cb5[5].x + 128.5;
  r1.x = 0.00390625 * r1.x;
  r1.xz = r0.ww ? r1.xx : float2(0.200000003,0);
  r0.w = saturate(cb5[2].x);
  r0.w = saturate(cb5[2].w * r0.w + cb5[2].z);
  r1.w = cmp(9.99999975e-005 < cb5[5].y);
  r2.xy = saturate(cb5[5].yw);
  r2.z = -2 * r2.x;
  r2.x = r2.x * -2 + -0.200000003;
  r2.x = r2.x * r0.w;
  r2.x = r2.x * -5.00250101 + r2.z;
  r2.x = min(r2.x, r0.w);
  r0.w = r1.w ? r2.x : r0.w;
  r2.xzw = cb5[4].xyz + -r0.xyz;
  o0.xyz = r2.yyy * r2.xzw + r0.xyz;
  r0.x = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r4.xyz * r0.xxx + float3(0.5,0.5,0.5));
  r0.x = cmp(0.5 < r1.x);
  o1.w = r0.x ? 0.330000 : 0;
  r0.x = cb5[4].w + 0.0078125;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = r0.x + r1.y;
  o2.y = 0.5 * r0.x;
  o0.w = r1.z;
  o2.x = cb5[1].w;
  o2.z = cb5[5].z * 0.800000012;
  o2.w = v0.w;
  return;
}