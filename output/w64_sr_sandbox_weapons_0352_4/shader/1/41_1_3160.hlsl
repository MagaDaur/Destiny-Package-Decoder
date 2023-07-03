// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:37 2023
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
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float3 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[1].z;
  r0.x = cb1[2].z;
  r0.y = cb1[0].z;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
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
  r3.xyz = v8.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = v5.www * r3.xyz;
  r3.xyz = v3.xyz * r3.xyz;
  r4.xyz = r3.yyy * r0.xyz;
  r0.xyz = v10.yyy * r0.xyz;
  r0.xyz = v10.xxx * r1.xyz + r0.xyz;
  r1.xyz = r3.xxx * r1.xyz + r4.xyz;
  r1.xyz = r3.zzz * r2.xyz + r1.xyz;
  r0.xyz = v10.zzz * r2.xyz + r0.xyz;
  r0.w = v6.w * 6.28200006 + v2.w;
  r0.w = 0.5 * r0.w;
  sincos(r0.w, r2.x, r3.x);
  r4.xyz = r3.xxx * r1.xyz;
  r4.w = 0;
  r2.xyz = float3(1,0,0) * r2.xxx;
  r5.xyzw = -r2.zxzx * r1.yzxx;
  r1.xyz = -r1.zxy * -r2.zzx + r5.xyz;
  r1.w = -r5.w;
  r1.xyzw = r1.xyzw + r4.xyzw;
  r3.yzw = r2.zxz * r1.yzx;
  r3.yzw = r2.zzx * r1.zxy + -r3.yzw;
  r1.xyz = r3.xxx * r1.xyz + r3.yzw;
  r1.xyz = r1.www * r2.xzz + r1.xyz;
  r1.xyz = v2.xyz + r1.xyz;
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
  r0.w = cb0[107].x * cb0[8].y;
  r2.w = cmp(0.999000013 < v1.w);
  r0.w = r2.w ? 0 : r0.w;
  o0.z = r0.w;
  o0.xy = v9.xy * cb1[6].xy + cb1[6].zw;
  r4.xyz = r3.xxx * r0.xyz;
  r5.xyzw = -r2.zxzx * r0.yzxx;
  r6.xyz = -r0.zxy * -r2.zzx + r5.xyz;
  r6.w = -r5.w;
  r4.w = 0;
  r4.xyzw = r6.xyzw + r4.xyzw;
  r0.xyz = r4.yzx * r2.zxz;
  r0.xyz = r2.zzx * r4.zxy + -r0.xyz;
  r0.xyz = r3.xxx * r4.xyz + r0.xyz;
  r0.xyz = r4.www * r2.xyz + r0.xyz;
  r2.xyz = cb1[1].xyz * r0.yyy;
  r2.xyz = cb1[0].xyz * r0.xxx + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r2.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v4.xyzw;
  o5.xyzw = v5.xyzw;
  o6.xyz = v6.xyz;
  r0.x = v6.y + v6.x;
  r0.xw = cmp(r0.xw < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.x | (int)r0.w;
  o7.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}