// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

TextureCube<float4> t0 : register(t0);

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
  float4 cb0[135];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD8,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float3 v8 : TEXCOORD30,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v8.xyz, v8.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v8.xyz * r0.xxx;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
  r2.xyz = r1.zxy * r0.yzx;
  r2.xyz = r1.yzx * r0.zxy + -r2.xyz;
  r3.xy = v0.xy * v5.xy + v5.zw;
  r3.xy = t1.Sample(s2_s, r3.xy).xy;
  r3.zw = r3.xy * float2(1.49414098,1.49414098) + float2(-0.75,-0.75);
  r3.xy = float2(-0.5,-0.5) + r3.xy;
  r3.xy = r3.xy * cb0[106].xx + v0.xy;
  r3.xy = r3.xy * v4.xy + v4.zw;
  r0.w = t2.Sample(s2_s, r3.xy).x;
  r0.w = 1 + -r0.w;
  r2.xyz = r3.www * -r2.xyz;
  r0.xyz = r0.xyz * r3.zzz + r2.xyz;
  r1.w = dot(r3.zw, r3.zw);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.w = sqrt(r1.w);
  r0.xyz = r1.xyz * r1.www + r0.xyz;
  r1.w = dot(r0.xyz, r0.xyz);
  r1.w = rsqrt(r1.w);
  r0.xyz = r1.www * r0.xyz;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v2.xyz * r1.www;
  r0.x = dot(r2.xyz, r0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = min(1, r0.x);
  r0.y = -0.75 + v0.y;
  r0.y = 0.75 + -abs(r0.y);
  r0.y = max(0, r0.y);
  r0.x = r0.y * r0.x;
  r0.x = r0.x * r0.x;
  r0.x = cb0[111].x * r0.x;
  r0.x = saturate(r0.w * r0.x);
  r0.xyz = r0.xxx * float3(0.116221003,0.214713007,0.880461991) + cb0[112].xyz;
  r0.w = dot(r2.xyz, r1.xyz);
  r1.w = r0.w * r0.w;
  r0.w = r0.w + r0.w;
  r1.xyz = r1.xyz * r0.www + -r2.xyz;
  r2.xy = saturate(r1.ww * float2(0.666666985,-2) + float2(-0.166666999,1.60000002));
  r0.w = r2.y * r2.y;
  r1.w = saturate(v6.z + r2.x);
  r1.w = saturate(r1.w * 10 + -8.10000038);
  r0.w = r0.w * 0.400000006 + 0.100000001;
  r0.xyz = r0.www * -r0.xyz + r0.xyz;
  r0.w = t0.CalculateLevelOfDetail(s1_s, r1.xyz);
  r0.w = max(0, r0.w);
  r0.w = t0.SampleLevel(s1_s, r1.xyz, r0.w).z;
  r0.w = saturate(r0.w * 1.10000002 + -0.0199999996);
  r0.w = r0.w + r0.w;
  r0.xyz = r0.www * cb0[104].xyz + r0.xyz;
  r0.xyz = r0.xyz * cb0[116].xyz + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[134].x + cb0[134].y);
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v9.xy;
  r1.z = t21.SampleLevel(s4_s, r1.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s4_s, r1.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r2.xyzw = t11.Sample(s3_s, r1.xy).xyzw;
  r3.xyzw = t13.Sample(s3_s, r1.xy).xyzw;
  r1.xy = cb12[12].xy * r1.xy;
  r4.xy = (int2)r1.xy;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + r3.xyzw;
  r1.xyz = cb8[5].xyz * r2.xyz;
  r1.xyz = r2.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xyz;
  r4.zw = float2(0,0);
  r0.w = t10.Load(r4.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.w = -v0.w + r0.w;
  r0.w = saturate(3.33333302 * r0.w);
  r0.w = r1.w * r0.w;
  r0.w = saturate(w1.x * r0.w);
  r0.w = saturate(v0.z * r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}