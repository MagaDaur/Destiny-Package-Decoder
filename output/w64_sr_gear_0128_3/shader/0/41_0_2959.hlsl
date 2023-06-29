// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:48 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float4 cb0[126];
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = float3(-0.5,-0.5,-1) + v0.xyy;
  r0.w = abs(r0.x) + -abs(r0.y);
  r1.x = abs(r0.x) + abs(r0.y);
  r0.w = r0.w / r1.x;
  r0.w = -1 + r0.w;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.w = r0.w * r1.y + 2;
  r0.w = r1.x * r0.w;
  r0.w = 0.125 * r0.w;
  r1.y = frac(r0.w);
  r1.x = dot(abs(r0.xy), abs(r0.xy));
  r0.x = 0.75 + -abs(r0.z);
  r0.x = max(0, r0.x);
  r0.x = saturate(cb0[16].y + r0.x);
  r0.yz = r1.xy * cb0[9].xy + cb0[9].zw;
  r0.yz = t0.Sample(s3_s, r0.yz).xy;
  r0.yz = float2(-0.5,-0.5) + r0.yz;
  r1.zw = r1.xy * float2(-4,1) + float2(1.5,0);
  r1.xy = r1.xy * cb0[8].xy + cb0[8].zw;
  r1.xy = t0.Sample(s3_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r0.yz = r0.yz * cb0[119].xx + r1.zw;
  r0.yz = r1.xy * cb0[119].xx + r0.yz;
  r0.y = t1.Sample(s4_s, r0.yz).x;
  r1.xyz = cb0[96].xyz + r0.yyy;
  r0.y = cb0[101].x * r0.y;
  r1.xyz = cb0[14].xyz * r1.xyz;
  r0.zw = float2(20,20) * v0.xy;
  r0.z = t2.Sample(s3_s, r0.zw).y;
  r0.z = saturate(r0.z * 4 + -0.600000024);
  r2.xyz = r0.zzz * float3(0.0207250006,0.0207250006,0.0207250006) + cb0[125].xyz;
  r2.xyz = cb0[98].xyz * r2.xyz;
  r3.xyz = cmp(float3(1,2,3) < v0.xxx);
  r4.xyz = r3.zzz ? cb0[14].xyz : cb0[98].xyz;
  r2.xyz = r3.yyy ? r4.xyz : r2.xyz;
  r1.xyz = r3.xxx ? r2.xyz : r1.xyz;
  r0.y = r3.x ? cb0[102].x : r0.y;
  r0.x = r0.x * r0.y;
  r0.x = saturate(cb0[16].z * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[113].x + cb0[113].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r2.xy = cb12[12].zw * v3.xy;
  r1.y = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.yzw = r3.www * r0.yzw;
  r0.yzw = r0.yzw * float3(6,6,6) + r3.xyz;
  r3.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r1.xyzw = r1.xxxx * r3.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.yzw = r1.xyz * cb13[1].xxx + r0.yzw;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}