// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
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
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float3 v9 : POSITION0,
  float2 v10 : POSITION1,
  float3 v11 : POSITION2,
  uint v12 : SV_VERTEXID0,
  uint v13 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[1].z;
  r0.x = cb1[2].z;
  r0.y = cb1[0].z;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
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
  r0.w = cb0[108].x * 3.14100003;
  sincos(r0.w, r4.x, r5.x);
  r4.yzw = v9.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = r5.xxx * r4.yzw;
  r0.w = dot(cb0[109].xyz, cb0[109].xyz);
  r0.w = rsqrt(r0.w);
  r5.yzw = cb0[109].xyz * r0.www;
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
  r3.xyz = v6.www * r3.xyz;
  r3.xyz = v5.xyz * r3.xyz;
  r4.xyz = r3.yyy * r0.xyz;
  r3.xyw = r3.xxx * r1.xyz + r4.xyz;
  r3.xyz = r3.zzz * r2.xyz + r3.xyw;
  r0.w = v7.w * 6.28200006 + v4.w;
  r0.w = 0.5 * r0.w;
  sincos(r0.w, r4.x, r6.x);
  r7.xyz = r6.xxx * r3.xyz;
  r7.w = 0;
  r4.xyz = float3(0,0,1) * r4.xxx;
  r8.xyzw = -r4.zyyz * r3.yzxz;
  r3.xyz = -r3.zxy * -r4.yzy + r8.xyz;
  r3.w = -r8.w;
  r3.xyzw = r3.xyzw + r7.xyzw;
  r6.yzw = r4.zyy * r3.yzx;
  r6.yzw = r4.yzy * r3.zxy + -r6.yzw;
  r3.xyz = r6.xxx * r3.xyz + r6.yzw;
  r3.xyz = r3.www * r4.yyz + r3.xyz;
  r3.xyz = v3.xyz + r3.xyz;
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
  r0.w = cb0[114].x * cb0[2].y;
  r1.w = cmp(0.999000013 < v2.w);
  r0.w = r1.w ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  o0.xy = v10.xy * cb1[6].xy + cb1[6].zw;
  r7.xyz = v11.xyz;
  r7.w = 0;
  r6.yzw = v11.zxy * -r5.zwy;
  r8.xyz = v11.yzx * -r5.wyz + -r6.yzw;
  r1.w = dot(v11.xyz, -r5.yzw);
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
  r2.xyzw = r0.yzxz * -r4.zyyz;
  r5.xyz = -r0.zxy * -r4.yzy + r2.xyz;
  r5.w = -r2.w;
  r1.w = 0;
  r1.xyzw = r5.xyzw + r1.xyzw;
  r0.xyz = r4.zyy * r1.yzx;
  r0.xyz = r4.yzy * r1.zxy + -r0.xyz;
  r0.xyz = r6.xxx * r1.xyz + r0.xyz;
  r0.xyz = r1.www * r4.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r1.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyz = v4.xyz;
  o5.w = 0;
  o6.xy = v6.xy;
  o6.zw = float2(0,0);
  o7.xy = v6.zw;
  o7.zw = v7.xy;
  r0.x = cmp(v7.x < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o8.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r3.xyzw;
  return;
}