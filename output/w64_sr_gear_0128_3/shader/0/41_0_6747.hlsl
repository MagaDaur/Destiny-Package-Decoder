// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float4 cb0[119];
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.x = t1.Sample(s2_s, r0.xy).x;
  r0.y = v5.w + r0.x;
  r0.x = cb0[96].x;
  r0.xyz = t0.Sample(s1_s, r0.xy).xyz;
  r0.w = 1 + -abs(v0.x);
  r0.w = max(0, r0.w);
  r0.xyz = r0.xyz * r0.www + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.x = v6.y;
  r1.yz = float2(1,1);
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = cb13[1].w;
  r1.yz = v6.yy;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb13[1].xww * r0.xyz;
  r0.yz = cb13[1].xx * r0.yz;
  r0.x = cb8[7].x * r0.x;
  r1.yz = cb8[7].yz * r0.yz;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.z = 0.015625 * r0.y;
  r0.y = saturate(r0.y * cb0[113].x + cb0[113].y);
  r0.z = min(1, r0.z);
  r2.z = sqrt(r0.z);
  r2.xy = cb12[12].zw * v7.xy;
  r0.z = t21.SampleLevel(s4_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s4_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.zzzz * r3.xyzw + float4(0,0,0,1);
  r1.x = r3.w * r0.x;
  r4.x = 0.426055998;
  r4.yz = r3.ww;
  r0.xzw = r1.xyz * r4.xyz + r3.xyz;
  r1.xyzw = t11.Sample(s3_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s3_s, r2.xy).xyzw;
  r1.xyzw = -r2.xyzw + r1.xyzw;
  r1.xyzw = r0.yyyy * r1.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xzw;
  r0.w = -0.5 + v0.x;
  r0.w = abs(r0.w) * -2 + 1;
  r0.w = max(0, r0.w);
  r0.w = r0.w * r0.w;
  r1.x = v4.z + v0.x;
  r1.x = saturate(v4.y * abs(r1.x) + v4.x);
  r0.w = r1.x * r0.w;
  r0.w = saturate(r0.w * cb0[118].x + v6.x);
  r0.w = saturate(v0.z * r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}