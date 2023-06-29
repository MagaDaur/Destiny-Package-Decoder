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
  float4 cb0[121];
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
  float4 v10 : TEXCOORD10,
  float4 v11 : TEXCOORD11,
  float4 v12 : TEXCOORD12,
  float4 v13 : TEXCOORD13,
  float3 v14 : POSITION0,
  float2 v15 : POSITION1,
  float3 v16 : POSITION2,
  uint v17 : SV_VERTEXID0,
  uint v18 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : TEXCOORD8,
  out float4 o9 : TEXCOORD9,
  out float4 o10 : TEXCOORD10,
  out float4 o11 : TEXCOORD11,
  out float4 o12 : TEXCOORD12,
  out float3 o13 : TEXCOORD30,
  out float4 o14 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[1].z;
  r0.x = cb1[2].z;
  r0.y = cb1[0].z;
  r0.w = dot(v6.xyz, v6.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v6.xyz * r0.www;
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
  r3.xyz = v14.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = v8.xyz * r3.xyz;
  r3.xyz = float3(0.200000003,0.200000003,0.200000003) * r3.xyz;
  r4.xyz = r3.yyy * r0.xyz;
  r0.xyz = v16.yyy * r0.xyz;
  r0.xyz = v16.xxx * r1.xyz + r0.xyz;
  r1.xyz = r3.xxx * r1.xyz + r4.xyz;
  r1.xyz = r3.zzz * r2.xyz + r1.xyz;
  r0.xyz = v16.zzz * r2.xyz + r0.xyz;
  r0.w = 0.5 * v9.y;
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
  r1.xyz = v7.xyz + r1.xyz;
  r3.yzw = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r3.yzw;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r4.xy = v15.xy * cb1[6].xy + cb1[6].zw;
  r0.w = -1 + r4.y;
  r0.w = abs(r0.w) * -0.5 + 0.75;
  r0.w = max(0, r0.w);
  r0.w = v10.y + r0.w;
  r1.w = v2.w * r0.w + v2.z;
  r1.w = 0.25 + r1.w;
  r2.w = round(r1.w);
  r1.w = -r2.w + r1.w;
  r2.w = abs(r1.w) * -16 + 8;
  r1.w = r2.w * r1.w;
  r2.w = abs(r1.w) * 0.224999994 + 0.774999976;
  r1.w = r2.w * r1.w;
  r1.w = v2.x * r1.w + v2.y;
  r2.w = 0.875 + -abs(r4.y);
  r2.w = max(0, r2.w);
  r2.w = log2(r2.w);
  r2.w = cb0[113].x * r2.w;
  r2.w = exp2(r2.w);
  r5.x = r2.w * r1.w;
  r1.w = v1.w * r0.w + v1.z;
  r0.w = v0.w * r0.w + v0.z;
  r0.w = 0.25 + r0.w;
  r1.w = 0.25 + r1.w;
  r3.y = round(r1.w);
  r1.w = -r3.y + r1.w;
  r3.y = abs(r1.w) * -16 + 8;
  r1.w = r3.y * r1.w;
  r3.y = abs(r1.w) * 0.224999994 + 0.774999976;
  r1.w = r3.y * r1.w;
  r1.w = v1.x * r1.w + v1.y;
  r5.y = r1.w * r2.w;
  r1.w = round(r0.w);
  r0.w = -r1.w + r0.w;
  r1.w = abs(r0.w) * -16 + 8;
  r0.w = r1.w * r0.w;
  r1.w = abs(r0.w) * 0.224999994 + 0.774999976;
  r0.w = r1.w * r0.w;
  r0.w = v0.x * r0.w + v0.y;
  r5.z = r0.w * r2.w;
  r1.xyz = r5.xyz + r1.xyz;
  r5.xyzw = cb12[1].xyzw * r1.yyyy;
  r5.xyzw = cb12[0].xyzw * r1.xxxx + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r1.zzzz + r5.xyzw;
  o2.xyz = cb12[7].xyz + -r1.xyz;
  r1.xyzw = cb12[3].xyzw + r5.xyzw;
  o0.w = r1.w;
  r0.w = cb0[120].x * cb0[2].y;
  r2.w = cmp(0.999000013 < v8.w);
  r4.z = r2.w ? 0 : r0.w;
  o0.xyz = r4.xyz;
  r0.w = cmp(r4.z < 9.99999997e-007);
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
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyzw = v3.xyzw;
  o7.xyzw = v4.xyzw;
  o8.xyzw = v5.xyzw;
  o9.x = v6.w;
  o9.y = v9.w;
  o9.zw = float2(0,0);
  o10.xw = v10.xy;
  o10.yz = float2(0,0);
  o11.xyzw = float4(0,0,0,0);
  o12.xy = float2(0,0);
  o12.zw = v10.zw;
  o13.xyz = float3(0,0,0);
  r0.x = cmp(v10.w < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o14.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}