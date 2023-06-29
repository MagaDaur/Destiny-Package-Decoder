// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:39 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

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
  float4 cb0[104];
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
  float2 v7 : TEXCOORD7,
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.zw = float2(0,0);
  r1.xy = cb12[12].zw * v8.xy;
  r2.xy = cb12[12].xy * r1.xy;
  r0.xy = (int2)r2.xy;
  r0.x = t10.Load(r0.xyz).x;
  r0.x = r0.x * cb2[0].y + cb2[0].x;
  r0.x = 1 / r0.x;
  r0.x = -v0.w + r0.x;
  r0.x = saturate(3.6101079 * r0.x);
  r0.y = t1.Sample(s1_s, v0.xy).x;
  r0.x = r0.y * r0.x;
  r0.y = t2.Sample(s1_s, v0.xy).x;
  r0.y = -cb0[103].x + r0.y;
  r0.x = r0.x * r0.y;
  r0.x = saturate(v7.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r1.z = sqrt(r0.y);
  r0.y = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r0.z = t20.SampleLevel(s2_s, r1.xy, 0).w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  r0.yz = v0.yx * v4.yx + v4.wz;
  r1.xy = round(r0.yz);
  r0.yz = -r1.xy + r0.yz;
  r1.xy = abs(r0.yz) * float2(-16,-16) + float2(8,8);
  r0.yz = r1.xy * r0.yz;
  r1.xy = abs(r0.yz) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.yz = r1.xy * r0.yz;
  r0.yz = r0.yz * float2(-0.100000001,-0.150000006) + v0.xy;
  r0.yz = r0.yz * v3.xy + v3.zw;
  r0.yzw = t0.Sample(s1_s, r0.yz).xyz;
  r0.yzw = saturate(r0.yzw * v5.xxx + v5.yyy);
  r0.yzw = cb0[96].xyz * r0.yzw + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v7.yyy * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}