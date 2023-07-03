// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
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
  float4 cb0[128];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb1[1].xyz * v1.yyy;
  r0.xyz = cb1[0].xyz * v1.xxx + r0.xyz;
  r0.xyz = cb1[2].xyz * v1.zzz + r0.xyz;
  r0.xyz = cb1[3].xyz + r0.xyz;
  r0.xyz = cb12[7].xyz + -r0.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = r0.x * 4 + -2;
  r0.x = 10000 + -r0.x;
  r0.x = saturate(min(r0.y, r0.x));
  r0.x = cb0[12].y * r0.x;
  r0.x = cb0[124].x * r0.x;
  r0.y = cmp(0.999000013 < v0.w);
  r0.x = r0.y ? 0 : r0.x;
  o0.z = r0.x;
  r0.x = cmp(r0.x < 9.99999997e-007);
  r0.y = cb0[11].w * v4.x + cb0[11].z;
  r0.z = round(r0.y);
  r0.y = r0.y + -r0.z;
  r0.z = abs(r0.y) * -16 + 8;
  r0.y = r0.y * r0.z;
  r0.z = abs(r0.y) * 0.224999994 + 0.774999976;
  r0.y = r0.y * r0.z;
  r0.y = cb0[11].x * r0.y + cb0[11].y;
  r0.z = cb0[10].w * v4.x + cb0[10].z;
  r0.w = round(r0.z);
  r0.z = r0.z + -r0.w;
  r0.w = abs(r0.z) * -16 + 8;
  r0.z = r0.z * r0.w;
  r0.w = abs(r0.z) * 0.224999994 + 0.774999976;
  r0.z = r0.z * r0.w;
  r0.z = cb0[10].x * r0.z + cb0[10].y;
  r0.w = saturate(cb0[117].x + v4.x);
  r0.w = log2(r0.w);
  r0.w = cb0[118].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = min(1, r0.w);
  r0.w = r0.w * 0.800000012 + 0.200000003;
  r1.xz = r0.zz * r0.ww + r0.yy;
  r2.w = 0;
  r3.w = 0;
  r4.w = 0;
  r0.y = cb0[112].x * 3.14100003;
  sincos(r0.y, r5.x, r6.x);
  r0.yzw = v3.xyz * cb1[4].xyz + cb1[5].xyz;
  r4.xyz = r6.xxx * r0.yzw;
  r1.w = dot(cb0[113].xyz, cb0[113].xyz);
  r1.w = rsqrt(r1.w);
  r5.yzw = cb0[113].xyz * r1.www;
  r5.xyz = r5.xxx * r5.yzw;
  r6.yzw = -r5.yzx * r0.wyz;
  r7.xyz = r0.zwy * -r5.zxy + -r6.yzw;
  r0.y = dot(r0.yzw, -r5.xyz);
  r7.w = -r0.y;
  r4.xyzw = r7.xyzw + r4.xyzw;
  r0.yzw = r5.zxy * r4.yzx;
  r0.yzw = r5.yzx * r4.zxy + -r0.yzw;
  r0.yzw = r6.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r5.xyz + r0.yzw;
  r1.w = cb0[110].x * 3.14100003;
  sincos(r1.w, r4.x, r7.x);
  r3.xyz = r7.xxx * r0.yzw;
  r1.w = dot(cb0[111].xyz, cb0[111].xyz);
  r1.w = rsqrt(r1.w);
  r4.yzw = cb0[111].xyz * r1.www;
  r4.xyz = r4.xxx * r4.yzw;
  r6.yzw = -r4.yzx * r0.wyz;
  r8.xyz = r0.zwy * -r4.zxy + -r6.yzw;
  r0.y = dot(r0.yzw, -r4.xyz);
  r8.w = -r0.y;
  r3.xyzw = r8.xyzw + r3.xyzw;
  r0.yzw = r4.zxy * r3.yzx;
  r0.yzw = r4.yzx * r3.zxy + -r0.yzw;
  r0.yzw = r7.xxx * r3.xyz + r0.yzw;
  r0.yzw = r3.www * r4.xyz + r0.yzw;
  r1.w = cb0[108].x * 3.14100003;
  sincos(r1.w, r3.x, r8.x);
  r2.xyz = r8.xxx * r0.yzw;
  r1.w = dot(cb0[109].xyz, cb0[109].xyz);
  r1.w = rsqrt(r1.w);
  r3.yzw = cb0[109].xyz * r1.www;
  r3.xyz = r3.xxx * r3.yzw;
  r6.yzw = -r3.yzx * r0.wyz;
  r9.xyz = r0.zwy * -r3.zxy + -r6.yzw;
  r0.y = dot(r0.yzw, -r3.xyz);
  r9.w = -r0.y;
  r2.xyzw = r9.xyzw + r2.xyzw;
  r0.yzw = r3.zxy * r2.yzx;
  r0.yzw = r3.yzx * r2.zxy + -r0.yzw;
  r0.yzw = r8.xxx * r2.xyz + r0.yzw;
  r0.yzw = r2.www * r3.xyz + r0.yzw;
  r1.y = 0;
  r0.yzw = r0.yzw * float3(0.9375,1.25,1.875) + r1.xyz;
  r1.x = 0.5 * v1.w;
  sincos(r1.x, r1.x, r2.x);
  r9.xyz = r2.xxx * r0.yzw;
  r1.xyz = float3(0,1,0) * r1.xxx;
  r10.xyzw = -r1.zzyy * r0.zwyz;
  r11.xyz = -r0.wyz * -r1.yzz + r10.xyz;
  r11.w = -r10.w;
  r9.w = 0;
  r9.xyzw = r11.xyzw + r9.xyzw;
  r0.yzw = r9.yzx * r1.zzy;
  r0.yzw = r1.yzz * r9.zxy + -r0.yzw;
  r0.yzw = r2.xxx * r9.xyz + r0.yzw;
  r0.yzw = r9.www * r1.zyz + r0.yzw;
  r0.yzw = v1.xyz + r0.yzw;
  r2.yzw = cb1[1].xyz * r0.zzz;
  r2.yzw = cb1[0].xyz * r0.yyy + r2.yzw;
  r0.yzw = cb1[2].xyz * r0.www + r2.yzw;
  r0.yzw = cb1[3].xyz + r0.yzw;
  r9.xyzw = cb12[1].xyzw * r0.zzzz;
  r9.xyzw = cb12[0].xyzw * r0.yyyy + r9.xyzw;
  r9.xyzw = cb12[2].xyzw * r0.wwww + r9.xyzw;
  o2.xyz = cb12[7].xyz + -r0.yzw;
  r9.xyzw = cb12[3].xyzw + r9.xyzw;
  o0.w = r9.w;
  o0.xy = v4.xy * cb1[6].xy + cb1[6].zw;
  r10.xyz = v5.xyz;
  r10.w = 0;
  r0.yzw = v5.zxy * -r5.yzx;
  r11.xyz = v5.yzx * -r5.zxy + -r0.yzw;
  r0.y = dot(v5.xyz, -r5.xyz);
  r11.w = -r0.y;
  r10.xyzw = r6.xxxx * r10.xyzw + r11.xyzw;
  r0.yzw = r10.yzx * r5.zxy;
  r0.yzw = r5.yzx * r10.zxy + -r0.yzw;
  r0.yzw = r6.xxx * r10.xyz + r0.yzw;
  r0.yzw = r10.www * r5.xyz + r0.yzw;
  r5.xyz = r7.xxx * r0.yzw;
  r2.yzw = r0.wyz * -r4.yzx;
  r6.xyz = r0.zwy * -r4.zxy + -r2.yzw;
  r0.y = dot(r0.yzw, -r4.xyz);
  r6.w = -r0.y;
  r5.w = 0;
  r5.xyzw = r6.xyzw + r5.xyzw;
  r0.yzw = r5.yzx * r4.zxy;
  r0.yzw = r4.yzx * r5.zxy + -r0.yzw;
  r0.yzw = r7.xxx * r5.xyz + r0.yzw;
  r0.yzw = r5.www * r4.xyz + r0.yzw;
  r4.xyz = r8.xxx * r0.yzw;
  r2.yzw = r0.wyz * -r3.yzx;
  r5.xyz = r0.zwy * -r3.zxy + -r2.yzw;
  r0.y = dot(r0.yzw, -r3.xyz);
  r5.w = -r0.y;
  r4.w = 0;
  r4.xyzw = r5.xyzw + r4.xyzw;
  r0.yzw = r4.yzx * r3.zxy;
  r0.yzw = r3.yzx * r4.zxy + -r0.yzw;
  r0.yzw = r8.xxx * r4.xyz + r0.yzw;
  r0.yzw = r4.www * r3.xyz + r0.yzw;
  r3.xyz = r2.xxx * r0.yzw;
  r4.xyzw = r0.zwyz * -r1.zzyy;
  r5.xyz = -r0.wyz * -r1.yzz + r4.xyz;
  r5.w = -r4.w;
  r3.w = 0;
  r3.xyzw = r5.xyzw + r3.xyzw;
  r0.yzw = r3.yzx * r1.zzy;
  r0.yzw = r1.yzz * r3.zxy + -r0.yzw;
  r0.yzw = r2.xxx * r3.xyz + r0.yzw;
  r0.yzw = r3.www * r1.xyz + r0.yzw;
  r1.xyz = cb1[1].xyz * r0.zzz;
  r1.xyz = cb1[0].xyz * r0.yyy + r1.xyz;
  o1.xyz = cb1[2].xyz * r0.www + r1.xyz;
  r0.y = cmp(cb0[127].x < 9.99999997e-007);
  r0.x = (int)r0.y | (int)r0.x;
  o3.xyzw = r0.xxxx ? float4(10000,10000,-10000,1) : r9.xyzw;
  return;
}