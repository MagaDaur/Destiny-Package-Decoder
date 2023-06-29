// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

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

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[17];
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

  r0.xy = v3.xy * cb0[15].xy + cb0[15].zw;
  r0.zw = r0.xy * cb7[3].xy + cb7[3].zw;
  r0.xy = r0.xy * cb7[4].xy + cb7[4].zw;
  r1.xyz = t7.Sample(s1_s, r0.xy).xyz;
  r0.xyzw = t6.Sample(s1_s, r0.zw).xyzw;
  r2.xyz = saturate(float3(4,4,4) * r0.xyz);
  r0.xyz = saturate(float3(-0.25,-0.25,-0.25) + r0.xyz);
  r3.xyz = saturate(cb7[27].xyz * r2.xyz + r0.xyz);
  r0.xyz = saturate(cb7[32].xyz * r2.xyz + r0.xyz);
  r0.xyz = -cb7[32].xyz + r0.xyz;
  r2.xyz = -cb7[27].xyz + r3.xyz;
  r3.xyzw = saturate(cb7[29].xyzw);
  r2.xyz = r3.xxx * r2.xyz + cb7[27].xyz;
  r4.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r5.xyz = saturate(float3(4,4,4) * r4.xyz);
  r6.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r2.xyz = saturate(r2.xyz * r5.xyz + r6.xyz);
  r7.xyzw = saturate(cb7[35].xyzw);
  r0.xyz = r7.xxx * r0.xyz + cb7[32].xyz;
  r0.xyz = saturate(r0.xyz * r5.xyz + r6.xyz);
  r2.xyz = r2.xyz + -r0.xyz;
  r5.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r6.xyz = float3(-0.25,-0.188235298,-0.156862751) + r5.ywz;
  r6.yz = saturate(float2(1.231884,1.18604648) * r6.yz);
  r6.x = saturate(r6.x);
  r1.w = saturate(cb7[33].y * r6.y + cb7[33].x);
  r2.w = cb0[14].x * r6.z;
  r1.w = saturate(cb7[33].w * r1.w + cb7[33].z);
  r0.xyz = r1.www * r2.xyz + r0.xyz;
  r0.xyz = r0.xyz + -r4.xyz;
  r2.x = cmp(r5.w >= 0.156862751);
  r2.y = r2.x ? 1.000000 : 0;
  r0.xyz = r2.yyy * r0.xyz + r4.xyz;
  r2.z = cmp(0 != cb7[28].w);
  r4.xyz = r2.zzz ? cb7[28].xyz : 0;
  r4.xyz = r4.xyz * r2.www;
  r4.xyz = r4.xyz * r2.yyy;
  r6.yzw = r4.xyz * r1.www + r0.xyz;
  r4.xyz = r4.xyz * r1.www;
  r2.z = max(r6.y, r6.z);
  r2.z = max(r2.z, r6.w);
  r2.z = saturate(-1 + r2.z);
  r2.z = 1 + -r2.z;
  r0.xyz = r0.xyz * r2.zzz + r4.xyz;
  r2.z = max(r0.x, r0.y);
  r2.z = max(r2.z, r0.z);
  r2.z = max(1, r2.z);
  r0.xyz = r0.xyz / r2.zzz;
  o0.xyz = r0.xyz;
  r0.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.x = max(9.99999975e-005, r0.x);
  r0.x = log2(r0.x);
  r0.x = -cb0[11].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = cb7[30].x + 128.5;
  r0.y = 0.00390625 * r0.y;
  r0.z = cmp(0.0500000007 >= r3.w);
  r0.y = r0.z ? r0.y : -1;
  r0.z = cb0[2].x + 128.5;
  r0.z = 0.00390625 * r0.z;
  r8.xy = saturate(float2(7.96875,4) * r5.wy);
  r2.z = cmp(0.0500000007 >= r8.x);
  r0.z = r2.z ? r0.z : -1;
  o0.w = r2.x ? r0.y : r0.z;
  r0.y = saturate(r0.w * r8.y + r6.x);
  r0.z = saturate(cb7[31].y * r0.y + cb7[31].x);
  r0.y = saturate(cb7[34].y * r0.y + cb7[34].x);
  r0.y = saturate(cb7[34].w * r0.y + cb7[34].z);
  r0.z = saturate(cb7[31].w * r0.z + cb7[31].z);
  r0.w = saturate(cb7[31].y * r5.y + cb7[31].x);
  r0.w = saturate(cb7[31].w * r0.w + cb7[31].z);
  r0.z = r0.z + -r0.w;
  r0.z = r3.z * r0.z + r0.w;
  r0.w = saturate(cb7[34].y * r5.y + cb7[34].x);
  r0.w = saturate(cb7[34].w * r0.w + cb7[34].z);
  r0.y = r0.y + -r0.w;
  r0.y = r7.z * r0.y + r0.w;
  r0.z = r0.z + -r0.y;
  r0.y = r1.w * r0.z + r0.y;
  r0.z = saturate(cb7[5].z + r1.z);
  r1.xy = r1.xy * cb7[5].xx + cb7[5].yy;
  r0.z = -1 + r0.z;
  r0.w = r3.y * r0.z + 1;
  r0.z = r7.y * r0.z + 1;
  r0.w = r0.w + -r0.z;
  r0.z = r1.w * r0.w + r0.z;
  r0.y = min(r0.y, r0.z);
  r0.zw = saturate(cb7[30].yz);
  r1.z = r0.z * -2 + -0.200000003;
  r1.z = r1.z * r0.y;
  r2.x = -2 * r0.z;
  r1.z = r1.z * -5.00250101 + r2.x;
  r1.z = min(r1.z, r0.y);
  r0.z = cmp(9.99999975e-005 < r0.z);
  r0.w = r2.y * r0.w;
  o2.z = 0.800000012 * r0.w;
  r6.x = r0.z ? r1.z : r0.y;
  r0.y = -r7.w + r3.w;
  r6.y = r1.w * r0.y + r7.w;
  r8.z = r5.y;
  r5.x = saturate(r5.x);
  r0.yz = r6.xy + -r8.zx;
  r0.yz = r2.yy * r0.yz + r8.zx;
  r0.y = r0.y * 0.125 + 0.375;
  o2.x = r0.z;
  r0.zw = t1.Sample(s3_s, v3.xy).xy;
  r0.zw = r0.zw * cb0[16].xx + cb0[16].yy;
  r2.xz = r1.xy * r3.yy + r0.zw;
  r1.xy = r1.xy * r7.yy + r0.zw;
  r2.xz = r2.xz + -r1.xy;
  r1.xy = r1.ww * r2.xz + r1.xy;
  r1.xy = r1.xy + -r0.zw;
  r1.xy = r2.yy * r1.xy + r0.zw;
  r0.z = dot(r1.xy, r1.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r1.z = sqrt(r0.z);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r2.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r2.xyz;
  r0.z = v6.x ? 1 : -1;
  r2.xyz = v0.xyz * r0.zzz;
  r1.xyz = r2.xyz * r1.zzz + r1.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  o1.xyz = saturate(r1.xyz * r0.yyy + float3(0.5,0.5,0.5));
  o1.w = 0;
  r0.y = max(r4.x, r4.y);
  r0.y = max(r0.y, r4.z);
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r2.xyz * r0.zzz;
  r0.z = dot(cb0[5].xyz, r1.xyz);
  r0.w = cb0[4].x + -cb0[3].x;
  r0.z = saturate(r0.z * r0.w + cb0[3].x);
  r0.w = -cb0[6].z + v4.z;
  r0.w = cb0[7].x * r0.w;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[8].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb0[9].x * r0.w);
  r0.z = r0.z * r0.w;
  r1.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * cb0[10].x + cb0[10].y);
  r0.z = r0.z * r0.w;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * cb0[13].x + r0.y;
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = r0.x + r5.x;
  o2.y = 0.5 * r0.x;
  r0.x = saturate(cb0[12].x);
  o2.w = v0.w + r0.x;
  return;
}