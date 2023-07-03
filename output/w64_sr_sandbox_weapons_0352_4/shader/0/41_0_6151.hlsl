// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:25 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
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
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float3 v8 : TEXCOORD8,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t2.Sample(s3_s, v0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = saturate(v8.y * r0.x);
  r0.x = r0.x * -0.5 + 0.5;
  r0.x = v8.x * r0.x;
  r0.y = saturate(v0.z * r0.y);
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v9.xy;
  r0.zw = cb12[12].xy * r2.xy;
  r1.xy = (int2)r0.zw;
  r0.z = t10.Load(r1.xyz).x;
  r0.z = r0.z * cb2[0].y + cb2[0].x;
  r0.z = 1 / r0.z;
  r0.z = -v0.w + r0.z;
  r0.x = saturate(r0.z / r0.x);
  r0.x = 1 + -r0.x;
  r0.z = 1 + -r0.x;
  r1.y = v7.x + r0.x;
  r0.x = r0.y * r0.z + -cb0[9].x;
  r0.y = r0.y * r0.z;
  r0.x = cmp(r0.x < 0);
  if (r0.x != 0) discard;
  r0.xz = float2(-0.5,-0.5) + v0.xy;
  r0.w = dot(r0.xz, r0.xz);
  r0.w = r0.w * r0.w;
  r0.w = v6.w * r0.w;
  r0.xz = r0.xz * r0.ww + v0.xy;
  r1.zw = t3.Sample(s3_s, r0.xz).xy;
  r0.xz = r1.zw * v6.zz + r0.xz;
  r0.xz = v6.zz * float2(-0.5,-0.5) + r0.xz;
  r0.xz = r0.xz * v3.xy + v3.zw;
  r1.x = t0.Sample(s3_s, r0.xz).x;
  r0.xzw = t1.Sample(s4_s, r1.xy).xyz;
  r1.x = max(0.00100000005, v7.z);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.xzw = -r1.xxx + r0.xzw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.xzw = r0.xzw / r1.xxx;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r0.xzw = log2(r0.xzw);
  r1.x = 1 / v7.y;
  r0.xzw = r1.xxx * r0.xzw;
  r0.xzw = exp2(r0.xzw);
  r0.xzw = v4.xyz * r0.xzw;
  r1.xyz = v8.zzz * r0.xzw;
  r1.x = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.xzw = r0.xzw * v8.zzz + -r1.xxx;
  r0.xzw = v7.www * r0.xzw + r1.xxx;
  r0.xzw = cb13[1].www * r0.xzw;
  r0.xzw = cb13[1].xxx * r0.xzw;
  r0.xzw = cb8[7].xyz * r0.xzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[112].x + cb0[112].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.xzw = r0.xzw * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xzw = r1.xyz * cb13[1].xxx + r0.xzw;
  o0.xyz = r0.xzw * r0.yyy;
  o0.w = r0.y;
  return;
}