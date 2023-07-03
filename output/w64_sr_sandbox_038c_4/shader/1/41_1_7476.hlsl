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
  float4 cb0[118];
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
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD4,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.w = 0;
  r1.w = 0;
  r2.x = cb0[111].x * 3.14100003;
  sincos(r2.x, r2.x, r3.x);
  r2.yzw = v4.xyz * cb1[4].xyz + cb1[5].xyz;
  r1.xyz = r3.xxx * r2.yzw;
  r3.y = dot(cb0[112].xyz, cb0[112].xyz);
  r3.y = rsqrt(r3.y);
  r3.yzw = cb0[112].xyz * r3.yyy;
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
  r1.xyz = float3(0.0399999991,0,-0.0500000007) + r1.xyz;
  r1.xyz = v2.xyz * r1.xyz;
  r1.w = 0.314099997 + v1.w;
  r1.w = 0.5 * r1.w;
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
  r1.xyzw = cb12[1].xyzw * r0.yyyy;
  r1.xyzw = cb12[0].xyzw * r0.xxxx + r1.xyzw;
  r1.xyzw = cb12[2].xyzw * r0.zzzz + r1.xyzw;
  o2.xyz = cb12[7].xyz + -r0.xyz;
  r0.xyzw = cb12[3].xyzw + r1.xyzw;
  o0.w = r0.w;
  r1.x = cb0[117].x * cb0[10].y;
  r1.y = cmp(0.999000013 < v0.w);
  r1.x = r1.y ? 0 : r1.x;
  o0.z = r1.x;
  r1.x = cmp(r1.x < 9.99999997e-007);
  o0.xy = v5.xy * cb1[6].xy + cb1[6].zw;
  r5.xyz = v6.xyz;
  r5.w = 0;
  r1.yzw = v6.zxy * -r3.zwy;
  r6.xyz = v6.yzx * -r3.wyz + -r1.yzw;
  r1.y = dot(v6.xyz, -r3.yzw);
  r6.w = -r1.y;
  r5.xyzw = r3.xxxx * r5.xyzw + r6.xyzw;
  r1.yzw = r5.yzx * r3.wyz;
  r1.yzw = r3.zwy * r5.zxy + -r1.yzw;
  r1.yzw = r3.xxx * r5.xyz + r1.yzw;
  r1.yzw = r5.www * r3.yzw + r1.yzw;
  r3.xyz = r4.xxx * r1.yzw;
  r5.xyzw = r1.zwyz * -r2.zzyy;
  r6.xyz = -r1.wyz * -r2.yzz + r5.xyz;
  r6.w = -r5.w;
  r3.w = 0;
  r3.xyzw = r6.xyzw + r3.xyzw;
  r1.yzw = r3.yzx * r2.zzy;
  r1.yzw = r2.yzz * r3.zxy + -r1.yzw;
  r1.yzw = r4.xxx * r3.xyz + r1.yzw;
  r1.yzw = r3.www * r2.xyz + r1.yzw;
  r2.xyz = cb1[1].xyz * r1.zzz;
  r2.xyz = cb1[0].xyz * r1.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r1.www + r2.xyz;
  p1.x = v3.w;
  o3.xyw = v3.xyz;
  o3.z = 0;
  r1.y = cmp(v3.z < 9.99999997e-007);
  r1.x = (int)r1.y | (int)r1.x;
  o4.xyzw = r1.xxxx ? float4(10000,10000,-10000,1) : r0.xyzw;
  return;
}