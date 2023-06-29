// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
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
  float4 cb0[135];
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
  uint v9 : SV_VERTEXID0,
  uint v10 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v9.x, vertex_id
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
  r0.x = (int)v9.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v9.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,0.400000006) + r0.yx;
  r1.xyz = cb1[1].yzx * v2.yyy;
  r1.xyz = cb1[0].yzx * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].yzx * v2.zzz + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r2.xyz = cb1[1].xyz * v3.yyy;
  r2.xyz = cb1[0].xyz * v3.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v3.zzz + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r3.xyz = cb12[7].xyz + -r2.xyz;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.z);
  r0.z = sqrt(r0.z);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = r3.zxy * r1.xyz;
  r4.xyz = r3.yzx * r1.yzx + -r4.xyz;
  r0.w = dot(r1.zxy, r3.xyz);
  r0.w = log2(abs(r0.w));
  r0.w = 2.5 * r0.w;
  r0.w = exp2(r0.w);
  r1.y = 1.5 + -r0.w;
  r0.w = dot(r4.xyz, r4.xyz);
  r0.w = rsqrt(r0.w);
  r4.xyz = r4.xyz * r0.www;
  r5.xyz = r4.zxy * r3.yzx;
  r5.xyz = r4.yzx * r3.zxy + -r5.xyz;
  r4.xyz = v7.www * r4.xyz;
  o1.xyz = r3.xyz;
  r3.xyz = v7.www * r5.xyz;
  r1.x = 0.5;
  r0.xy = r1.xy * r0.xy;
  sincos(v5.z, r1.x, r5.x);
  r1.xy = r1.xx * r0.xy;
  r0.y = r0.y * r5.x + -r1.x;
  r0.x = r0.x * r5.x + r1.y;
  r1.xyz = r3.xyz * r0.yyy + r2.xyz;
  r0.xyw = r4.xyz * r0.xxx + r1.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.wwww + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  r0.x = r0.z * 4 + -2;
  r0.y = 10000 + -r0.z;
  r0.x = saturate(min(r0.x, r0.y));
  r0.x = cb0[13].x * r0.x;
  r0.x = cb0[134].x * r0.x;
  r0.y = cmp(0.999000013 < v3.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v4.xyzw;
  o6.xy = v5.xy;
  o6.zw = v6.xy;
  o7.xy = v6.zw;
  o7.zw = v7.xy;
  o8.xy = v7.zw;
  o8.zw = v8.xy;
  r0.y = cb0[13].w + v8.x;
  r0.xy = cmp(r0.xy < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.y | (int)r0.x;
  o9.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}