// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:28 2023
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
  float4 cb0[110];
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
  r0.y = r0.x * 0.333332986 + -1;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[109].x * r0.x;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r1.w = 0;
  r0.yzw = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.yzw = cb0[11].www * r0.yzw;
  r0.yzw = float3(1,1,0.200000003) * r0.yzw;
  r2.x = -0.0942299962 + v1.w;
  r2.x = 0.5 * r2.x;
  sincos(r2.x, r2.x, r3.x);
  r1.xyz = r3.xxx * r0.yzw;
  r2.xyz = float3(0.0995037183,0.995037198,0) * r2.xxx;
  r3.yzw = -r2.yzx * r0.wyz;
  r4.xyz = r0.zwy * -r2.zxy + -r3.yzw;
  r0.y = dot(r0.yz, -r2.xy);
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
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r4.xyz = v5.xyz;
  r4.w = 0;
  r0.yzw = v5.zxy * -r2.yzx;
  r5.xyz = v5.yzx * -r2.zxy + -r0.yzw;
  r0.y = dot(v5.xy, -r2.xy);
  r5.w = -r0.y;
  r4.xyzw = r3.xxxx * r4.xyzw + r5.xyzw;
  r0.yzw = r4.yzx * r2.zxy;
  r0.yzw = r2.yzx * r4.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r2.xyz + r0.yzw;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  p1.x = v2.y;
  r0.y = cmp(v2.y < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}