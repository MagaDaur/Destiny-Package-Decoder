// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

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
  float4 cb0[133];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD3,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.x = dot(r0.xy, r0.xy);
  r0.x = sqrt(r0.x);
  r0.x = r0.x * -2 + 1;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[117].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb0[118].x * r0.x;
  r0.yz = v0.xy * cb0[8].xy + cb0[8].zw;
  r0.yz = t0.Sample(s1_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.yz = r0.yz * cb0[109].xx + v0.xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r0.y = dot(r0.yz, r0.yz);
  r0.y = sqrt(r0.y);
  r0.y = r0.y * -3.33333302 + 1;
  r0.y = max(0, r0.y);
  r0.z = dot(v2.xyz, v2.xyz);
  r0.z = sqrt(r0.z);
  r0.z = saturate(r0.z * -0.0526320003 + 1.05263197);
  r1.xy = v0.xy * cb0[14].xy + cb0[14].zw;
  r1.xy = t0.Sample(s1_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r2.xy = cb12[12].zw * v3.xy;
  r1.zw = r2.xy * float2(70,1) + float2(1,0);
  r1.xy = r1.xy * cb0[99].xx + r1.zw;
  r0.w = r1.y * cb0[13].y + cb0[13].w;
  r1.y = round(r0.w);
  r0.w = -r1.y + r0.w;
  r1.y = abs(r0.w) * -16 + 8;
  r0.w = r1.y * r0.w;
  r1.y = abs(r0.w) * 0.224999994 + 0.774999976;
  r0.w = r1.y * r0.w;
  r0.w = r0.w * 0.100000001 + r1.x;
  r0.w = r0.w * cb0[12].x + cb0[12].z;
  r0.w = frac(r0.w);
  r0.w = -0.5 + r0.w;
  r1.xy = abs(r0.ww) * float2(-1.66666698,-10) + float2(1,1);
  r0.w = max(0, r1.y);
  r0.w = r1.x * cb0[106].x + r0.w;
  r0.z = r0.w * r0.z;
  r0.y = r0.z * r0.y;
  r0.x = r0.y * cb0[119].x + r0.x;
  r0.x = saturate(w1.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r1.zw = float2(0,0);
  r0.yz = cb12[12].xy * r2.xy;
  r1.xy = (int2)r0.yz;
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.y = saturate(2.5 * r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  r0.yzw = cb0[96].xyz + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[132].x + cb0[132].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.yzw = r3.www * r0.yzw;
  r0.yzw = r0.yzw * float3(2,2,2) + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.yzw = r1.xyz * cb13[1].xxx + r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}