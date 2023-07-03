// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:23 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s4_s : register(s4);

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
  float4 cb0[109];
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
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : SV_POSITION0,
  uint v11 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = max(0.00100000005, v8.w);
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.y = max(9.99999975e-006, r0.y);
  r0.zw = v0.xy * v3.xy + v3.zw;
  r0.z = t0.Sample(s3_s, r0.zw).x;
  r1.x = 0.300000012 * v9.x;
  r2.zw = float2(0,0);
  r3.xy = cb12[12].zw * v10.xy;
  r1.yz = cb12[12].xy * r3.xy;
  r2.xy = (int2)r1.yz;
  r1.y = t10.Load(r2.xyz).x;
  r1.y = r1.y * cb2[0].y + cb2[0].x;
  r1.y = 1 / r1.y;
  r1.y = -v0.w + r1.y;
  r1.x = saturate(r1.y / r1.x);
  r1.x = 1 + -r1.x;
  r0.w = v8.z + r1.x;
  r1.x = 1 + -r1.x;
  r1.yzw = t1.Sample(s4_s, r0.zw).xyz;
  r0.xzw = r1.yzw + -r0.xxx;
  r0.xyz = r0.xzw / r0.yyy;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = v5.xyz * r0.xyz;
  r0.xyz = v9.www * r0.xyz;
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.y = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[108].x + cb0[108].y);
  r1.y = min(1, r1.y);
  r3.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s2_s, r3.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s2_s, r3.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.yyyy * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r2.xyzw = t11.Sample(s1_s, r3.xy).xyzw;
  r3.xyzw = t13.Sample(s1_s, r3.xy).xyzw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r2.xyzw = r0.wwww * r2.xyzw + r3.xyzw;
  r1.yzw = cb8[5].xyz * r2.xyz;
  r1.yzw = r2.www * cb8[6].xyz + r1.yzw;
  r0.xyz = r1.yzw * cb13[1].xxx + r0.xyz;
  r1.yz = v0.xy * v4.xy + v4.zw;
  r1.yz = t3.Sample(s3_s, r1.yz).xy;
  r1.yz = r1.yz * v8.yy + v0.xy;
  r1.yz = v8.yy * float2(-0.5,-0.5) + r1.yz;
  r0.w = t2.Sample(s3_s, r1.yz).x;
  r0.w = saturate(r0.w * v9.z + v9.y);
  r0.w = saturate(v0.z * r0.w);
  r0.w = r0.w * r1.x;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}