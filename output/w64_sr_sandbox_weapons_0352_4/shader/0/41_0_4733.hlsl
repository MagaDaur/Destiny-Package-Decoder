// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:30 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[131];
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
  float4 v9 : TEXCOORD9,
  float3 v10 : TEXCOORD10,
  float4 v11 : SV_POSITION0,
  uint v12 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.xy = t1.Sample(s1_s, r0.xy).xy;
  r0.zw = v0.xy * v5.xy + v5.zw;
  r0.xy = r0.xy * v4.xy + r0.zw;
  r0.xy = v4.zw + r0.xy;
  r0.x = t2.Sample(s1_s, r0.xy).x;
  r0.x = saturate(v8.y * r0.x);
  r0.x = log2(r0.x);
  r0.x = v9.z * r0.x;
  r0.x = exp2(r0.x);
  r0.y = min(1, r0.x);
  r0.x = v9.w;
  r0.xyz = t0.Sample(s1_s, r0.xy).xyz;
  r0.xyz = v6.xyz * r0.xyz;
  r0.xyz = r0.xyz * v8.xxx + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = log2(r0.xyz);
  r0.w = 1 / v10.x;
  r0.xyz = r0.www * r0.xyz;
  r0.xyz = exp2(r0.xyz);
  r1.x = 1;
  r1.yz = cb13[1].ww;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb13[1].wxx * r0.xyz;
  r0.x = cb13[1].x * r0.x;
  r0.yz = cb8[7].yz * r0.yz;
  r1.x = cb8[7].x * r0.x;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.w = 0.015625 * r0.x;
  r0.x = saturate(r0.x * cb0[124].x + cb0[124].y);
  r0.w = min(1, r0.w);
  r2.z = sqrt(r0.w);
  r2.xy = cb12[12].zw * v11.xy;
  r0.w = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + float4(0,0,0,1);
  r1.yz = r3.ww * r0.yz;
  r4.yz = float2(0.624949992,0.559858978);
  r4.x = r3.w;
  r0.yzw = r1.xyz * r4.xyz + r3.xyz;
  r1.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r2.xy = cb12[12].xy * r2.xy;
  r2.xy = (int2)r2.xy;
  r1.xyzw = -r3.xyzw + r1.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r3.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.yzw;
  r2.zw = float2(0,0);
  r0.w = t10.Load(r2.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.w = -v0.w + r0.w;
  r0.w = saturate(r0.w / v10.y);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r1.x = cb0[130].x * v7.w;
  r1.x = floor(r1.x);
  r1.xy = cb0[127].xy * r1.xx;
  r1.xy = v0.xy * cb0[126].xy + r1.xy;
  r1.x = t3.Sample(s1_s, r1.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.x = saturate(v10.z * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}