// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:01 2023
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
  float4 cb0[113];
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
  float3 v6 : POSITION0,
  float2 v7 : POSITION1,
  float3 v8 : POSITION2,
  uint v9 : SV_VERTEXID0,
  uint v10 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float3 o1 : TEXCOORD1,
  out float p1 : TEXCOORD4,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.z = cb1[0].y;
  r0.x = cb1[1].y;
  r0.y = cb1[2].y;
  r1.y = cb1[1].z;
  r1.z = cb1[2].z;
  r1.x = cb1[0].z;
  r2.y = dot(-cb12[6].xyz, cb1[0].xyz);
  r2.z = dot(-cb12[6].xyz, cb1[1].xyz);
  r2.x = dot(-cb12[6].xyz, cb1[2].xyz);
  r3.xyz = r2.xyz * r1.xyz;
  r1.xyz = r1.zxy * r2.yzx + -r3.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = cmp(0.00100000005 < r0.w);
  r1.xyz = r1.xyz * r1.www;
  r0.xyz = r0.www ? r1.xyz : r0.xyz;
  r1.xyz = r2.xyz * r0.xyz;
  r1.xyz = r2.zxy * r0.yzx + -r1.xyz;
  r3.x = r2.y;
  r4.x = r2.z;
  r3.z = r1.x;
  r5.w = 0;
  r0.w = cb0[107].x * 3.14100003;
  sincos(r0.w, r1.x, r6.x);
  r6.yzw = v6.xyz * cb1[4].xyz + cb1[5].xyz;
  r5.xyz = r6.xxx * r6.yzw;
  r0.w = dot(cb0[108].xyz, cb0[108].xyz);
  r0.w = rsqrt(r0.w);
  r7.xyz = cb0[108].xyz * r0.www;
  r7.xyz = r7.xyz * r1.xxx;
  r8.xyz = -r7.yzx * r6.wyz;
  r8.xyz = r6.zwy * -r7.zxy + -r8.xyz;
  r0.w = dot(r6.yzw, -r7.xyz);
  r8.w = -r0.w;
  r5.xyzw = r8.xyzw + r5.xyzw;
  r6.yzw = r7.zxy * r5.yzx;
  r6.yzw = r7.yzx * r5.zxy + -r6.yzw;
  r5.xyz = r6.xxx * r5.xyz + r6.yzw;
  r5.xyz = r5.www * r7.xyz + r5.xyz;
  r5.xyz = v3.yyy * r5.xyz;
  r3.y = r0.z;
  r8.x = dot(r5.xyz, r3.xyz);
  r4.y = r0.x;
  r2.y = r0.y;
  r4.z = r1.y;
  r2.z = r1.z;
  r8.y = dot(r5.xyz, r4.xyz);
  r8.z = dot(r5.xyz, r2.xyz);
  r0.x = 1.57050002 + v2.w;
  r0.x = 0.5 * r0.x;
  sincos(r0.x, r0.x, r1.x);
  r5.xyz = r1.xxx * r8.xyz;
  r5.w = 0;
  r9.yz = float2(0,0);
  r0.xyz = float3(0,0,1) * r0.xxx;
  r9.xw = r8.yz * -r0.zz;
  r8.xyz = -r8.zxy * -r0.yzy + r9.xyz;
  r8.w = -r9.w;
  r5.xyzw = r8.xyzw + r5.xyzw;
  r1.yzw = r5.yzx * r0.zyy;
  r1.yzw = r0.yzy * r5.zxy + -r1.yzw;
  r1.yzw = r1.xxx * r5.xyz + r1.yzw;
  r1.yzw = r5.www * r0.yyz + r1.yzw;
  r1.yzw = v1.xyz + r1.yzw;
  r5.xyz = cb1[1].xyz * r1.zzz;
  r5.xyz = cb1[0].xyz * r1.yyy + r5.xyz;
  r1.yzw = cb1[2].xyz * r1.www + r5.xyz;
  r1.yzw = cb1[3].xyz + r1.yzw;
  r5.xyzw = cb12[1].xyzw * r1.zzzz;
  r5.xyzw = cb12[0].xyzw * r1.yyyy + r5.xyzw;
  r5.xyzw = cb12[2].xyzw * r1.wwww + r5.xyzw;
  o2.xyz = cb12[7].xyz + -r1.yzw;
  r5.xyzw = cb12[3].xyzw + r5.xyzw;
  o0.w = r5.w;
  r0.w = cb0[112].x * cb0[2].y;
  r1.y = cmp(0.999000013 < v0.w);
  r0.w = r1.y ? 0 : r0.w;
  o0.z = r0.w;
  r0.w = cmp(r0.w < 9.99999997e-007);
  o0.xy = v7.xy * cb1[6].xy + cb1[6].zw;
  r8.xyz = v8.xyz;
  r8.w = 0;
  r1.yzw = v8.zxy * -r7.yzx;
  r9.xyz = v8.yzx * -r7.zxy + -r1.yzw;
  r1.y = dot(v8.xyz, -r7.xyz);
  r9.w = -r1.y;
  r8.xyzw = r6.xxxx * r8.xyzw + r9.xyzw;
  r1.yzw = r8.yzx * r7.zxy;
  r1.yzw = r7.yzx * r8.zxy + -r1.yzw;
  r1.yzw = r6.xxx * r8.xyz + r1.yzw;
  r1.yzw = r8.www * r7.xyz + r1.yzw;
  r3.x = dot(r1.yzw, r3.xyz);
  r3.y = dot(r1.yzw, r4.xyz);
  r3.z = dot(r1.yzw, r2.xyz);
  r2.xyz = r3.xyz * r1.xxx;
  r4.xw = r3.yz * -r0.zz;
  r4.yz = float2(0,0);
  r3.xyz = -r3.zxy * -r0.yzy + r4.xyz;
  r3.w = -r4.w;
  r2.w = 0;
  r2.xyzw = r3.xyzw + r2.xyzw;
  r1.yzw = r2.yzx * r0.zyy;
  r1.yzw = r0.yzy * r2.zxy + -r1.yzw;
  r1.xyz = r1.xxx * r2.xyz + r1.yzw;
  r0.xyz = r2.www * r0.xyz + r1.xyz;
  r1.xyz = cb1[1].xyz * r0.yyy;
  r1.xyz = cb1[0].xyz * r0.xxx + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.zzz + r1.xyz;
  p1.x = v3.z;
  o3.xyz = v2.xyz;
  o3.w = v3.y;
  r0.x = cmp(v3.z < 9.99999997e-007);
  r0.x = (int)r0.x | (int)r0.w;
  o4.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r5.xyzw;
  return;
}