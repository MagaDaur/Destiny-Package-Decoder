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
  float4 cb0[104];
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
  float3 v6 : POSITION0,
  float2 v7 : POSITION1,
  float3 v8 : POSITION2,
  uint v9 : SV_VERTEXID0,
  uint v10 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD6,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 0;
  r1.xyz = v6.xyz * cb1[4].xyz + cb1[5].xyz;
  r1.xyz = v4.www * r1.xyz;
  r1.w = cb0[10].x * 6.28200006 + v2.w;
  r1.w = 0.5 * r1.w;
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
  r0.xyz = v2.xyz + r0.xyz;
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
  r1.x = cb0[103].x * cb0[9].y;
  r1.y = cmp(0.999000013 < v1.w);
  r1.x = r1.y ? 0 : r1.x;
  o0.z = r1.x;
  r1.x = cmp(r1.x < 9.99999997e-007);
  o0.xy = v7.xy * cb1[6].xy + cb1[6].zw;
  r4.xyz = v8.xyz;
  r4.w = 0;
  r5.xyzw = v8.yzxx * -r2.zxzx;
  r6.xyz = -v8.zxy * -r2.zzx + r5.xyz;
  r6.w = -r5.w;
  r4.xyzw = r3.xxxx * r4.xyzw + r6.xyzw;
  r1.yzw = r4.yzx * r2.zxz;
  r1.yzw = r2.zzx * r4.zxy + -r1.yzw;
  r1.yzw = r3.xxx * r4.xyz + r1.yzw;
  r1.yzw = r4.www * r2.xyz + r1.yzw;
  r2.xyz = cb1[1].xyz * r1.zzz;
  r2.xyz = cb1[0].xyz * r1.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r1.www + r2.xyz;
  p1.x = v5.y;
  o3.xyzw = v0.xyzw;
  o4.xyz = v3.xyw;
  o4.w = v4.x;
  o5.xyz = v4.yzw;
  o5.w = v5.x;
  r1.y = cmp(v5.x < 9.99999997e-007);
  r1.x = (int)r1.y | (int)r1.x;
  o6.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}