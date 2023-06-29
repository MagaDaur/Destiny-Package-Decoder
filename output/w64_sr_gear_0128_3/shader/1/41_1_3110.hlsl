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
  float4 cb0[111];
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
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 0;
  r1.w = 0;
  r2.x = cb0[101].x * 3.14100003;
  sincos(r2.x, r2.x, r3.x);
  r2.yzw = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r1.xyz = r3.xxx * r2.yzw;
  r3.y = dot(cb0[102].xyz, cb0[102].xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = cb0[102].xyz * r3.yyy;
  r3.yzw = r3.yzw * r2.xxx;
  r4.xyz = -r3.zwy * r2.wyz;
  r4.xyz = r2.zwy * -r3.wyz + -r4.xyz;
  r2.x = dot(r2.yzw, -r3.yzw);
  r4.w = -r2.x;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r2.xyz = r3.wyz * r1.yzx;
  r2.xyz = r3.zwy * r1.zxy + -r2.xyz;
  r1.xyz = r3.xxx * r1.xyz + r2.xyz;
  r1.xyz = r1.www * r3.yzw + r1.xyz;
  r1.w = -3.14100003 + v1.w;
  r1.xyzw = float4(0.0425000004,0.00850000046,0.00850000046,0.5) * r1.xyzw;
  sincos(r1.w, r2.x, r4.x);
  r0.xyz = r4.xxx * r1.xyz;
  r2.xyz = float3(0,1,0) * r2.xxx;
  r5.xyzw = -r2.zzyy * r1.yzxy;
  r1.xyz = -r1.zxy * -r2.yzz + r5.xyz;
  r1.w = -r5.w;
  r0.xyzw = r1.xyzw + r0.xyzw;
  r1.xyz = r2.zzy * r0.yzx;
  r1.xyz = r2.yzz * r0.zxy + -r1.xyz;
  r0.xyz = r4.xxx * r0.xyz + r1.xyz;
  r0.xyz = r0.www * r2.zyz + r0.xyz;
  r0.xyz = v1.xyz + r0.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r0.xyw = cb1[0].xyz * r0.xxx + r1.xyz;
  r0.xyz = cb1[2].xyz * r0.zzz + r0.xyw;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r1.xyz = v5.xyz;
  r1.w = 0;
  r4.yzw = v5.zxy * -r3.zwy;
  r5.xyz = v5.yzx * -r3.wyz + -r4.yzw;
  r0.w = dot(v5.xyz, -r3.yzw);
  r5.w = -r0.w;
  r1.xyzw = r3.xxxx * r1.xyzw + r5.xyzw;
  r4.yzw = r3.wyz * r1.yzx;
  r4.yzw = r3.zwy * r1.zxy + -r4.yzw;
  r1.xyz = r3.xxx * r1.xyz + r4.yzw;
  r1.xyz = r1.www * r3.yzw + r1.xyz;
  r3.xyz = r4.xxx * r1.xyz;
  r5.xyzw = r1.yzxy * -r2.zzyy;
  r1.xyz = -r1.zxy * -r2.yzz + r5.xyz;
  r1.w = -r5.w;
  r3.w = 0;
  r1.xyzw = r3.xyzw + r1.xyzw;
  r3.xyz = r2.zzy * r1.yzx;
  r3.xyz = r2.yzz * r1.zxy + -r3.xyz;
  r1.xyz = r4.xxx * r1.xyz + r3.xyz;
  r1.xyz = r1.www * r2.xyz + r1.xyz;
  r2.xyz = cb1[1].xyz * r1.yyy;
  r1.xyw = cb1[0].xyz * r1.xxx + r2.xyz;
  r1.xyz = cb1[2].xyz * r1.zzz + r1.xyw;
  r2.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r0.w = r2.y * -0.00999999978 + 0.00999999978;
  r0.xyz = r0.www * r1.xyz + r0.xyz;
  o1.xyz = r1.xyz;
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r0.w;
  r1.x = cb0[107].x * cb0[8].y;
  r1.y = cmp(0.999000013 < v0.w);
  r2.z = r1.y ? 0 : r1.x;
  o0.xyz = r2.xyz;
  r1.x = cmp(r2.z < 9.99999997e-007);
  r1.y = cmp(cb0[110].x < 9.99999997e-007);
  r1.x = (int)r1.y | (int)r1.x;
  o3.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}