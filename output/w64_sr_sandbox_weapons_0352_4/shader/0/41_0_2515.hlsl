// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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
  float4 cb2[6];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
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
  float3 v6 : TEXCOORD6,
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v7.xy;
  r0.z = t21.SampleLevel(s2_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s2_s, r0.xy, 0).w;
  r1.xyz = t10.Sample(s1_s, r0.xy).xyw;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v2.xyz * r1.www;
  r0.y = dot(r2.xyz, r0.yzw);
  r0.y = r0.y * r0.y;
  r0.z = saturate(r0.y * 1.05820096 + -0.0582010001);
  r0.y = saturate(r0.y * v4.z + v4.w);
  r0.y = r0.z * r0.y;
  r0.zw = v6.yx * r0.yy;
  r0.y = r0.y * 0.785000026 + 0.448000014;
  r0.y = v6.x * r0.y;
  r0.z = saturate(r0.z);
  r0.w = r0.w * 0.560000002 + v0.w;
  r1.xy = r1.xy + -r0.ww;
  r0.w = -1 + r1.z;
  r0.w = cb2[5].x * r0.w + 1;
  r1.xy = saturate(r1.xy / r0.yy);
  r1.xy = float2(1,1) + -r1.xy;
  r0.y = saturate(v0.z * r0.z);
  r0.x = r0.y * r0.x;
  r0.y = r1.x + -r1.y;
  r2.y = r0.w * r0.y + r1.y;
  r0.y = 1 + -r1.y;
  r0.y = r0.x * r0.y;
  r0.z = 1 + -r2.y;
  r0.x = r0.x * r0.z;
  r0.zw = t2.Sample(s3_s, v0.xy).xy;
  r0.zw = r0.zw * float2(0.25,0.25) + v0.xy;
  r0.zw = float2(-0.125,-0.125) + r0.zw;
  r0.zw = r0.zw * v3.xy + v3.zw;
  r2.x = t0.Sample(s3_s, r0.zw).x;
  r1.xyz = t1.Sample(s4_s, r2.xy).xyz;
  r1.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r2.x = 1;
  r2.yz = v6.zz;
  r1.xyz = r2.xyz * r1.xyz;
  r2.x = v6.z;
  r2.yz = cb13[1].ww;
  r1.xyz = r2.xyz * r1.xyz;
  r1.xyz = cb13[1].wxx * r1.xyz;
  r0.z = cb13[1].x * r1.x;
  r1.xy = cb8[7].yz * r1.yz;
  r1.yz = float2(0.680712998,0.369717985) * r1.xy;
  r1.x = cb8[7].x * r0.z;
  o0.xyz = r1.xyz * r0.xxx;
  o1.xyz = r1.xyz * r0.yyy;
  o0.w = 0;
  o1.w = 0;
  o2.xyzw = float4(0,0,0,0);
  o3.xyzw = float4(0,0,0,0);
  return;
}