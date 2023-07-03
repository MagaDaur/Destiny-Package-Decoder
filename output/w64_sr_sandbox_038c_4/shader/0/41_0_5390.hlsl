// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

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
  float4 cb0[32];
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
  r0.w = saturate(r0.z * cb0[25].x + cb0[25].y);
  r0.w = r0.w * r0.w;
  r4.xyz = cb0[18].xyz * r2.yyy;
  r4.xyz = cb0[17].xyz * r2.xxx + r4.xyz;
  r4.xyz = cb0[19].xyz * r2.zzz + r4.xyz;
  r4.xyz = cb0[20].xyz + r4.xyz;
  r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r5.xyz = r4.xyz * cb0[11].xyz + cb0[12].xyz;
  r5.xyz = t3.Sample(s1_s, r5.xyz).xyz;
  r5.xyz = -cb0[13].xyz + r5.xyz;
  r4.xyz = r5.xyz * cb0[10].xxx + r4.xyz;
  r4.xyz = r4.xyz * cb0[14].xyz + cb0[15].xyz;
  r2.w = t3.Sample(s1_s, r4.xyz).x;
  r2.w = 1 + -r2.w;
  r2.w = saturate(r2.w * cb0[16].x + cb0[16].y);
  r3.w = r2.w * r0.w;
  r3.w = cmp(9.99999975e-005 < r3.w);
  if (r3.w != 0) {
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
    r0.x = cb0[31].x * r0.x;
    r0.x = exp2(r0.x);
    r3.xyz = r3.xyz / r0.zzz;
    r0.z = saturate(cb0[21].y * r0.w + cb0[21].x);
    r4.yzw = cb0[22].xyz * cb0[23].xxx + -cb0[24].xyz;
    r4.yzw = r0.zzz * r4.yzw + cb0[24].xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r5.xyz = r2.xyz * r0.zzz;
    r3.w = saturate(dot(r1.xyz, r3.xyz));
    r5.w = min(0.200000003, r1.w);
    r5.w = r5.w + r3.w;
    r5.w = min(1, r5.w);
    r2.xyz = -r2.xyz * r0.zzz + r3.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = r2.xyz * r0.zzz;
    r0.z = dot(r1.xyz, r2.xyz);
    r6.x = dot(r1.xyz, -r5.xyz);
    r6.x = 9.99999975e-006 + abs(r6.x);
    r2.x = saturate(dot(r3.xyz, r2.xyz));
    r7.x = -0.5 * r0.y;
    r0.y = -r0.y * 0.899999976 + 1;
    r2.y = r0.y * r0.y;
    r2.y = r2.y * r2.y;
    r2.z = 1 + -r2.x;
    r4.x = r4.x * 0.839999974 + 0.0399999991;
    r6.y = r2.z * r2.z;
    r6.y = r6.y * r6.y;
    r6.z = r6.y * r2.z;
    r2.z = -r2.z * r6.y + 1;
    r4.x = 1 / r4.x;
    r2.z = r4.x * r6.z + r2.z;
    r7.x = saturate(r7.x);
    r4.x = -r6.x * r2.y + r6.x;
    r4.x = r4.x * r6.x + r2.y;
    r4.x = sqrt(r4.x);
    r4.x = r4.x + r3.w;
    r6.y = -r3.w * r2.y + r3.w;
    r6.y = r6.y * r3.w + r2.y;
    r6.y = sqrt(r6.y);
    r6.y = r6.x + r6.y;
    r4.x = r6.y + r4.x;
    r4.x = 0.5 / r4.x;
    r4.x = r4.x + r7.x;
    r4.x = min(1, r4.x);
    r6.y = r0.z * r2.y + -r0.z;
    r0.z = r6.y * r0.z + 1;
    r0.z = r0.z * r0.z;
    r0.z = r2.y / r0.z;
    r0.z = r2.z * r0.z;
    r0.z = r0.z * r4.x;
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
    r2.x = cmp(9.99999975e-005 < r1.w);
    r1.x = saturate(dot(r3.xyz, -r1.xyz));
    r1.y = dot(-r5.xyz, -r5.xyz);
    r1.y = rsqrt(r1.y);
    r5.xyz = -r5.xyz * r1.yyy;
    r1.y = saturate(dot(r3.xyz, -r5.xyz));
    r1.y = log2(r1.y);
    r1.y = cb13[4].y * r1.y;
    r1.y = exp2(r1.y);
    r1.x = saturate(r1.x * cb13[4].x + r1.y);
    r1.x = r1.x * r1.w;
    r1.x = r2.x ? r1.x : 0;
    r0.z = r0.z * r3.w;
    r0.z = 0.318309873 * r0.z;
    r0.y = r0.y * r5.w;
    r1.x = 0.318309873 * r1.x;
    r0.y = r0.y * 0.318309873 + r1.x;
    r1.xyz = r0.yyy * r4.yzw + cb0[9].xyz;
    r2.xyz = r0.zzz * r4.yzw + cb0[9].xyz;
    r1.xyz = r1.xyz * r0.xxx;
    r0.xyz = r2.xyz * r0.xxx;
    r0.w = cb0[28].x * r0.w;
    r1.xyz = r1.xyz * r0.www;
    r0.xyz = r0.xyz * r0.www;
    r1.xyz = r1.xyz * r2.www;
    r0.xyz = r0.xyz * r2.www;
    r1.xyz = cb0[29].xxx * r1.xyz;
    r0.xyz = cb0[29].yyy * r0.xyz;
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