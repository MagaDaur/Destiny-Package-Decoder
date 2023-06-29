// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:42 2023
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = (uint)v2.w;
  r0.z = cmp((uint)r0.y >= 4);
  if (r0.z != 0) {
    r0.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r0.z = t9.Sample(s1_s, r0.zw).z;
    r0.z = saturate(cb7[8].z + r0.z);
  } else {
    r0.w = cmp((uint)r0.y >= 2);
    if (r0.w != 0) {
      r1.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r0.w = t7.Sample(s1_s, r1.xy).z;
      r0.z = saturate(cb7[5].z + r0.w);
    } else {
      r1.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r0.w = t5.Sample(s1_s, r1.xy).z;
      r0.z = saturate(cb7[2].z + r0.w);
    }
  }
  r1.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(9,10,11,12));
  r2.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(13,14,15,17));
  r0.yw = saturate(cb7[r1.z+0].yw);
  r3.xy = saturate(cb7[r1.w+0].yz);
  r1.z = saturate(cb7[r2.w+0].w);
  r4.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r3.zw = t1.Sample(s3_s, v3.xy).xy;
  r3.zw = r3.zw * cb0[16].xx + cb0[16].yy;
  r5.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r2.w = cmp(r5.w >= 0.156862751);
  r4.w = r2.w ? 1.000000 : 0;
  r5.zw = float2(-0.188235298,-0.156862751) + r5.wz;
  r5.zw = saturate(float2(1.231884,1.18604648) * r5.zw);
  r5.z = saturate(cb7[r2.z+0].y * r5.z + cb7[r2.z+0].x);
  r2.z = saturate(cb7[r2.z+0].w * r5.z + cb7[r2.z+0].z);
  r6.x = cb0[3].x * r5.y;
  r5.z = cb0[4].x + 128.5;
  r5.z = 0.00390625 * r5.z;
  r6.z = cmp(0.0500000007 >= cb0[2].x);
  r5.z = r6.z ? r5.z : -1;
  r6.z = saturate(cb7[r2.x+0].y * r6.x + cb7[r2.x+0].x);
  r2.x = saturate(cb7[r2.x+0].w * r6.z + cb7[r2.x+0].z);
  r7.xyz = saturate(float3(4,4,4) * r4.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r9.xyz = saturate(cb7[r1.x+0].xyz * r7.xyz + r8.xyz);
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z;
  r7.xyz = saturate(cb7[r2.y+0].xyz * r7.xyz + r8.xyz);
  r8.xyz = r9.xyz + -r7.xyz;
  r7.xyz = r2.zzz * r8.xyz + r7.xyz;
  r6.y = cb0[2].x;
  r0.z = -r5.y * cb0[3].x + r2.x;
  r0.z = r2.z * r0.z + r6.x;
  r1.x = -r1.z + r0.w;
  r2.y = r2.z * r1.x + r1.z;
  r0.y = r2.z * r0.y + 1;
  r1.x = cb7[r1.w+0].x + 128.5;
  r1.x = 0.00390625 * r1.x;
  r0.w = cmp(0.0500000007 >= r0.w);
  r0.w = r0.w ? r1.x : -1;
  r0.y = min(r0.z, r0.y);
  r0.z = cmp(9.99999975e-005 < r3.x);
  r1.x = -2 * r3.x;
  r1.z = r3.x * -2 + -0.200000003;
  r1.z = r1.z * r0.y;
  r1.x = r1.z * -5.00250101 + r1.x;
  r1.x = min(r1.x, r0.y);
  r2.x = r0.z ? r1.x : r0.y;
  r1.xzw = r7.xyz + -r4.xyz;
  r1.xzw = r4.www * r1.xzw + r4.xyz;
  r0.yz = r2.zz * r3.zw + -r3.zw;
  r4.xy = r4.ww * r0.yz + r3.zw;
  r0.yz = r2.xy + -r6.xy;
  r0.yz = r4.ww * r0.yz + r6.xy;
  r2.x = r4.w * r3.y;
  o0.w = r2.w ? r0.w : r5.z;
  r0.w = cmp(0 != cb7[r1.y+0].w);
  r3.xyz = r0.www ? cb7[r1.y+0].xyz : 0;
  r0.w = cb0[15].x * r5.w;
  r3.xyz = r0.www * r3.xyz;
  r3.xyz = r3.xyz * r4.www;
  r5.yzw = r3.xyz * r2.zzz;
  r2.yzw = r3.xyz * r2.zzz + r1.xzw;
  r0.w = max(r2.y, r2.z);
  r0.w = max(r0.w, r2.w);
  r0.w = saturate(-1 + r0.w);
  r0.w = 1 + -r0.w;
  r1.xyz = r1.xzw * r0.www + r5.yzw;
  r0.w = max(r1.x, r1.y);
  r0.w = max(r0.w, r1.z);
  r0.w = max(1, r0.w);
  r1.xyz = r1.xyz / r0.www;
  r0.w = max(r5.y, r5.z);
  r0.w = max(r0.w, r5.w);
  r1.w = dot(r4.xy, r4.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r4.z = sqrt(r1.w);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r2.yzw = r4.xyz * r1.www;
  r3.xyz = v2.xyz * r2.zzz;
  r3.xyz = v1.xyz * r2.yyy + r3.xyz;
  r2.yzw = v0.xyz * r2.www + r3.xyz;
  r1.w = dot(r2.yzw, r2.yzw);
  r1.w = rsqrt(r1.w);
  r2.yzw = r2.yzw * r1.www;
  r1.w = saturate(cb0[13].x);
  r3.x = dot(v0.xyz, v0.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v0.xyz * r3.xxx;
  r3.x = dot(cb0[6].xyz, r3.xyz);
  r3.y = -cb0[5].x + cb0[2].x;
  r3.x = saturate(r3.x * r3.y + cb0[5].x);
  r3.y = -cb0[7].z + v4.z;
  r3.y = cb0[8].x * r3.y;
  r3.y = max(0, r3.y);
  r3.y = log2(r3.y);
  r3.y = cb0[9].x * r3.y;
  r3.y = exp2(r3.y);
  r3.y = saturate(cb0[10].x * r3.y);
  r3.x = r3.x * r3.y;
  r0.x = saturate(r0.x * cb0[11].x + cb0[11].y);
  r0.x = r3.x * r0.x;
  r3.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = log2(r3.x);
  r3.x = -cb0[12].x * r3.x;
  r3.x = exp2(r3.x);
  r0.x = r3.x * r0.x;
  o2.w = v0.w + r1.w;
  r0.x = r0.x * cb0[14].x + r0.w;
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r2.yzw * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r5.x = saturate(r5.x);
  r0.x = r5.x + r0.x;
  o2.y = 0.5 * r0.x;
  o2.z = 0.800000012 * r2.x;
  o0.xyz = r1.xyz;
  o1.w = 0;
  o2.x = r0.z;
  return;
}