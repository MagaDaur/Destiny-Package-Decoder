// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:22 2023
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
  float2 v7 : TEXCOORD7,
  float4 v8 : SV_POSITION0,
  uint v9 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = r0.z * r0.z;
  r0.z = cb0[13].z * r0.z;
  r0.xy = r0.xy * r0.zz + v0.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.z = dot(float2(0.912691593,0.408649087), r0.xy);
  r0.x = dot(float2(-0.408649087,0.912691593), r0.xy);
  r0.y = 0.5 + r0.x;
  r0.x = 0.5 + r0.z;
  r0.x = t2.Sample(s1_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.y = 1 / cb0[109].x;
  r0.x = r0.y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = saturate(r0.x * v7.x + v6.w);
  r0.x = saturate(v0.z * r0.x);
  r0.yz = cb12[12].zw * v8.xy;
  r0.yz = cb12[12].xy * r0.yz;
  r1.xy = (int2)r0.yz;
  r1.zw = float2(0,0);
  r0.y = t0.Load(r1.xyz).y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(4 * r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.yz = v0.xy * v3.xy + v3.zw;
  r0.yz = t1.Sample(s1_s, r0.yz).xy;
  r1.xyzw = float4(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzyz;
  r1.xyzw = float4(1.00000024,1.00000024,1.00000024,1.00000024) * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = v4.xyxy * r1.xyzw;
  r1.xyzw = v7.yyyy * r1.xyzw;
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r1.xyzw = float4(0.150000006,0.150000006,0.150000006,0.150000006) * r1.xyzw;
  r0.xyzw = r1.xyzw * r0.xxxx;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}