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
  float4 cb0[51];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r0.xyz * r0.www;
  r2.xy = v3.xy * cb0[3].xy + cb0[3].zw;
  r2.zw = t7.Sample(s1_s, r2.xy).xy;
  r2.zw = r2.zw * cb0[17].xx + cb0[17].yy;
  r1.w = dot(r2.zw, r2.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r3.x = v7.x ? 1 : -1;
  r3.xyz = v0.xyz * r3.xxx;
  r4.xyz = v2.xyz * r2.www;
  r4.xyz = v1.xyz * r2.zzz + r4.xyz;
  r4.xyz = r3.xyz * r1.www + r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r1.x = dot(r1.xyz, r4.xyz);
  r1.x = r1.x * r1.x;
  r1.x = saturate(r1.x * cb0[0].x + cb0[0].y);
  r1.xyz = cb0[2].xyz * r1.xxx + cb0[1].xyz;
  r5.xyzw = t4.Sample(s1_s, r2.xy).xyzw;
  r2.zw = v3.xy * cb0[4].xy + cb0[4].zw;
  r6.xyz = t5.Sample(s2_s, r2.zw).xyz;
  r7.xyz = saturate(float3(4,4,4) * r5.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r6.xyz = r6.xyz * r7.xyz + r8.xyz;
  r6.xyz = r6.xyz + -r5.xyz;
  r5.xyz = cb0[5].xxx * r6.xyz + r5.xyz;
  r1.xyz = r5.xyz * r1.xyz;
  r5.xyz = saturate(float3(18.3791733,18.3791733,18.3791733) * r1.xyz);
  r1.xyz = saturate(r1.xyz * float3(4.59479332,4.59479332,4.59479332) + float3(-0.25,-0.25,-0.25));
  r1.xyz = cb5[1].xyz * r5.xyz + r1.xyz;
  r0.xyz = r0.xyz * r0.www + cb0[50].xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r2.xyz = t6.Sample(s1_s, r2.xy).yzx;
  r0.w = -cb0[47].x + r2.z;
  r1.w = cb5[8].z + r0.w;
  r5.xyz = r1.www * r3.xyz + v2.xyz;
  r1.w = dot(r5.xyz, r5.xyz);
  r1.w = rsqrt(r1.w);
  r5.xyz = r5.xyz * r1.www;
  r0.w = cb5[9].z + r0.w;
  r6.xyz = r0.www * r3.xyz + v2.xyz;
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
  r2.xy = saturate(r2.xy);
  r0.xy = r2.xx * r0.xw;
  r0.z = dot(r3.xyz, cb0[50].xyz);
  r0.z = saturate(cb0[48].x * r0.z + cb0[49].x);
  r0.xy = r0.xy * r0.zz;
  r0.y = cb5[8].y * r0.y;
  r0.x = cb5[9].y * r0.x;
  r0.yzw = saturate(cb5[6].xyz * r0.yyy);
  r2.xzw = saturate(cb5[7].xyz * r0.xxx);
  r0.xyz = r2.xzw + r0.yzw;
  r0.xyz = r1.xyz + r0.xyz;
  r0.w = cmp(0.000000 != cb0[14].x);
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
    r2.z = 1 + -r1.x;
    r2.z = r2.z * r2.z;
    r1.z = r2.z / r1.z;
    r1.z = 1 + -r1.z;
    r1.w = cmp(r1.x < r1.w);
    r0.w = cmp(r1.x < r0.w);
    r0.w = r0.w ? r1.y : r2.x;
    r0.w = r1.w ? r0.w : r1.z;
    r1.x = cmp(0.5 >= cb0[13].x);
    r1.y = cb0[13].x + cb0[13].x;
    r1.y = r0.w * -r1.y + r1.y;
    r1.z = cb0[13].x * 2 + -2;
    r0.w = r0.w * r1.z + 1;
    r0.w = r1.x ? r1.y : r0.w;
  } else {
    r0.w = cb0[13].x;
  }
  r0.w = r5.w + -r0.w;
  r0.w = cmp(r0.w < 0);
  if (r0.w != 0) discard;
  r0.w = cmp(cb5[5].x >= 0);
  r1.x = cmp(0.0500000007 >= cb5[1].w);
  r0.w = r0.w ? r1.x : 0;
  r1.x = cb5[5].x + 128.5;
  r1.x = 0.00390625 * r1.x;
  r1.xy = r0.ww ? r1.xx : float2(0.200000003,0);
  r0.w = saturate(cb5[2].x);
  r0.w = saturate(cb5[2].w * r0.w + cb5[2].z);
  r1.z = cmp(9.99999975e-005 < cb5[5].y);
  r2.xz = saturate(cb5[5].yw);
  r1.w = -2 * r2.x;
  r2.x = r2.x * -2 + -0.200000003;
  r2.x = r2.x * r0.w;
  r1.w = r2.x * -5.00250101 + r1.w;
  r1.w = min(r1.w, r0.w);
  r0.w = r1.z ? r1.w : r0.w;
  r3.xyz = cb5[4].xyz + -r0.xyz;
  o0.xyz = r2.zzz * r3.xyz + r0.xyz;
  r0.x = r0.w * 0.125 + 0.375;
  o1.xyz = saturate(r4.xyz * r0.xxx + float3(0.5,0.5,0.5));
  r0.x = cmp(0.5 < r1.x);
  o1.w = r0.x ? 0.330000 : 0;
  r0.x = cb5[4].w + 0.0078125;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = r0.x + r2.y;
  o2.y = 0.5 * r0.x;
  o0.w = r1.y;
  o2.x = cb5[1].w;
  o2.z = cb5[5].z * 0.800000012;
  o2.w = v0.w;
  return;
}