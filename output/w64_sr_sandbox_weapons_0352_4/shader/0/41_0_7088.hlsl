// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
Texture3D<float4> t4 : register(t4);

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
  float4 cb0[33];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : SV_POSITION0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
  r0.w = saturate(r0.z * cb0[26].x + cb0[26].y);
  r0.w = r0.w * r0.w;
  r4.xyz = cb0[19].xyz * r2.yyy;
  r4.xyz = cb0[18].xyz * r2.xxx + r4.xyz;
  r4.xyz = cb0[20].xyz * r2.zzz + r4.xyz;
  r4.xyz = cb0[21].xyz + r4.xyz;
  r4.xyz = r4.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
  r5.xyz = r4.xyz * cb0[12].xyz + cb0[13].xyz;
  r5.xyz = t4.Sample(s1_s, r5.xyz).xyz;
  r5.xyz = -cb0[14].xyz + r5.xyz;
  r4.xyz = r5.xyz * cb0[11].xxx + r4.xyz;
  r4.xyz = r4.xyz * cb0[15].xyz + cb0[16].xyz;
  r2.w = t3.Sample(s1_s, r4.xyz).x;
  r2.w = 1 + -r2.w;
  r2.w = saturate(r2.w * cb0[17].x + cb0[17].y);
  r4.xyz = cb0[10].xyz + r2.www;
  r5.xyz = r4.xyz * r0.www;
  r5.xyz = cmp(float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) < r5.xyz);
  r2.w = (int)r5.y | (int)r5.x;
  r2.w = (int)r5.z | (int)r2.w;
  if (r2.w != 0) {
    r1.xyz = t0.Load(r1.xyz).xyz;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.xyz = t2.Sample(s0_s, r0.xy).xyz;
    r0.x = dot(r1.xyz, r1.xyz);
    r0.x = sqrt(r0.x);
    r0.y = r0.x * 4 + -3;
    r1.xyz = r1.xyz / r0.xxx;
    r0.x = saturate(r5.y + r5.y);
    r1.w = 1.25 * r5.z;
    r1.w = saturate(r1.w);
    r0.x = r0.x * r0.x;
    r0.x = max(9.99999975e-005, r0.x);
    r0.x = log2(r0.x);
    r0.x = cb0[32].x * r0.x;
    r0.x = exp2(r0.x);
    r3.xyz = r3.xyz / r0.zzz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r5.yzw = r2.xyz * r0.zzz;
    r2.w = dot(r1.xyz, -r5.yzw);
    r3.w = r2.w + r2.w;
    r6.xyz = r1.xyz * r3.www + r5.yzw;
    r7.xyz = cb0[9].xyz + -r2.xyz;
    r3.w = dot(r7.xyz, r6.xyz);
    r6.xyz = r3.www * r6.xyz + -r7.xyz;
    r3.w = dot(r6.xyz, r6.xyz);
    r3.w = sqrt(r3.w);
    r3.w = saturate(cb0[8].x / r3.w);
    r6.xyz = r6.xyz * r3.www + r7.xyz;
    r3.w = dot(r6.xyz, r6.xyz);
    r3.w = sqrt(r3.w);
    r6.xyz = r6.xyz / r3.www;
    r4.w = 1 + -r0.y;
    r4.w = max(0.00999999978, r4.w);
    r3.w = cb0[8].x / r3.w;
    r3.w = saturate(r3.w + r3.w);
    r3.w = r4.w / r3.w;
    r3.w = r3.w + r4.w;
    r3.w = r3.w * r3.w;
    r3.w = min(1, r3.w);
    r4.w = saturate(cb0[22].y * r0.w + cb0[22].x);
    r7.xyz = cb0[23].xyz * cb0[24].xxx + -cb0[25].xyz;
    r7.xyz = r4.www * r7.xyz + cb0[25].xyz;
    r4.w = saturate(dot(r1.xyz, r3.xyz));
    r6.w = min(0.200000003, r1.w);
    r6.w = r6.w + r4.w;
    r6.w = min(1, r6.w);
    r8.xyz = -r2.xyz * r0.zzz + r3.xyz;
    r7.w = dot(r8.xyz, r8.xyz);
    r7.w = rsqrt(r7.w);
    r8.xyz = r8.xyz * r7.www;
    r2.w = 9.99999975e-006 + abs(r2.w);
    r7.w = saturate(dot(r3.xyz, r8.xyz));
    r8.x = -0.5 * r0.y;
    r0.y = -r0.y * 0.899999976 + 1;
    r7.w = r7.w * r7.w;
    r7.w = dot(r7.ww, r0.yy);
    r4.w = 1 + -r4.w;
    r7.w = -0.5 + r7.w;
    r8.y = r4.w * r4.w;
    r8.y = r8.y * r8.y;
    r4.w = r8.y * r4.w;
    r4.w = r7.w * r4.w + 1;
    r8.y = 1 + -r2.w;
    r8.z = r8.y * r8.y;
    r8.z = r8.z * r8.z;
    r8.y = r8.y * r8.z;
    r7.w = r7.w * r8.y + 1;
    r4.w = r7.w * r4.w;
    r7.w = cmp(9.99999975e-005 < r1.w);
    r8.y = saturate(dot(r3.xyz, -r1.xyz));
    r8.z = dot(-r5.yzw, -r5.yzw);
    r8.z = rsqrt(r8.z);
    r5.yzw = r8.zzz * -r5.yzw;
    r3.x = saturate(dot(r3.xyz, -r5.yzw));
    r3.x = log2(r3.x);
    r3.x = cb13[4].y * r3.x;
    r3.x = exp2(r3.x);
    r3.x = saturate(r8.y * cb13[4].x + r3.x);
    r1.w = r3.x * r1.w;
    r1.w = r7.w ? r1.w : 0;
    r3.x = r4.w * r6.w;
    r1.w = 0.318309873 * r1.w;
    r1.w = r3.x * 0.318309873 + r1.w;
    r3.xyz = r1.www * r7.xyz;
    r1.w = saturate(dot(r1.xyz, r6.xyz));
    r2.xyz = -r2.xyz * r0.zzz + r6.xyz;
    r0.z = dot(r2.xyz, r2.xyz);
    r0.z = rsqrt(r0.z);
    r2.xyz = r2.xyz * r0.zzz;
    r0.z = dot(r1.xyz, r2.xyz);
    r1.x = saturate(dot(r6.xyz, r2.xyz));
    r0.y = r0.y * r0.y;
    r0.y = r0.y * r0.y;
    r1.x = 1 + -r1.x;
    r1.y = r5.x * 0.839999974 + 0.0399999991;
    r1.z = r1.x * r1.x;
    r1.z = r1.z * r1.z;
    r2.x = r1.x * r1.z;
    r1.x = -r1.x * r1.z + 1;
    r1.y = 1 / r1.y;
    r1.x = r1.y * r2.x + r1.x;
    r8.x = saturate(r8.x);
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
    r1.y = r1.y + r8.x;
    r1.y = min(1, r1.y);
    r1.z = r0.z * r0.y + -r0.z;
    r0.z = r1.z * r0.z + 1;
    r0.z = r0.z * r0.z;
    r0.y = r0.y / r0.z;
    r0.y = r1.x * r0.y;
    r0.y = r0.y * r1.y;
    r0.y = r0.y * r1.w;
    r0.y = 0.318309873 * r0.y;
    r1.xyz = r0.yyy * r7.xyz;
    r1.xyz = r1.xyz * r3.www;
    r2.xyz = r3.xyz * r0.xxx;
    r0.xyz = r1.xyz * r0.xxx;
    r0.w = cb0[29].x * r0.w;
    r1.xyz = r2.xyz * r0.www;
    r0.xyz = r0.xyz * r0.www;
    r1.xyz = r1.xyz * r4.xyz;
    r0.xyz = r0.xyz * r4.xyz;
    r1.xyz = cb0[30].xxx * r1.xyz;
    r0.xyz = cb0[30].yyy * r0.xyz;
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