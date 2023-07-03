// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:35 2023
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
  float4 cb0[108];
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
  uint v6 : SV_VERTEXID0,
  uint v7 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v6.x, vertex_id
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
  r0.x = (int)v6.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v6.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = v2.yx * r0.yx;
  r0.z = v3.w * 6.28200006 + v1.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.x = r0.x * r2.x + r0.w;
  r0.y = r0.y * r2.x + -r0.z;
  r1.xyz = cb1[1].xyz * v1.yyy;
  r1.xyz = cb1[0].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v1.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb1[1].zxy * v0.yyy;
  r2.xyz = cb1[0].zxy * v0.xxx + r2.xyz;
  r2.xyz = cb1[2].zxy * v0.zzz + r2.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = r2.xyz * r0.zzz;
  r3.xyz = v3.xxx * r2.yzx;
  r0.yzw = r3.xyz * r0.yyy + r1.xyz;
  r1.xyz = cb12[7].xyz + -r1.xyz;
  r3.xyz = r1.xyz * r2.xyz;
  r3.xyz = r1.zxy * r2.yzx + -r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r4.xyz = v3.xxx * r3.zxy;
  r0.xyz = r4.xyz * r0.xxx + r0.yzw;
  r4.xyzw = cb12[1].xyzw * r0.yyyy;
  r4.xyzw = cb12[0].xyzw * r0.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r0.zzzz + r4.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r4.xyzw;
  o0.w = r0.w;
  r1.w = dot(r1.xyz, r1.xyz);
  r2.w = rsqrt(r1.w);
  r1.w = sqrt(r1.w);
  r1.xyz = r2.www * r1.xyz;
  r1.x = dot(r1.zxy, r2.xyz);
  r1.y = cb0[104].x * 0.0174532942;
  r1.y = cos(r1.y);
  r1.x = abs(r1.x) + -r1.y;
  r1.z = cb0[105].x + cb0[104].x;
  r1.z = 0.0174532942 * r1.z;
  r1.z = cos(r1.z);
  r1.y = r1.z + -r1.y;
  r1.x = saturate(r1.x / r1.y);
  r1.y = r1.w * 4 + -2;
  r1.z = 10000 + -r1.w;
  r1.y = saturate(min(r1.y, r1.z));
  r1.x = r1.y * r1.x;
  r1.x = cb0[8].y * r1.x;
  r1.x = cb0[107].x * r1.x;
  r1.y = cmp(0.999000013 < v0.w);
  r1.x = r1.y ? 0 : r1.x;
  o0.z = r1.x;
  r1.x = cmp(r1.x < 9.99999997e-007);
  r1.yzw = r3.xyz * r2.xyz;
  o1.xyz = r2.zxy * r3.yzx + -r1.yzw;
  o3.xyz = v3.xyz;
  r1.y = cmp(v3.y < 9.99999997e-007);
  r1.x = (int)r1.y | (int)r1.x;
  o4.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}