// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:00 2023
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
  float4 cb0[117];
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
  float3 v6 : TEXCOORD30,
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v4.xy + v4.zw;
  r0.x = t0.Sample(s1_s, r0.xy).x;
  r0.xy = r0.xx * cb0[98].xx + cb0[9].yx;
  r0.xy = frac(r0.xy);
  r0.xy = r0.xy * float2(0.600000024,0.600000024) + v0.xy;
  r0.xy = float2(-0.800000012,-0.800000012) + r0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.xy = saturate(r0.xx * float2(-20.0000076,99.999794) + float2(7.00000191,-28.9999409));
  r0.x = r0.x * r0.y;
  r0.yz = float2(0.5,0.5) * v0.xy;
  r0.yz = t1.Sample(s1_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.yz = r0.yz * cb0[109].xx + v0.xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = saturate(r0.y * -19.9999962 + 7.99999809);
  r0.z = cb0[114].x * r0.y;
  r0.x = r0.x * r0.y + r0.z;
  r0.z = dot(v1.xyz, v1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = v1.xyz * r0.zzz;
  r0.z = dot(v2.xyz, v2.xyz);
  r0.z = rsqrt(r0.z);
  r2.xyz = v2.xyz * r0.zzz;
  r0.z = dot(r2.xyz, r1.xyz);
  r0.z = -r0.z * r0.z + 1;
  r0.z = max(0, r0.z);
  r0.x = saturate(r0.x * r0.z);
  r1.xyz = r0.xxx * float3(0.0856899992,0.167115003,0.939999998) + cb0[116].xyz;
  r1.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r1.xyz = float3(4,4,4) * r1.xyz;
  r0.xw = float2(-0.5,-0.5) + v0.xy;
  r0.x = dot(r0.xw, r0.xw);
  r0.x = sqrt(r0.x);
  r0.x = r0.x + r0.x;
  r0.x = min(1, r0.x);
  r0.x = r0.y * r0.x;
  r0.x = r0.z * r0.x;
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r2.z = sqrt(r0.y);
  r2.xy = cb12[12].zw * v7.xy;
  r0.y = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r0.z = t20.SampleLevel(s2_s, r2.xy, 0).w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}