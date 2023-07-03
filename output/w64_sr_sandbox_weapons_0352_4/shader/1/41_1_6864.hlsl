// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:22 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[4];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[113];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  uint v8 : SV_VERTEXID0,
  uint v9 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float3 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, vertex_id
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  float4 x0[4];
  float4 x1[4];
  x0[0].xy = float2(-1,1);
  x0[1].xy = float2(-1,-1);
  x0[2].xy = float2(1,1);
  x0[3].xy = float2(1,-1);
  x1[0].xy = float2(0,0);
  x1[1].xy = float2(0,1);
  x1[2].xy = float2(1,0);
  x1[3].xy = float2(1,1);
  r0.x = (int)v8.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v8.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(1,0.25) * r0.yx;
  r0.z = -2.19869995 + v2.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb1[1].xyz * v2.yyy;
  r1.xyz = cb1[0].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v2.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb1[1].xyz * v1.yyy;
  r2.xyz = cb1[0].xyz * v1.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v1.zzz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r3.xyz = cb12[5].zxy * r2.yzx;
  r3.xyz = cb12[5].yzx * r2.zxy + -r3.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r4.xyz = v6.xxx * r3.xyz;
  r0.yzw = r4.xyz * r0.yyy + r1.xyz;
  r1.xyz = cb12[7].zxy + -r1.zxy;
  r4.xyz = r3.yzx * r2.zxy;
  r3.xyz = r2.yzx * r3.zxy + -r4.xyz;
  r3.xyz = v6.xxx * r3.xyz;
  r0.xyz = r3.xyz * r0.xxx + r0.yzw;
  r3.xyzw = cb12[1].xyzw * r0.yyyy;
  r3.xyzw = cb12[0].xyzw * r0.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r0.zzzz + r3.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r3.xyzw;
  o0.w = r0.w;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r1.xyz * r1.www;
  r1.x = dot(r1.yzx, r2.xyz);
  r1.yzw = r3.xyz * r2.yzx;
  r1.yzw = r3.zxy * r2.zxy + -r1.yzw;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.z = cb0[97].x * 0.0174532942;
  r1.z = cos(r1.z);
  r1.y = r1.y + -r1.z;
  r1.w = cb0[98].x + cb0[97].x;
  r1.w = 0.0174532942 * r1.w;
  r1.w = cos(r1.w);
  r1.z = r1.w + -r1.z;
  r1.y = saturate(r1.y / r1.z);
  r1.y = cb0[11].w * r1.y;
  r1.y = cb0[112].x * r1.y;
  r1.z = cmp(0.999000013 < v1.w);
  r1.y = r1.z ? 0 : r1.y;
  o0.z = r1.y;
  r1.z = cmp(0 < r1.x);
  r1.xy = cmp(r1.xy < float2(0,9.99999997e-007));
  r1.x = (int)-r1.z + (int)r1.x;
  r1.x = (int)r1.x;
  o1.xyz = r2.xyz * r1.xxx;
  o3.xyzw = v0.xyzw;
  o4.xyz = v3.xyz;
  o4.w = v5.x;
  o5.xyzw = v4.xyzw;
  o6.xyz = v5.yzw;
  o6.w = v6.x;
  o7.xyz = v6.yzw;
  r1.x = v6.z + v6.y;
  r1.x = cmp(r1.x < 9.99999997e-007);
  r1.x = (int)r1.x | (int)r1.y;
  o8.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}