// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:35 2023
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
  float4 cb0[127];
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

  r0.xyz = cb1[1].xyz * v2.yyy;
  r0.xyz = cb1[0].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v2.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = r0.x * 4 + -2;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[8].y * r0.x;
  r0.x = cb0[126].x * r0.x;
  r0.y = cmp(0.999000013 < v1.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
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
  r3.xyz = v7.xyz * cb1[4].xyz + cb1[5].xyz;
  r3.xyz = v3.xyz * r3.xyz;
  r3.xyz = float3(0.5,0.5,0.5) * r3.xyz;
  r4.xyz = r3.yyy * r1.xyz;
  r1.xyz = v9.yyy * r1.xyz;
  r1.xyz = v9.xxx * r0.yzw + r1.xyz;
  r0.yzw = r3.xxx * r0.yzw + r4.xyz;
  r0.yzw = r3.zzz * r2.xyz + r0.yzw;
  r1.xyz = v9.zzz * r2.xyz + r1.xyz;
  r1.w = 0.5 * v2.w;
  sincos(r1.w, r2.x, r3.x);
  r4.xyz = r3.xxx * r0.yzw;
  r4.w = 0;
  r2.xyz = float3(1,0,0) * r2.xxx;
  r5.xyzw = -r2.zxzx * r0.zwyy;
  r6.xyz = -r0.wyz * -r2.zzx + r5.xyz;
  r6.w = -r5.w;
  r4.xyzw = r6.xyzw + r4.xyzw;
  r0.yzw = r4.yzx * r2.zxz;
  r0.yzw = r2.zzx * r4.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r2.xzz + r0.yzw;
  r0.yzw = v2.xyz + r0.yzw;
  r3.yzw = cb1[1].xyz * r0.zzz;
  r3.yzw = cb1[0].xyz * r0.yyy + r3.yzw;
  r0.yzw = cb1[2].xyz * r0.www + r3.yzw;
  r0.yzw = cb1[3].xyz + r0.yzw;
  r4.xyzw = cb12[1].xyzw * r0.zzzz;
  r4.xyzw = cb12[0].xyzw * r0.yyyy + r4.xyzw;
  r4.xyzw = cb12[2].xyzw * r0.wwww + r4.xyzw;
  o2.xyz = cb12[7].xyz + -r0.yzw;
  r4.xyzw = cb12[3].xyzw + r4.xyzw;
  o0.w = r4.w;
  o0.xy = v8.xy * cb1[6].xy + cb1[6].zw;
  r5.xyz = r3.xxx * r1.xyz;
  r6.xyzw = -r2.zxzx * r1.yzxx;
  r1.xyz = -r1.zxy * -r2.zzx + r6.xyz;
  r1.w = -r6.w;
  r5.w = 0;
  r1.xyzw = r5.xyzw + r1.xyzw;
  r0.yzw = r2.zxz * r1.yzx;
  r0.yzw = r2.zzx * r1.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r2.xyz + r0.yzw;
  r1.xyz = cb1[1].xyz * r0.zzz;
  r1.xyz = cb1[0].xyz * r0.yyy + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r1.xyz;
  p1.x = v6.x;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v4.xyzw;
  o5.xyzw = v5.xyzw;
  r0.y = cmp(v5.w < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o6.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r4.xyzw;
  return;
}