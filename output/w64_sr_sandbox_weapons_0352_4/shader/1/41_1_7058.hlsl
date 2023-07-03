// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
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
  float4 cb0[115];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float3 v3 : POSITION0,
  float2 v4 : POSITION1,
  float3 v5 : POSITION2,
  uint v6 : SV_VERTEXID0,
  uint v7 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD3,
  out float3 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 0;
  r1.z = cb1[0].y;
  r1.x = cb1[1].y;
  r1.y = cb1[2].y;
  r2.y = cb1[1].z;
  r2.z = cb1[2].z;
  r2.x = cb1[0].z;
  r3.y = dot(-cb12[6].xyz, cb1[0].xyz);
  r3.z = dot(-cb12[6].xyz, cb1[1].xyz);
  r3.x = dot(-cb12[6].xyz, cb1[2].xyz);
  r4.xyz = r3.xyz * r2.xyz;
  r2.xyz = r2.zxy * r3.yzx + -r4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r1.w);
  r1.w = cmp(0.00100000005 < r1.w);
  r2.xyz = r2.xyz * r2.www;
  r1.xyz = r1.www ? r2.xyz : r1.xyz;
  r2.xyz = r3.xyz * r1.xyz;
  r2.xyz = r3.zxy * r1.yzx + -r2.xyz;
  r4.x = r3.y;
  r5.x = r3.z;
  r4.z = r2.x;
  r6.xyz = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r6.xyz = cb0[12].xyz * r6.xyz;
  r6.xyz = float3(0.200000003,0.200000003,0.200000003) * r6.xyz;
  r4.y = r1.z;
  r7.x = dot(r6.xyz, r4.xyz);
  r4.x = dot(v5.xyz, r4.xyz);
  r5.y = r1.x;
  r3.y = r1.y;
  r5.z = r2.y;
  r3.z = r2.z;
  r7.y = dot(r6.xyz, r5.xyz);
  r4.y = dot(v5.xyz, r5.xyz);
  r7.z = dot(r6.xyz, r3.xyz);
  r4.z = dot(v5.xyz, r3.xyz);
  r1.x = v2.z * 6.28200006 + v1.w;
  r1.x = 0.5 * r1.x;
  sincos(r1.x, r1.x, r2.x);
  r0.xyz = r2.xxx * r7.xyz;
  r1.xyz = float3(0,1,0) * r1.xxx;
  r3.xyzw = r7.yzxy * -r1.zzyy;
  r5.xyz = -r7.zxy * -r1.yzz + r3.xyz;
  r5.w = -r3.w;
  r0.xyzw = r5.xyzw + r0.xyzw;
  r2.yzw = r1.zzy * r0.yzx;
  r2.yzw = r1.yzz * r0.zxy + -r2.yzw;
  r0.xyz = r2.xxx * r0.xyz + r2.yzw;
  r0.xyz = r0.www * r1.zyz + r0.xyz;
  r0.xyz = v1.xyz + r0.xyz;
  r2.yzw = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r2.yzw;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r3.xyzw = cb12[1].xyzw * r0.yyyy;
  r3.xyzw = cb12[0].xyzw * r0.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r0.zzzz + r3.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r3.xyzw;
  o0.w = r0.w;
  r1.w = cb0[114].x * cb0[13].x;
  r2.y = cmp(0.999000013 < v0.w);
  r1.w = r2.y ? 0 : r1.w;
  o0.z = r1.w;
  r1.w = cmp(r1.w < 9.99999997e-007);
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r3.xyzw = r4.yzxy * -r1.zzyy;
  r5.xyz = -r4.zxy * -r1.yzz + r3.xyz;
  r4.xyz = r2.xxx * r4.xyz;
  r5.w = -r3.w;
  r4.w = 0;
  r3.xyzw = r5.xyzw + r4.xyzw;
  r2.yzw = r3.yzx * r1.zzy;
  r2.yzw = r1.yzz * r3.zxy + -r2.yzw;
  r2.xyz = r2.xxx * r3.xyz + r2.yzw;
  r1.xyz = r3.www * r1.xyz + r2.xyz;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r2.xyz = cb1[0].xyz * r1.xxx + r2.xyz;
  o1.xyz = cb1[2].xyz * r1.zzz + r2.xyz;
  p1.x = v2.y;
  r1.x = cmp(v2.y < 9.99999997e-007);
  r1.x = (int)r1.x | (int)r1.w;
  o3.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}