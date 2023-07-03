// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:18 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[106];
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
  float4 v10 : TEXCOORD10,
  float4 v11 : SV_POSITION0,
  uint v12 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
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
  r0.x = cb0[104].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.x = cb0[105].x * r0.y + r0.x;
  r0.x = 1 + -r0.x;
  r0.x = saturate(r0.x * -1.92771101 + 1.73494005);
  r0.xyzw = r0.xxxx * float4(-0.820074022,-0.820074022,-0.820074022,-1) + cb0[101].xyzw;
  r1.xy = v0.xy * v4.xy + v4.zw;
  r1.xy = t4.Sample(s2_s, r1.xy).xy;
  r1.xy = r1.xy * v8.ww + v0.xy;
  r1.xy = v8.ww * float2(-0.5,-0.5) + r1.xy;
  r1.xy = r1.xy * v3.xy + v3.zw;
  r1.x = t0.Sample(s2_s, r1.xy).x;
  r2.zw = float2(0,0);
  r3.xy = cb12[12].zw * v11.xy;
  r1.zw = cb12[12].xy * r3.xy;
  r2.xy = (int2)r1.zw;
  r1.z = t10.Load(r2.xyz).x;
  r1.z = r1.z * cb2[0].y + cb2[0].x;
  r1.z = 1 / r1.z;
  r2.xy = v0.xy * v5.xy + v5.zw;
  r1.w = t3.Sample(s2_s, r2.xy).x;
  r2.x = t2.Sample(s2_s, v0.xy).x;
  r1.w = r2.x * r1.w;
  r2.xy = r1.ww * float2(0.850000024,0.5) + float2(0.150000006,0.0500000007);
  r1.w = saturate(r1.w * v10.z + v10.y);
  r4.w = saturate(v0.z * r1.w);
  r1.w = r2.y * v10.x + v0.w;
  r2.x = v10.x * r2.x;
  r1.z = r1.z + -r1.w;
  r1.z = saturate(r1.z / r2.x);
  r1.z = 1 + -r1.z;
  r1.y = v9.z + r1.z;
  r1.z = 1 + -r1.z;
  r1.xyw = t1.Sample(s3_s, r1.xy).xyz;
  r2.x = max(0.00100000005, v9.w);
  r2.x = log2(r2.x);
  r2.x = 2.20000005 * r2.x;
  r2.x = exp2(r2.x);
  r1.xyw = -r2.xxx + r1.xyw;
  r2.x = 1 + -r2.x;
  r2.x = max(9.99999975e-006, r2.x);
  r1.xyw = r1.xyw / r2.xxx;
  r1.xyw = max(float3(0,0,0), r1.xyw);
  r1.xyw = v6.xyz * r1.xyw;
  r4.xyz = v10.www * r1.xyw;
  r0.xyzw = r4.xyzw * r0.xyzw;
  r1.x = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = r1.x * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r3.z = sqrt(r1.x);
  r1.x = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r1.y = t20.SampleLevel(s1_s, r3.xy, 0).w;
  r1.y = -1 + r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  r0.w = r0.w * r1.z;
  o0.xyz = r0.xyz * r0.www;
  r0.x = saturate(cb0[96].x);
  o0.w = r0.w * r0.x;
  return;
}