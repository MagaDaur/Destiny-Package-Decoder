// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
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
  float4 cb0[139];
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
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD7,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
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
  r0.z = 0.280000001 * v3.w;
  r0.z = frac(r0.z);
  r0.w = cb0[97].x * r0.z;
  r0.z = cb0[103].x + -r0.z;
  r0.z = 1 + r0.z;
  r0.z = saturate(3.33333302 * r0.z);
  r0.w = -r0.w * 10 + -2.5;
  r1.xyz = cb1[1].xyz * v2.yyy;
  r1.xyz = cb1[0].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v2.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[7].xyz + -r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r0.w = r1.w * 10 + r0.w;
  r1.w = 10000 + -r1.w;
  r0.w = saturate(min(r1.w, r0.w));
  r0.z = r0.w * r0.z;
  r0.z = cb0[11].x * r0.z;
  r0.z = cb0[138].x * r0.z;
  r0.w = cmp(0.999000013 < v2.w);
  r0.z = r0.w ? 0 : r0.z;
  o0.z = r0.z;
  r0.w = v6.y * 6.28200006 + v3.z;
  sincos(r0.w, r2.x, r3.x);
  r2.xy = r2.xx * r0.yx;
  r0.x = r0.x * r3.x + -r2.x;
  r0.y = r0.y * r3.x + r2.y;
  r2.xyz = cb12[4].xyz * v5.zzz;
  r2.xyz = r2.xyz * r0.xxx + r1.xyz;
  r3.xyz = cb12[5].xyz * v5.zzz;
  r0.xyw = r3.xyz * r0.yyy + r2.xyz;
  r2.xyzw = cb12[1].xyzw * r0.yyyy;
  r2.xyzw = cb12[0].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r0.wwww + r2.xyzw;
  r2.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r2.w;
  r1.xyz = r0.xyw + -r1.xyz;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  r0.x = dot(r1.xyz, r1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyw = r1.xyz * r0.xxx + -cb12[6].xyz;
  o1.xyz = r0.xyw * float3(0.850000024,0.850000024,0.850000024) + cb12[6].xyz;
  p1.x = v6.x;
  o3.xyzw = v0.xyzw;
  o4.xy = v3.xy;
  o4.z = v1.w;
  o4.w = v4.x;
  o5.xyz = v4.yzw;
  o5.w = 0;
  o6.xyzw = v5.xyzw;
  r0.x = v6.x + v5.w;
  r0.xz = cmp(r0.xz < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.x | (int)r0.z;
  o7.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r2.xyzw;
  return;
}