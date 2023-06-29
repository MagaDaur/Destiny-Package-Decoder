// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:35 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[110];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v3.xy + v3.zw;
  r0.x = t2.Sample(s2_s, r0.xy).y;
  r0.x = -0.5 + r0.x;
  r0.yz = float2(-0.5,-0.5) + v0.xy;
  r0.y = dot(abs(r0.yz), abs(r0.yz));
  r0.x = r0.x * cb0[11].x + r0.y;
  r0.x = v5.z + r0.x;
  r0.x = saturate(v5.y * abs(r0.x) + v5.x);
  r0.x = log2(r0.x);
  r0.x = cb0[109].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = min(1, r0.x);
  r0.x = saturate(v8.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(cb8[7].xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.x = r0.x * r0.y;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r1.xy = cb12[12].zw * v9.xy;
  r0.y = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s3_s, r1.xy, 0).w;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r1.zw = float2(0,0);
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(r0.y + r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.yz = v0.xy * float2(1,0.5) + float2(0,0.5);
  r0.y = t0.Sample(s1_s, r0.yz).x;
  r0.z = 1 + -r0.y;
  r1.xyz = cb0[99].xyz * r0.yyy;
  r0.yzw = r0.zzz * cb0[98].xyz + r1.xyz;
  r1.xy = v0.xy * v4.xy + v4.zw;
  r1.x = t1.Sample(s2_s, r1.xy).x;
  r1.x = 3 * r1.x;
  r1.x = max(cb0[102].x, r1.x);
  r1.x = min(cb0[103].x, r1.x);
  r0.yzw = r0.yzw * r1.xxx + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v8.yyy * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  r0.y = saturate(cb0[96].x);
  o0.w = r0.x * r0.y;
  return;
}