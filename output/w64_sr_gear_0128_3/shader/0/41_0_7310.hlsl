// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
Texture2D<float4> t23 : register(t23);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float4 cb0[112];
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

  r0.x = cb0[104].x + v0.x;
  r0.y = v0.y;
  r0.zw = r0.xy * cb0[3].xy + cb0[3].zw;
  r0.zw = t0.Sample(s1_s, r0.zw).xy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r0.xy = r0.zw * cb0[97].xx + r0.xy;
  r0.zw = r0.xy * cb0[1].xy + cb0[1].zw;
  r0.xy = r0.xy * cb0[0].xy + cb0[0].zw;
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.y = t1.Sample(s1_s, r0.zw).x;
  r0.x = r0.y + r0.x;
  r0.z = saturate(r0.x * 1.20000005 + -0.200000003);
  r1.x = cb0[102].x + v0.x;
  r1.z = cb0[103].x + v0.x;
  r1.yw = v0.yy;
  r2.xyzw = r1.xyzw * cb0[3].xyxy + cb0[3].zwzw;
  r2.xy = t0.Sample(s1_s, r2.xy).xy;
  r2.zw = t0.Sample(s1_s, r2.zw).xy;
  r2.xyzw = float4(-0.5,-0.5,-0.5,-0.5) + r2.xyzw;
  r1.zw = r2.zw * cb0[97].xx + r1.zw;
  r1.xy = r2.xy * cb0[97].xx + r1.xy;
  r2.xy = r1.xy * cb0[1].xy + cb0[1].zw;
  r1.xy = r1.xy * cb0[0].xy + cb0[0].zw;
  r0.w = t1.Sample(s1_s, r1.xy).x;
  r1.x = t1.Sample(s1_s, r2.xy).x;
  r0.w = r1.x + r0.w;
  r0.x = saturate(r0.w * 1.20000005 + -0.200000003);
  r1.xy = r1.zw * cb0[1].xy + cb0[1].zw;
  r1.zw = r1.zw * cb0[0].xy + cb0[0].zw;
  r0.w = t1.Sample(s1_s, r1.zw).x;
  r1.x = t1.Sample(s1_s, r1.xy).x;
  r0.w = r1.x + r0.w;
  r0.y = saturate(r0.w * 1.20000005 + -0.200000003);
  r1.xy = v0.xy * cb0[3].xy + cb0[3].zw;
  r1.xy = t0.Sample(s1_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r2.xy = cb12[12].zw * v3.xy;
  r1.xy = r1.xy * cb0[97].xx + r2.xy;
  r1.xyz = t23.Sample(s2_s, r1.xy).xyz;
  r0.xyz = r1.xyz + r0.xyz;
  r0.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.xyz;
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[111].x + cb0[111].y);
  r1.x = min(1, r1.x);
  r2.z = sqrt(r1.x);
  r1.x = t21.SampleLevel(s4_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s4_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + float4(0,0,0,1);
  r0.xyz = r0.xyz * r1.www + r1.xyz;
  r1.xyzw = t11.Sample(s3_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s3_s, r2.xy).xyzw;
  r1.xyzw = -r2.xyzw + r1.xyzw;
  r1.xyzw = r0.wwww * r1.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.xyz;
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = v2.xyz * r0.www;
  r0.w = dot(r2.xyz, r1.xyz);
  r0.w = r0.w * r0.w;
  r0.w = saturate(r0.w * 1.18203294 + -0.182033002);
  r0.w = log2(r0.w);
  r0.w = cb0[106].x * r0.w;
  r0.w = exp2(r0.w);
  r1.x = -0.5 + v0.y;
  r1.x = abs(r1.x) * -2.72727299 + 1.25;
  r0.w = r1.x * r0.w;
  r0.w = saturate(w1.x * r0.w);
  r0.w = saturate(v0.z * r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}