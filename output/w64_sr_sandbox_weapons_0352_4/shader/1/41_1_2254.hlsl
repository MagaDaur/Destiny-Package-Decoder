// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
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
  float4 cb0[129];
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
  float3 v7 : POSITION0,
  float2 v8 : POSITION1,
  float3 v9 : POSITION2,
  uint v10 : SV_VERTEXID0,
  uint v11 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = r0.x * 0.5 + -0.5;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[11].y * r0.x;
  r0.x = cb0[128].x * r0.x;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r1.w = 0;
  r0.yzw = v7.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.yzw = v4.www * r0.yzw;
  r0.yzw = v3.xyz * r0.yzw;
  r2.x = 6.28200006 + v1.w;
  r2.x = 0.5 * r2.x;
  sincos(r2.x, r2.x, r3.x);
  r1.xyz = r3.xxx * r0.yzw;
  r2.y = dot(v2.xyz, v2.xyz);
  r2.y = rsqrt(r2.y);
  r2.yzw = v2.xyz * r2.yyy;
  r2.xyz = r2.xxx * r2.yzw;
  r3.yzw = -r2.yzx * r0.wyz;
  r4.xyz = r0.zwy * -r2.zxy + -r3.yzw;
  r0.y = dot(r0.yzw, -r2.xyz);
  r4.w = -r0.y;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r0.yzw = r2.zxy * r1.yzx;
  r0.yzw = r2.yzx * r1.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r2.xyz + r0.yzw;
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
  o0.xy = v8.xy * cb1[6].xy + cb1[6].zw;
  r0.yzw = v9.zxy * -r2.yzx;
  r4.xyz = v9.yzx * -r2.zxy + -r0.yzw;
  r5.xyz = v9.xyz;
  r5.w = 0;
  r0.y = dot(v9.xyz, -r2.xyz);
  r4.w = -r0.y;
  r4.xyzw = r3.xxxx * r5.xyzw + r4.xyzw;
  r0.yzw = r4.yzx * r2.zxy;
  r0.yzw = r2.yzx * r4.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r2.xyz + r0.yzw;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  o3.xyz = v4.xyz;
  o3.w = v3.w;
  o4.x = v4.w;
  o4.yzw = v5.xyz;
  r0.y = v5.y + v5.x;
  r0.xy = cmp(r0.xy < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.y | (int)r0.x;
  o5.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}