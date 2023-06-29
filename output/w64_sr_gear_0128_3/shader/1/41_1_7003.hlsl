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
  float4 cb0[126];
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
  float3 v10 : POSITION0,
  float2 v11 : POSITION1,
  float3 v12 : POSITION2,
  uint v13 : SV_VERTEXID0,
  uint v14 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float3 o9 : TEXCOORD9,
  out float4 o10 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[1].z;
  r0.x = cb1[2].z;
  r0.y = cb1[0].z;
  r0.w = dot(v4.xyz, v4.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v4.xyz * r0.www;
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
  r3.w = 0;
  r0.w = cb0[120].x * 3.14100003;
  sincos(r0.w, r4.x, r5.x);
  r4.yzw = v10.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = r5.xxx * r4.yzw;
  r0.w = dot(cb0[121].xyz, cb0[121].xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = cb0[121].xyz * r0.www;
  r5.yzw = r5.yzw * r4.xxx;
  r6.xyz = -r5.zwy * r4.wyz;
  r6.xyz = r4.zwy * -r5.wyz + -r6.xyz;
  r0.w = dot(r4.yzw, -r5.yzw);
  r6.w = -r0.w;
  r3.xyzw = r6.xyzw + r3.xyzw;
  r4.xyz = r5.wyz * r3.yzx;
  r4.xyz = r5.zwy * r3.zxy + -r4.xyz;
  r3.xyz = r5.xxx * r3.xyz + r4.xyz;
  r3.xyz = r3.www * r5.yzw + r3.xyz;
  r3.xyz = v7.www * r3.xyz;
  r4.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * r1.xyz + r4.xyz;
  r3.xyz = r3.zzz * r2.xyz + r3.xyw;
  r0.w = 0.5 * v6.x;
  sincos(r0.w, r4.x, r6.x);
  r7.xyz = r6.xxx * r3.xyz;
  r7.w = 0;
  r4.xyz = float3(1,0,0) * r4.xxx;
  r8.xyzw = -r4.zxzx * r3.yzxx;
  r3.xyz = -r3.zxy * -r4.zzx + r8.xyz;
  r3.w = -r8.w;
  r3.xyzw = r3.xyzw + r7.xyzw;
  r6.yzw = r4.zxz * r3.yzx;
  r6.yzw = r4.zzx * r3.zxy + -r6.yzw;
  r3.xyz = r6.xxx * r3.xyz + r6.yzw;
  r3.xyz = r3.www * r4.xzz + r3.xyz;
  r3.xyz = v5.xyz + r3.xyz;
  r6.yzw = cb1[1].xyz * r3.yyy;
  r3.xyw = cb1[0].xyz * r3.xxx + r6.yzw;
  r3.xyz = cb1[2].xyz * r3.zzz + r3.xyw;
  r3.xyz = cb1[3].xyz + r3.xyz;
  r7.xyzw = cb12[1].xyzw * r3.yyyy;
  r7.xyzw = cb12[0].xyzw * r3.xxxx + r7.xyzw;
  r7.xyzw = cb12[2].xyzw * r3.zzzz + r7.xyzw;
  o2.xyz = cb12[7].xyz + -r3.xyz;
  r3.xyzw = cb12[3].xyzw + r7.xyzw;
  o0.w = r3.w;
  r0.w = cb0[125].x * cb0[5].y;
  r1.w = cmp(0.999000013 < v4.w);
  r0.w = r1.w ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  o0.xy = v11.xy * cb1[6].xy + cb1[6].zw;
  r7.xyz = v12.xyz;
  r7.w = 0;
  r6.yzw = v12.zxy * -r5.zwy;
  r8.xyz = v12.yzx * -r5.wyz + -r6.yzw;
  r1.w = dot(v12.xyz, -r5.yzw);
  r8.w = -r1.w;
  r7.xyzw = r5.xxxx * r7.xyzw + r8.xyzw;
  r6.yzw = r7.yzx * r5.wyz;
  r6.yzw = r5.zwy * r7.zxy + -r6.yzw;
  r6.yzw = r5.xxx * r7.xyz + r6.yzw;
  r5.xyz = r7.www * r5.yzw + r6.yzw;
  r0.xyz = r5.yyy * r0.xyz;
  r0.xyz = r5.xxx * r1.xyz + r0.xyz;
  r0.xyz = r5.zzz * r2.xyz + r0.xyz;
  r1.xyz = r6.xxx * r0.xyz;
  r2.xyzw = r0.yzxx * -r4.zxzx;
  r5.xyz = -r0.zxy * -r4.zzx + r2.xyz;
  r5.w = -r2.w;
  r1.w = 0;
  r1.xyzw = r5.xyzw + r1.xyzw;
  r0.xyz = r4.zxz * r1.yzx;
  r0.xyz = r4.zzx * r1.zxy + -r0.xyz;
  r0.xyz = r6.xxx * r1.xyz + r0.xyz;
  r0.xyz = r1.www * r4.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r1.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyzw = v3.xyzw;
  o7.xyzw = float4(0,0,0,0);
  o8.x = v7.x;
  o8.yzw = float3(0,0,0);
  o9.x = 0;
  o9.y = v7.w;
  o9.z = v8.x;
  r0.x = cmp(v8.x < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o10.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r3.xyzw;
  return;
}