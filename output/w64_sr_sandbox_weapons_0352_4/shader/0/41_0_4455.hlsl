// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:31 2023
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
  float4 cb0[107];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v3.xy;
  r0.xy = cb12[12].xy * r0.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r0.x = t0.Load(r0.xyz).y;
  r0.y = t2.Sample(s1_s, v0.xy).x;
  r0.y = log2(r0.y);
  r0.y = 2.20000005 * r0.y;
  r0.y = exp2(r0.y);
  r0.z = r0.y * 0.123500004 + v0.w;
  r0.z = 0.0785000026 + r0.z;
  r0.x = r0.x + -r0.z;
  r0.z = r0.y * 0.461100012 + 0.325899988;
  r0.y = saturate(w1.x * r0.y);
  r1.z = saturate(v0.z * r0.y);
  r0.x = saturate(r0.x / r0.z);
  r0.x = 1 + -r0.x;
  r0.y = dot(v1.xyz, v1.xyz);
  r0.y = rsqrt(r0.y);
  r0.yzw = v1.xyz * r0.yyy;
  r1.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r1.w);
  r2.xyz = v2.xyz * r1.www;
  r0.y = dot(r2.xyz, r0.yzw);
  r0.y = min(1, abs(r0.y));
  r0.xy = float2(1,1) + -r0.xy;
  r0.y = log2(r0.y);
  r0.y = cb0[105].x * r0.y;
  r0.y = exp2(r0.y);
  r0.z = 1 + -r0.y;
  r0.y = cb0[106].x * r0.z + r0.y;
  r0.y = 1 + -r0.y;
  r0.y = saturate(r0.y * -5.52638912 + 4.2884779);
  r0.yzw = cb0[102].xyw + -r0.yyy;
  r2.xy = v0.xy * cb0[10].xy + cb0[10].zw;
  r2.xy = t1.Sample(s1_s, r2.xy).xy;
  r2.xy = float2(-2.51188652e-007,-2.51188652e-007) + r2.xy;
  r2.xy = float2(1.00000024,1.00000024) * r2.xy;
  r2.xy = max(float2(0,0), r2.xy);
  r2.xy = r2.xy * float2(2,2) + float2(-1,-1);
  r1.xy = float2(0.0799999982,0.0799999982) * r2.xy;
  r0.yzw = r1.xyz * r0.yzw;
  r0.x = r0.w * r0.x;
  r0.xyzw = r0.yzyz * r0.xxxx;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}