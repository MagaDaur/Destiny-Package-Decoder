// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t2 : register(t2);

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
  float4 cb0[127];
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
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb13[1].w * v7.y;
  r0.x = cb13[1].x * r0.x;
  r0.x = 0.666000009 * r0.x;
  r0.xyz = cb8[7].xyz * r0.xxx;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[101].x + cb0[101].y);
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v8.xy;
  r1.z = t21.SampleLevel(s2_s, r1.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s2_s, r1.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
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
  r1.x = 0.300000012 * v6.z;
  r0.w = saturate(r0.w / r1.x);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r1.xy = v0.xy * v3.xy + v3.zw;
  r1.zw = t1.Sample(s3_s, r1.xy).xy;
  r1.xy = r1.zw * v5.yy + r1.xy;
  r1.xy = v5.yy * float2(-0.5,-0.5) + r1.xy;
  r1.z = cb0[107].x * v6.y;
  r1.z = floor(r1.z);
  r1.zw = cb0[104].xy * r1.zz;
  r1.xy = r1.xy * cb0[103].xy + r1.zw;
  r1.x = t0.Sample(s3_s, r1.xy).x;
  r1.x = log2(r1.x);
  r1.x = 2.20000005 * r1.x;
  r1.x = exp2(r1.x);
  r2.y = v5.x;
  r2.x = v4.w;
  r1.yz = v0.yx * float2(0.0500000007,0.0500000007) + r2.xy;
  r2.xy = round(r1.yz);
  r1.yz = -r2.xy + r1.yz;
  r2.xy = abs(r1.yz) * float2(-16,-16) + float2(8,8);
  r1.yz = r2.xy * r1.yz;
  r2.xy = abs(r1.yz) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r1.yz = r2.xy * r1.yz;
  r1.yz = r1.yz * float2(0.0500000007,0.0500000007) + v0.xy;
  r1.y = t2.Sample(s3_s, r1.yz).x;
  r1.x = r1.x * r1.y;
  r1.x = log2(r1.x);
  r1.y = 1 / cb0[126].x;
  r1.x = r1.y * r1.x;
  r1.x = exp2(r1.x);
  r1.x = saturate(r1.x * v7.x + v6.w);
  r1.x = saturate(v0.z * r1.x);
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}