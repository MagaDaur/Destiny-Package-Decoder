// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:43 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t3 : register(t3);

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

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[35];
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

  r0.xy = v3.xy * cb0[18].xy + cb0[18].zw;
  r0.x = t1.Sample(s3_s, r0.xy).x;
  r0.yz = v3.xy * cb0[19].xy + cb0[19].zw;
  r0.y = t2.Sample(s3_s, r0.yz).x;
  r0.x = r0.x + r0.y;
  r1.xyzw = cb0[22].xxxx * cb0[21].xyzw;
  r1.xyzw = cb0[20].xyzw * r1.xyzw;
  r0.xyzw = r1.xyzw * r0.xxxx;
  r1.x = v7.x ? 1 : -1;
  r1.xyz = v0.xyz * r1.xxx;
  r2.xyz = cb12[14].xyz + -v4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = r2.xyz * r1.www;
  r1.w = dot(r2.xyz, cb12[6].xyz);
  r1.x = dot(r3.xyz, r1.xyz);
  r1.x = r1.x * r1.x;
  r1.x = saturate(r1.x * cb0[15].x + cb0[15].y);
  r2.xyzw = cb0[17].xyzw * r1.xxxx + cb0[16].xyzw;
  r0.xyzw = r2.xyzw * r0.xyzw;
  r2.zw = float2(0,0);
  r1.xy = cb12[12].zw * v6.xy;
  r3.xy = cb12[12].xy * r1.xy;
  r2.xy = (int2)r3.xy;
  r2.x = t0.Load(r2.xyz).x;
  r2.x = r2.x * cb0[5].y + cb0[5].x;
  r2.x = 1 / r2.x;
  r1.w = r2.x + -abs(r1.w);
  r1.w = saturate(r1.w * cb0[23].x + cb0[23].y);
  r1.w = log2(r1.w);
  r1.w = cb0[24].x * r1.w;
  r2.x = exp2(r1.w);
  r2.y = 0;
  r2.xyzw = t3.Sample(s4_s, r2.xy).xyzw;
  r3.xyzw = cb0[25].xyzw * cb0[21].xyzw;
  r2.xyzw = r3.xyzw * r2.xyzw;
  r2.xyzw = r2.xyzw * r0.xyzw;
  r0.xyzw = cb0[14].xxxx * r0.xyzw + r2.xyzw;
  r1.w = cb0[29].z + v3.y;
  r1.w = saturate(cb0[29].y * abs(r1.w) + cb0[29].x);
  r1.w = cb0[30].x * r1.w;
  r2.x = cb0[27].z + v3.y;
  r2.x = saturate(cb0[27].y * abs(r2.x) + cb0[27].x);
  r1.w = r2.x * cb0[28].x + r1.w;
  r0.xyzw = cb0[26].xyzw * r1.wwww + r0.xyzw;
  r1.w = cb0[13].z + v3.y;
  r1.w = saturate(cb0[13].y * abs(r1.w) + cb0[13].x);
  r0.xyzw = r1.wwww * r0.xyzw;
  r0.xyzw = max(cb0[31].xxxx, r0.xyzw);
  r0.xyzw = min(cb0[32].xxxx, r0.xyzw);
  r0.xyz = cb0[33].xxx * r0.xyz;
  r0.w = cb0[34].x * r0.w;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r1.w = cb0[12].x * 0.75;
  r1.w = max(0, r1.w);
  r2.xyz = -cb12[14].xyz + v4.xyz;
  r2.x = dot(r2.xyz, r2.xyz);
  r2.x = sqrt(r2.x);
  r1.w = r2.x + -r1.w;
  r1.w = saturate(1.99999995e-005 * r1.w);
  r3.x = sqrt(r1.w);
  r1.w = r2.z / r2.x;
  r2.x = 0.015625 * r2.x;
  r2.x = min(1, r2.x);
  r1.z = sqrt(r2.x);
  r1.z = t21.SampleLevel(s1_s, r1.xyz, 0).x;
  r1.x = t20.SampleLevel(s1_s, r1.xy, 0).w;
  r1.x = -1 + r1.x;
  r1.x = r1.z * r1.x + 1;
  r0.w = r1.x * r0.w;
  r3.y = r1.w * 0.5 + 0.5;
  r1.xyz = t15.SampleLevel(s2_s, r3.xy, 0).xyz;
  r0.xyz = r1.xyz * r0.xyz;
  o0.xyz = r0.xyz * r0.www;
  o0.w = 0;
  return;
}