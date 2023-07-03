// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:21 2023
Texture2D<float4> t3 : register(t3);

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
  float4 cb0[12];
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

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r1.x = frac(r0.z);
  r1.y = dot(abs(r0.xy), abs(r0.xy));
  r0.zw = r1.xy * cb0[10].xy + cb0[10].zw;
  r0.zw = t1.Sample(s1_s, r0.zw).xy;
  r1.xyzw = float4(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.zwzw;
  r1.xyzw = float4(1.00000024,1.00000024,1.00000024,1.00000024) * r1.xyzw;
  r1.xyzw = max(float4(0,0,0,0), r1.xyzw);
  r1.xyzw = r1.xyzw * float4(2,2,2,2) + float4(-1,-1,-1,-1);
  r1.xyzw = float4(0.75,0.75,0.75,0.75) * r1.xyzw;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = r0.z * r0.z;
  r0.z = -10 * r0.z;
  r0.xy = r0.xy * r0.zz + v0.xy;
  r0.xy = float2(-0.5,-0.5) + r0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r2.xy = cmp(float2(0,0) < r0.xy);
  r2.zw = cmp(r0.xy < float2(0,0));
  r0.y = dot(abs(r0.xy), abs(r0.xy));
  r2.xy = (int2)-r2.xy + (int2)r2.zw;
  r2.xy = (int2)r2.xy;
  r0.z = r0.z * r2.y + 2;
  r0.z = r2.x * r0.z;
  r0.z = 0.125 * r0.z;
  r0.x = frac(r0.z);
  r0.xy = r0.xy * cb0[11].xy + cb0[11].zw;
  r0.x = t2.Sample(s1_s, r0.xy).x;
  r0.y = t3.Sample(s1_s, v0.xy).x;
  r0.x = r0.x * r0.y;
  r0.x = saturate(w1.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.yz = cb12[12].zw * v3.xy;
  r0.yz = cb12[12].xy * r0.yz;
  r2.xy = (int2)r0.yz;
  r2.zw = float2(0,0);
  r0.y = t0.Load(r2.xyz).y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(0.5 * r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.xyzw = r1.xyzw * r0.xxxx;
  o0.xyzw = saturate(float4(1,1,-1,-1) * r0.xyzw);
  return;
}