// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
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
  float4 cb0[119];
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
  out float2 o6 : TEXCOORD6,
  out float4 o7 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v2.yyy;
  r0.xyz = cb1[0].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v2.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = r0.x * 0.5 + -1.5;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[9].y * r0.x;
  r0.x = cb0[115].x * r0.x;
  r0.y = cmp(0.999000013 < v1.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r1.z = cb1[1].z;
  r1.x = cb1[2].z;
  r1.y = cb1[0].z;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r2.xyz = r1.xyz * r0.zwy;
  r1.xyz = r1.zxy * r0.wyz + -r2.xyz;
  r1.w = dot(r1.xyz, r1.xyz);
  r2.x = rsqrt(r1.w);
  r1.w = cmp(0.00100000005 < r1.w);
  r1.xyz = r2.xxx * r1.xyz;
  r2.x = cb1[0].y;
  r2.y = cb1[1].y;
  r2.z = cb1[2].y;
  r1.xyz = r1.www ? r1.xyz : r2.xyz;
  r2.xyz = r1.yzx * r0.wyz;
  r2.xyz = r0.zwy * r1.zxy + -r2.xyz;
  r3.w = 0;
  r1.w = 3.14100003 * v4.w;
  sincos(r1.w, r4.x, r5.x);
  r4.yzw = v8.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = r5.xxx * r4.yzw;
  r1.w = dot(cb0[111].xyz, cb0[111].xyz);
  r1.w = rsqrt(r1.w);
  r5.yzw = cb0[111].xyz * r1.www;
  r5.yzw = r5.yzw * r4.xxx;
  r6.xyz = -r5.zwy * r4.wyz;
  r6.xyz = r4.zwy * -r5.wyz + -r6.xyz;
  r1.w = dot(r4.yzw, -r5.yzw);
  r6.w = -r1.w;
  r3.xyzw = r6.xyzw + r3.xyzw;
  r4.xyz = r5.wyz * r3.yzx;
  r4.xyz = r5.zwy * r3.zxy + -r4.xyz;
  r3.xyz = r5.xxx * r3.xyz + r4.xyz;
  r3.xyz = r3.www * r5.yzw + r3.xyz;
  r3.xyz = cb0[10].xxx * r3.xyz;
  r3.xyz = v4.xyz * r3.xyz;
  r4.xyz = r3.yyy * r1.xyz;
  r3.xyw = r3.xxx * r0.yzw + r4.xyz;
  r3.xyz = r3.zzz * r2.xyz + r3.xyw;
  r1.w = 0.5 * v2.w;
  sincos(r1.w, r4.x, r6.x);
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
  r3.xyz = v2.xyz + r3.xyz;
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
  o0.xy = v9.xy * cb1[6].xy + cb1[6].zw;
  r7.xyz = v10.xyz;
  r7.w = 0;
  r6.yzw = v10.zxy * -r5.zwy;
  r8.xyz = v10.yzx * -r5.wyz + -r6.yzw;
  r1.w = dot(v10.xyz, -r5.yzw);
  r8.w = -r1.w;
  r7.xyzw = r5.xxxx * r7.xyzw + r8.xyzw;
  r6.yzw = r7.yzx * r5.wyz;
  r6.yzw = r5.zwy * r7.zxy + -r6.yzw;
  r6.yzw = r5.xxx * r7.xyz + r6.yzw;
  r5.xyz = r7.www * r5.yzw + r6.yzw;
  r1.xyz = r5.yyy * r1.xyz;
  r0.yzw = r5.xxx * r0.yzw + r1.xyz;
  r0.yzw = r5.zzz * r2.xyz + r0.yzw;
  r1.xyz = r6.xxx * r0.yzw;
  r2.xyzw = r0.zwyy * -r4.zxzx;
  r5.xyz = -r0.wyz * -r4.zzx + r2.xyz;
  r5.w = -r2.w;
  r1.w = 0;
  r1.xyzw = r5.xyzw + r1.xyzw;
  r0.yzw = r4.zxz * r1.yzx;
  r0.yzw = r4.zzx * r1.zxy + -r0.yzw;
  r0.yzw = r6.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r4.xyz + r0.yzw;
  r1.xyz = cb1[1].xyz * r0.zzz;
  r1.xyz = cb1[0].xyz * r0.yyy + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r1.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyz = v3.xyz;
  o4.w = v4.w;
  o5.xz = float2(0,0);
  o5.yw = v5.xy;
  o6.xy = v5.zw;
  r0.y = cb0[118].x + v5.z;
  r0.xy = cmp(r0.xy < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.y | (int)r0.x;
  o7.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r3.xyzw;
  return;
}