// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
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
  float4 cb0[152];
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
  out float4 o6 : TEXCOORD6,
  out float4 o7 : TEXCOORD7,
  out float4 o8 : SV_POSITION0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v3.yyy;
  r0.xyz = cb1[0].xyz * v3.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v3.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = 30 + -r0.x;
  r0.z = 0.280000001 * v5.x;
  r0.z = frac(r0.z);
  r0.w = 5999.99951 * r0.z;
  r0.z = cb0[115].x + -r0.z;
  r0.z = 1 + r0.z;
  r0.z = saturate(3.33333302 * r0.z);
  r0.x = r0.x * 999.999939 + -r0.w;
  r0.x = saturate(min(r0.x, r0.y));
  r0.x = r0.x * r0.z;
  r0.x = cb0[11].w * r0.x;
  r0.x = cb0[151].x * r0.x;
  r0.y = cmp(0.999000013 < v2.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r1.w = 0;
  r2.x = cb1[0].y;
  r2.y = cb1[1].y;
  r2.z = cb1[2].y;
  r3.z = cb1[1].z;
  r3.x = cb1[2].z;
  r3.y = cb1[0].z;
  r4.y = dot(-cb12[6].xyz, cb1[0].xyz);
  r4.z = dot(-cb12[6].xyz, cb1[1].xyz);
  r4.x = dot(-cb12[6].xyz, cb1[2].xyz);
  r0.yzw = r4.zxy * r3.xyz;
  r0.yzw = r3.zxy * r4.xyz + -r0.yzw;
  r2.w = dot(r0.yzw, r0.yzw);
  r3.x = rsqrt(r2.w);
  r2.w = cmp(0.00100000005 < r2.w);
  r0.yzw = r3.xxx * r0.yzw;
  r2.xyz = r2.www ? r0.yzw : r2.xyz;
  r0.yzw = r4.xyz * r2.yzx;
  r3.xyz = r4.zxy * r2.zxy + -r0.yzw;
  r5.x = r4.y;
  r6.x = r4.z;
  r2.w = r3.x;
  r0.yz = v9.yz * cb1[4].yz + cb1[5].yz;
  r0.yz = cb0[13].yy * r0.yz;
  r7.x = dot(r0.yz, r2.xw);
  r5.yz = r2.xw;
  r5.x = dot(v11.xyz, r5.xyz);
  r3.w = r2.y;
  r4.y = r2.z;
  r7.y = dot(r0.zy, r3.yw);
  r6.yz = r3.wy;
  r4.z = r3.z;
  r5.y = dot(v11.xyz, r6.xyz);
  r7.z = dot(r0.yz, r4.yz);
  r5.z = dot(v11.xyz, r4.xyz);
  r0.y = 0.5 * v3.w;
  sincos(r0.y, r2.x, r3.x);
  r1.xyz = r3.xxx * r7.xyz;
  r0.yzw = float3(1,0,0) * r2.xxx;
  r2.xyzw = r7.yzxx * -r0.wywy;
  r4.xyz = -r7.zxy * -r0.wwy + r2.xyz;
  r4.w = -r2.w;
  r1.xyzw = r4.xyzw + r1.xyzw;
  r2.xyz = r1.yzx * r0.wyw;
  r2.xyz = r0.wwy * r1.zxy + -r2.xyz;
  r1.xyz = r3.xxx * r1.xyz + r2.xyz;
  r1.xyz = r1.www * r0.yww + r1.xyz;
  r1.xyz = v3.xyz + r1.xyz;
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
  o0.xy = v10.xy * cb1[6].xy + cb1[6].zw;
  r2.xyzw = r5.yzxx * -r0.wywy;
  r4.xyz = -r5.zxy * -r0.wwy + r2.xyz;
  r5.xyz = r3.xxx * r5.xyz;
  r4.w = -r2.w;
  r5.w = 0;
  r2.xyzw = r5.xyzw + r4.xyzw;
  r3.yzw = r2.yzx * r0.wyw;
  r3.yzw = r0.wwy * r2.zxy + -r3.yzw;
  r2.xyz = r3.xxx * r2.xyz + r3.yzw;
  r0.yzw = r2.www * r0.yzw + r2.xyz;
  r2.xyz = cb1[1].xyz * r0.zzz;
  r2.xyz = cb1[0].xyz * r0.yyy + r2.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r2.xyz;
  o3.xyzw = v0.xyzw;
  o4.xyzw = v1.xyzw;
  o5.xyzw = v4.xyzw;
  o6.xyz = v5.yzw;
  o6.w = v6.x;
  o7.xzw = v6.yzw;
  o7.y = 0;
  r0.y = cmp(v6.z < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o8.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r1.xyzw;
  return;
}