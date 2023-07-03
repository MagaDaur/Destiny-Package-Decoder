// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
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
  float4 v7 : TEXCOORD7,
  float3 v8 : POSITION0,
  float2 v9 : POSITION1,
  float3 v10 : POSITION2,
  uint v11 : SV_VERTEXID0,
  uint v12 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD4,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = -cb12[7].xyz + r0.xyz;
  r0.x = dot(-cb12[6].xyz, r0.xyz);
  r0.y = 1760 * v4.w;
  r0.x = r0.x / r0.y;
  r0.x = max(1, r0.x);
  r0.y = r0.x * r0.x;
  r0.x = v4.w * r0.x;
  r0.y = 1 / r0.y;
  r0.y = cb0[2].z * r0.y;
  r0.y = cb0[107].x * r0.y;
  r0.z = cmp(0.999000013 < v2.w);
  r0.y = r0.z ? 0 : r0.y;
  o0.z = r0.y;
  r0.y = cmp(r0.y < 9.99999997e-007);
  r1.w = 0;
  r0.z = cb0[100].x * 3.14100003;
  sincos(r0.z, r2.x, r3.x);
  r2.yzw = v8.xyz * cb1[4].xyz + cb1[5].xyz;
  r1.xyz = r3.xxx * r2.yzw;
  r0.z = dot(cb0[101].xyz, cb0[101].xyz);
  r0.z = rsqrt(r0.z);
  r3.yzw = cb0[101].xyz * r0.zzz;
  r3.yzw = r3.yzw * r2.xxx;
  r4.xyz = -r3.zwy * r2.wyz;
  r4.xyz = r2.zwy * -r3.wyz + -r4.xyz;
  r0.z = dot(r2.yzw, -r3.yzw);
  r4.w = -r0.z;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r2.xyz = r3.wyz * r1.yzx;
  r2.xyz = r3.zwy * r1.zxy + -r2.xyz;
  r1.xyz = r3.xxx * r1.xyz + r2.xyz;
  r1.xyz = r1.www * r3.yzw + r1.xyz;
  r0.xzw = r1.xyz * r0.xxx;
  r0.xzw = v3.xyz * r0.xzw;
  r1.x = v5.w * 6.28200006 + v4.x;
  r1.x = 0.5 * r1.x;
  sincos(r1.x, r1.x, r2.x);
  r4.xyz = r2.xxx * r0.xzw;
  r4.w = 0;
  r1.y = dot(v2.xyz, v2.xyz);
  r1.y = rsqrt(r1.y);
  r1.yzw = v2.xyz * r1.yyy;
  r1.xyz = r1.xxx * r1.yzw;
  r2.yzw = -r1.yzx * r0.wxz;
  r5.xyz = r0.zwx * -r1.zxy + -r2.yzw;
  r0.x = dot(r0.xzw, -r1.xyz);
  r5.w = -r0.x;
  r4.xyzw = r5.xyzw + r4.xyzw;
  r0.xzw = r4.yzx * r1.zxy;
  r0.xzw = r1.yzx * r4.zxy + -r0.xzw;
  r0.xzw = r2.xxx * r4.xyz + r0.xzw;
  r0.xzw = r4.www * r1.xyz + r0.xzw;
  r0.xzw = v1.xyz + r0.xzw;
  r2.yzw = cb1[1].xyz * r0.zzz;
  r2.yzw = cb1[0].xyz * r0.xxx + r2.yzw;
  r0.xzw = cb1[2].xyz * r0.www + r2.yzw;
  r0.xzw = cb1[3].xyz + r0.xzw;
  r4.xyzw = cb12[1].xyzw * r0.zzzz;
  r4.xyzw = cb12[0].xyzw * r0.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r0.wwww + r4.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xzw;
  r4.xyzw = cb12[3].xyzw + r4.xyzw;
  o0.w = r4.w;
  o0.xy = v9.xy * cb1[6].xy + cb1[6].zw;
  r5.xyz = v10.xyz;
  r5.w = 0;
  r0.xzw = v10.zxy * -r3.zwy;
  r6.xyz = v10.yzx * -r3.wyz + -r0.xzw;
  r0.x = dot(v10.xyz, -r3.yzw);
  r6.w = -r0.x;
  r5.xyzw = r3.xxxx * r5.xyzw + r6.xyzw;
  r0.xzw = r5.yzx * r3.wyz;
  r0.xzw = r3.zwy * r5.zxy + -r0.xzw;
  r0.xzw = r3.xxx * r5.xyz + r0.xzw;
  r0.xzw = r5.www * r3.yzw + r0.xzw;
  r3.xyz = r2.xxx * r0.xzw;
  r2.yzw = r0.wxz * -r1.yzx;
  r5.xyz = r0.zwx * -r1.zxy + -r2.yzw;
  r0.x = dot(r0.xzw, -r1.xyz);
  r5.w = -r0.x;
  r3.w = 0;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r0.xzw = r3.yzx * r1.zxy;
  r0.xzw = r1.yzx * r3.zxy + -r0.xzw;
  r0.xzw = r2.xxx * r3.xyz + r0.xzw;
  r0.xzw = r3.www * r1.xyz + r0.xzw;
  r1.xyz = cb1[1].xyz * r0.zzz;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r1.xyz;
  p1.x = v5.y;
  o3.x = v0.w;
  o3.yz = v4.zw;
  o3.w = v5.x;
  r0.x = cmp(v5.x < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.y;
  o4.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r4.xyzw;
  return;
}