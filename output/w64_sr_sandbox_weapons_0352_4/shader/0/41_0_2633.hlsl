// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
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
  float4 cb0[116];
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
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r0.xy = cb12[12].xy * r0.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r0.x = t10.Load(r0.xyz).x;
  r0.x = r0.x * cb2[0].y + cb2[0].x;
  r0.x = 1 / r0.x;
  r0.yz = t2.Sample(s1_s, v0.xy).xy;
  r0.yz = r0.yz * v3.ww + v0.xy;
  r0.yz = v3.ww * float2(-0.5,-0.5) + r0.yz;
  r1.xy = r0.yz * float2(-2,-2) + float2(1,1);
  r1.zw = round(v3.zy);
  r0.yz = r1.zw * r1.xy + r0.yz;
  r0.w = cb0[115].x * v4.y;
  r0.w = floor(r0.w);
  r1.xy = cb0[112].xy * r0.ww;
  r0.yz = r0.yz * cb0[111].xy + r1.xy;
  r0.yz = t0.Sample(s1_s, r0.yz).xw;
  r0.yz = log2(r0.yz);
  r0.yz = float2(2.20000005,2.20000005) * r0.yz;
  r1.xy = exp2(r0.yz);
  r0.yz = r1.yy * float2(-0.25,-0.25) + float2(0.5,0.25);
  r0.z = r0.z * v4.w + v0.w;
  r0.y = v4.w * r0.y;
  r0.x = r0.x + -r0.z;
  r0.x = saturate(r0.x / r0.y);
  r0.x = 1 + -r0.x;
  r1.z = v4.z + r0.x;
  r0.x = 1 + -r0.x;
  r0.yzw = t1.Sample(s2_s, r1.xz).xyz;
  r1.x = saturate(v5.x * r1.y);
  r1.x = saturate(v0.z * r1.x);
  r0.x = r1.x * r0.x;
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v5.yyy * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}