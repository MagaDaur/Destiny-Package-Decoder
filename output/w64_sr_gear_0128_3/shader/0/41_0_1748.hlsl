// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[21];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[13].x * 0.75;
  r0.x = max(0, r0.x);
  r0.yzw = -cb12[14].xyz + v4.xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.x = r0.y + -r0.x;
  r0.x = saturate(1.99999995e-005 * r0.x);
  r1.x = sqrt(r0.x);
  r0.x = r0.w / r0.y;
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r2.z = sqrt(r0.y);
  r1.y = r0.x * 0.5 + 0.5;
  r0.xyz = t15.SampleLevel(s2_s, r1.xy, 0).xyz;
  r0.x = dot(r0.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.y = t5.Sample(s3_s, v3.xy).x;
  r0.z = cb0[14].z + v3.y;
  r0.z = saturate(cb0[14].y * abs(r0.z) + cb0[14].x);
  r0.y = r0.y + -r0.z;
  r0.y = cb0[15].x * r0.y + r0.z;
  r0.zw = v3.xy * cb0[16].xy + cb0[16].zw;
  r0.z = t6.Sample(s4_s, r0.zw).x;
  r0.y = r0.y * r0.z;
  r0.y = 4.59479332 * r0.y;
  r1.xyzw = cb0[17].xyzw * r0.yyyy;
  r0.yzw = cb12[14].xyz + -v4.xyz;
  r0.y = dot(r0.yzw, cb12[6].xyz);
  r3.zw = float2(0,0);
  r2.xy = cb12[12].zw * v6.xy;
  r0.zw = cb12[12].xy * r2.xy;
  r3.xy = (int2)r0.zw;
  r0.z = t4.Load(r3.xyz).x;
  r0.z = r0.z * cb0[5].y + cb0[5].x;
  r0.z = 1 / r0.z;
  r0.y = r0.z + -abs(r0.y);
  r0.y = saturate(r0.y * cb0[18].x + cb0[18].y);
  r1.xyzw = r1.xyzw * r0.yyyy;
  r0.y = cb0[20].x * r1.w;
  r1.xyz = cb0[19].xxx * r1.xyz;
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r0.x = r0.y * r0.x;
  r0.y = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r0.z = t20.SampleLevel(s1_s, r2.xy, 0).w;
  r0.z = -1 + r0.z;
  r0.y = r0.y * r0.z + 1;
  r0.x = r0.x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  r0.y = saturate(cb0[8].x);
  o0.w = r0.x * r0.y;
  return;
}