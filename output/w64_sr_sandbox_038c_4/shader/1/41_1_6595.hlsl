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
  float4 cb0[110];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[109].x * cb0[8].y;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r1.w = 0;
  r2.w = 0;
  r3.w = 0;
  r0.y = cb0[104].x * 3.14100003;
  sincos(r0.y, r4.x, r5.x);
  r0.yzw = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = r5.xxx * r0.yzw;
  r4.y = dot(cb0[105].xyz, cb0[105].xyz);
  r4.y = rsqrt(r4.y);
  r4.yzw = cb0[105].xyz * r4.yyy;
  r4.xyz = r4.xxx * r4.yzw;
  r5.yzw = -r4.yzx * r0.wyz;
  r6.xyz = r0.zwy * -r4.zxy + -r5.yzw;
  r0.y = dot(r0.yzw, -r4.xyz);
  r6.w = -r0.y;
  r3.xyzw = r6.xyzw + r3.xyzw;
  r0.yzw = r4.zxy * r3.yzx;
  r0.yzw = r4.yzx * r3.zxy + -r0.yzw;
  r0.yzw = r5.xxx * r3.xyz + r0.yzw;
  r0.yzw = r3.www * r4.xyz + r0.yzw;
  r3.x = cb0[102].x * 3.14100003;
  sincos(r3.x, r3.x, r6.x);
  r2.xyz = r6.xxx * r0.yzw;
  r3.xyz = float3(1,0,0) * r3.xxx;
  r7.xyzw = -r3.zxzx * r0.zwyy;
  r8.xyz = -r0.wyz * -r3.zzx + r7.xyz;
  r8.w = -r7.w;
  r2.xyzw = r8.xyzw + r2.xyzw;
  r0.yzw = r3.zxz * r2.yzx;
  r0.yzw = r3.zzx * r2.zxy + -r0.yzw;
  r0.yzw = r6.xxx * r2.xyz + r0.yzw;
  r0.yzw = r2.www * r3.xzz + r0.yzw;
  r0.yzw = float3(0.180000007,0.180000007,0.180000007) * r0.yzw;
  r2.x = 0.5 * v1.w;
  sincos(r2.x, r2.x, r7.x);
  r1.xyz = r7.xxx * r0.yzw;
  r2.xyz = float3(0,0,1) * r2.xxx;
  r8.xyzw = -r2.zyyz * r0.zwyw;
  r9.xyz = -r0.wyz * -r2.yzy + r8.xyz;
  r9.w = -r8.w;
  r1.xyzw = r9.xyzw + r1.xyzw;
  r0.yzw = r2.zyy * r1.yzx;
  r0.yzw = r2.yzy * r1.zxy + -r0.yzw;
  r0.yzw = r7.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r2.yyz + r0.yzw;
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
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r8.xyz = v5.xyz;
  r8.w = 0;
  r0.yzw = v5.zxy * -r4.yzx;
  r9.xyz = v5.yzx * -r4.zxy + -r0.yzw;
  r0.y = dot(v5.xyz, -r4.xyz);
  r9.w = -r0.y;
  r8.xyzw = r5.xxxx * r8.xyzw + r9.xyzw;
  r0.yzw = r8.yzx * r4.zxy;
  r0.yzw = r4.yzx * r8.zxy + -r0.yzw;
  r0.yzw = r5.xxx * r8.xyz + r0.yzw;
  r0.yzw = r8.www * r4.xyz + r0.yzw;
  r4.xyz = r6.xxx * r0.yzw;
  r5.xyzw = r0.zwyy * -r3.zxzx;
  r8.xyz = -r0.wyz * -r3.zzx + r5.xyz;
  r8.w = -r5.w;
  r4.w = 0;
  r4.xyzw = r8.xyzw + r4.xyzw;
  r0.yzw = r4.yzx * r3.zxz;
  r0.yzw = r3.zzx * r4.zxy + -r0.yzw;
  r0.yzw = r6.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r3.xyz + r0.yzw;
  r3.xyz = r7.xxx * r0.yzw;
  r4.xyzw = r0.zwyw * -r2.zyyz;
  r5.xyz = -r0.wyz * -r2.yzy + r4.xyz;
  r5.w = -r4.w;
  r3.w = 0;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r0.yzw = r3.yzx * r2.zyy;
  r0.yzw = r2.yzy * r3.zxy + -r0.yzw;
  r0.yzw = r7.xxx * r3.xyz + r0.yzw;
  r0.yzw = r3.www * r2.xyz + r0.yzw;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  p1.x = v2.y;
  r0.y = cmp(v2.y < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}