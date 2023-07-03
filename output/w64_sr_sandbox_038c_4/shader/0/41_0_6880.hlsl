// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
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
  float2 v7 : TEXCOORD7,
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
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
  r0.xy = cb12[12].zw * v8.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.yz = float2(2,1) * v0.xy;
  r0.y = t2.Sample(s2_s, r0.yz).x;
  r0.y = r0.y * v7.x + v6.w;
  r0.z = -0.5 + v5.x;
  r0.z = saturate(0.5 * r0.z);
  r0.y = saturate(r0.y * r0.z);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r0.yz = v0.xy * v3.xy + v3.zw;
  r1.xy = t3.Sample(s2_s, r0.yz).xy;
  r0.yz = r1.xy * v5.yy + r0.yz;
  r0.yz = v5.yy * float2(-0.5,-0.5) + r0.yz;
  r0.y = t0.Sample(s2_s, r0.yz).x;
  r0.z = v5.w;
  r0.yzw = t1.Sample(s3_s, r0.yz).xyz;
  r1.x = max(0.00100000005, v6.y);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.yzw = -r1.xxx + r0.yzw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.yzw = r0.yzw / r1.xxx;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r1.x = 1;
  r1.yz = v7.yy;
  r0.yzw = r1.xyz * r0.yzw;
  r1.x = v7.y;
  r1.yz = cb13[1].ww;
  r0.yzw = r1.xyz * r0.yzw;
  r0.yzw = cb13[1].wxx * r0.yzw;
  r0.y = cb13[1].x * r0.y;
  r0.zw = cb8[7].yz * r0.zw;
  r1.yz = float2(0.287440985,0.0742139965) * r0.zw;
  r1.x = cb8[7].x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}