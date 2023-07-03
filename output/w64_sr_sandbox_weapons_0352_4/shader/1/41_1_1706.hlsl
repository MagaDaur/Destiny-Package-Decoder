// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:44 2023
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
  float4 cb0[118];
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
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float2 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = r0.x * 0.333332986 + -1;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[12].y * r0.x;
  r0.x = cb0[117].x * r0.x;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r1.w = 0;
  r2.z = cb1[0].y;
  r2.x = cb1[1].y;
  r2.y = cb1[2].y;
  r3.y = cb1[1].z;
  r3.z = cb1[2].z;
  r3.x = cb1[0].z;
  r4.x = cb1[2].x;
  r4.y = cb1[0].x;
  r4.z = cb1[1].x;
  r0.yzw = r4.xyz * r3.xyz;
  r0.yzw = r3.zxy * r4.yzx + -r0.yzw;
  r2.w = dot(r0.yzw, r0.yzw);
  r3.x = rsqrt(r2.w);
  r2.w = cmp(0.00100000005 < r2.w);
  r0.yzw = r3.xxx * r0.yzw;
  r0.yzw = r2.www ? r0.yzw : r2.xyz;
  r2.xyz = r4.xyz * r0.yzw;
  r2.xyz = r4.zxy * r0.zwy + -r2.xyz;
  r3.z = r2.x;
  r4.w = 0;
  r2.x = cb0[111].x * 3.14100003;
  sincos(r2.x, r2.x, r5.x);
  r5.yzw = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r4.xyz = r5.xxx * r5.yzw;
  r2.w = dot(cb0[112].xyz, cb0[112].xyz);
  r2.w = rsqrt(r2.w);
  r6.xyz = cb0[112].xyz * r2.www;
  r6.xyz = r6.xyz * r2.xxx;
  r7.xyz = -r6.yzx * r5.wyz;
  r7.xyz = r5.zwy * -r6.zxy + -r7.xyz;
  r2.x = dot(r5.yzw, -r6.xyz);
  r7.w = -r2.x;
  r4.xyzw = r7.xyzw + r4.xyzw;
  r5.yzw = r6.zxy * r4.yzx;
  r5.yzw = r6.yzx * r4.zxy + -r5.yzw;
  r4.xyz = r5.xxx * r4.xyz + r5.yzw;
  r4.xyz = r4.www * r6.xyz + r4.xyz;
  r4.xyz = cb0[14].xxx * r4.xyz;
  r3.y = r0.w;
  r3.x = cb1[0].x;
  r7.x = dot(r4.xyz, r3.xyz);
  r8.y = r0.y;
  r8.z = r2.y;
  r0.w = r2.z;
  r8.x = cb1[1].x;
  r7.y = dot(r4.xyz, r8.xyz);
  r0.y = cb1[2].x;
  r7.z = dot(r4.xyz, r0.yzw);
  r2.x = cb0[14].y * 6.28200006 + v1.w;
  r2.x = 0.5 * r2.x;
  sincos(r2.x, r2.x, r4.x);
  r1.xyz = r4.xxx * r7.xyz;
  r2.xyz = float3(1,0,0) * r2.xxx;
  r9.xyzw = r7.yzxx * -r2.zxzx;
  r7.xyz = -r7.zxy * -r2.zzx + r9.xyz;
  r7.w = -r9.w;
  r1.xyzw = r7.xyzw + r1.xyzw;
  r4.yzw = r2.zxz * r1.yzx;
  r4.yzw = r2.zzx * r1.zxy + -r4.yzw;
  r1.xyz = r4.xxx * r1.xyz + r4.yzw;
  r1.xyz = r1.www * r2.xzz + r1.xyz;
  r1.xyz = v1.xyz + r1.xyz;
  r4.yzw = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r4.yzw;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r7.xyzw = cb12[1].xyzw * r1.yyyy;
  r7.xyzw = cb12[0].xyzw * r1.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r1.zzzz + r7.xyzw;
  o2.xyz = cb12[7].xyz + -r1.xyz;
  r1.xyzw = cb12[3].xyzw + r7.xyzw;
  o0.w = r1.w;
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r7.xyz = v5.xyz;
  r7.w = 0;
  r4.yzw = v5.zxy * -r6.yzx;
  r9.xyz = v5.yzx * -r6.zxy + -r4.yzw;
  r2.w = dot(v5.xyz, -r6.xyz);
  r9.w = -r2.w;
  r7.xyzw = r5.xxxx * r7.xyzw + r9.xyzw;
  r4.yzw = r7.yzx * r6.zxy;
  r4.yzw = r6.yzx * r7.zxy + -r4.yzw;
  r4.yzw = r5.xxx * r7.xyz + r4.yzw;
  r4.yzw = r7.www * r6.xyz + r4.yzw;
  r3.x = dot(r4.yzw, r3.xyz);
  r3.y = dot(r4.yzw, r8.xyz);
  r3.z = dot(r4.yzw, r0.yzw);
  r5.xyz = r4.xxx * r3.xyz;
  r6.xyzw = r3.yzxx * -r2.zxzx;
  r3.xyz = -r3.zxy * -r2.zzx + r6.xyz;
  r3.w = -r6.w;
  r5.w = 0;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r0.yzw = r3.yzx * r2.zxz;
  r0.yzw = r2.zzx * r3.zxy + -r0.yzw;
  r0.yzw = r4.xxx * r3.xyz + r0.yzw;
  r0.yzw = r3.www * r2.xyz + r0.yzw;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  o3.xy = v2.yz;
  r0.y = cmp(v2.z < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o4.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}