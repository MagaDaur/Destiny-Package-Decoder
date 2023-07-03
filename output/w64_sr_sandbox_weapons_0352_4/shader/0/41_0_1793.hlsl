// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[33];
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

  r0.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = v7.x ? 1 : -1;
  r1.xyz = v0.xyz * r0.www;
  r0.x = dot(r0.xyz, r1.xyz);
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[14].x + cb0[14].y);
  r0.xyzw = cb0[16].xyzw * r0.xxxx + cb0[15].xyzw;
  r1.xy = v3.xy * cb0[17].xy + cb0[17].zw;
  r1.x = t0.Sample(s3_s, r1.xy).x;
  r1.yz = v3.xy * cb0[18].xy + cb0[18].zw;
  r1.y = t1.Sample(s3_s, r1.yz).x;
  r1.x = r1.x + r1.y;
  r2.xyzw = cb0[21].xxxx * cb0[20].xyzw;
  r2.xyzw = cb0[19].xyzw * r2.xyzw;
  r1.xyzw = r2.xyzw * r1.xxxx;
  r0.xyzw = r1.xyzw * r0.xyzw;
  r1.x = saturate(cb0[22].x * 10000 + cb0[22].y);
  r1.x = log2(r1.x);
  r1.x = cb0[23].x * r1.x;
  r1.x = exp2(r1.x);
  r1.y = 0;
  r1.xyzw = t2.Sample(s4_s, r1.xy).xyzw;
  r2.xyzw = cb0[24].xyzw * cb0[20].xyzw;
  r1.xyzw = r2.xyzw * r1.xyzw;
  r1.xyzw = r1.xyzw * r0.xyzw;
  r0.xyzw = cb0[13].xxxx * r0.xyzw + r1.xyzw;
  r1.x = cb0[28].z + v3.y;
  r1.x = saturate(cb0[28].y * abs(r1.x) + cb0[28].x);
  r1.x = cb0[29].x * r1.x;
  r1.y = cb0[26].z + v3.y;
  r1.y = saturate(cb0[26].y * abs(r1.y) + cb0[26].x);
  r1.x = r1.y * cb0[27].x + r1.x;
  r0.xyzw = cb0[25].xyzw * r1.xxxx + r0.xyzw;
  r1.x = cb0[12].z + v3.y;
  r1.x = saturate(cb0[12].y * abs(r1.x) + cb0[12].x);
  r0.xyzw = r1.xxxx * r0.xyzw;
  r0.xyzw = max(cb0[30].xxxx, r0.xyzw);
  r0.xyzw = min(cb0[31].xxxx, r0.xyzw);
  r0.xyz = cb0[32].xxx * r0.xyz;
  r1.x = cb0[11].x * 0.75;
  r1.x = max(0, r1.x);
  r1.yzw = -cb12[7].xyz + v4.xyz;
  r1.y = dot(r1.yzw, r1.yzw);
  r1.y = sqrt(r1.y);
  r1.x = r1.y + -r1.x;
  r1.x = saturate(1.99999995e-005 * r1.x);
  r2.x = sqrt(r1.x);
  r1.x = r1.w / r1.y;
  r1.y = 0.015625 * r1.y;
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r2.y = r1.x * 0.5 + 0.5;
  r1.xyz = t15.SampleLevel(s2_s, r2.xy, 0).xyz;
  r0.xyz = r1.xyz * r0.xyz;
  r1.xy = cb12[12].zw * v6.xy;
  r3.xy = float2(4,4) * r1.xy;
  r1.x = t21.SampleLevel(s1_s, r3.xyz, 0).x;
  r1.y = t20.SampleLevel(s1_s, r3.xy, 0).w;
  r1.y = -1 + r1.y;
  r1.x = r1.x * r1.y + 1;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}