// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:23 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

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
  float4 cb0[101];
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
  float2 v8 : TEXCOORD8,
  float4 v9 : SV_POSITION0,
  uint v10 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.x = t0.Sample(s3_s, r0.xy).x;
  r0.z = 0.300000012 * v8.x;
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v9.xy;
  r3.xy = cb12[12].xy * r2.xy;
  r1.xy = (int2)r3.xy;
  r0.w = t10.Load(r1.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.w = -v0.w + r0.w;
  r0.z = saturate(r0.w / r0.z);
  r0.z = 1 + -r0.z;
  r0.y = v7.w + r0.z;
  r0.z = 1 + -r0.z;
  r0.xyw = t1.Sample(s4_s, r0.xy).xyz;
  r0.xyw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyw;
  r0.xyw = float3(1.00000024,1.00000024,1.00000024) * r0.xyw;
  r0.xyw = max(float3(0,0,0), r0.xyw);
  r1.x = cb0[11].x;
  r1.z = 1;
  r0.xyw = r1.xxz * r0.xyw;
  r1.x = cb13[1].w;
  r1.z = cb0[11].x;
  r0.xyw = r1.xxz * r0.xyw;
  r0.xyw = cb13[1].xxw * r0.xyw;
  r0.xy = cb8[7].xy * r0.xy;
  r0.w = cb13[1].x * r0.w;
  r1.z = cb8[7].z * r0.w;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.w = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[100].x + cb0[100].y);
  r1.w = min(1, r1.w);
  r2.z = sqrt(r1.w);
  r1.w = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.wwww * r3.xyzw + float4(0,0,0,1);
  r1.xy = r3.ww * r0.xy;
  r4.xy = float2(0.444000006,0.593448997);
  r4.z = r3.w;
  r1.xyz = r1.xyz * r4.xyz + r3.xyz;
  r3.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r2.xyzw = r0.wwww * r3.xyzw + r2.xyzw;
  r0.xyw = cb8[5].xyz * r2.xyz;
  r0.xyw = r2.www * cb8[6].xyz + r0.xyw;
  r0.xyw = r0.xyw * cb13[1].xxx + r1.xyz;
  r1.xy = v0.xy * v4.xy + v4.zw;
  r1.xy = t3.Sample(s3_s, r1.xy).xy;
  r1.xy = r1.xy * v7.zz + v0.xy;
  r1.xy = v7.zz * float2(-0.5,-0.5) + r1.xy;
  r1.x = t2.Sample(s3_s, r1.xy).x;
  r1.x = saturate(v8.y * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r0.z = r1.x * r0.z;
  o0.xyz = r0.xyw * r0.zzz;
  o0.w = r0.z;
  return;
}