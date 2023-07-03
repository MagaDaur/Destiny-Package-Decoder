// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:55 2023
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
  float4 cb0[112];
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
  out float4 o2 : TEXCOORD2,
  out float3 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = 0;
  r0.y = cb0[104].x * v4.x;
  r0.z = cb0[105].x;
  r0.w = dot(r0.yz, r0.yz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = cb0[100].x + v4.x;
  r1.x = abs(r0.w) * abs(r0.w);
  r2.y = cb0[102].x * r0.w;
  r2.xz = r1.xx * float2(-0.200000003,-0.324999988) + float2(0.5,0.0500000007);
  r0.w = cb0[106].x * v4.y;
  r0.xyz = r0.xyz * r0.www + r2.xyz;
  r1.xyz = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.xyz = r1.xyz * float3(9.99999975e-005,9.99999975e-005,9.99999975e-005) + r0.xyz;
  r0.w = 0.5 * v1.w;
  sincos(r0.w, r1.x, r2.x);
  r3.xyz = r2.xxx * r0.xyz;
  r3.w = 0;
  r1.xyz = float3(1,0,0) * r1.xxx;
  r4.xyzw = -r1.zxzx * r0.yzxx;
  r0.xyz = -r0.zxy * -r1.zzx + r4.xyz;
  r0.w = -r4.w;
  r0.xyzw = r0.xyzw + r3.xyzw;
  r2.yzw = r1.zxz * r0.yzx;
  r2.yzw = r1.zzx * r0.zxy + -r2.yzw;
  r0.xyz = r2.xxx * r0.xyz + r2.yzw;
  r0.xyz = r0.www * r1.xzz + r0.xyz;
  r0.xyz = v1.xyz + r0.xyz;
  r2.yzw = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r2.yzw;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r3.xyzw = cb12[1].xyzw * r0.yyyy;
  r3.xyzw = cb12[0].xyzw * r0.xxxx + r3.xyzw;
  r3.xyzw = cb12[2].xyzw * r0.zzzz + r3.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r3.xyzw;
  o0.w = r0.w;
  r1.w = cb0[111].x * cb0[8].y;
  r2.y = cmp(0.999000013 < v0.w);
  r1.w = r2.y ? 0 : r1.w;
  o0.z = r1.w;
  r1.w = cmp(r1.w < 9.99999997e-007);
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r3.xyz = v5.xyz;
  r3.w = 0;
  r4.xyzw = v5.yzxx * -r1.zxzx;
  r5.xyz = -v5.zxy * -r1.zzx + r4.xyz;
  r5.w = -r4.w;
  r3.xyzw = r2.xxxx * r3.xyzw + r5.xyzw;
  r2.yzw = r3.yzx * r1.zxz;
  r2.yzw = r1.zzx * r3.zxy + -r2.yzw;
  r2.xyz = r2.xxx * r3.xyz + r2.yzw;
  r1.xyz = r3.www * r1.xyz + r2.xyz;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r2.xyz = cb1[0].xyz * r1.xxx + r2.xyz;
  o1.xyz = cb1[2].xyz * r1.zzz + r2.xyz;
  o3.xyz = v2.yzw;
  r1.x = cmp(v2.z < 9.99999997e-007);
  r1.x = (int)r1.x | (int)r1.w;
  o4.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}