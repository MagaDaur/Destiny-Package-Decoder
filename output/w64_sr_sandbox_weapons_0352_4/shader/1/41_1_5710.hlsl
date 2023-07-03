// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
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
  float4 cb0[122];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float3 v5 : POSITION0,
  float2 v6 : POSITION1,
  float3 v7 : POSITION2,
  uint v8 : SV_VERTEXID0,
  uint v9 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float2 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v2.yyy;
  r0.xyz = cb1[0].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v2.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = r0.x * 0.5 + -0.5;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[121].x * r0.x;
  r0.y = cmp(0.999000013 < v1.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r1.w = 0;
  r0.y = 2.55928683 + v2.w;
  r0.y = 0.5 * r0.y;
  sincos(r0.y, r2.x, r3.x);
  r0.yzw = v5.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.yzw = float3(2,2,1) * r0.yzw;
  r1.xyz = r3.xxx * r0.yzw;
  r2.xyz = float3(0.980580688,0,-0.196116135) * r2.xxx;
  r3.yzw = -r2.yzx * r0.wyz;
  r4.xyz = r0.zwy * -r2.zxy + -r3.yzw;
  r0.y = dot(r0.yw, -r2.xz);
  r4.w = -r0.y;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r0.yzw = r2.zxy * r1.yzx;
  r0.yzw = r2.yzx * r1.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r2.xyz + r0.yzw;
  r0.yzw = v2.xyz + r0.yzw;
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
  o0.xy = v6.xy * cb1[6].xy + cb1[6].zw;
  r4.xyz = v7.xyz;
  r4.w = 0;
  r0.yzw = v7.zxy * -r2.yzx;
  r5.xyz = v7.yzx * -r2.zxy + -r0.yzw;
  r0.y = dot(v7.xz, -r2.xz);
  r5.w = -r0.y;
  r4.xyzw = r3.xxxx * r4.xyzw + r5.xyzw;
  r0.yzw = r4.yzx * r2.zxy;
  r0.yzw = r2.yzx * r4.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r2.xyz + r0.yzw;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyz = v3.xyw;
  o4.w = v4.x;
  o5.xy = v4.yz;
  r0.y = v4.z + v4.y;
  r0.xy = cmp(r0.xy < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.y | (int)r0.x;
  o6.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}