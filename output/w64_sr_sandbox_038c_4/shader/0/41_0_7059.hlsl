// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:57 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb2 : register(b2)
{
  float4 cb2[1];
}

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
  float4 cb0[122];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD5,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[96].xyz + float3(0.151068747,0.381325752,0.592759788);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[115].x + cb0[115].y);
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v5.xy;
  r1.z = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s2_s, r1.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * float3(25,25,25) + r2.xyz;
  r2.xyzw = t11.Sample(s1_s, r1.xy).xyzw;
  r3.xyzw = t13.Sample(s1_s, r1.xy).xyzw;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + r3.xyzw;
  r2.xyz = cb8[5].xyz * r2.xyz;
  r2.xyz = r2.www * cb8[6].xyz + r2.xyz;
  r0.xyz = r2.xyz * cb13[1].xxx + r0.xyz;
  r1.zw = float2(0,0);
  r0.w = t10.Load(r1.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.w = -v0.w + r0.w;
  r1.xy = v0.xy * cb0[8].xy + cb0[8].zw;
  r1.xy = t1.Sample(s3_s, r1.xy).xy;
  r1.xy = r1.xy * v3.ww + v0.xy;
  r1.xy = v3.ww * float2(-0.5,-0.5) + r1.xy;
  r1.z = cb0[121].x * v4.y;
  r1.z = floor(r1.z);
  r1.zw = cb0[118].xy * r1.zz;
  r1.xy = r1.xy * cb0[117].xy + r1.zw;
  r1.x = t0.Sample(s3_s, r1.xy).x;
  r1.x = saturate(r1.x * v3.x + v3.y);
  r1.y = r1.x * -0.187000006 + 0.374000013;
  r1.x = saturate(w1.x * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r0.w = saturate(r0.w / r1.y);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}