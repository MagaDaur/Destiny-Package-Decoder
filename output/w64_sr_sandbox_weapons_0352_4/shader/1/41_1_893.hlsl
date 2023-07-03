// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:45 2023
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
  float4 cb0[140];
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
  out float2 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = -1 + r0.x;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[14].x * r0.x;
  r0.x = cb0[115].x * r0.x;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r1.w = 0;
  r0.yzw = v4.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.yzw = r0.yzw * float3(0.5,0.5,0.5) + float3(0,-0.314799994,0.0500000007);
  r0.yzw = v2.xyz * r0.yzw;
  r2.x = 1.57050002 + v1.w;
  r2.x = 0.5 * r2.x;
  sincos(r2.x, r2.x, r3.x);
  r1.xyz = r3.xxx * r0.yzw;
  r2.xyz = float3(0,0,1) * r2.xxx;
  r4.xyzw = -r2.zyyz * r0.zwyw;
  r5.xyz = -r0.wyz * -r2.yzy + r4.xyz;
  r5.w = -r4.w;
  r1.xyzw = r5.xyzw + r1.xyzw;
  r0.yzw = r2.zyy * r1.yzx;
  r0.yzw = r2.yzy * r1.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r2.yyz + r0.yzw;
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
  o0.xy = v5.xy * cb1[6].xy + cb1[6].zw;
  r4.xyz = v6.xyz;
  r4.w = 0;
  r5.xyzw = v6.yzxz * -r2.zyyz;
  r6.xyz = -v6.zxy * -r2.yzy + r5.xyz;
  r6.w = -r5.w;
  r4.xyzw = r3.xxxx * r4.xyzw + r6.xyzw;
  r0.yzw = r4.yzx * r2.zyy;
  r0.yzw = r2.yzy * r4.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r2.xyz + r0.yzw;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  o3.xy = v3.xy;
  r0.y = cmp(cb0[139].x < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o4.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}