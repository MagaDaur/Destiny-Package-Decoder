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
  float4 cb0[119];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD12,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  float4 v11 : TEXCOORD11,
  float4 v12 : SV_POSITION0,
  uint v13 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v5.xy + v5.zw;
  r0.xy = t3.Sample(s2_s, r0.xy).xy;
  r0.xy = r0.xy * v10.yy + v0.xy;
  r0.xy = -v10.yy + r0.xy;
  r0.xy = r0.xy * v4.xy + v4.zw;
  r0.z = cb0[118].x * v10.w;
  r0.z = floor(r0.z);
  r0.zw = cb0[115].xy * r0.zz;
  r0.xy = r0.xy * cb0[114].xy + r0.zw;
  r0.x = t2.Sample(s2_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = t4.Sample(s2_s, v0.xy).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.x = r0.x * r0.y;
  r0.y = saturate(r0.x * v11.w + v11.z);
  r0.xz = r0.xx * float2(-0.75,-0.150000006) + float2(1,0.150000006);
  r0.y = saturate(v0.z * r0.y);
  r0.w = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.y = r0.y * r0.w;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r1.z = sqrt(r0.w);
  r1.xy = cb12[12].zw * v12.xy;
  r0.w = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.z = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r2.xy = (int2)r1.xy;
  r1.x = -1 + r1.z;
  r0.w = r0.w * r1.x + 1;
  r0.y = r0.y * r0.w;
  r2.zw = float2(0,0);
  r0.w = t10.Load(r2.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.z = r0.z * v11.y + v0.w;
  r0.x = v11.y * r0.x;
  r0.z = r0.w + -r0.z;
  r0.x = saturate(r0.z / r0.x);
  r1.y = 1 + -r0.x;
  r0.x = 1 + -r1.y;
  r0.x = r0.y * r0.x;
  r0.yz = v0.xy * v3.xy + v3.zw;
  r1.x = t0.Sample(s2_s, r0.yz).x;
  r0.yzw = t1.Sample(s3_s, r1.xy).xyz;
  r1.x = max(0.00100000005, v11.x);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.yzw = -r1.xxx + r0.yzw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.yzw = r0.yzw / r1.xxx;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r1.x = w1.x;
  r1.z = 1;
  r0.yzw = r1.xxz * r0.yzw;
  r1.x = cb13[1].w;
  r1.z = w1.x;
  r0.yzw = r1.xxz * r0.yzw;
  r0.yzw = cb13[1].xxw * r0.yzw;
  r1.xy = float2(0.75,0.81982702);
  r1.z = cb13[1].x;
  r0.yzw = r1.xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  r0.y = saturate(cb0[96].x);
  o0.w = r0.x * r0.y;
  return;
}