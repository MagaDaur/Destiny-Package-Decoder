// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:48 2023
Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * cb0[10].xy + cb0[10].zw;
  r0.xy = t0.Sample(s1_s, r0.xy).xy;
  r0.xy = float2(-0.5,-0.25) + r0.xy;
  r0.xy = r0.xy * cb0[13].xx + v0.yx;
  r0.xy = r0.xy * v3.xy + v3.zw;
  r0.x = t1.Sample(s2_s, r0.xy).x;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[99].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = r0.x * cb0[13].w + cb0[99].x;
  r0.xyzw = cb0[98].xyxy + r0.xxxx;
  r0.xyzw = float4(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyzw;
  r0.xyzw = float4(1.00000024,1.00000024,1.00000024,1.00000024) * r0.xyzw;
  r0.xyzw = max(float4(0,0,0,0), r0.xyzw);
  r0.xyzw = r0.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r1.xy = float2(-0.5,-0.5) + v0.xy;
  r1.xy = saturate(abs(r1.xy) * float2(-1.5625,-1.5625) + float2(1.125,1.125));
  r1.x = r1.x * r1.y;
  r1.x = r1.x * r1.x;
  r1.x = saturate(cb0[14].x * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r0.xyzw = r1.xxxx * r0.xyzw;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}