// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:05 2023
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
  float4 cb0[128];
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
  uint v7 : SV_VERTEXID0,
  uint v8 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float3 o8 : TEXCOORD8,
  out float4 o9 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v7.x, vertex_id
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
  r0.x = (int)v7.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v7.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(60,1) * r0.yx;
  r0.z = 6.28200006 + v4.w;
  sincos(r0.z, r1.x, r2.x);
  r0.zw = r1.xx * r0.xy;
  r0.y = r0.y * r2.x + -r0.z;
  r0.x = r0.x * r2.x + r0.w;
  r1.xyz = cb1[1].xyz * v3.yyy;
  r1.xyz = cb1[0].xyz * v3.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v3.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[7].yzx + -r1.yzx;
  r3.xyz = float3(1,0,0) * r2.xyz;
  r3.xyz = r2.yzx * float3(0,1,0) + -r3.xyz;
  r0.z = dot(r3.xy, r3.xy);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r4.xyz = -cb12[7].xyz + r1.xyz;
  r0.z = dot(-cb12[6].xyz, r4.xyz);
  r0.z = 0.568181813 * r0.z;
  r0.z = max(1, r0.z);
  r0.w = 0.00999999978 * r0.z;
  r3.xyz = r3.xyz * r0.www;
  r1.xyz = r3.xyz * r0.yyy + r1.xyz;
  r0.xy = r0.xz * r0.zz;
  r0.y = 1 / r0.y;
  r0.xzw = r0.xxx * float3(0,0,0.00999999978) + r1.xyz;
  r1.xyzw = cb12[1].xyzw * r0.zzzz;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.wwww + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xzw;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  r0.x = dot(r2.xyz, r2.xyz);
  r0.z = sqrt(r0.x);
  r0.x = rsqrt(r0.x);
  r2.xyz = r2.zxy * r0.xxx;
  r2.xyz = -r2.zzz * float3(0,0,1) + r2.xyz;
  r0.x = 0.280000001 * v5.x;
  r0.x = frac(r0.x);
  r0.w = cb0[109].x * r0.x;
  r0.x = cb0[115].x + -r0.x;
  r0.x = 1 + r0.x;
  r0.x = saturate(3.33333302 * r0.x);
  r0.w = -r0.w * 0.5 + -1;
  r0.w = r0.z * 0.5 + r0.w;
  r0.z = 10000 + -r0.z;
  r0.z = saturate(min(r0.w, r0.z));
  r0.x = r0.z * r0.x;
  r0.x = cb0[3].y * r0.x;
  r0.x = r0.x * r0.y;
  r0.x = cb0[127].x * r0.x;
  r0.y = cmp(0.999000013 < v2.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  o1.xyz = r2.xyz * r0.yyy;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyz = v4.xyz;
  o5.w = 0;
  o6.xyzw = float4(0,0,0,0);
  o7.xyzw = float4(0,0,0,0);
  o8.x = 0;
  o8.yz = v5.zw;
  r0.y = cmp(v5.z < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o9.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}