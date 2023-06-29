// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:47 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float4 cb0[111];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float2 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r0.y = dot(abs(r0.xy), abs(r0.xy));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r0.x = frac(r0.z);
  r0.zw = t2.Sample(s3_s, r0.xy).xy;
  r0.xy = r0.zw * float2(0.100000001,0.100000001) + r0.xy;
  r0.xy = float2(-0.0500000007,-0.0500000007) + r0.xy;
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.x = t1.Sample(s3_s, r0.xy).x;
  r0.y = t0.Sample(s3_s, v0.xy).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r0.y * r0.x;
  r0.x = saturate(v5.x * r0.x);
  r0.w = saturate(v0.z * r0.x);
  r1.x = dot(v1.xyz, v1.xyz);
  r1.x = rsqrt(r1.x);
  r1.xyz = v1.xyz * r1.xxx;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v2.xyz * r1.www;
  r1.x = dot(r2.xyz, r1.xyz);
  r1.x = min(1, abs(r1.x));
  r1.x = 1 + -r1.x;
  r1.y = r1.x * r1.x;
  r1.z = r1.x * r1.y;
  r1.x = -r1.x * r1.y + 1;
  r1.x = r1.x * 0.0199999996 + r1.z;
  r1.x = 1 + -r1.x;
  r1.x = r1.x * -0.999949992 + 0.999949992;
  r1.x = min(1, r1.x);
  r1.xyzw = r1.xxxx * float4(0,0.187380001,0.270581007,0) + cb0[104].xyzw;
  r0.xyz = cb0[9].xyz * v5.yyy;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[110].x + cb0[110].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r2.xy = cb12[12].zw * v6.xy;
  r1.y = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}