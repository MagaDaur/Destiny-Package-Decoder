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
  float4 cb0[118];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  uint v3 : SV_VERTEXID0,
  uint v4 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD3,
  out float3 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v3.x, vertex_id
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
  r0.x = (int)v3.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v3.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r1.xyz = cb1[1].xyz * v1.yyy;
  r1.xyz = cb1[0].xyz * v1.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v1.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[7].xyz + -r1.xyz;
  r0.z = dot(r2.xyz, r2.xyz);
  r0.z = sqrt(r0.z);
  r0.w = 0.280000001 * v2.x;
  r0.w = frac(r0.w);
  r1.w = cb0[97].x * r0.w;
  r0.w = cb0[103].x + -r0.w;
  r0.w = 1 + r0.w;
  r0.w = saturate(3.33333302 * r0.w);
  r1.w = -r1.w * 0.166666999 + -1;
  r1.w = r0.z * 0.166666999 + r1.w;
  r0.z = 10000 + -r0.z;
  r0.z = saturate(min(r1.w, r0.z));
  r0.z = r0.z * r0.w;
  r0.z = cb0[9].y * r0.z;
  r0.z = cb0[117].x * r0.z;
  r0.w = cmp(0.999000013 < v0.w);
  r0.z = r0.w ? 0 : r0.z;
  o0.z = r0.z;
  r0.z = cmp(r0.z < 9.99999997e-007);
  sincos(v1.w, r2.x, r3.x);
  r2.xy = r2.xx * r0.yx;
  r0.x = r0.x * r3.x + -r2.x;
  r0.y = r0.y * r3.x + r2.y;
  r2.xyz = cb12[5].xyz * r0.yyy;
  r0.xyw = cb12[4].xyz * r0.xxx;
  r0.xyw = r0.xyw * float3(2.25,2.25,2.25) + r1.xyz;
  r0.xyw = r2.xyz * float3(2.25,2.25,2.25) + r0.xyw;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.wwww + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  o1.xyz = cb12[6].xyz;
  p1.x = v2.y;
  r0.x = cmp(v2.y < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.z;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}