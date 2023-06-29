// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[107];
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
  float4 v8 : TEXCOORD8,
  float3 v9 : TEXCOORD9,
  float4 v10 : SV_POSITION0,
  uint v11 : SV_isFrontFace0,
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
  r0.y = r0.x * r0.x + 0.25;
  r0.x = r0.x * r0.x;
  r0.x = 1.33333302 * r0.x;
  r0.xy = min(float2(1,1), r0.xy);
  r0.zw = v0.xy * cb0[0].xy + cb0[0].zw;
  r0.zw = t0.Sample(s1_s, r0.zw).xy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r0.zw = r0.zw * v8.xx + v0.xy;
  r0.z = 100 * r0.z;
  r0.w = -0.5 + r0.w;
  r0.w = abs(r0.w) * -2 + 1;
  r0.w = max(0, r0.w);
  r0.x = r0.x * r0.w;
  r0.z = frac(r0.z);
  r0.z = -0.5 + r0.z;
  r0.z = 0.75 + -abs(r0.z);
  r0.y = r0.z * r0.z + r0.y;
  r0.y = min(1, r0.y);
  r0.xy = r0.xy * r0.xy;
  r0.x = r0.y * r0.x;
  r0.x = saturate(v9.z * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v10.xy;
  r0.y = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.zw = v0.xy * v6.xy + v6.zw;
  r0.z = t1.Sample(s1_s, r0.zw).x;
  r1.xy = v0.xy * v5.xy + v5.zw;
  r0.w = t1.Sample(s1_s, r1.xy).x;
  r0.z = dot(r0.zz, r0.ww);
  r0.z = saturate(-0.25 + r0.z);
  r0.w = v0.w + -r0.z;
  r0.z = 2 + -r0.z;
  r0.w = 1 + r0.w;
  r0.w = r0.y + -r0.w;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(r0.y * -0.125 + 1);
  r0.y = r0.y * r0.y;
  r0.z = saturate(r0.w / r0.z);
  r0.z = 1 + -r0.z;
  r0.z = 1 + -r0.z;
  r0.x = r0.x * r0.z;
  r1.x = 1;
  r1.yz = cb0[106].xx;
  r0.yzw = r1.xyz * r0.yyy;
  r1.xy = v0.xy * cb0[1].xy + cb0[1].zw;
  r1.xy = t0.Sample(s1_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r1.xy = r1.xy * cb0[97].xx + v0.xy;
  r1.zw = r1.xy * v6.xy + v6.zw;
  r1.xy = r1.xy * v5.xy + v5.zw;
  r1.x = t1.Sample(s1_s, r1.xy).x;
  r1.y = t1.Sample(s1_s, r1.zw).x;
  r1.x = saturate(r1.y * r1.x);
  r1.xyz = float3(1,0.404821992,0) * r1.xxx;
  r2.x = cb0[106].x;
  r2.yz = float2(0.404821992,0);
  r0.yzw = r0.yzw * r2.xyz + r1.xyz;
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = r0.yzw / float3(0.999999762,0.999999762,0.999999762);
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}