// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:44 2023
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
  float4 cb0[107];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  uint v4 : SV_VERTEXID0,
  uint v5 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float2 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v4.x, vertex_id
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
  r0.x = (int)v4.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v4.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = v2.yx * r0.yx;
  sincos(v1.w, r1.x, r2.x);
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
  r1.x = dot(r1.xyz, r1.xyz);
  r1.x = sqrt(r1.x);
  r1.y = dot(r3.xyz, r3.xyz);
  r1.y = rsqrt(r1.y);
  r1.yzw = r3.xyz * r1.yyy;
  r3.xyz = v3.xxx * r1.wyz;
  r0.xyz = r3.xyz * r0.xxx + r0.yzw;
  r3.xyzw = cb12[1].xyzw * r0.yyyy;
  r3.xyzw = cb12[0].xyzw * r0.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r0.zzzz + r3.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r3.xyzw;
  o0.w = r0.w;
  r2.w = r1.x * 4 + -2;
  r1.x = 10000 + -r1.x;
  r1.x = saturate(min(r2.w, r1.x));
  r1.x = cb0[8].y * r1.x;
  r1.x = cb0[106].x * r1.x;
  r2.w = cmp(0.999000013 < v0.w);
  r1.x = r2.w ? 0 : r1.x;
  o0.z = r1.x;
  r1.x = cmp(r1.x < 9.99999997e-007);
  r3.xyz = r2.xyz * r1.yzw;
  o1.xyz = r2.zxy * r1.zwy + -r3.xyz;
  o3.xy = v3.xy;
  r1.y = cmp(v3.y < 9.99999997e-007);
  r1.x = (int)r1.y | (int)r1.x;
  o4.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}