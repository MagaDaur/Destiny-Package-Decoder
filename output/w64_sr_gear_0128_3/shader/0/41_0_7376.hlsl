// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
Texture2D<float4> t23 : register(t23);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[114];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD5,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[103].x + v0.x;
  r0.y = v0.y;
  r0.zw = r0.xy * cb0[14].xy + cb0[14].zw;
  r0.zw = t0.Sample(s1_s, r0.zw).xy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r0.xy = r0.zw * cb0[97].xx + r0.xy;
  r0.zw = r0.xy * cb0[14].xy + cb0[14].zw;
  r0.zw = t0.Sample(s1_s, r0.zw).xy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r0.xy = r0.zw * cb0[97].xx + r0.xy;
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.z = saturate(r0.x * v3.z + v3.w);
  r1.x = cb0[101].x + v0.x;
  r1.z = cb0[102].x + v0.x;
  r1.yw = v0.yy;
  r2.xyzw = r1.xyzw * cb0[14].xyxy + cb0[14].zwzw;
  r2.xy = t0.Sample(s1_s, r2.xy).xy;
  r2.zw = t0.Sample(s1_s, r2.zw).xy;
  r2.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + r2.xyzw;
  r1.zw = r2.zw * cb0[97].xx + r1.zw;
  r1.xy = r2.xy * cb0[97].xx + r1.xy;
  r2.xy = r1.xy * cb0[14].xy + cb0[14].zw;
  r2.xy = t0.Sample(s1_s, r2.xy).xy;
  r2.xy = float2(-0.5,-0.5) + r2.xy;
  r1.xy = r2.xy * cb0[97].xx + r1.xy;
  r1.xy = r1.xy * cb0[11].xy + cb0[11].zw;
  r0.w = t1.Sample(s1_s, r1.xy).x;
  r0.x = saturate(r0.w * v3.z + v3.w);
  r1.xy = r1.zw * cb0[14].xy + cb0[14].zw;
  r1.xy = t0.Sample(s1_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r1.xy = r1.xy * cb0[97].xx + r1.zw;
  r1.xy = r1.xy * cb0[11].xy + cb0[11].zw;
  r0.w = t1.Sample(s1_s, r1.xy).x;
  r0.y = saturate(r0.w * v3.z + v3.w);
  r1.xy = v0.xy * cb0[14].xy + cb0[14].zw;
  r1.xy = t0.Sample(s1_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r2.xy = cb12[12].zw * v5.xy;
  r1.zw = r1.xy * cb0[97].xx + r2.xy;
  r1.xy = r1.xy * cb0[97].xx + v0.xy;
  r3.xyz = t23.Sample(s2_s, r1.zw).xyz;
  r0.xyz = r3.xyz + r0.xyz;
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.z = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[113].x + cb0[113].y);
  r1.z = min(1, r1.z);
  r2.z = sqrt(r1.z);
  r1.z = t21.SampleLevel(s4_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s4_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.zzzz * r3.xyzw + float4(0,0,0,1);
  r0.xyz = r3.www * r0.xyz;
  r0.xyz = r0.xyz * float3(3,3,3) + r3.xyz;
  r3.xyzw = t11.Sample(s3_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s3_s, r2.xy).xyzw;
  r1.zw = cb12[12].xy * r2.xy;
  r2.xy = (int2)r1.zw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + r4.xyzw;
  r3.xyz = cb8[5].xyz * r3.xyz;
  r3.xyz = r3.www * cb8[6].xyz + r3.xyz;
  r0.xyz = r3.xyz * cb13[1].xxx + r0.xyz;
  r0.w = -0.5 + r1.y;
  r1.xy = r1.xy * cb0[11].xy + cb0[11].zw;
  r1.x = t1.Sample(s1_s, r1.xy).x;
  r1.x = saturate(r1.x * v3.z + v3.w);
  r0.w = abs(r0.w) * -2 + 1;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[105].x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = r1.x * r0.w;
  r0.w = w1.x * r0.w;
  r1.x = saturate(-0.100000001 + v4.x);
  r0.w = saturate(r1.x * r0.w);
  r0.w = saturate(v0.z * r0.w);
  r2.zw = float2(0,0);
  r1.x = t10.Load(r2.xyz).x;
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