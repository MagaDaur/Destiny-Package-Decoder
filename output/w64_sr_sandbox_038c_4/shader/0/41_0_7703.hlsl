// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[143];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float2 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v4.xy + v4.zw;
  r0.x = t0.Sample(s1_s, r0.xy).x;
  r0.x = r0.x * cb0[98].x + cb0[9].y;
  r0.x = frac(r0.x);
  r0.x = r0.x * 0.600000024 + v0.x;
  r0.zw = v0.xy * v3.xy + v3.zw;
  r0.z = t0.Sample(s1_s, r0.zw).x;
  r0.z = r0.z * cb0[102].x + cb0[9].x;
  r0.z = frac(r0.z);
  r0.y = r0.z * 0.600000024 + v0.y;
  r0.xy = float2(-0.800000012,-0.800000012) + r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.xy = saturate(r0.xx * float2(-20.0000076,99.999794) + float2(7.00000191,-28.9999409));
  r0.x = r0.x * r0.y;
  r0.yz = v0.xy + v0.xy;
  r0.yz = t1.Sample(s1_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.yz = r0.yz * cb0[111].xx + v0.xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y + r0.y;
  r0.y = min(1, r0.y);
  r0.z = cb0[116].x * r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v2.xyz * r1.xxx;
  r0.y = dot(r1.xyz, r0.yzw);
  r0.y = -r0.y * r0.y + 1;
  r0.y = max(0, r0.y);
  r0.x = saturate(r0.x * r0.y);
  r0.xzw = r0.xxx * float3(0.0856899992,0.167115003,0.939999998) + cb0[118].xyz;
  r0.xzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xzw;
  r0.xzw = float3(1.00000024,1.00000024,1.00000024) * r0.xzw;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r0.xzw = cb13[1].www * r0.xzw;
  r0.xzw = cb13[1].xxx * r0.xzw;
  r0.xzw = cb8[7].xyz * r0.xzw;
  r0.xzw = float3(75,75,75) * r0.xzw;
  r1.xy = float2(-0.5,-0.5) + v0.xy;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = sqrt(r1.x);
  r1.x = r1.x * -1.83823502 + 1;
  r1.x = max(0, r1.x);
  r0.y = r1.x * r0.y;
  r0.y = saturate(cb0[142].x * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v6.xy;
  r1.z = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.y = r1.x * r0.y;
  o0.xyz = r0.xzw * r0.yyy;
  o0.w = 0;
  return;
}