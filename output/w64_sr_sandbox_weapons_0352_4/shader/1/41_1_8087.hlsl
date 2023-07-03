// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
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
  float4 cb0[117];
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
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float3 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v2.yyy;
  r0.xyz = cb1[0].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v2.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = sqrt(r0.w);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = r1.x * 0.25 + -1;
  r1.x = 10000 + -r1.x;
  r0.w = saturate(min(r1.x, r0.w));
  r0.w = cb0[10].z * r0.w;
  r0.w = cb0[116].x * r0.w;
  r1.x = cmp(0.999000013 < v1.w);
  r0.w = r1.x ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  r1.y = dot(r0.xyz, cb1[0].xyz);
  r1.z = dot(r0.xyz, cb1[1].xyz);
  r1.x = dot(r0.xyz, cb1[2].xyz);
  r0.y = cb1[1].z;
  r0.z = cb1[2].z;
  r0.x = cb1[0].z;
  r2.xyz = r0.xyz * r1.xyz;
  r0.xyz = r0.zxy * r1.yzx + -r2.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r2.x = rsqrt(r1.w);
  r1.w = cmp(0.00100000005 < r1.w);
  r0.xyz = r2.xxx * r0.xyz;
  r2.z = cb1[0].y;
  r2.x = cb1[1].y;
  r2.y = cb1[2].y;
  r0.xyz = r1.www ? r0.xyz : r2.xyz;
  r2.xyz = r1.xyz * r0.xyz;
  r2.xyz = r1.zxy * r0.yzx + -r2.xyz;
  r3.x = r1.y;
  r4.x = r1.z;
  r3.z = r2.x;
  r3.y = r0.z;
  r5.w = 0;
  r0.z = cb0[111].x * 3.14100003;
  sincos(r0.z, r2.x, r6.x);
  r6.yzw = v7.xyz * cb1[4].xyz + cb1[5].xyz;
  r5.xyz = r6.xxx * r6.yzw;
  r0.z = dot(cb0[112].xyz, cb0[112].xyz);
  r0.z = rsqrt(r0.z);
  r7.xyz = cb0[112].xyz * r0.zzz;
  r7.xyz = r7.xyz * r2.xxx;
  r8.xyz = -r7.yzx * r6.wyz;
  r8.xyz = r6.zwy * -r7.zxy + -r8.xyz;
  r0.z = dot(r6.yzw, -r7.xyz);
  r8.w = -r0.z;
  r5.xyzw = r8.xyzw + r5.xyzw;
  r6.yzw = r7.zxy * r5.yzx;
  r6.yzw = r7.yzx * r5.zxy + -r6.yzw;
  r5.xyz = r6.xxx * r5.xyz + r6.yzw;
  r5.xyz = r5.www * r7.xyz + r5.xyz;
  r5.xyz = cb0[11].www * r5.xyz;
  r5.xyz = cb0[9].xyz * r5.xyz;
  r8.x = dot(r5.xyz, r3.xyz);
  r4.y = r0.x;
  r1.y = r0.y;
  r4.z = r2.y;
  r1.z = r2.z;
  r8.y = dot(r5.xyz, r4.xyz);
  r8.z = dot(r5.xyz, r1.xyz);
  r0.x = v5.x * 6.28200006 + v2.w;
  r0.x = 0.5 * r0.x;
  sincos(r0.x, r0.x, r2.x);
  r5.xyz = r2.xxx * r8.xyz;
  r0.xyz = float3(1,0,0) * r0.xxx;
  r9.xyzw = r8.yzxx * -r0.zxzx;
  r8.xyz = -r8.zxy * -r0.zzx + r9.xyz;
  r8.w = -r9.w;
  r5.w = 0;
  r5.xyzw = r8.xyzw + r5.xyzw;
  r2.yzw = r5.yzx * r0.zxz;
  r2.yzw = r0.zzx * r5.zxy + -r2.yzw;
  r2.yzw = r2.xxx * r5.xyz + r2.yzw;
  r2.yzw = r5.www * r0.xzz + r2.yzw;
  r2.yzw = v2.xyz + r2.yzw;
  r5.xyz = cb1[1].xyz * r2.zzz;
  r5.xyz = cb1[0].xyz * r2.yyy + r5.xyz;
  r2.yzw = cb1[2].xyz * r2.www + r5.xyz;
  r2.yzw = cb1[3].xyz + r2.yzw;
  r5.xyzw = cb12[1].xyzw * r2.zzzz;
  r5.xyzw = cb12[0].xyzw * r2.yyyy + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r2.wwww + r5.xyzw;
  o2.xyz = cb12[7].xyz + -r2.yzw;
  r5.xyzw = cb12[3].xyzw + r5.xyzw;
  o0.w = r5.w;
  o0.xy = v8.xy * cb1[6].xy + cb1[6].zw;
  r8.xyz = v9.xyz;
  r8.w = 0;
  r2.yzw = v9.zxy * -r7.yzx;
  r9.xyz = v9.yzx * -r7.zxy + -r2.yzw;
  r1.w = dot(v9.xyz, -r7.xyz);
  r9.w = -r1.w;
  r8.xyzw = r6.xxxx * r8.xyzw + r9.xyzw;
  r2.yzw = r8.yzx * r7.zxy;
  r2.yzw = r7.yzx * r8.zxy + -r2.yzw;
  r2.yzw = r6.xxx * r8.xyz + r2.yzw;
  r2.yzw = r8.www * r7.xyz + r2.yzw;
  r3.x = dot(r2.yzw, r3.xyz);
  r3.y = dot(r2.yzw, r4.xyz);
  r3.z = dot(r2.yzw, r1.xyz);
  r1.xyz = r3.xyz * r2.xxx;
  r4.xyzw = r3.yzxx * -r0.zxzx;
  r3.xyz = -r3.zxy * -r0.zzx + r4.xyz;
  r3.w = -r4.w;
  r1.w = 0;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r2.yzw = r1.yzx * r0.zxz;
  r2.yzw = r0.zzx * r1.zxy + -r2.yzw;
  r1.xyz = r2.xxx * r1.xyz + r2.yzw;
  r0.xyz = r1.www * r0.xyz + r1.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r1.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyz = v3.xyw;
  o4.w = v4.x;
  o5.xyz = v4.yzw;
  r0.x = cmp(v4.w < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o6.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r5.xyzw;
  return;
}