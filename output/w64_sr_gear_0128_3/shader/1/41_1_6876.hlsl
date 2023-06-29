// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
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
  float4 cb0[122];
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
  out float2 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v8.x, vertex_id
  float4 r0,r1,r2,r3;
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
  r0.xy = float2(0,1) + r0.yx;
  r0.xy = v4.yx * r0.xy;
  sincos(v3.w, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.y = r0.y * r2.x + -r0.z;
  r0.x = r0.x * r2.x + r0.w;
  r1.xyz = cb1[1].zxy * v2.yyy;
  r1.xyz = cb1[0].zxy * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].zxy * v2.zzz + r1.xyz;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.yzw = r1.yzx * r0.yyy;
  r2.xyz = cb1[1].xyz * v3.yyy;
  r2.xyz = cb1[0].xyz * v3.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v3.zzz + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r0.yzw = r0.yzw * float3(0.300000012,0.300000012,0.300000012) + r2.xyz;
  r2.xyz = cb12[7].xyz + -r2.xyz;
  r3.xyz = r2.xyz * r1.xyz;
  r3.xyz = r2.zxy * r1.yzx + -r3.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r3.xyz * r2.xxx;
  r3.xyz = r2.zxy * r0.xxx;
  r0.xyz = r3.xyz * float3(0.300000012,0.300000012,0.300000012) + r0.yzw;
  r3.xyzw = cb12[1].xyzw * r0.yyyy;
  r3.xyzw = cb12[0].xyzw * r0.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r0.zzzz + r3.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r3.xyzw;
  o0.w = r0.w;
  r2.w = 10000 + -r1.w;
  r3.x = 0.280000001 * v4.w;
  r3.x = frac(r3.x);
  r3.y = cb0[104].x * r3.x;
  r3.x = cb0[110].x + -r3.x;
  r3.x = 1 + r3.x;
  r3.x = saturate(3.33333302 * r3.x);
  r3.y = 0.25 * r3.y;
  r1.w = r1.w * 0.25 + -r3.y;
  r1.w = saturate(min(r1.w, r2.w));
  r1.w = r1.w * r3.x;
  r1.w = cb0[9].y * r1.w;
  r1.w = cb0[121].x * r1.w;
  r2.w = cmp(0.999000013 < v2.w);
  r1.w = r2.w ? 0 : r1.w;
  o0.z = r1.w;
  r1.w = cmp(r1.w < 9.99999997e-007);
  r3.xyz = r2.xyz * r1.xyz;
  o1.xyz = r1.zxy * r2.yzx + -r3.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyz = v5.xyz;
  o5.w = 0;
  o6.xyw = float3(0,0,0);
  o6.z = v5.w;
  o7.xy = v6.xy;
  r1.x = cmp(v6.x < 9.99999997e-007);
  r1.x = (int)r1.x | (int)r1.w;
  o8.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}