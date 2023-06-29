// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:48 2023
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
  float4 cb0[123];
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
  out float4 o1 : TEXCOORD1,
  out float3 o2 : TEXCOORD2,
  out float4 o3 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = -cb12[7].xyz + r0.xyz;
  r0.x = dot(-cb12[6].xyz, r0.xyz);
  r0.x = 0.000454545458 * r0.x;
  r0.x = max(1, r0.x);
  r0.y = r0.x * r0.x;
  r0.x = 1.25 * r0.x;
  r0.y = 1 / r0.y;
  r0.y = cb0[12].w * r0.y;
  r0.y = cb0[106].x * r0.y;
  r0.z = cmp(0.999000013 < v0.w);
  r0.y = r0.z ? 0 : r0.y;
  o0.z = r0.y;
  r0.y = cmp(r0.y < 9.99999997e-007);
  r1.xyz = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.xzw = r1.xyz * r0.xxx;
  r0.xzw = float3(1,1.75,1) * r0.xzw;
  r1.z = cb1[0].y;
  r1.x = cb1[1].y;
  r1.y = cb1[2].y;
  r2.y = cb1[1].z;
  r2.z = cb1[2].z;
  r2.x = cb1[0].z;
  r3.y = dot(-cb12[6].xyz, cb1[0].xyz);
  r3.z = dot(-cb12[6].xyz, cb1[1].xyz);
  r3.x = dot(-cb12[6].xyz, cb1[2].xyz);
  r4.xyz = r3.xyz * r2.xyz;
  r2.xyz = r2.zxy * r3.yzx + -r4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r1.w);
  r1.w = cmp(0.00100000005 < r1.w);
  r2.xyz = r2.xyz * r2.www;
  r1.xyz = r1.www ? r2.xyz : r1.xyz;
  r2.xyz = r3.xyz * r1.xyz;
  r2.xyz = r3.zxy * r1.yzx + -r2.xyz;
  r4.x = r3.y;
  r5.x = r3.z;
  r4.z = r2.x;
  r4.y = r1.z;
  r6.x = dot(r0.xzw, r4.xyz);
  r4.x = dot(v5.xyz, r4.xyz);
  r5.y = r1.x;
  r3.y = r1.y;
  r5.z = r2.y;
  r3.z = r2.z;
  r6.y = dot(r0.xzw, r5.xyz);
  r4.y = dot(v5.xyz, r5.xyz);
  r6.z = dot(r0.xzw, r3.xyz);
  r4.z = dot(v5.xyz, r3.xyz);
  r0.x = 0.5 * v1.w;
  sincos(r0.x, r0.x, r1.x);
  r2.xyz = r1.xxx * r6.xyz;
  r2.w = 0;
  r0.xzw = float3(1,0,0) * r0.xxx;
  r3.xyzw = r6.yzxx * -r0.wxwx;
  r5.xyz = -r6.zxy * -r0.wwx + r3.xyz;
  r5.w = -r3.w;
  r2.xyzw = r5.xyzw + r2.xyzw;
  r1.yzw = r2.yzx * r0.wxw;
  r1.yzw = r0.wwx * r2.zxy + -r1.yzw;
  r1.yzw = r1.xxx * r2.xyz + r1.yzw;
  r1.yzw = r2.www * r0.xww + r1.yzw;
  r1.yzw = v1.xyz + r1.yzw;
  r2.xyz = cb1[1].xyz * r1.zzz;
  r2.xyz = cb1[0].xyz * r1.yyy + r2.xyz;
  r1.yzw = cb1[2].xyz * r1.www + r2.xyz;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r2.xyzw = cb12[1].xyzw * r1.zzzz;
  r2.xyzw = cb12[0].xyzw * r1.yyyy + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r1.wwww + r2.xyzw;
  o2.xyz = cb12[7].xyz + -r1.yzw;
  r2.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r2.w;
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r3.xyzw = r4.yzxx * -r0.wxwx;
  r5.xyz = -r4.zxy * -r0.wwx + r3.xyz;
  r4.xyz = r1.xxx * r4.xyz;
  r5.w = -r3.w;
  r4.w = 0;
  r3.xyzw = r5.xyzw + r4.xyzw;
  r1.yzw = r3.yzx * r0.wxw;
  r1.yzw = r0.wwx * r3.zxy + -r1.yzw;
  r1.xyz = r1.xxx * r3.xyz + r1.yzw;
  r0.xzw = r3.www * r0.xzw + r1.xyz;
  r1.xyz = cb1[1].xyz * r0.zzz;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r1.xyz;
  r0.x = cmp(cb0[122].x < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.y;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r2.xyzw;
  return;
}