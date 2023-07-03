// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:37 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[102];
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
  float4 v7 : SV_POSITION0,
  uint v8 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = min(1, abs(r0.x));
  r0.x = 1 + -r0.x;
  r0.x = log2(r0.x);
  r0.x = cb0[100].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[101].x * r0.y + r0.x;
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * -2.95989299 + 2.95989299);
  r0.xyzw = r0.xxxx * float4(-0.980068982,-0.980068982,-0.980068982,-1) + cb0[97].xyzw;
  r1.xy = t2.Sample(s2_s, v0.xy).xy;
  r1.xy = r1.xy * v5.ww + v0.xy;
  r1.xy = v5.ww * float2(-0.5,-0.5) + r1.xy;
  r1.x = t1.Sample(s2_s, r1.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = saturate(r1.x * v6.z + v6.y);
  r1.w = saturate(v0.z * r1.x);
  r2.xy = v0.xy * v3.xy + v3.zw;
  r2.xyz = t0.Sample(s2_s, r2.xy).xyz;
  r2.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r2.xyz;
  r2.xyz = float3(1.00000024,1.00000024,1.00000024) * r2.xyz;
  r2.xyz = max(float3(0,0,0), r2.xyz);
  r2.xyz = v4.xyz * r2.xyz;
  r1.xyz = v6.www * r2.xyz;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v7.xy;
  r1.z = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.w = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r2.xy = (int2)r1.xy;
  r1.x = -1 + r1.w;
  r1.x = r1.z * r1.x + 1;
  r0.w = r1.x * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r2.zw = float2(0,0);
  r1.x = t10.Load(r2.xyz).x;
  r1.x = r1.x * cb2[0].y + cb2[0].x;
  r1.x = 1 / r1.x;
  r1.x = -v0.w + r1.x;
  r1.x = saturate(0.666666687 * r1.x);
  r1.x = 1 + -r1.x;
  r1.x = 1 + -r1.x;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}