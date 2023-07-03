// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
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
  float4 cb0[140];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -0.5 + v0.y;
  r0.x = abs(r0.x) * -7.14285707 + 0.75;
  r0.x = max(0, r0.x);
  r0.xyz = r0.xxx * float3(0.225161999,0.608428001,0.234708995) + cb0[97].xyz;
  r1.xyz = cb0[99].xyz + -r0.xyz;
  r0.xyz = v4.xxx * r1.xyz + r0.xyz;
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = v4.www * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[139].x + cb0[139].y);
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v5.xy;
  r1.z = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s3_s, r1.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r2.xyzw = t11.Sample(s2_s, r1.xy).xyzw;
  r3.xyzw = t13.Sample(s2_s, r1.xy).xyzw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + r3.xyzw;
  r2.xyz = cb8[5].xyz * r2.xyz;
  r2.xyz = r2.www * cb8[6].xyz + r2.xyz;
  r0.xyz = r2.xyz * cb13[1].xxx + r0.xyz;
  r1.zw = v0.xy * cb0[15].xy + cb0[15].zw;
  r1.zw = t0.Sample(s1_s, r1.zw).xy;
  r1.zw = float2(-0.5,-0.5) + r1.zw;
  r2.xy = r1.xy * float2(70,1) + float2(1,0);
  r1.xy = cb12[12].xy * r1.xy;
  r3.xy = (int2)r1.xy;
  r1.xy = r1.zw * cb0[103].xx + r2.xy;
  r0.w = r1.y * cb0[14].y + cb0[14].w;
  r1.y = round(r0.w);
  r0.w = -r1.y + r0.w;
  r1.y = abs(r0.w) * -16 + 8;
  r0.w = r1.y * r0.w;
  r1.y = abs(r0.w) * 0.224999994 + 0.774999976;
  r0.w = r1.y * r0.w;
  r0.w = r0.w * 0.100000001 + r1.x;
  r0.w = r0.w * cb0[13].x + cb0[13].z;
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  r1.xy = abs(r0.ww) * float2(-1.66666698,-10) + float2(1,1);
  r0.w = max(0, r1.y);
  r0.w = r1.x * cb0[110].x + r0.w;
  r1.x = dot(v2.xyz, v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = saturate(r1.x * -0.0526320003 + 1.05263197);
  r0.w = r1.x * r0.w;
  r1.xy = v0.xy * cb0[9].xy + cb0[9].zw;
  r1.x = t1.Sample(s1_s, r1.xy).x;
  r1.y = saturate(r1.x * 2 + -0.5);
  r0.w = r1.y * r0.w;
  r0.w = r0.w * cb0[114].x + r1.x;
  r0.w = v4.z * r0.w;
  r1.x = -0.5 + v3.z;
  r1.x = saturate(0.5 * r1.x);
  r0.w = saturate(r1.x * r0.w);
  r0.w = saturate(v0.z * r0.w);
  r3.zw = float2(0,0);
  r1.x = t10.Load(r3.xyz).x;
  r1.x = r1.x * cb2[0].y + cb2[0].x;
  r1.x = 1 / r1.x;
  r1.x = -v0.w + r1.x;
  r1.x = saturate(r1.x + r1.x);
  r1.x = 1 + -r1.x;
  r1.x = 1 + -r1.x;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}