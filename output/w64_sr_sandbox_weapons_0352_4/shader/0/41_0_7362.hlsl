// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

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
  float4 cb2[6];
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
  float4 cb0[112];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.xy = t2.Sample(s4_s, r0.xy).xy;
  r0.xy = r0.xy * float2(0.25,0.25) + v0.xy;
  r0.xy = float2(-0.125,-0.125) + r0.xy;
  r0.xy = r0.xy * cb0[8].xy + cb0[8].zw;
  r0.xyz = t0.Sample(s4_s, r0.xy).xyz;
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.xyz = float3(1.88306534,1.88306534,1.88306534) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.x = 1;
  r1.yz = cb0[12].yy;
  r0.xyz = r1.xyz * r0.xyz;
  r1.x = cb0[12].y;
  r1.yz = cb13[1].ww;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb13[1].wxx * r0.xyz;
  r0.x = cb13[1].x * r0.x;
  r0.yz = cb8[7].yz * r0.yz;
  r1.x = cb8[7].x * r0.x;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.w = 0.015625 * r0.x;
  r0.x = saturate(r0.x * cb0[111].x + cb0[111].y);
  r0.w = min(1, r0.w);
  r2.z = sqrt(r0.w);
  r2.xy = cb12[12].zw * v5.xy;
  r0.w = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + float4(0,0,0,1);
  r1.yz = r3.ww * r0.yz;
  r4.yz = float2(0.101526998,0.0511270016);
  r4.x = r3.w;
  r0.yzw = r1.xyz * r4.xyz + r3.xyz;
  r1.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r2.xyz = t10.Sample(s1_s, r2.xy).xyw;
  r1.xyzw = -r3.xyzw + r1.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r3.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.yzw;
  r0.w = -1 + r2.z;
  r0.w = cb2[5].x * r0.w + 1;
  r1.x = t1.Sample(s4_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.yz = r1.xx * float2(0.300000012,-0.800000012) + float2(0.5,0.800000012);
  r1.x = saturate(w1.x * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r1.z = r1.z * v4.w + v0.w;
  r1.y = v4.w * r1.y;
  r1.zw = r2.xy + -r1.zz;
  r1.yz = saturate(r1.zw / r1.yy);
  r1.yz = float2(1,1) + -r1.yz;
  r1.y = r1.y + -r1.z;
  r0.w = r0.w * r1.y + r1.z;
  r1.y = 1 + -r1.z;
  r2.xyzw = r1.xxxx * r1.yyyy;
  r0.w = 1 + -r0.w;
  r1.xyzw = r1.xxxx * r0.wwww;
  o0.xyz = r1.www * r0.xyz;
  o1.xyz = r2.xyz * r0.xyz;
  o0.w = r1.w;
  o2.xyzw = r1.xyzw;
  o1.w = r2.w;
  o3.xyzw = r2.xyzw;
  return;
}