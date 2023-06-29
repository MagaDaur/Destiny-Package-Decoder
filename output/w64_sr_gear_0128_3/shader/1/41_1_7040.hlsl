// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
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
  float4 v6 : TEXCOORD6,
  float3 v7 : POSITION0,
  float2 v8 : POSITION1,
  float3 v9 : POSITION2,
  uint v10 : SV_VERTEXID0,
  uint v11 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD3,
  out float3 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[1].z;
  r0.x = cb1[2].z;
  r0.y = cb1[0].z;
  r0.w = dot(v0.xyz, v0.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v0.xyz * r0.www;
  r2.xyz = r1.yzx * r0.xyz;
  r0.xyz = r0.zxy * r1.zxy + -r2.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = cmp(0.00100000005 < r0.w);
  r0.xyz = r1.www * r0.xyz;
  r2.x = cb1[0].y;
  r2.y = cb1[1].y;
  r2.z = cb1[2].y;
  r0.xyz = r0.www ? r0.xyz : r2.xyz;
  r2.xyz = r1.zxy * r0.yzx;
  r2.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r3.xyz = v7.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = v4.xxx * r3.xyz;
  r3.xyz = v3.xyz * r3.xyz;
  r4.xyz = r3.yyy * r0.xyz;
  r0.xyz = v9.yyy * r0.xyz;
  r0.xyz = v9.xxx * r1.xyz + r0.xyz;
  r1.xyz = r3.xxx * r1.xyz + r4.xyz;
  r1.xyz = r3.zzz * r2.xyz + r1.xyz;
  r0.xyz = v9.zzz * r2.xyz + r0.xyz;
  r0.w = v4.z * 6.28200006 + v2.w;
  r0.w = 0.5 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r4.xyz = r3.xxx * r1.xyz;
  r4.w = 0;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r2.yzw = v2.xyz * r0.www;
  r2.xyz = r2.xxx * r2.yzw;
  r3.yzw = -r2.yzx * r1.zxy;
  r5.xyz = r1.yzx * -r2.zxy + -r3.yzw;
  r0.w = dot(r1.xyz, -r2.xyz);
  r5.w = -r0.w;
  r1.xyzw = r5.xyzw + r4.xyzw;
  r3.yzw = r2.zxy * r1.yzx;
  r3.yzw = r2.yzx * r1.zxy + -r3.yzw;
  r1.xyz = r3.xxx * r1.xyz + r3.yzw;
  r1.xyz = r1.www * r2.xyz + r1.xyz;
  r1.xyz = v1.xyz + r1.xyz;
  r3.yzw = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r3.yzw;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r4.xyzw = cb12[1].xyzw * r1.yyyy;
  r4.xyzw = cb12[0].xyzw * r1.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r1.zzzz + r4.xyzw;
  o2.xyz = cb12[7].xyz + -r1.xyz;
  r1.xyzw = cb12[3].xyzw + r4.xyzw;
  o0.w = r1.w;
  r0.w = cb0[107].x * cb0[7].y;
  r2.w = cmp(0.999000013 < v0.w);
  r0.w = r2.w ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  o3.xyzw = r0.wwww ? float4(10000,10000,-10000,1) : r1.xyzw;
  o0.xy = v8.xy * cb1[6].xy + cb1[6].zw;
  r1.xyz = r3.xxx * r0.xyz;
  r3.yzw = -r2.yzx * r0.zxy;
  r4.xyz = r0.yzx * -r2.zxy + -r3.yzw;
  r0.x = dot(r0.xyz, -r2.xyz);
  r4.w = -r0.x;
  r1.w = 0;
  r0.xyzw = r4.xyzw + r1.xyzw;
  r1.xyz = r2.zxy * r0.yzx;
  r1.xyz = r2.yzx * r0.zxy + -r1.xyz;
  r0.xyz = r3.xxx * r0.xyz + r1.xyz;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  p1.x = v4.x;
  return;
}