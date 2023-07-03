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
  float4 cb0[150];
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
  out float4 o10 : TEXCOORD10,
  out float2 o11 : TEXCOORD11,
  out float4 o12 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v12.x, vertex_id
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
  r0.x = (int)v12.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v12.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,0.0500000007) + r0.yx;
  r0.z = v9.y * 6.28200006 + v5.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb12[4].xyz * v8.zzz;
  r2.xyz = cb1[1].xyz * v4.yyy;
  r2.xyz = cb1[0].xyz * v4.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v4.zzz + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r0.yzw = r1.xyz * r0.yyy + r2.xyz;
  r1.xyz = cb12[5].xyz * v8.zzz;
  r0.xyz = r1.xyz * r0.xxx + r0.yzw;
  r1.xyz = cb12[7].xyz + -r2.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = sqrt(r0.w);
  r1.xyz = r1.xyz * r1.www;
  r1.xyz = r1.xyz * float3(-5,-5,-5) + r0.xyz;
  r3.xyzw = cb12[1].xyzw * r1.yyyy;
  r3.xyzw = cb12[0].xyzw * r1.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r1.zzzz + r3.xyzw;
  o2.xyz = cb12[7].xyz + -r1.xyz;
  r1.xyzw = cb12[3].xyzw + r3.xyzw;
  o0.w = r1.w;
  r2.w = 10000 + -r0.w;
  r3.x = 0.280000001 * v7.x;
  r3.x = frac(r3.x);
  r3.y = cb0[102].x * r3.x;
  r3.x = cb0[108].x + -r3.x;
  r3.x = 1 + r3.x;
  r3.x = saturate(3.33333302 * r3.x);
  r3.y = -r3.y * 0.5 + -1;
  r0.w = r0.w * 0.5 + r3.y;
  r0.w = saturate(min(r0.w, r2.w));
  r0.w = r0.w * r3.x;
  r0.w = cb0[8].y * r0.w;
  r0.w = cb0[149].x * r0.w;
  r2.w = cmp(0.999000013 < v4.w);
  r0.w = r2.w ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  r2.w = 0.0500000007 * v8.z;
  r0.xyz = -cb12[4].xyz * r2.www + r0.xyz;
  r0.xyz = r0.xyz + -r2.xyz;
  r2.x = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r2.x);
  r0.xyz = r0.xyz * r2.xxx + -cb12[6].xyz;
  o1.xyz = r0.xyz * float3(0.850000024,0.850000024,0.850000024) + cb12[6].xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyz = v5.xyz;
  o6.w = v3.w;
  o7.xyzw = v6.xyzw;
  o8.xyz = v7.yzw;
  o8.w = 0;
  o9.xw = v8.xy;
  o9.yz = float2(0,0);
  o10.xyz = float3(0,0,0);
  o10.w = v8.z;
  o11.x = v8.w;
  o11.y = v9.x;
  r0.x = cmp(v8.w < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o12.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}