// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.x = 0.015625 * r0.x;
  r0.x = min(1, r0.x);
  r0.z = sqrt(r0.x);
  r0.xy = cb12[12].zw * v6.xy;
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r0.w = t20.SampleLevel(s1_s, r0.xy, 0).w;
  r0.xy = cb12[12].xy * r0.xy;
  r1.xy = (int2)r0.xy;
  r0.x = -1 + r0.w;
  r0.x = r0.z * r0.x + 1;
  r0.y = t1.Sample(s2_s, v0.xy).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.z = saturate(v5.w * r0.y);
  r0.yw = r0.yy * float2(0.300000012,-0.800000012) + float2(0.5,0.800000012);
  r0.z = saturate(v0.z * r0.z);
  r0.x = r0.z * r0.x;
  r1.zw = float2(0,0);
  r0.z = t10.Load(r1.xyz).x;
  r0.z = r0.z * cb2[0].y + cb2[0].x;
  r0.z = 1 / r0.z;
  r0.w = r0.w * v5.z + v0.w;
  r0.y = v5.z * r0.y;
  r0.z = r0.z + -r0.w;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.yz = float2(-0.5,-0.5) + v0.xy;
  r0.w = dot(r0.yz, r0.yz);
  r0.w = r0.w * r0.w;
  r0.w = -28 * r0.w;
  r0.yz = r0.yz * r0.ww + v0.xy;
  r1.y = v5.x;
  r1.x = v4.w;
  r1.xy = r1.xy + r0.zy;
  r1.zw = round(r1.xy);
  r1.xy = r1.xy + -r1.zw;
  r1.zw = abs(r1.xy) * float2(-16,-16) + float2(8,8);
  r1.xy = r1.xy * r1.zw;
  r1.zw = abs(r1.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r1.xy = r1.xy * r1.zw;
  r0.yz = r1.xy * float2(0.100000001,0.100000001) + r0.yz;
  r0.yz = r0.yz * v3.xy + v3.zw;
  r0.yzw = t0.Sample(s2_s, r0.yz).xyz;
  r1.x = max(0.00100000005, v5.y);
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r0.yzw = -r1.xxx + r0.yzw;
  r1.x = 1 + -r1.x;
  r1.x = max(9.99999975e-006, r1.x);
  r0.yzw = r0.yzw / r1.xxx;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r1.x = 1;
  r1.yz = w1.xw;
  r0.yzw = r1.xyz * r0.yzw;
  r1.x = w1.x;
  r1.yz = cb13[1].ww;
  r0.yzw = r1.xyz * r0.yzw;
  r0.yzw = cb13[1].wxx * r0.yzw;
  r0.y = cb13[1].x * r0.y;
  r0.zw = cb8[7].yz * r0.zw;
  r1.yz = float2(0.288691998,0.0733409971) * r0.zw;
  r1.x = cb8[7].x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}