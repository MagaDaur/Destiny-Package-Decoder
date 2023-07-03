// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
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
  float4 cb0[132];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float3 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
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
  r0.x = cb0[111].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[112].x * r0.y + r0.x;
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * -6.33512878 + 4.27177715);
  r0.xyzw = cb0[108].xyzw + -r0.xxxx;
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
  r1.xy = r1.xy * v3.xy + v3.zw;
  r1.z = t0.Sample(s3_s, r1.xy).x;
  r1.w = t2.Sample(s3_s, v0.xy).x;
  r1.w = log2(r1.w);
  r1.w = 2.20000005 * r1.w;
  r1.w = exp2(r1.w);
  r2.x = r1.w * -0.100000001 + v0.w;
  r1.w = saturate(cb0[131].x * r1.w);
  r3.w = saturate(v0.z * r1.w);
  r1.w = 0.100000001 + r2.x;
  r2.zw = float2(0,0);
  r4.xy = cb12[12].zw * v6.xy;
  r5.xy = cb12[12].xy * r4.xy;
  r2.xy = (int2)r5.xy;
  r2.x = t10.Load(r2.xyz).x;
  r2.x = r2.x * cb2[0].y + cb2[0].x;
  r2.x = 1 / r2.x;
  r1.w = r2.x + -r1.w;
  r1.w = saturate(10 * r1.w);
  r1.xy = float2(1,1.5733) + -r1.ww;
  r1.yzw = t1.Sample(s4_s, r1.zy).xyz;
  r1.x = 1 + -r1.x;
  r1.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.yzw;
  r1.yzw = float3(1.00000024,1.00000024,1.00000024) * r1.yzw;
  r1.yzw = max(float3(0,0,0), r1.yzw);
  r1.yzw = log2(r1.yzw);
  r1.yzw = float3(0.800000012,0.800000012,0.800000012) * r1.yzw;
  r1.yzw = exp2(r1.yzw);
  r1.yzw = v4.xyz * r1.yzw;
  r3.xyz = v5.zzz * r1.yzw;
  r0.xyzw = r3.xyzw * r0.xyzw;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.w = r0.w * r1.x;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[115].x + cb0[115].y);
  r1.y = min(1, r1.y);
  r4.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s2_s, r4.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s2_s, r4.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.yyyy * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r2.xyzw = t11.Sample(s1_s, r4.xy).xyzw;
  r3.xyzw = t13.Sample(s1_s, r4.xy).xyzw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r1.xyzw = r1.xxxx * r2.xyzw + r3.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}