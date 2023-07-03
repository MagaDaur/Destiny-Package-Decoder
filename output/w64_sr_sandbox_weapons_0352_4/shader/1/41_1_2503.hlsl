// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
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
  float4 cb0[137];
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
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  float4 v11 : TEXCOORD11,
  uint v12 : SV_VERTEXID0,
  uint v13 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float4 o10 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v12.x, vertex_id
  float4 r0,r1,r2,r3,r4,r5;
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
  r0.x = (int)v12.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v12.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,1) + r0.yx;
  r0.xy = v4.yx * r0.xy;
  sincos(v4.w, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb1[1].xyz * v3.yyy;
  r1.xyz = cb1[0].xyz * v3.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v3.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb1[1].zxy * v2.yyy;
  r2.xyz = cb1[0].zxy * v2.xxx + r2.xyz;
  r2.xyz = cb1[2].zxy * v2.zzz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r3.xyz = v8.www * r2.yzx;
  r0.yzw = r3.xyz * r0.yyy + r1.xyz;
  r3.xyz = cb12[7].xyz + -r1.xyz;
  r4.xyz = r3.xyz * r2.xyz;
  r4.xyz = r3.zxy * r2.yzx + -r4.xyz;
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
  r5.xyz = v8.www * r4.zxy;
  r0.xyz = r5.xyz * r0.xxx + r0.yzw;
  r5.xyzw = cb12[1].xyzw * r0.yyyy;
  r5.xyzw = cb12[0].xyzw * r0.xxxx + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r0.zzzz + r5.xyzw;
  r5.xyzw = cb12[3].xyzw + r5.xyzw;
  o0.w = r5.w;
  r0.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = sqrt(r0.w);
  r3.xyz = r3.xyz * r1.www;
  r1.w = dot(r3.zxy, r2.xyz);
  r2.w = cb0[105].x * 0.0174532942;
  r2.w = cos(r2.w);
  r1.w = -r2.w + abs(r1.w);
  r3.x = cb0[106].x + cb0[105].x;
  r3.x = 0.0174532942 * r3.x;
  r3.x = cos(r3.x);
  r2.w = r3.x + -r2.w;
  r1.w = saturate(r1.w / r2.w);
  r2.w = r0.w * 0.166666999 + -1.33333302;
  r0.w = 10000 + -r0.w;
  r0.w = saturate(min(r2.w, r0.w));
  r0.w = r0.w * r1.w;
  r0.w = cb0[8].y * r0.w;
  r0.w = cb0[136].x * r0.w;
  r1.w = cmp(0.999000013 < v3.w);
  r0.w = r1.w ? 0 : r0.w;
  o0.z = r0.w;
  r3.xyz = r4.xyz * r2.xyz;
  r3.xyz = r2.zxy * r4.yzx + -r3.xyz;
  r1.w = v8.w * v4.x;
  r2.xyz = -r2.yzx * r1.www + r0.xyz;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyz = r2.xyz + -r1.xyz;
  r1.x = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r1.x);
  r0.xyz = r0.xyz * r1.xxx + -r3.xyz;
  o1.xyz = r0.xyz * float3(0.5,0.5,0.5) + r3.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyz = v5.xyz;
  o5.w = v2.w;
  o6.xyzw = v6.xyzw;
  o7.xyzw = v7.xyzw;
  o8.xyw = v8.xyz;
  o8.z = 0;
  o9.x = v8.w;
  o9.yzw = v9.xyz;
  r0.x = v9.y + v9.x;
  r0.xw = cmp(r0.xw < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.x | (int)r0.w;
  o10.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r5.xyzw;
  return;
}