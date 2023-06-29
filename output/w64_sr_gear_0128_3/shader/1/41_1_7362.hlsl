// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
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
  float4 cb0[112];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : POSITION0,
  float2 v5 : POSITION1,
  float3 v6 : POSITION2,
  uint v7 : SV_VERTEXID0,
  uint v8 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD3,
  out float3 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
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
  r3.xyz = v4.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = v2.xyz * r3.xyz;
  r3.xyz = float3(0.0109999999,0.0109999999,0.0109999999) * r3.xyz;
  r4.xyz = r3.yyy * r0.xyz;
  r0.xyz = v6.yyy * r0.xyz;
  r0.xyz = v6.xxx * r1.xyz + r0.xyz;
  r1.xyz = r3.xxx * r1.xyz + r4.xyz;
  r1.xyz = r3.zzz * r2.xyz + r1.xyz;
  r0.xyz = v6.zzz * r2.xyz + r0.xyz;
  r0.w = 1.57050002 + v2.w;
  r0.w = 0.5 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r4.xyz = r3.xxx * r1.xyz;
  r4.w = 0;
  r2.xyz = float3(0,1,0) * r2.xxx;
  r5.xyzw = -r2.zzyy * r1.yzxy;
  r1.xyz = -r1.zxy * -r2.yzz + r5.xyz;
  r1.w = -r5.w;
  r1.xyzw = r1.xyzw + r4.xyzw;
  r3.yzw = r2.zzy * r1.yzx;
  r3.yzw = r2.yzz * r1.zxy + -r3.yzw;
  r1.xyz = r3.xxx * r1.xyz + r3.yzw;
  r1.xyz = r1.www * r2.zyz + r1.xyz;
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
  r0.w = cb0[111].x * cb0[7].y;
  r2.w = cmp(0.999000013 < v0.w);
  r0.w = r2.w ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  o0.xy = v5.xy * cb1[6].xy + cb1[6].zw;
  r4.xyz = r3.xxx * r0.xyz;
  r5.xyzw = -r2.zzyy * r0.yzxy;
  r6.xyz = -r0.zxy * -r2.yzz + r5.xyz;
  r6.w = -r5.w;
  r4.w = 0;
  r4.xyzw = r6.xyzw + r4.xyzw;
  r0.xyz = r4.yzx * r2.zzy;
  r0.xyz = r2.yzz * r4.zxy + -r0.xyz;
  r0.xyz = r3.xxx * r4.xyz + r0.xyz;
  r0.xyz = r4.www * r2.xyz + r0.xyz;
  r2.xyz = cb1[1].xyz * r0.yyy;
  r2.xyz = cb1[0].xyz * r0.xxx + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r2.xyz;
  p1.x = v3.y;
  r0.x = cmp(v3.y < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}