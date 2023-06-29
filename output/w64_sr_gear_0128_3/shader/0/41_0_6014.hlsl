// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float4 cb0[13];
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

  r0.x = cb0[10].x * 0.75;
  r0.x = max(0, r0.x);
  r0.yzw = -cb12[14].xyz + v4.xyz;
  r0.y = dot(r0.yzw, r0.yzw);
  r0.y = sqrt(r0.y);
  r0.x = r0.y + -r0.x;
  r0.x = saturate(1.99999995e-005 * r0.x);
  r1.x = sqrt(r0.x);
  r0.x = r0.w / r0.y;
  r1.y = r0.x * 0.5 + 0.5;
  r1.xyzw = t15.SampleLevel(s3_s, r1.xy, 0).xyzw;
  r0.x = r1.w * cb0[9].x + -r1.w;
  r0.z = saturate(r0.y * cb0[6].x + cb0[6].y);
  r0.y = 0.015625 * r0.y;
  r0.y = min(1, r0.y);
  r2.z = sqrt(r0.y);
  r2.xy = cb12[12].zw * v6.xy;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * r3.xyzw + r4.xyzw;
  r0.x = r3.w * r0.x + r3.w;
  r0.y = cb13[1].x * cb0[8].x;
  r0.x = r0.y * r0.x;
  r0.y = -r0.y * r1.w + r0.y;
  r0.yzw = r3.xyz * r0.yyy;
  r0.xyz = cb0[7].xyz * r0.xxx + r0.yzw;
  r0.w = t21.SampleLevel(s1_s, r2.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s1_s, r2.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + float4(0,0,0,1);
  r3.xyz = cb0[12].xxx * cb0[11].xyz;
  r3.xyz = cb13[1].www * r3.xyz;
  r3.xyz = cb13[1].xxx * r3.xyz;
  r1.xyz = r3.xyz * r1.xyz;
  r1.xyz = r1.xyz * r2.www + r2.xyz;
  r0.xyz = r1.xyz + r0.xyz;
  o0.xyz = v5.xxx * r0.xyz;
  o0.w = v5.x;
  return;
}