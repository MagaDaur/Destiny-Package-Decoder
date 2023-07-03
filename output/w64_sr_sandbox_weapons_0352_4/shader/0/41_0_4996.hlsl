// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:29 2023
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float2 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v4.xy;
  r0.xy = cb12[12].xy * r0.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r0.x = t0.Load(r0.xyz).y;
  r0.x = -v0.w + r0.x;
  r0.x = saturate(0.5 * r0.x);
  r0.x = 1 + -r0.x;
  r0.x = 1 + -r0.x;
  r0.yz = v0.xy * float2(-1,1) + float2(-0.600000024,0);
  r0.y = t2.Sample(s1_s, r0.yz).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.y = saturate(v3.x * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r0.yz = float2(-1,0.125) * v0.xy;
  r0.yz = t1.Sample(s1_s, r0.yz).xy;
  r1.xyzw = float4(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzyz;
  r1.xyzw = float4(1.00000024,1.00000024,1.00000024,1.00000024) * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r1.xyzw = v3.yyyy * r1.xyzw;
  r0.xyzw = r1.xyzw * r0.xxxx;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}