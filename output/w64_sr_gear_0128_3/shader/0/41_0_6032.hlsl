// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
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
  float4 cb12[13];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[17];
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(cb0[12].xy, v3.xy);
  r0.x = cb0[12].z + r0.x;
  r0.z = dot(cb0[13].xy, v3.xy);
  r0.y = cb0[13].z + r0.z;
  r0.xyz = t6.Sample(s4_s, r0.xy).xyz;
  r0.xyz = r0.xyz * cb0[14].xxx + cb0[14].yyy;
  r1.xy = v3.xy * cb0[10].xy + cb0[10].zw;
  r1.xyz = t5.Sample(s4_s, r1.xy).xyz;
  r2.xy = v3.xy * cb0[11].xy + cb0[11].zw;
  r2.xyz = t5.Sample(s4_s, r2.xy).xyz;
  r1.xyz = r2.xyz + r1.xyz;
  r0.xyz = r1.xyz + -r0.xyz;
  r0.w = 1 + -v5.x;
  r0.xyz = saturate(r0.xyz + -r0.www);
  r0.yzw = cb0[15].xyz * r0.xyz;
  r0.x = v5.x * r0.x;
  r0.yzw = cb0[16].xxx * r0.yzw;
  r1.x = cb0[9].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[7].xyz + v4.xyz;
  r2.x = dot(r1.yzw, r1.yzw);
  r2.y = sqrt(r2.x);
  r2.x = rsqrt(r2.x);
  r1.x = r2.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r3.x = sqrt(r1.x);
  r1.x = r1.w / r2.y;
  r2.y = 0.015625 * r2.y;
  r2.y = min(1, r2.y);
  r4.z = sqrt(r2.y);
  r3.y = r1.x * 0.5 + 0.5;
  r3.xyzw = t15.SampleLevel(s3_s, r3.xy, 0).xyzw;
  r0.yzw = r3.xyz * r0.yzw;
  r2.yz = cb12[12].zw * v6.xy;
  r4.xy = float2(4,4) * r2.yz;
  r1.x = t21.SampleLevel(s1_s, r4.xyz, 0).x;
  r4.xyzw = t20.SampleLevel(s1_s, r4.xy, 0).xyzw;
  r4.xyzw = float4(-0,-0,-0,-1) + r4.xyzw;
  r4.xyzw = r1.xxxx * r4.xyzw + float4(0,0,0,1);
  r0.yzw = r0.yzw * r4.www + r4.xyz;
  r4.w = r1.w * r2.x + 1;
  r4.xy = r2.xx * r1.yz;
  r1.x = dot(r4.xyw, r4.xyw);
  r1.x = rsqrt(r1.x);
  r1.xy = r4.xy * r1.xx;
  r1.xy = r1.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r1.xyz = t4.Sample(s2_s, r1.xy).xyz;
  r1.w = cb13[1].x * cb0[7].x;
  r1.w = -r1.w * r3.w + r1.w;
  r0.yzw = r1.xyz * r1.www + r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}