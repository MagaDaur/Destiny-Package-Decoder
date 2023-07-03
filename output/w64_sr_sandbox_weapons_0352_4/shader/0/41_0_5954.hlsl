// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:26 2023
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
  float4 cb0[115];
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
  float4 r0,r1,r2;
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
  r0.y = cb0[114].x * cb0[8].w;
  r0.y = floor(r0.y);
  r0.yz = cb0[111].xy * r0.yy;
  r1.z = 0;
  r1.xyw = round(v6.yxz);
  r2.xy = v0.xy * float2(-2,-2) + float2(1,1);
  r1.zw = r1.zw * r2.xy + v0.xy;
  r1.xy = r1.xy * r2.xy + v0.xy;
  r1.xy = r1.xy * v3.xy + v3.zw;
  r2.xyz = t0.Sample(s2_s, r1.xy).xyz;
  r0.yz = r1.zw * cb0[110].xy + r0.yz;
  r0.y = t1.Sample(s2_s, r0.yz).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = saturate(r0.y * v7.z + v7.y);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r0.y = max(0.00100000005, v7.x);
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r1.xyz = r2.xyz + -r0.yyy;
  r0.y = 1 + -r0.y;
  r0.y = max(9.99999975e-006, r0.y);
  r0.yzw = r1.xyz / r0.yyy;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v4.xyz * r0.yzw;
  r0.yzw = v7.www * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}