// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:16 2023
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[112];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD6,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = r0.z * r0.z;
  r0.z = v5.z * r0.z;
  r0.xy = r0.xy * r0.zz + v0.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
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
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.x = t0.Sample(s2_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.x = -2.51188652e-007 + r0.x;
  r0.x = 1.00000024 * r0.x;
  r0.x = max(0, r0.x);
  r1.y = 1;
  r1.xw = w1.xw;
  r0.xy = r1.xy * r0.xx;
  r1.z = cb13[1].w;
  r0.xy = r0.xy * r1.zw;
  r0.xy = cb13[1].xw * r0.xy;
  r0.xz = cb8[7].xy * r0.xx;
  r0.y = cb13[1].x * r0.y;
  r1.z = cb8[7].z * r0.y;
  r1.xy = float2(0.40041101,0.187153995) * r0.xz;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = saturate(r0.x * cb0[111].x + cb0[111].y);
  r0.yz = cb12[12].zw * v6.xy;
  r2.xyzw = t11.Sample(s1_s, r0.yz).xyzw;
  r3.xyzw = t13.Sample(s1_s, r0.yz).xyzw;
  r0.yz = cb12[12].xy * r0.yz;
  r4.xy = (int2)r0.yz;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r0.xyzw = r0.xxxx * r2.xyzw + r3.xyzw;
  r0.xyz = cb8[5].xyz * r0.xyz;
  r0.xyz = r0.www * cb8[6].xyz + r0.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  r4.zw = float2(0,0);
  r0.w = t10.Load(r4.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r1.x = t1.Sample(s2_s, v0.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r1.yz = r1.xx * float2(0.300000012,-0.800000012) + float2(0.5,0.800000012);
  r1.x = saturate(v5.w * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r1.z = r1.z * 0.200000003 + v0.w;
  r1.y = 0.200000003 * r1.y;
  r0.w = -r1.z + r0.w;
  r0.w = saturate(r0.w / r1.y);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}