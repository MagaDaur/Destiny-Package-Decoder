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
  float4 cb0[134];
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
  float4 v12 : TEXCOORD12,
  float4 v13 : TEXCOORD13,
  float4 v14 : TEXCOORD14,
  uint v15 : SV_VERTEXID0,
  uint v16 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD14,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float4 o10 : TEXCOORD10,
  out float4 o11 : TEXCOORD11,
  out float4 o12 : TEXCOORD12,
  out float4 o13 : TEXCOORD13,
  out float4 o14 : SV_POSITION0)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_input_sgv v15.x, vertex_id
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
  r0.x = (int)v15.x;
  r0.x = 0.5 + r0.x;
  r0.x = r0.x * 0.25 + -0.5;
  r0.x = round(r0.x);
  r0.x = (int)r0.x;
  r0.x = (uint)r0.x << 2;
  r0.x = (int)-r0.x + (int)v15.x;
  o0.xy = x1[r0.x+0].xy;
  r0.xy = x0[r0.x+0].xy;
  r0.z = 0.280000001 * v8.w;
  r0.z = frac(r0.z);
  r0.w = cb0[107].x * r0.z;
  r0.z = cb0[113].x + -r0.z;
  r0.xyz = float3(0,0.25,1) + r0.yxz;
  r0.z = saturate(3.33333302 * r0.z);
  r0.w = -r0.w * 0.5 + -3.5;
  r1.xyz = cb1[1].xyz * v6.yyy;
  r1.xyz = cb1[0].xyz * v6.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v6.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyz = cb12[7].xyz + -r1.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = sqrt(r1.w);
  r0.w = r1.w * 0.5 + r0.w;
  r1.w = 10000 + -r1.w;
  r0.w = saturate(min(r1.w, r0.w));
  r0.z = r0.w * r0.z;
  r0.z = cb0[8].y * r0.z;
  r0.z = cb0[133].x * r0.z;
  r0.w = cmp(0.999000013 < v6.w);
  r0.z = r0.w ? 0 : r0.z;
  o0.z = r0.z;
  r0.z = cmp(r0.z < 9.99999997e-007);
  r0.w = v11.x * 6.28200006 + v7.w;
  sincos(r0.w, r2.x, r3.x);
  r2.xy = r2.xx * r0.xy;
  r0.y = r0.y * r3.x + -r2.x;
  r0.x = r0.x * r3.x + r2.y;
  r2.xyz = cb12[4].xyz * v10.zzz;
  r2.xyz = r2.xyz * r0.yyy + r1.xyz;
  r3.xyz = cb12[5].xyz * v10.zzz;
  r0.xyw = r3.xyz * r0.xxx + r2.xyz;
  r2.xyzw = cb12[1].xyzw * r0.yyyy;
  r2.xyzw = cb12[0].xyzw * r0.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r0.wwww + r2.xyzw;
  r2.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r2.w;
  r1.w = 0.25 * v10.z;
  r3.xyz = -cb12[4].xyz * r1.www + r0.xyw;
  o2.xyz = cb12[7].xyz + -r0.xyw;
  r0.xyw = r3.xyz + -r1.xyz;
  r1.x = dot(r0.xyw, r0.xyw);
  r1.x = rsqrt(r1.x);
  o1.xyz = r1.xxx * r0.xyw;
  p1.x = v10.w;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyzw = v3.xyzw;
  o7.xyzw = v4.xyzw;
  o8.xyz = v7.xyz;
  o8.w = v5.w;
  o9.xyz = v8.xyz;
  o9.w = 0;
  o10.xy = float2(0,0);
  o10.zw = v9.xy;
  o11.x = v9.z;
  o11.yzw = float3(0,0,0);
  o12.xw = float2(0,0);
  o12.y = v9.w;
  o12.z = v10.x;
  o13.xy = float2(0,0);
  o13.zw = v10.yz;
  r0.x = cmp(v10.w < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.z;
  o14.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r2.xyzw;
  return;
}