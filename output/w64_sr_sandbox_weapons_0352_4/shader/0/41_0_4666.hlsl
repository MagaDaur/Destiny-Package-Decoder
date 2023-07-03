// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:30 2023
Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[11];
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
  r0.x = t0.Load(r0.xyz).y;
  r0.yz = v0.xy * cb0[10].xy + cb0[10].zw;
  r0.y = t2.Sample(s1_s, r0.yz).x;
  r0.zw = float2(2,1) + -r0.yy;
  r0.w = r0.w * v5.z + v0.w;
  r0.yz = v5.wz * r0.yz;
  r0.x = r0.x + -r0.w;
  r0.x = saturate(r0.x / r0.z);
  r0.x = 1 + -r0.x;
  r0.x = 1 + -r0.x;
  r0.z = -0.5 + v4.z;
  r0.z = saturate(0.200000003 * r0.z);
  r0.y = saturate(r0.y * r0.z);
  r0.y = saturate(v0.z * r0.y);
  r0.x = r0.y * r0.x;
  r0.yz = t1.Sample(s1_s, v0.xy).xy;
  r0.yz = r0.yz * v5.xx + v0.xy;
  r0.yz = v5.xx * float2(-0.5,-0.5) + r0.yz;
  r0.yz = r0.yz * v3.xy + v3.zw;
  r0.yz = t1.Sample(s1_s, r0.yz).xy;
  r1.xyzw = float4(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzyz;
  r1.xyzw = float4(1.00000024,1.00000024,1.00000024,1.00000024) * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * float4(1.80920994,1.883268,1.80920994,1.883268) + float4(-1,-1,-1,-1);
  r1.xyzw = float4(0.0199999996,0.0199999996,0.0199999996,0.0199999996) * r1.xyzw;
  r0.xyzw = r1.xyzw * r0.xxxx;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}