// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
Texture2D<uint4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s0_s : register(s0);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[18];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v0.xy;
  r0.zw = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.zw;
  r1.zw = float2(0,0);
  r0.z = t1.Load(r1.xyw).x;
  r2.xyzw = cb0[4].xyzw * v0.yyyy;
  r2.xyzw = cb0[3].xyzw * v0.xxxx + r2.xyzw;
  r2.xyzw = cb0[5].xyzw * r0.zzzz + r2.xyzw;
  r2.xyzw = cb0[6].xyzw + r2.xyzw;
  r2.xyz = r2.xyz / r2.www;
  r3.xyz = cb0[7].xyz + -r2.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = sqrt(r0.z);
  r0.w = saturate(r0.z * cb0[11].x + cb0[11].y);
  r0.w = r0.w * r0.w;
  r2.w = cmp(9.99999975e-005 < r0.w);
  if (r2.w != 0) {
    r4.xyz = t0.Load(r1.xyw).xyz;
    r4.xyz = r4.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = t2.Sample(s0_s, r0.xy).xyz;
    r0.x = dot(r4.xyz, r4.xyz);
    r0.x = sqrt(r0.x);
    r0.y = r0.x * 4 + -3;
    r4.xyz = r4.xyz / r0.xxx;
    r0.x = saturate(r5.y + r5.y);
    r2.w = 1.25 * r5.z;
    r2.w = saturate(r2.w);
    r0.x = r0.x * r0.x;
    r0.x = max(9.99999975e-005, r0.x);
    r0.x = log2(r0.x);
    r0.x = cb0[17].x * r0.x;
    r0.x = exp2(r0.x);
    r3.xyz = r3.xyz / r0.zzz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r5.yzw = r2.xyz * r0.zzz;
    r3.w = saturate(dot(r4.xyz, r3.xyz));
    r4.w = min(0.200000003, r2.w);
    r4.w = r4.w + r3.w;
    r4.w = min(1, r4.w);
    r2.xyz = -r2.xyz * r0.zzz + r3.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = r2.xyz * r0.zzz;
    r0.z = dot(r4.xyz, r2.xyz);
    r6.x = dot(r4.xyz, -r5.yzw);
    r6.x = 9.99999975e-006 + abs(r6.x);
    r2.x = saturate(dot(r3.xyz, r2.xyz));
    r7.x = -0.5 * r0.y;
    r0.y = -r0.y * 0.899999976 + 1;
    r2.y = r0.y * r0.y;
    r2.y = r2.y * r2.y;
    r2.z = 1 + -r2.x;
    r5.x = r5.x * 0.839999974 + 0.0399999991;
    r6.y = r2.z * r2.z;
    r6.y = r6.y * r6.y;
    r6.z = r6.y * r2.z;
    r2.z = -r2.z * r6.y + 1;
    r5.x = 1 / r5.x;
    r2.z = r5.x * r6.z + r2.z;
    r7.x = saturate(r7.x);
    r5.x = -r6.x * r2.y + r6.x;
    r5.x = r5.x * r6.x + r2.y;
    r5.x = sqrt(r5.x);
    r5.x = r5.x + r3.w;
    r6.y = -r3.w * r2.y + r3.w;
    r6.y = r6.y * r3.w + r2.y;
    r6.y = sqrt(r6.y);
    r6.y = r6.x + r6.y;
    r5.x = r6.y + r5.x;
    r5.x = 0.5 / r5.x;
    r5.x = r5.x + r7.x;
    r5.x = min(1, r5.x);
    r6.y = r0.z * r2.y + -r0.z;
    r0.z = r6.y * r0.z + 1;
    r0.z = r0.z * r0.z;
    r0.z = r2.y / r0.z;
    r0.z = r2.z * r0.z;
    r0.z = r0.z * r5.x;
    r2.x = r2.x * r2.x;
    r0.y = dot(r2.xx, r0.yy);
    r2.x = 1 + -r3.w;
    r0.y = -0.5 + r0.y;
    r2.y = r2.x * r2.x;
    r2.y = r2.y * r2.y;
    r2.x = r2.x * r2.y;
    r2.x = r0.y * r2.x + 1;
    r2.y = 1 + -r6.x;
    r2.z = r2.y * r2.y;
    r2.z = r2.z * r2.z;
    r2.y = r2.y * r2.z;
    r0.y = r0.y * r2.y + 1;
    r0.y = r2.x * r0.y;
    r2.x = cmp(9.99999975e-005 < r2.w);
    r2.y = saturate(dot(r3.xyz, -r4.xyz));
    r2.z = dot(-r5.yzw, -r5.yzw);
    r2.z = rsqrt(r2.z);
    r4.xyz = -r5.yzw * r2.zzz;
    r2.z = saturate(dot(r3.xyz, -r4.xyz));
    r2.z = log2(r2.z);
    r2.z = cb13[4].y * r2.z;
    r2.z = exp2(r2.z);
    r2.y = saturate(r2.y * cb13[4].x + r2.z);
    r2.y = r2.y * r2.w;
    r2.x = r2.x ? r2.y : 0;
    r0.z = r0.z * r3.w;
    r0.z = 0.318309873 * r0.z;
    r0.y = r0.y * r4.w;
    r2.x = 0.318309873 * r2.x;
    r0.y = r0.y * 0.318309873 + r2.x;
    r2.xyz = cb0[9].xyz * r0.yyy;
    r3.xyz = cb0[9].xyz * r0.zzz;
    r2.xyz = r2.xyz * r0.xxx;
    r0.xyz = r3.xyz * r0.xxx;
    r0.w = cb0[14].x * r0.w;
    r2.xyz = r2.xyz * r0.www;
    r0.xyz = r0.xyz * r0.www;
    r2.xyz = cb0[15].xxx * r2.xyz;
    r0.xyz = cb0[15].yyy * r0.xyz;
    r0.w = t3.Load(r1.xyz).y;
    r0.w = (uint)r0.w;
    r0.w = 0.03125 * r0.w;
    r0.w = (int)r0.w;
    r0.w = (int)r0.w & 1;
    r0.w = (int)r0.w;
    r1.xyz = r2.xyz * r0.www;
    r0.xyz = r0.xyz * r0.www;
  } else {
    r1.xyz = float3(0,0,0);
    r0.xyz = float3(0,0,0);
  }
  o0.xyz = r1.xyz;
  o0.w = 0;
  o1.xyz = r0.xyz;
  o1.w = 0;
  return;
}