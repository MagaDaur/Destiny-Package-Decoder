// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t3 : register(t3);

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
  float4 cb0[118];
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
  float2 v6 : TEXCOORD6,
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v7.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.yz = round(v5.yx);
  r1.xy = v0.xy * float2(-2,-2) + float2(1,1);
  r0.yz = r0.yz * r1.xy + v0.xy;
  r0.yz = t3.Sample(s2_s, r0.yz).xy;
  r0.yz = r0.yz * v5.zz + v0.xy;
  r0.yz = v5.zz * float2(-0.5,-0.5) + r0.yz;
  r1.xy = r0.yz * float2(-2,-2) + float2(1,1);
  r1.zw = round(v4.wz);
  r0.yz = r1.zw * r1.xy + r0.yz;
  r0.w = cb0[117].x * v6.x;
  r0.w = floor(r0.w);
  r1.xy = cb0[114].xy * r0.ww;
  r1.xy = r0.yz * cb0[113].xy + r1.xy;
  r0.y = t0.Sample(s2_s, r0.yz).x;
  r0.w = t2.Sample(s2_s, r1.xy).x;
  r0.w = saturate(v6.y + r0.w);
  r0.w = saturate(v0.z * r0.w);
  r0.x = r0.w * r0.x;
  r0.z = 0;
  r0.yzw = t1.Sample(s3_s, r0.yz).xyz;
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = cb0[9].xxx * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}