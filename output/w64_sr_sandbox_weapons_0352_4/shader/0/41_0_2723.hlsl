// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v4.xy + v4.zw;
  r0.xy = t0.Sample(s1_s, r0.xy).xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.xy = r0.xy * cb0[100].xx + v0.xy;
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v2.xyz * r1.xxx;
  r0.y = dot(r1.xyz, r0.yzw);
  r0.y = r0.y * r0.y;
  r0.yz = r0.yy * float2(3.09597492,-2.33644891) + float2(-2.09597492,1);
  r0.y = saturate(r0.y);
  r0.z = max(0, r0.z);
  r0.z = cb0[107].x + r0.z;
  r0.x = r0.y * r0.x;
  r0.xyw = cb0[102].xyz * r0.xxx;
  r0.xyw = v5.xyz * r0.xyw;
  r0.xyw = v7.xxx * cb0[97].xyz + r0.xyw;
  r0.xyw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyw;
  r0.xyw = float3(1.00000024,1.00000024,1.00000024) * r0.xyw;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r0.xyw = v7.www * r0.xyw;
  r0.xyw = cb13[1].www * r0.xyw;
  r0.xyw = cb13[1].xxx * r0.xyw;
  r0.xyw = cb8[7].xyz * r0.xyw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[112].x + cb0[112].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r2.xy = cb12[12].zw * v8.xy;
  r1.y = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.xyw = r0.xyw * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyw = r1.xyz * cb13[1].xxx + r0.xyw;
  r1.xy = v0.xy * v3.xy + v3.zw;
  r1.x = t2.Sample(s1_s, r1.xy).x;
  r1.x = saturate(r1.x * v6.x + v6.y);
  r0.z = saturate(r1.x * r0.z);
  r0.z = saturate(v7.z * r0.z);
  r0.z = saturate(v0.z * r0.z);
  o0.xyz = r0.xyw * r0.zzz;
  o0.w = r0.z;
  return;
}