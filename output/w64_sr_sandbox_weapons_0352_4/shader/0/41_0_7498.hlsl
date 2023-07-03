// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:19 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[41];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t1.Sample(s1_s, v3.xy).x;
  r0.yzw = t0.Sample(s1_s, v3.xy).xyz;
  r1.xyz = r0.xxx * cb0[0].xyz + r0.yzw;
  r2.xyz = cb0[0].xyz * r0.xxx;
  r0.x = max(r1.y, r1.z);
  r0.x = max(r1.x, r0.x);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r1.xyz = r0.yzw * r0.xxx + r2.xyz;
  r0.x = dot(r0.yzw, float3(0.300000012,0.589999974,0.109999999));
  r0.x = max(9.99999975e-005, r0.x);
  r0.x = log2(r0.x);
  r0.x = -cb0[38].x * r0.x;
  r0.x = exp2(r0.x);
  r0.y = max(r1.y, r1.z);
  r0.y = max(r1.x, r0.y);
  r0.y = max(1, r0.y);
  o0.xyz = r1.xyz / r0.yyy;
  o0.w = 0;
  r0.yzw = t2.Sample(s1_s, v3.xy).xyz;
  r0.yz = r0.yz * cb0[1].xx + cb0[1].yy;
  r0.w = saturate(cb0[1].z + r0.w);
  r1.x = dot(r0.yz, r0.yz);
  r1.x = 1 + -r1.x;
  r1.x = max(0, r1.x);
  r1.x = sqrt(r1.x);
  r1.yzw = v2.xyz * r0.zzz;
  r1.yzw = v1.xyz * r0.yyy + r1.yzw;
  r1.xyz = v0.xyz * r1.xxx + r1.yzw;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r0.yz = t3.Sample(s1_s, v3.xy).yx;
  r0.y = saturate(r0.y);
  o2.x = r0.z;
  r0.y = min(r0.y, r0.w);
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.yyy + float3(0.5,0.5,0.5));
  o1.w = 0;
  r0.y = max(r2.y, r2.z);
  r0.y = max(r2.x, r0.y);
  r0.z = dot(v0.xyz, v0.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = v0.xyz * r0.zzz;
  r0.z = dot(cb0[34].xyz, r1.xyz);
  r0.w = cb0[33].x + -cb0[32].x;
  r0.z = saturate(r0.z * r0.w + cb0[32].x);
  r0.w = v1.w * 0.5 + 0.5;
  r0.w = saturate(cb0[35].y * r0.w + cb0[35].x);
  r0.w = log2(r0.w);
  r0.w = cb0[36].x * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.z * r0.w;
  r1.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * cb0[31].x + cb0[31].y);
  r0.z = r0.w * r0.z;
  r0.z = saturate(cb0[37].x * r0.z);
  r0.x = r0.x * r0.z;
  r0.x = r0.x * cb0[40].x + r0.y;
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r0.x = 1 + r0.x;
  o2.y = 0.5 * r0.x;
  r0.x = saturate(cb0[39].x);
  o2.w = v0.w + r0.x;
  o2.z = 0;
  return;
}