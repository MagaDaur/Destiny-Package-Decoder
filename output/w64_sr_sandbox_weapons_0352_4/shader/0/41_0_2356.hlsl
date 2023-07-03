// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
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
  float4 cb0[123];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD4,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : SV_POSITION0,
  uint v5 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = max(0.00100000005, v3.y);
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = 1 + -r0.x;
  r0.y = max(9.99999975e-006, r0.y);
  r0.zw = v0.xy * cb0[8].xy + cb0[8].zw;
  r0.z = t0.Sample(s3_s, r0.zw).x;
  r1.x = 0.5 * v3.z;
  r2.zw = float2(0,0);
  r3.xy = cb12[12].zw * v4.xy;
  r1.yz = cb12[12].xy * r3.xy;
  r2.xy = (int2)r1.yz;
  r1.y = t10.Load(r2.xyz).x;
  r1.y = r1.y * cb2[0].y + cb2[0].x;
  r1.y = 1 / r1.y;
  r1.y = -v0.w + r1.y;
  r1.x = saturate(r1.y / r1.x);
  r1.x = 1 + -r1.x;
  r0.w = v3.x + r1.x;
  r1.x = 1 + -r1.x;
  r1.yzw = t1.Sample(s4_s, r0.zw).xyz;
  r0.xzw = r1.yzw + -r0.xxx;
  r0.xyz = r0.xzw / r0.yyy;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r2.x = 1;
  r2.yz = w1.xw;
  r0.xyz = r2.xyz * r0.xyz;
  r2.x = w1.x;
  r2.yz = cb13[1].ww;
  r0.xyz = r2.xyz * r0.xyz;
  r0.xyz = cb13[1].wxx * r0.xyz;
  r0.yz = cb8[7].yz * r0.yz;
  r0.x = cb13[1].x * r0.x;
  r2.x = cb8[7].x * r0.x;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.w = 0.015625 * r0.x;
  r0.x = saturate(r0.x * cb0[108].x + cb0[108].y);
  r0.w = min(1, r0.w);
  r3.z = sqrt(r0.w);
  r0.w = t21.SampleLevel(s2_s, r3.xyz, 0).x;
  r4.xyzw = t20.SampleLevel(s2_s, r3.xy, 0).xyzw;
  r4.xyzw = float4(-0,-0,-0,-1) + r4.xyzw;
  r4.xyzw = r0.wwww * r4.xyzw + float4(0,0,0,1);
  r2.yz = r4.ww * r0.yz;
  r5.yz = float2(0.0693999976,0.00999999978);
  r5.x = r4.w;
  r0.yzw = r2.xyz * r5.xyz + r4.xyz;
  r2.xyzw = t11.Sample(s1_s, r3.xy).xyzw;
  r3.xyzw = t13.Sample(s1_s, r3.xy).xyzw;
  r2.xyzw = -r3.xyzw + r2.xyzw;
  r2.xyzw = r0.xxxx * r2.xyzw + r3.xyzw;
  r1.yzw = cb8[5].xyz * r2.xyz;
  r1.yzw = r2.www * cb8[6].xyz + r1.yzw;
  r0.xyz = r1.yzw * cb13[1].xxx + r0.yzw;
  r1.yz = v0.xy * cb0[9].xy + cb0[9].zw;
  r1.yz = t3.Sample(s3_s, r1.yz).xy;
  r1.yz = r1.yz * float2(0.25,0.25) + v0.xy;
  r1.yz = float2(-0.125,-0.125) + r1.yz;
  r0.w = t2.Sample(s3_s, r1.yz).x;
  r0.w = log2(r0.w);
  r1.y = 1 / cb0[122].x;
  r0.w = r1.y * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(v3.w * r0.w);
  r0.w = saturate(v0.z * r0.w);
  r0.w = r0.w * r1.x;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}