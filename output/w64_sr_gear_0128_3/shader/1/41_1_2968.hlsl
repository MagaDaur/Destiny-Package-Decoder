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
  float4 cb0[116];
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
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD3,
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
  r1.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyz = -cb12[7].xyz + r0.xyz;
  r0.x = dot(-cb12[6].xyz, r0.xyz);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = sqrt(r0.y);
  r0.yz = r0.yy * float2(0.400000006,-0.142857) + float2(-0.400000006,2.71428609);
  r0.y = saturate(min(r0.y, r0.z));
  r0.y = cb0[14].w * r0.y;
  r0.zw = float2(1760,0.5) * v2.zx;
  r0.x = r0.x / r0.z;
  sincos(r0.w, r1.x, r2.x);
  r0.x = max(1, r0.x);
  r0.z = r0.x * r0.x;
  r0.x = v2.z * r0.x;
  r0.z = 1 / r0.z;
  r0.y = r0.y * r0.z;
  r0.y = cb0[115].x * r0.y;
  r0.z = cmp(0.999000013 < v1.w);
  r0.y = r0.z ? 0 : r0.y;
  o0.z = r0.y;
  r0.y = cmp(r0.y < 9.99999997e-007);
  r1.yzw = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.xzw = r1.yzw * r0.xxx;
  r3.z = cb1[0].y;
  r3.x = cb1[1].y;
  r3.y = cb1[2].y;
  r4.y = cb1[1].z;
  r4.z = cb1[2].z;
  r4.x = cb1[0].z;
  r5.y = dot(-cb12[6].xyz, cb1[0].xyz);
  r5.z = dot(-cb12[6].xyz, cb1[1].xyz);
  r5.x = dot(-cb12[6].xyz, cb1[2].xyz);
  r1.yzw = r5.xyz * r4.xyz;
  r1.yzw = r4.zxy * r5.yzx + -r1.yzw;
  r2.y = dot(r1.yzw, r1.yzw);
  r2.z = rsqrt(r2.y);
  r2.y = cmp(0.00100000005 < r2.y);
  r1.yzw = r2.zzz * r1.yzw;
  r1.yzw = r2.yyy ? r1.yzw : r3.xyz;
  r2.yzw = r5.xyz * r1.yzw;
  r2.yzw = r5.zxy * r1.zwy + -r2.yzw;
  r3.x = r5.y;
  r4.x = r5.z;
  r3.z = r2.y;
  r3.y = r1.w;
  r6.x = dot(r0.xzw, r3.xyz);
  r3.x = dot(v5.xyz, r3.xyz);
  r4.y = r1.y;
  r5.y = r1.z;
  r4.z = r2.z;
  r5.z = r2.w;
  r6.y = dot(r0.xzw, r4.xyz);
  r3.y = dot(v5.xyz, r4.xyz);
  r6.z = dot(r0.xzw, r5.xyz);
  r3.z = dot(v5.xyz, r5.xyz);
  r4.xyz = r6.xyz * r2.xxx;
  r4.w = 0;
  r0.xzw = float3(1,0,0) * r1.xxx;
  r1.xyzw = r6.yzxx * -r0.wxwx;
  r5.xyz = -r6.zxy * -r0.wwx + r1.xyz;
  r5.w = -r1.w;
  r1.xyzw = r5.xyzw + r4.xyzw;
  r2.yzw = r1.yzx * r0.wxw;
  r2.yzw = r0.wwx * r1.zxy + -r2.yzw;
  r1.xyz = r2.xxx * r1.xyz + r2.yzw;
  r1.xyz = r1.www * r0.xww + r1.xyz;
  r1.xyz = v1.xyz + r1.xyz;
  r2.yzw = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r2.yzw;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r1.xyz = cb1[3].xyz + r1.xyz;
  r4.xyzw = cb12[1].xyzw * r1.yyyy;
  r4.xyzw = cb12[0].xyzw * r1.xxxx + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r1.zzzz + r4.xyzw;
  o2.xyz = cb12[7].xyz + -r1.xyz;
  r1.xyzw = cb12[3].xyzw + r4.xyzw;
  o0.w = r1.w;
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r4.xyzw = r3.yzxx * -r0.wxwx;
  r5.xyz = -r3.zxy * -r0.wwx + r4.xyz;
  r3.xyz = r3.xyz * r2.xxx;
  r5.w = -r4.w;
  r3.w = 0;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r2.yzw = r3.yzx * r0.wxw;
  r2.yzw = r0.wwx * r3.zxy + -r2.yzw;
  r2.xyz = r2.xxx * r3.xyz + r2.yzw;
  r0.xzw = r3.www * r0.xzw + r2.xyz;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.xxx + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  p1.x = v2.z;
  r0.x = cmp(cb0[16].z < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.y;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}