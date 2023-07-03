// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
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
  float4 cb0[124];
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
  float3 v13 : POSITION0,
  float2 v14 : POSITION1,
  float3 v15 : POSITION2,
  uint v16 : SV_VERTEXID0,
  uint v17 : SV_InstanceID0,
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
  out float4 o13 : TEXCOORD13,
  out float4 o14 : TEXCOORD14,
  out float3 o15 : TEXCOORD15,
  out float4 o16 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 0;
  r1.xyz = v13.xyz * cb1[4].xyz + cb1[5].xyz;
  r1.xyz = v11.zzz * r1.xyz;
  r1.w = 0.5 * v6.w;
  sincos(r1.w, r2.x, r3.x);
  r0.xyz = r3.xxx * r1.xyz;
  r2.xyz = float3(1,0,0) * r2.xxx;
  r4.xyzw = -r2.zxzx * r1.yzxx;
  r1.xyz = -r1.zxy * -r2.zzx + r4.xyz;
  r1.w = -r4.w;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyz = r2.zxz * r0.yzx;
  r1.xyz = r2.zzx * r0.zxy + -r1.xyz;
  r0.xyz = r3.xxx * r0.xyz + r1.xyz;
  r0.xyz = r0.www * r2.xzz + r0.xyz;
  r0.xyz = v6.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r0.w;
  r1.x = cb0[123].x * cb0[12].y;
  r1.y = cmp(0.999000013 < v5.w);
  r1.x = r1.y ? 0 : r1.x;
  o0.z = r1.x;
  r1.x = cmp(r1.x < 9.99999997e-007);
  o0.xy = v14.xy * cb1[6].xy + cb1[6].zw;
  r4.xyz = v15.xyz;
  r4.w = 0;
  r5.xyzw = v15.yzxx * -r2.zxzx;
  r6.xyz = -v15.zxy * -r2.zzx + r5.xyz;
  r6.w = -r5.w;
  r4.xyzw = r3.xxxx * r4.xyzw + r6.xyzw;
  r1.yzw = r4.yzx * r2.zxz;
  r1.yzw = r2.zzx * r4.zxy + -r1.yzw;
  r1.yzw = r3.xxx * r4.xyz + r1.yzw;
  r1.yzw = r4.www * r2.xyz + r1.yzw;
  r2.xyz = cb1[1].xyz * r1.zzz;
  r2.xyz = cb1[0].xyz * r1.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r1.www + r2.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v2.xyzw;
  o6.xyzw = v3.xyzw;
  o7.xyzw = v4.xyzw;
  o8.xyzw = v7.xyzw;
  o9.xyzw = v8.xyzw;
  o10.xyzw = v9.xyzw;
  o11.xyz = v10.xyw;
  o11.w = v11.x;
  o12.x = v11.y;
  o12.yzw = float3(0,0,0);
  o13.xyzw = float4(0,0,0,0);
  o14.xyzw = float4(0,0,0,0);
  o15.xy = v11.zw;
  o15.z = v12.x;
  r1.y = cmp(v11.w < 9.99999997e-007);
  r1.x = (int)r1.y | (int)r1.x;
  o16.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}