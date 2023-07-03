// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:31 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

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
  float4 cb0[123];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
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
  r0.x = cb0[121].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[122].x * r0.y + r0.x;
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * -5.52638912 + 4.2884779);
  r0.xyzw = cb0[118].xyzw + -r0.xxxx;
  r1.xy = float2(-0.5,-0.5) + v0.xy;
  r1.z = abs(r1.x) + -abs(r1.y);
  r1.w = abs(r1.x) + abs(r1.y);
  r1.z = r1.z / r1.w;
  r1.z = -1 + r1.z;
  r2.xy = cmp(float2(0,0) < r1.xy);
  r2.zw = cmp(r1.xy < float2(0,0));
  r1.y = dot(abs(r1.xy), abs(r1.xy));
  r2.xy = (int2)-r2.xy + (int2)r2.zw;
  r2.xy = (int2)r2.xy;
  r1.z = r1.z * r2.y + 2;
  r1.z = r2.x * r1.z;
  r1.z = 0.125 * r1.z;
  r1.x = frac(r1.z);
  r1.zw = r1.xy * cb0[10].xy + cb0[10].zw;
  r1.z = t2.Sample(s1_s, r1.zw).x;
  r1.z = saturate(r1.z);
  r1.w = t1.Sample(s1_s, v0.xy).x;
  r2.x = saturate(r1.w * 2 + -0.600000024);
  r1.w = saturate(r1.w * 3 + -0.400000006);
  r1.z = r2.x * r1.z;
  r2.xy = r1.xy * cb0[11].xy + cb0[11].zw;
  r2.x = t0.Sample(s1_s, r2.xy).x;
  r2.x = saturate(r2.x * 3 + -2);
  r1.z = r2.x * r1.w + r1.z;
  r1.w = t3.Sample(s1_s, v0.xy).x;
  r1.w = saturate(4 * r1.w);
  r2.xy = r1.xy * cb0[9].xy + cb0[9].zw;
  r1.xy = r1.xy * cb0[8].xy + cb0[8].zw;
  r1.x = t5.Sample(s1_s, r1.xy).x;
  r2.x = t4.Sample(s1_s, r2.xy).x;
  r2.x = saturate(0.100000001 * r2.x);
  r1.z = r1.w * r2.x + r1.z;
  r1.w = r1.z * 0.461100012 + 0.325899988;
  r2.x = r1.z * 0.123500004 + v0.w;
  r1.z = saturate(r1.z * cb0[17].y + w1.x);
  r3.w = saturate(v0.z * r1.z);
  r1.z = 0.0785000026 + r2.x;
  r2.zw = float2(0,0);
  r4.xy = cb12[12].zw * v3.xy;
  r5.xy = cb12[12].xy * r4.xy;
  r2.xy = (int2)r5.xy;
  r2.x = t10.Load(r2.xyz).x;
  r2.x = r2.x * cb2[0].y + cb2[0].x;
  r2.x = 1 / r2.x;
  r1.z = r2.x + -r1.z;
  r1.z = saturate(r1.z / r1.w);
  r1.z = 1 + -r1.z;
  r1.y = cb0[15].w + r1.z;
  r1.z = 1 + -r1.z;
  r1.xyw = t6.Sample(s3_s, r1.xy).xyz;
  r1.xyw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyw;
  r1.xyw = float3(1.00000024,1.00000024,1.00000024) * r1.xyw;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r1.xyw = cb0[13].xyz * r1.xyw;
  r3.xyz = cb0[17].zzz * r1.xyw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r4.z = sqrt(r1.x);
  r1.x = t21.SampleLevel(s2_s, r4.xyz, 0).x;
  r1.y = t20.SampleLevel(s2_s, r4.xy, 0).w;
  r1.y = -1 + r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = r0.w * r1.z;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}