// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:30 2023
cbuffer cb1 : register(b1)
{
  float4 cb1[7];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[114];
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
  float3 v13 : POSITION0,
  float2 v14 : POSITION1,
  float3 v15 : POSITION2,
  uint v16 : SV_VERTEXID0,
  uint v17 : SV_InstanceID0,
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
  out float2 o10 : TEXCOORD10,
  out float4 o11 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 0;
  r1.xyz = v13.xyz * cb1[4].xyz + cb1[5].xyz;
  r1.xyz = v10.yyy * r1.xyz;
  r1.xyz = v6.xyz * r1.xyz;
  r1.w = v11.y * 6.28200006 + v4.w;
  r1.w = 0.5 * r1.w;
  sincos(r1.w, r2.x, r3.x);
  r0.xyz = r3.xxx * r1.xyz;
  r1.w = dot(v5.xyz, v5.xyz);
  r1.w = rsqrt(r1.w);
  r2.yzw = v5.xyz * r1.www;
  r2.xyz = r2.xxx * r2.yzw;
  r3.yzw = -r2.yzx * r1.zxy;
  r4.xyz = r1.yzx * -r2.zxy + -r3.yzw;
  r1.x = dot(r1.xyz, -r2.xyz);
  r4.w = -r1.x;
  r0.xyzw = r4.xyzw + r0.xyzw;
  r1.xyz = r2.zxy * r0.yzx;
  r1.xyz = r2.yzx * r0.zxy + -r1.xyz;
  r0.xyz = r3.xxx * r0.xyz + r1.xyz;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  r0.xyz = v4.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r0.w;
  r1.x = cb0[113].x * cb0[8].y;
  r1.y = cmp(0.999000013 < v3.w);
  r1.x = r1.y ? 0 : r1.x;
  o0.z = r1.x;
  o0.xy = v14.xy * cb1[6].xy + cb1[6].zw;
  r1.yzw = v15.zxy * -r2.yzx;
  r4.xyz = v15.yzx * -r2.zxy + -r1.yzw;
  r5.xyz = v15.xyz;
  r5.w = 0;
  r1.y = dot(v15.xyz, -r2.xyz);
  r4.w = -r1.y;
  r4.xyzw = r3.xxxx * r5.xyzw + r4.xyzw;
  r1.yzw = r4.yzx * r2.zxy;
  r1.yzw = r2.yzx * r4.zxy + -r1.yzw;
  r1.yzw = r3.xxx * r4.xyz + r1.yzw;
  r1.yzw = r4.www * r2.xyz + r1.yzw;
  r2.xyz = cb1[1].xyz * r1.zzz;
  r2.xyz = cb1[0].xyz * r1.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r1.www + r2.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyz = v7.xyz;
  o6.w = v6.w;
  o7.xyzw = v8.xyzw;
  o8.xyw = v9.xyz;
  o8.z = v7.w;
  o9.x = v9.w;
  o9.yzw = v10.xyz;
  o10.x = v10.w;
  o10.y = v11.x;
  r1.y = v10.w + v10.z;
  r1.xy = cmp(r1.xy < float2(9.99999997e-007,9.99999997e-007));
  r1.x = (int)r1.y | (int)r1.x;
  o11.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}