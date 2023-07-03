// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
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
  float4 cb0[124];
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
  uint v11 : SV_VERTEXID0,
  uint v12 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float2 o8 : TEXCOORD8,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v11.x, vertex_id
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
  r0.x = (int)v11.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v11.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,0.25) + r0.yx;
  r0.xy = v3.yx * r0.xy;
  r0.z = v8.y * 6.28200006 + v3.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb12[4].xyz * v7.zzz;
  r2.xyz = cb1[1].xyz * v2.yyy;
  r2.xyz = cb1[0].xyz * v2.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v2.zzz + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r0.yzw = r1.xyz * r0.yyy + r2.xyz;
  r1.xyz = cb12[5].xyz * v7.zzz;
  r0.xyz = r1.xyz * r0.xxx + r0.yzw;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  r3.xyz = cb12[7].xyz + -r2.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = sqrt(r0.w);
  r2.w = r0.w * 10 + -3;
  r0.w = 10000 + -r0.w;
  r0.w = saturate(min(r2.w, r0.w));
  r0.w = cb0[8].y * r0.w;
  r0.w = cb0[123].x * r0.w;
  r2.w = cmp(0.999000013 < v2.w);
  r0.w = r2.w ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  r2.w = v7.z * v3.x;
  r2.w = 0.25 * r2.w;
  r3.xyz = -cb12[4].xyz * r2.www + r0.xyz;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyz = r3.xyz + -r2.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r0.xyz * r2.xxx + -cb12[6].xyz;
  o1.xyz = r0.xyz * float3(0.850000024,0.850000024,0.850000024) + cb12[6].xyz;
  o3.xyzw = v0.xyzw;
  o4.xyz = v4.xyz;
  o4.w = v1.w;
  o5.xyzw = v5.xyzw;
  o6.xyzw = v6.xyzw;
  o7.x = 0;
  o7.yzw = v7.xyz;
  o8.x = v7.w;
  o8.y = v8.x;
  r0.x = cmp(v7.w < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o9.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}