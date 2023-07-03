// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:59 2023
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
  float4 cb0[105];
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
  out float3 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[104].x * cb0[8].y;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r1.w = 0;
  r2.w = 0;
  r0.y = cb0[99].x * 3.14100003;
  sincos(r0.y, r3.x, r4.x);
  r0.yzw = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r2.xyz = r4.xxx * r0.yzw;
  r3.y = dot(cb0[100].xyz, cb0[100].xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = cb0[100].xyz * r3.yyy;
  r3.xyz = r3.xxx * r3.yzw;
  r4.yzw = -r3.yzx * r0.wyz;
  r5.xyz = r0.zwy * -r3.zxy + -r4.yzw;
  r0.y = dot(r0.yzw, -r3.xyz);
  r5.w = -r0.y;
  r2.xyzw = r5.xyzw + r2.xyzw;
  r0.yzw = r3.zxy * r2.yzx;
  r0.yzw = r3.yzx * r2.zxy + -r0.yzw;
  r0.yzw = r4.xxx * r2.xyz + r0.yzw;
  r0.yzw = r2.www * r3.xyz + r0.yzw;
  r0.yzw = float3(0.0120000001,0.0120000001,0.108000003) * r0.yzw;
  r2.x = 0.5 * v1.w;
  sincos(r2.x, r2.x, r5.x);
  r1.xyz = r5.xxx * r0.yzw;
  r2.xyz = float3(1,0,0) * r2.xxx;
  r6.xyzw = -r2.zxzx * r0.zwyy;
  r7.xyz = -r0.wyz * -r2.zzx + r6.xyz;
  r7.w = -r6.w;
  r1.xyzw = r7.xyzw + r1.xyzw;
  r0.yzw = r2.zxz * r1.yzx;
  r0.yzw = r2.zzx * r1.zxy + -r0.yzw;
  r0.yzw = r5.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r2.xzz + r0.yzw;
  r0.yzw = v1.xyz + r0.yzw;
  r1.xyz = cb1[1].xyz * r0.zzz;
  r1.xyz = cb1[0].xyz * r0.yyy + r1.xyz;
  r0.yzw = cb1[2].xyz * r0.www + r1.xyz;
  r0.yzw = cb1[3].xyz + r0.yzw;
  r1.xyzw = cb12[1].xyzw * r0.zzzz;
  r1.xyzw = cb12[0].xyzw * r0.yyyy + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.wwww + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.yzw;
  r1.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r1.w;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r0.xyz = v5.xyz;
  r0.w = 0;
  r1.xyz = v5.zxy * -r3.yzx;
  r1.xyz = v5.yzx * -r3.zxy + -r1.xyz;
  r2.w = dot(v5.xyz, -r3.xyz);
  r1.w = -r2.w;
  r0.xyzw = r4.xxxx * r0.xyzw + r1.xyzw;
  r1.xyz = r3.zxy * r0.yzx;
  r1.xyz = r3.yzx * r0.zxy + -r1.xyz;
  r0.xyz = r4.xxx * r0.xyz + r1.xyz;
  r0.xyz = r0.www * r3.xyz + r0.xyz;
  r1.xyz = r5.xxx * r0.xyz;
  r3.xyzw = r0.yzxx * -r2.zxzx;
  r0.xyz = -r0.zxy * -r2.zzx + r3.xyz;
  r0.w = -r3.w;
  r1.w = 0;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyz = r2.zxz * r0.yzx;
  r1.xyz = r2.zzx * r0.zxy + -r1.xyz;
  r0.xyz = r5.xxx * r0.xyz + r1.xyz;
  r0.xyz = r0.www * r2.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  return;
}