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
  float4 cb0[141];
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
  r0.x = (int)v4.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v4.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.xy = float2(0,5) + r0.yx;
  r0.xy = float2(5,100) * r0.xy;
  r1.xyz = -cb12[6].xyz * cb0[139].xxx + cb12[7].xyz;
  r1.xyz = -cb0[138].xxx * float3(0.5,0.5,0.5) + r1.xyz;
  r2.xyz = cb1[1].xyz * v1.yyy;
  r2.xyz = cb1[0].xyz * v1.xxx + r2.xyz;
  r2.xyz = cb1[2].xyz * v1.zzz + r2.xyz;
  r2.xyz = cb1[3].xyz + r2.xyz;
  r1.xyz = r2.xyz + -r1.xyz;
  r1.xyz = r1.xyz / cb0[138].xxx;
  r3.xyz = frac(r1.xyz);
  r1.xyz = floor(r1.xyz);
  r1.xyz = -r1.xyz * cb0[138].xxx + r2.xyz;
  r2.xyz = float3(1,1,1) + -r3.xyz;
  r0.z = max(cb0[140].x, 9.99999975e-006);
  r2.xyz = r2.xyz / r0.zzz;
  r3.xyz = r3.xyz / r0.zzz;
  r3.xyz = min(float3(1,1,1), r3.xyz);
  r2.xyz = min(float3(1,1,1), r2.xyz);
  r2.xyz = r3.xyz * r2.xyz;
  r0.z = r2.x * r2.y;
  r0.z = r0.z * r2.z;
  r2.xyz = cb12[7].xyz + -r1.xyz;
  r0.w = dot(r2.xyz, r2.xyz);
  r0.w = sqrt(r0.w);
  r1.w = 0.280000001 * v2.x;
  r1.w = frac(r1.w);
  r2.w = cb0[96].x * r1.w;
  r1.w = cb0[102].x + -r1.w;
  r1.w = 1 + r1.w;
  r1.w = saturate(3.33333302 * r1.w);
  r2.w = 999.999939 * r2.w;
  r2.w = r0.w * 999.999939 + -r2.w;
  r0.w = 10000 + -r0.w;
  r0.w = saturate(min(r2.w, r0.w));
  r0.w = r0.w * r1.w;
  r0.z = r0.w * r0.z;
  r0.z = cb0[12].y * r0.z;
  r0.z = cb0[113].x * r0.z;
  r0.w = cmp(0.999000013 < v0.w);
  r0.z = r0.w ? 0 : r0.z;
  o0.z = r0.z;
  r0.z = cmp(r0.z < 9.99999997e-007);
  sincos(v1.w, r3.x, r4.x);
  r3.xy = r3.xx * r0.xy;
  r0.x = r0.x * r4.x + r3.y;
  r0.y = r0.y * r4.x + -r3.x;
  r3.xyz = cb1[1].zxy * v0.yyy;
  r3.xyz = cb1[0].zxy * v0.xxx + r3.xyz;
  r3.xyz = cb1[2].zxy * v0.zzz + r3.xyz;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r4.xyz = v2.yyy * r3.yzx;
  r1.xyz = r4.xyz * r0.yyy + r1.xyz;
  r4.xyz = r3.xyz * r2.xyz;
  r2.xyz = r2.zxy * r3.yzx + -r4.xyz;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r4.xyz = v2.yyy * r2.zxy;
  r0.xyw = r4.xyz * r0.xxx + r1.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.wwww + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  r0.xyw = r3.xyz * r2.xyz;
  o1.xyz = r3.zxy * r2.yzx + -r0.xyw;
  o3.xy = v2.yz;
  r0.x = cmp(v2.z < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.z;
  o4.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}