// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
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
  float4 cb0[126];
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
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float3 v9 : POSITION0,
  float2 v10 : POSITION1,
  float3 v11 : POSITION2,
  uint v12 : SV_VERTEXID0,
  uint v13 : SV_InstanceID0,
  out float4 o0 : TEXCOORD0,
  out float4 o1 : TEXCOORD1,
  out float4 o2 : TEXCOORD2,
  out float4 o3 : TEXCOORD3,
  out float4 o4 : TEXCOORD4,
  out float4 o5 : TEXCOORD5,
  out float4 o6 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v2.yyy;
  r0.xyz = cb1[0].xyz * v2.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v2.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 10000 + -r0.x;
  r0.z = 0.280000001 * v4.w;
  r0.z = frac(r0.z);
  r0.w = cb0[102].x * r0.z;
  r0.z = cb0[108].x + -r0.z;
  r0.z = 1 + r0.z;
  r0.z = saturate(3.33333302 * r0.z);
  r0.w = -r0.w * 4 + -2;
  r0.x = r0.x * 4 + r0.w;
  r0.x = saturate(min(r0.x, r0.y));
  r0.x = r0.x * r0.z;
  r0.x = cb0[2].y * r0.x;
  r0.x = cb0[125].x * r0.x;
  r0.y = cmp(0.999000013 < v1.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r1.w = 0;
  r0.y = -0.400000006 + v10.y;
  r0.y = saturate(1.5 + -abs(r0.y));
  r0.y = log2(r0.y);
  r0.y = cb0[119].x * r0.y;
  r0.y = exp2(r0.y);
  r2.z = v5.y * r0.y + v5.x;
  r0.yzw = v9.xyz * cb1[4].xyz + cb1[5].xyz;
  r0.yzw = v6.xxx * r0.yzw;
  r2.xy = float2(0,0);
  r0.yzw = r0.yzw * v4.xyz + r2.xyz;
  r2.x = v6.w * 6.28200006 + v3.w;
  r2.x = 0.5 * r2.x;
  sincos(r2.x, r2.x, r3.x);
  r1.xyz = r3.xxx * r0.yzw;
  r2.y = dot(v3.xyz, v3.xyz);
  r2.y = rsqrt(r2.y);
  r2.yzw = v3.xyz * r2.yyy;
  r2.xyz = r2.xxx * r2.yzw;
  r3.yzw = -r2.yzx * r0.wyz;
  r4.xyz = r0.zwy * -r2.zxy + -r3.yzw;
  r0.y = dot(r0.yzw, -r2.xyz);
  r4.w = -r0.y;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r0.yzw = r2.zxy * r1.yzx;
  r0.yzw = r2.yzx * r1.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r1.xyz + r0.yzw;
  r0.yzw = r1.www * r2.xyz + r0.yzw;
  r0.yzw = v2.xyz + r0.yzw;
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
  o0.xy = v10.xy * cb1[6].xy + cb1[6].zw;
  r0.yzw = v11.zxy * -r2.yzx;
  r4.xyz = v11.yzx * -r2.zxy + -r0.yzw;
  r5.xyz = v11.xyz;
  r5.w = 0;
  r0.y = dot(v11.xyz, -r2.xyz);
  r4.w = -r0.y;
  r4.xyzw = r3.xxxx * r5.xyzw + r4.xyzw;
  r0.yzw = r4.yzx * r2.zxy;
  r0.yzw = r2.yzx * r4.zxy + -r0.yzw;
  r0.yzw = r3.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r2.xyz + r0.yzw;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v5.xyzw;
  o5.xy = float2(0,0);
  o5.zw = v6.xy;
  r0.y = cmp(v6.y < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o6.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}