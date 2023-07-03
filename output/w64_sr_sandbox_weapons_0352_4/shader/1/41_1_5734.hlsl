// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
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
  float4 cb0[123];
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
  out float2 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v9.x, vertex_id
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
  r0.x = (int)v9.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v9.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,0.600000024) + r0.yx;
  r0.xy = v4.yx * r0.xy;
  sincos(v3.w, r1.x, r2.x);
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
  r0.yzw = r2.yzx * r0.yyy + r1.xyz;
  r1.xyz = cb12[7].xyz + -r1.xyz;
  r3.xyz = r1.xyz * r2.xyz;
  r3.xyz = r1.zxy * r2.yzx + -r3.xyz;
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r3.xyz * r1.www;
  r0.xyz = r3.zxy * r0.xxx + r0.yzw;
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
  r1.x = -0.965925813 + abs(r1.x);
  r1.x = saturate(-16.7734413 * r1.x);
  r1.y = r1.w * 0.333332986 + -1;
  r1.z = 10000 + -r1.w;
  r1.y = saturate(min(r1.y, r1.z));
  r1.x = r1.y * r1.x;
  r1.x = cb0[10].y * r1.x;
  r1.x = cb0[122].x * r1.x;
  r1.y = cmp(0.999000013 < v2.w);
  r1.x = r1.y ? 0 : r1.x;
  o0.z = r1.x;
  r1.x = cmp(r1.x < 9.99999997e-007);
  r1.yzw = r3.xyz * r2.xyz;
  o1.xyz = r2.zxy * r3.yzx + -r1.yzw;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v5.xyzw;
  o6.xyzw = v6.xyzw;
  o7.xy = v7.xy;
  r1.y = cmp(v7.x < 9.99999997e-007);
  r1.x = (int)r1.y | (int)r1.x;
  o8.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}