// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:57 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[136];
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
  float4 r0,r1,r2,r3,r4;
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
  r0.y = saturate(r0.y * -180.180267 + 64.0630951);
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
  r1.xyz = r0.xxx * float3(0.00341499993,0.0523700006,0.503549993) + cb0[116].xyz;
  r1.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = cb0[9].zzz * r1.xyz;
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.w = 0.015625 * r0.x;
  r0.x = saturate(r0.x * cb0[135].x + cb0[135].y);
  r0.w = min(1, r0.w);
  r2.z = sqrt(r0.w);
  r2.xy = cb12[12].zw * v7.xy;
  r0.w = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + float4(0,0,0,1);
  r1.xyz = r1.xyz * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r2.xy = cb12[12].xy * r2.xy;
  r2.xy = (int2)r2.xy;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r3.xyzw = r0.xxxx * r3.xyzw + r4.xyzw;
  r3.xyz = cb8[5].xyz * r3.xyz;
  r3.xyz = r3.www * cb8[6].xyz + r3.xyz;
  r1.xyz = r3.xyz * cb13[1].xxx + r1.xyz;
  r0.xw = float2(-0.5,-0.5) + v0.xy;
  r0.x = dot(r0.xw, r0.xw);
  r0.x = sqrt(r0.x);
  r0.x = r0.x + r0.x;
  r0.x = min(1, r0.x);
  r0.x = r0.y * r0.x;
  r0.x = r0.z * r0.x;
  r0.x = saturate(v5.z * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r2.zw = float2(0,0);
  r0.y = t10.Load(r2.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(0.454545438 * r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = r0.x;
  return;
}