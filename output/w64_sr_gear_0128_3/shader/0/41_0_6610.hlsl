// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[36];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy * cb0[8].xy + cb0[8].zw;
  r0.xy = r0.xy * cb7[4].xy + cb7[4].zw;
  r0.x = t7.Sample(s1_s, r0.xy).z;
  r0.x = saturate(cb7[5].z + r0.x);
  r0.yz = saturate(cb7[29].yw);
  r1.xy = saturate(cb7[30].yz);
  r0.w = saturate(cb7[35].w);
  r2.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r1.zw = t1.Sample(s3_s, v3.xy).xy;
  r1.zw = r1.zw * cb0[9].xx + cb0[9].yy;
  r3.xyz = t2.Sample(s4_s, v3.xy).xzw;
  r2.w = cmp(r3.z >= 0.156862751);
  r3.w = r2.w ? 1.000000 : 0;
  r4.x = -0.188235298 + r3.z;
  r4.x = saturate(1.231884 * r4.x);
  r5.yz = saturate(float2(7.96875,7.96875) * r3.yz);
  r3.y = v6.x ? 1 : -1;
  r3.z = saturate(cb7[33].y * r4.x + cb7[33].x);
  r3.z = saturate(cb7[33].w * r3.z + cb7[33].z);
  r4.x = saturate(cb0[2].x);
  r5.x = -2 * r4.x;
  r4.y = cb0[3].x + 128.5;
  r4.y = 0.00390625 * r4.y;
  r4.z = cmp(0.0500000007 >= r5.z);
  r4.y = r4.z ? r4.y : -1;
  r4.z = saturate(cb7[31].y * r5.x + cb7[31].x);
  r4.z = saturate(cb7[31].w * r4.z + cb7[31].z);
  r6.xyz = saturate(float3(4,4,4) * r2.xyz);
  r7.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r8.xyz = saturate(cb7[27].xyz * r6.xyz + r7.xyz);
  r0.x = -1 + r0.x;
  r0.x = r0.y * r0.x;
  r6.xyz = saturate(cb7[32].xyz * r6.xyz + r7.xyz);
  r7.xyz = r8.xyz + -r6.xyz;
  r6.xyz = r3.zzz * r7.xyz + r6.xyz;
  r0.y = -r4.x * -2 + r4.z;
  r0.y = r3.z * r0.y + r5.x;
  r4.x = r0.z + -r0.w;
  r7.y = r3.z * r4.x + r0.w;
  r0.x = r3.z * r0.x + 1;
  r0.y = cb0[7].x * r0.y;
  r0.w = cb7[30].x + 128.5;
  r0.w = 0.00390625 * r0.w;
  r0.z = cmp(0.0500000007 >= r0.z);
  r0.z = r0.z ? r0.w : -1;
  r0.x = min(r0.y, r0.x);
  r0.y = cmp(9.99999975e-005 < r1.x);
  r0.w = -2 * r1.x;
  r1.x = r1.x * -2 + -0.200000003;
  r1.x = r1.x * r0.x;
  r0.w = r1.x * -5.00250101 + r0.w;
  r0.w = min(r0.x, r0.w);
  r7.x = r0.y ? r0.w : r0.x;
  r0.xyw = r6.xyz * cb0[6].xyz + -r2.xyz;
  o0.xyz = r3.www * r0.xyw + r2.xyz;
  r0.xy = r3.zz * r1.zw + -r1.zw;
  r2.xy = r3.ww * r0.xy + r1.zw;
  r0.xy = r7.xy + -r5.xz;
  r0.xy = r3.ww * r0.xy + r5.xz;
  r0.w = r3.w * r1.y;
  o0.w = r2.w ? r0.z : r4.y;
  r0.z = dot(r2.xy, r2.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r2.z = sqrt(r0.z);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r2.xyz * r0.zzz;
  r2.xyz = v0.xyz * r3.yyy;
  r3.yzw = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r3.yzw;
  r1.xyz = r2.xyz * r1.zzz + r1.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = cmp(0.000000 != cb0[5].x);
  if (r0.z != 0) {
    r2.xy = ddx_coarse(v3.xy);
    r0.z = dot(r2.xy, r2.xy);
    r0.z = sqrt(r0.z);
    r2.xy = ddy_coarse(v3.xy);
    r1.w = dot(r2.xy, r2.xy);
    r1.w = sqrt(r1.w);
    r0.z = max(r1.w, r0.z);
    r0.z = 1 / r0.z;
    r0.z = log2(r0.z);
    r1.w = floor(r0.z);
    r1.w = exp2(r1.w);
    r2.x = ceil(r0.z);
    r2.x = exp2(r2.x);
    r2.yz = v3.xy * r1.ww;
    r2.yz = floor(r2.yz);
    r1.w = dot(r2.yz, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r2.y = r2.z * 13 + r2.y;
    r2.y = sin(r2.y);
    r2.y = 0.100000001 + abs(r2.y);
    r1.w = r2.y * r1.w;
    r1.w = frac(r1.w);
    r2.xy = v3.xy * r2.xx;
    r2.xy = floor(r2.xy);
    r2.z = dot(r2.xy, float2(17,0.100000001));
    r2.z = sin(r2.z);
    r2.z = 10000 * r2.z;
    r2.x = r2.y * 13 + r2.x;
    r2.x = sin(r2.x);
    r2.x = 0.100000001 + abs(r2.x);
    r2.x = r2.z * r2.x;
    r2.x = frac(r2.x);
    r0.z = frac(r0.z);
    r2.x = r2.x + -r1.w;
    r1.w = r0.z * r2.x + r1.w;
    r2.x = 1 + -r0.z;
    r0.z = min(r2.x, r0.z);
    r2.x = r1.w * r1.w;
    r2.y = r0.z + r0.z;
    r2.z = 1 + -r0.z;
    r2.y = r2.y * r2.z;
    r2.w = -r0.z * 0.5 + r1.w;
    r2.xw = r2.xw / r2.yz;
    r3.y = 1 + -r1.w;
    r3.y = r3.y * r3.y;
    r2.y = r3.y / r2.y;
    r2.y = 1 + -r2.y;
    r2.z = cmp(r1.w < r2.z);
    r0.z = cmp(r1.w < r0.z);
    r0.z = r0.z ? r2.x : r2.w;
    r0.z = r2.z ? r0.z : r2.y;
    r1.w = cmp(0.5 >= cb0[4].x);
    r2.x = cb0[4].x + cb0[4].x;
    r2.x = r0.z * -r2.x + r2.x;
    r2.y = cb0[4].x * 2 + -2;
    r0.z = r0.z * r2.y + 1;
    r0.z = r1.w ? r2.x : r0.z;
  } else {
    r0.z = cb0[4].x;
  }
  r0.z = r5.y + -r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.x = r0.x * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.xxx + float3(0.5,0.5,0.5));
  r3.x = saturate(r3.x);
  o2.y = 0.5 * r3.x;
  o2.z = 0.800000012 * r0.w;
  o1.w = 0;
  o2.x = r0.y;
  o2.w = v0.w;
  return;
}