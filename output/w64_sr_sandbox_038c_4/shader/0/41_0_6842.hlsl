// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
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
  float4 cb0[107];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD4,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = dot(r0.xx, r0.xx);
  r0.x = saturate(-1 + r0.x);
  r0.yz = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.yz = t0.Sample(s1_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.yz = r0.yz * cb0[99].xx + v0.xy;
  r0.yz = r0.yz * cb0[8].xy + cb0[8].zw;
  r0.yzw = t1.Sample(s1_s, r0.yz).xyz;
  r0.yzw = saturate(r0.yzw * v3.xxx + v3.yyy);
  r1.x = -0.977999985 + v0.x;
  r1.x = abs(r1.x) * -0.800000012 + 0.75;
  r1.x = max(0, r1.x);
  r1.xyz = cb0[97].xyz * r1.xxx;
  r0.yzw = r1.xyz * r0.yzw;
  r0.yzw = cb0[103].xyz * r0.yzw;
  r1.xyz = r0.xxx * cb0[105].xyz + -r0.yzw;
  r0.xyz = cb0[106].xxx * r1.xyz + r0.yzw;
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = w1.xww * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v4.xy;
  r0.w = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r0.w = r0.w * r1.x + 1;
  r1.x = saturate(v3.w);
  r1.x = saturate(v0.z * r1.x);
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}