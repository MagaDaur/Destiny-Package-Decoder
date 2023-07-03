// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
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
  float4 cb0[116];
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
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float3 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[0].y;
  r0.x = cb1[1].y;
  r0.y = cb1[2].y;
  r1.xyz = cb1[1].xyz * v2.yyy;
  r1.xyz = cb1[0].xyz * v2.xxx + r1.xyz;
  r1.xyz = cb1[2].xyz * v2.zzz + r1.xyz;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r1.xyz = cb12[7].xyz + -r1.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r2.y = dot(r1.xyz, cb1[0].xyz);
  r2.z = dot(r1.xyz, cb1[1].xyz);
  r2.x = dot(r1.xyz, cb1[2].xyz);
  r1.y = cb1[1].z;
  r1.z = cb1[2].z;
  r1.x = cb1[0].z;
  r3.xyz = r1.xyz * r2.xyz;
  r1.xyz = r1.zxy * r2.yzx + -r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = cmp(0.00100000005 < r0.w);
  r1.xyz = r1.xyz * r1.www;
  r0.xyz = r0.www ? r1.xyz : r0.xyz;
  r1.xyz = r2.xyz * r0.xyz;
  r1.xyz = r2.zxy * r0.yzx + -r1.xyz;
  r3.x = r2.y;
  r4.x = r2.z;
  r3.z = r1.x;
  r3.y = r0.z;
  r5.xyz = v4.xyz * cb1[4].xyz + cb1[5].xyz;
  r5.xyz = r5.xyz * cb0[9].xxx + cb0[97].xyz;
  r6.x = dot(r5.xyz, r3.xyz);
  r3.x = dot(v6.xyz, r3.xyz);
  r4.y = r0.x;
  r2.y = r0.y;
  r4.z = r1.y;
  r2.z = r1.z;
  r6.y = dot(r5.xyz, r4.xyz);
  r3.y = dot(v6.xyz, r4.xyz);
  r6.z = dot(r5.xyz, r2.xyz);
  r3.z = dot(v6.xyz, r2.xyz);
  r0.x = 0.5 * v2.w;
  sincos(r0.x, r0.x, r1.x);
  r2.xyz = r1.xxx * r6.xyz;
  r2.w = 0;
  r0.xyz = float3(1,0,0) * r0.xxx;
  r4.xyzw = r6.yzxx * -r0.zxzx;
  r5.xyz = -r6.zxy * -r0.zzx + r4.xyz;
  r5.w = -r4.w;
  r2.xyzw = r5.xyzw + r2.xyzw;
  r1.yzw = r2.yzx * r0.zxz;
  r1.yzw = r0.zzx * r2.zxy + -r1.yzw;
  r1.yzw = r1.xxx * r2.xyz + r1.yzw;
  r1.yzw = r2.www * r0.xzz + r1.yzw;
  r1.yzw = v2.xyz + r1.yzw;
  r2.xyz = cb1[1].xyz * r1.zzz;
  r2.xyz = cb1[0].xyz * r1.yyy + r2.xyz;
  r1.yzw = cb1[2].xyz * r1.www + r2.xyz;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r2.xyzw = cb12[1].xyzw * r1.zzzz;
  r2.xyzw = cb12[0].xyzw * r1.yyyy + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r1.wwww + r2.xyzw;
  o2.xyz = cb12[7].xyz + -r1.yzw;
  r2.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r2.w;
  r0.w = cb0[103].x * cb0[8].y;
  r1.y = cmp(0.999000013 < v1.w);
  r0.w = r1.y ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  o0.xy = v5.xy * cb1[6].xy + cb1[6].zw;
  r4.xyzw = r3.yzxx * -r0.zxzx;
  r5.xyz = -r3.zxy * -r0.zzx + r4.xyz;
  r3.xyz = r1.xxx * r3.xyz;
  r5.w = -r4.w;
  r3.w = 0;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r1.yzw = r3.yzx * r0.zxz;
  r1.yzw = r0.zzx * r3.zxy + -r1.yzw;
  r1.xyz = r1.xxx * r3.xyz + r1.yzw;
  r0.xyz = r3.www * r0.xyz + r1.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r1.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyz = v3.xyw;
  r0.x = cmp(cb0[115].x < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o5.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r2.xyzw;
  return;
}