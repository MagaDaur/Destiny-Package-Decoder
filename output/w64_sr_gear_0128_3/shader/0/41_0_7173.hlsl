// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t4 : register(t4);

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
  float4 cb0[151];
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
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyzw = v0.xyxy * float4(3,3,3,3) + float4(-1,-1,-1.5,-1.5);
  r1.x = abs(r0.z) + -abs(r0.w);
  r1.y = abs(r0.z) + abs(r0.w);
  r1.x = r1.x / r1.y;
  r1.x = -1 + r1.x;
  r1.yz = cmp(float2(0,0) < r0.zw);
  r2.xy = cmp(r0.zw < float2(0,0));
  r1.yz = (int2)-r1.yz + (int2)r2.xy;
  r1.yz = (int2)r1.yz;
  r1.x = r1.x * r1.z + 2;
  r1.x = r1.y * r1.x;
  r1.x = 0.125 * r1.x;
  r1.x = frac(r1.x);
  r1.y = dot(abs(r0.zw), abs(r0.zw));
  r0.zw = r1.xy * cb0[9].xy + cb0[9].zw;
  r0.z = t2.Sample(s1_s, r0.zw).x;
  r0.z = saturate(r0.z * 4 + -0.300000012);
  r0.z = cb0[104].x * r0.z;
  r1.xy = float2(7,7) * r0.xy;
  r1.xy = t0.Sample(s1_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r0.xy = r1.xy * v7.xx + r0.xy;
  r0.xy = t1.Sample(s2_s, r0.xy).xy;
  r0.y = max(0, r0.y);
  r0.x = saturate(r0.x * v5.z + v5.w);
  r0.y = log2(r0.y);
  r0.y = v6.z * r0.y;
  r0.y = exp2(r0.y);
  r0.y = min(1, r0.y);
  r0.x = saturate(r0.x * r0.z + r0.y);
  r0.yzw = cb0[107].xyz * v4.xyz;
  r0.xyz = r0.xxx * r0.yzw + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = v7.www * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r1.xy = float2(-0.5,-0.5) + v0.xy;
  r0.w = abs(r1.x) + -abs(r1.y);
  r1.z = abs(r1.x) + abs(r1.y);
  r0.w = r0.w / r1.z;
  r0.w = -1 + r0.w;
  r1.zw = cmp(float2(0,0) < r1.xy);
  r2.xy = cmp(r1.xy < float2(0,0));
  r1.y = dot(abs(r1.xy), abs(r1.xy));
  r1.zw = (int2)-r1.zw + (int2)r2.xy;
  r1.zw = (int2)r1.zw;
  r0.w = r0.w * r1.w + 2;
  r0.w = r1.z * r0.w;
  r0.xyzw = float4(0.328357011,0.357742995,0.532003999,0.125) * r0.xyzw;
  r1.x = frac(r0.w);
  r1.xy = r1.xy * cb0[8].xy + cb0[8].zw;
  r0.w = t4.Sample(s1_s, r1.xy).x;
  r0.w = log2(r0.w);
  r0.w = 2.20000005 * r0.w;
  r0.w = exp2(r0.w);
  r1.xy = v0.xy * v3.xy + v3.zw;
  r1.x = t3.Sample(s1_s, r1.xy).x;
  r0.w = r1.x * r0.w;
  r0.w = log2(r0.w);
  r1.x = 1 / cb0[150].x;
  r0.w = r1.x * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(v7.z * r0.w);
  r0.w = saturate(v0.z * r0.w);
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v8.xy;
  r1.z = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s3_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}