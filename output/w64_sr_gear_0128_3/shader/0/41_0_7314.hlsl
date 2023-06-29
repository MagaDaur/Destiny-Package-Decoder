// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
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
  float4 cb0[31];
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
  r0.z = dot(cb0[7].xyzw, cb0[8].xyzw);
  r3.w = -r0.z;
  r2.w = 1;
  r3.xyz = cb0[8].xyz;
  r0.z = dot(r2.xyzw, r3.xyzw);
  r0.z = max(-cb0[9].x, r0.z);
  r0.z = min(cb0[9].x, r0.z);
  r3.xyz = cb0[8].xyz * r0.zzz + cb0[7].xyz;
  r3.xyz = r3.xyz + -r2.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = sqrt(r0.z);
  r0.w = saturate(r0.z * cb0[26].x + cb0[26].y);
  r0.w = r0.w * r0.w;
  r2.w = cmp(9.99999975e-005 < r0.w);
  if (r2.w != 0) {
    r1.xyz = t0.Load(r1.xyz).xyz;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r4.xyz = t2.Sample(s0_s, r0.xy).xyz;
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = sqrt(r0.x);
    r0.y = r0.x * 4 + -3;
    r1.xyz = r1.xyz / r0.xxx;
    r0.x = saturate(r4.y + r4.y);
    r1.w = 1.25 * r4.z;
    r1.w = saturate(r1.w);
    r0.x = r0.x * r0.x;
    r0.x = max(9.99999975e-005, r0.x);
    r0.x = log2(r0.x);
    r0.x = cb0[30].x * r0.x;
    r0.x = exp2(r0.x);
    r3.xyz = r3.xyz / r0.zzz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r4.yzw = r2.xyz * r0.zzz;
    r2.w = dot(r1.xyz, -r4.yzw);
    r3.w = r2.w + r2.w;
    r5.xyz = r1.xyz * r3.www + r4.yzw;
    r6.xyz = cb0[11].xyz + -r2.xyz;
    r3.w = dot(r5.xyz, cb0[10].xyz);
    r7.xyz = r3.www * r5.xyz + -cb0[10].xyz;
    r5.w = dot(r7.xyz, r6.xyz);
    r3.w = -r3.w * r3.w + cb0[13].x;
    r3.w = saturate(r5.w / r3.w);
    r6.xyz = r3.www * cb0[10].xyz + r6.xyz;
    r3.w = dot(r6.xyz, r5.xyz);
    r5.xyz = r3.www * r5.xyz + -r6.xyz;
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = sqrt(r3.w);
    r3.w = saturate(cb0[14].x / r3.w);
    r5.xyz = r5.xyz * r3.www + r6.xyz;
    r3.w = dot(r5.xyz, r5.xyz);
    r3.w = sqrt(r3.w);
    r5.xyz = r5.xyz / r3.www;
    r5.w = 1 + -r0.y;
    r5.w = max(0.00999999978, r5.w);
    r3.w = cb0[14].x / r3.w;
    r3.w = saturate(r3.w + r3.w);
    r3.w = r5.w / r3.w;
    r3.w = r3.w + r5.w;
    r3.w = r3.w * r3.w;
    r3.w = min(1, r3.w);
    r5.w = saturate(dot(r1.xyz, r3.xyz));
    r6.x = min(0.200000003, r1.w);
    r6.x = r6.x + r5.w;
    r6.x = min(1, r6.x);
    r6.yzw = -r2.xyz * r0.zzz + r3.xyz;
    r7.x = dot(r6.yzw, r6.yzw);
    r7.x = rsqrt(r7.x);
    r6.yzw = r7.xxx * r6.yzw;
    r2.w = 9.99999975e-006 + abs(r2.w);
    r6.y = saturate(dot(r3.xyz, r6.yzw));
    r7.x = -0.5 * r0.y;
    r0.y = -r0.y * 0.899999976 + 1;
    r6.y = r6.y * r6.y;
    r6.y = dot(r6.yy, r0.yy);
    r5.w = 1 + -r5.w;
    r6.y = -0.5 + r6.y;
    r6.z = r5.w * r5.w;
    r6.z = r6.z * r6.z;
    r5.w = r6.z * r5.w;
    r5.w = r6.y * r5.w + 1;
    r6.z = 1 + -r2.w;
    r6.w = r6.z * r6.z;
    r6.w = r6.w * r6.w;
    r6.z = r6.z * r6.w;
    r6.y = r6.y * r6.z + 1;
    r5.w = r6.y * r5.w;
    r6.y = cmp(9.99999975e-005 < r1.w);
    r6.z = saturate(dot(r3.xyz, -r1.xyz));
    r6.w = dot(-r4.yzw, -r4.yzw);
    r6.w = rsqrt(r6.w);
    r4.yzw = r6.www * -r4.yzw;
    r3.x = saturate(dot(r3.xyz, -r4.yzw));
    r3.x = log2(r3.x);
    r3.x = cb13[4].y * r3.x;
    r3.x = exp2(r3.x);
    r3.x = saturate(r6.z * cb13[4].x + r3.x);
    r1.w = r3.x * r1.w;
    r1.w = r6.y ? r1.w : 0;
    r3.x = r5.w * r6.x;
    r1.w = 0.318309873 * r1.w;
    r1.w = r3.x * 0.318309873 + r1.w;
    r3.xyz = r1.www * cb0[25].xyz + cb0[19].xyz;
    r1.w = saturate(dot(r1.xyz, r5.xyz));
    r2.xyz = -r2.xyz * r0.zzz + r5.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = r2.xyz * r0.zzz;
    r0.z = dot(r1.xyz, r2.xyz);
    r1.x = saturate(dot(r5.xyz, r2.xyz));
    r0.y = r0.y * r0.y;
    r0.y = r0.y * r0.y;
    r1.x = 1 + -r1.x;
    r1.y = r4.x * 0.839999974 + 0.0399999991;
    r1.z = r1.x * r1.x;
    r1.z = r1.z * r1.z;
    r2.x = r1.x * r1.z;
    r1.x = -r1.x * r1.z + 1;
    r1.y = 1 / r1.y;
    r1.x = r1.y * r2.x + r1.x;
    r7.x = saturate(r7.x);
    r1.y = -r2.w * r0.y + r2.w;
    r1.y = r1.y * r2.w + r0.y;
    r1.y = sqrt(r1.y);
    r1.y = r1.w + r1.y;
    r1.z = -r1.w * r0.y + r1.w;
    r1.z = r1.z * r1.w + r0.y;
    r1.z = sqrt(r1.z);
    r1.z = r2.w + r1.z;
    r1.y = r1.y + r1.z;
    r1.y = 0.5 / r1.y;
    r1.y = r1.y + r7.x;
    r1.y = min(1, r1.y);
    r1.z = r0.z * r0.y + -r0.z;
    r0.z = r1.z * r0.z + 1;
    r0.z = r0.z * r0.z;
    r0.y = r0.y / r0.z;
    r0.y = r1.x * r0.y;
    r0.y = r0.y * r1.y;
    r0.y = r0.y * r1.w;
    r0.y = 0.318309873 * r0.y;
    r1.xyz = cb0[25].xyz * r0.yyy;
    r1.xyz = r1.xyz * r3.www + cb0[19].xyz;
    r2.xyz = r3.xyz * r0.xxx;
    r0.xyz = r1.xyz * r0.xxx;
    r1.xyz = r2.xyz * r0.www;
    r0.xyz = r0.xyz * r0.www;
    r1.xyz = cb0[28].xxx * r1.xyz;
    r0.xyz = cb0[28].yyy * r0.xyz;
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