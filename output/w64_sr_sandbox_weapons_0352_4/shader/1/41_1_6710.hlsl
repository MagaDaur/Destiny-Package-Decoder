// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:22 2023
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
  float4 cb0[128];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : POSITION0,
  float2 v5 : POSITION1,
  float3 v6 : POSITION2,
  uint v7 : SV_VERTEXID0,
  uint v8 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = r0.x * 0.333332986 + -1;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[127].x * r0.x;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r1.w = 0;
  r2.z = cb1[0].y;
  r2.x = cb1[1].y;
  r2.y = cb1[2].y;
  r3.y = cb1[1].z;
  r3.z = cb1[2].z;
  r3.x = cb1[0].z;
  r4.y = dot(-cb12[6].xyz, cb1[0].xyz);
  r4.z = dot(-cb12[6].xyz, cb1[1].xyz);
  r4.x = dot(-cb12[6].xyz, cb1[2].xyz);
  r0.yzw = r4.xyz * r3.xyz;
  r0.yzw = r3.zxy * r4.yzx + -r0.yzw;
  r2.w = dot(r0.yzw, r0.yzw);
  r3.x = rsqrt(r2.w);
  r2.w = cmp(0.00100000005 < r2.w);
  r0.yzw = r3.xxx * r0.yzw;
  r0.yzw = r2.www ? r0.yzw : r2.xyz;
  r2.xyz = r4.xyz * r0.yzw;
  r2.xyz = r4.zxy * r0.zwy + -r2.xyz;
  r3.x = r4.y;
  r5.x = r4.z;
  r3.z = r2.x;
  r3.y = r0.w;
  r6.xyz = v4.xyz * cb1[4].xyz + cb1[5].xyz;
  r6.xyz = v2.yyy * r6.xyz;
  r7.x = dot(r6.xyz, r3.xyz);
  r3.x = dot(v6.xyz, r3.xyz);
  r5.y = r0.y;
  r4.y = r0.z;
  r5.z = r2.y;
  r4.z = r2.z;
  r7.y = dot(r6.xyz, r5.xyz);
  r3.y = dot(v6.xyz, r5.xyz);
  r7.z = dot(r6.xyz, r4.xyz);
  r3.z = dot(v6.xyz, r4.xyz);
  r0.y = 0.5 * v1.w;
  sincos(r0.y, r2.x, r4.x);
  r1.xyz = r4.xxx * r7.xyz;
  r0.yzw = float3(1,0,0) * r2.xxx;
  r2.xyzw = r7.yzxx * -r0.wywy;
  r5.xyz = -r7.zxy * -r0.wwy + r2.xyz;
  r5.w = -r2.w;
  r1.xyzw = r5.xyzw + r1.xyzw;
  r2.xyz = r1.yzx * r0.wyw;
  r2.xyz = r0.wwy * r1.zxy + -r2.xyz;
  r1.xyz = r4.xxx * r1.xyz + r2.xyz;
  r1.xyz = r1.www * r0.yww + r1.xyz;
  r1.xyz = v1.xyz + r1.xyz;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r2.xyzw = cb12[1].xyzw * r1.yyyy;
  r2.xyzw = cb12[0].xyzw * r1.xxxx + r2.xyzw;
  r2.xyzw = cb12[2].xyzw * r1.zzzz + r2.xyzw;
  o2.xyz = cb12[7].xyz + -r1.xyz;
  r1.xyzw = cb12[3].xyzw + r2.xyzw;
  o0.w = r1.w;
  o0.xy = v5.xy * cb1[6].xy + cb1[6].zw;
  r2.xyzw = r3.yzxx * -r0.wywy;
  r5.xyz = -r3.zxy * -r0.wwy + r2.xyz;
  r3.xyz = r4.xxx * r3.xyz;
  r5.w = -r2.w;
  r3.w = 0;
  r2.xyzw = r5.xyzw + r3.xyzw;
  r3.xyz = r2.yzx * r0.wyw;
  r3.xyz = r0.wwy * r2.zxy + -r3.xyz;
  r2.xyz = r4.xxx * r2.xyz + r3.xyz;
  r0.yzw = r2.www * r0.yzw + r2.xyz;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  o3.xyz = v2.yzw;
  o3.w = v3.x;
  r0.y = v2.w + v2.z;
  r0.xy = cmp(r0.xy < float2(9.99999997e-007,9.99999997e-007));
  r0.x = (int)r0.y | (int)r0.x;
  o4.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}