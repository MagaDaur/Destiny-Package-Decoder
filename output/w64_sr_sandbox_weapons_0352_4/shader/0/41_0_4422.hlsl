// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:31 2023
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
  float4 cb0[115];
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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = abs(r0.x) + -abs(r0.y);
  r0.w = abs(r0.x) + abs(r0.y);
  r0.z = r0.z / r0.w;
  r0.z = -1 + r0.z;
  r1.xy = cmp(float2(0,0) < r0.xy);
  r1.zw = cmp(r0.xy < float2(0,0));
  r0.y = dot(abs(r0.xy), abs(r0.xy));
  r1.xy = (int2)-r1.xy + (int2)r1.zw;
  r1.xy = (int2)r1.xy;
  r0.z = r0.z * r1.y + 2;
  r0.z = r1.x * r0.z;
  r0.z = 0.125 * r0.z;
  r0.x = frac(r0.z);
  r0.zw = r0.xy * cb0[8].xy + cb0[8].zw;
  r0.x = t2.Sample(s3_s, r0.xy).x;
  r0.x = log2(r0.x);
  r0.x = 2.20000005 * r0.x;
  r0.x = exp2(r0.x);
  r0.y = t0.Sample(s3_s, r0.zw).x;
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v4.xy;
  r3.xy = cb12[12].xy * r2.xy;
  r1.xy = (int2)r3.xy;
  r0.w = t10.Load(r1.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.w = -v0.w + r0.w;
  r0.w = saturate(20 * r0.w);
  r0.w = 1 + -r0.w;
  r0.z = v3.x + r0.w;
  r0.w = 1 + -r0.w;
  r1.xyz = t1.Sample(s4_s, r0.yz).xyz;
  r1.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r3.x = 1;
  r3.yz = w1.xw;
  r1.xyz = r3.xyz * r1.xyz;
  r3.x = w1.x;
  r3.yz = cb13[1].ww;
  r1.xyz = r3.xyz * r1.xyz;
  r1.xyz = cb13[1].wxx * r1.xyz;
  r0.yz = cb8[7].yz * r1.yz;
  r1.x = cb13[1].x * r1.x;
  r1.x = cb8[7].x * r1.x;
  r1.w = dot(-v2.xyz, -v2.xyz);
  r1.w = sqrt(r1.w);
  r2.w = 0.015625 * r1.w;
  r1.w = saturate(r1.w * cb0[101].x + cb0[101].y);
  r2.w = min(1, r2.w);
  r2.z = sqrt(r2.w);
  r2.z = t21.SampleLevel(s2_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s2_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r2.zzzz * r3.xyzw + float4(0,0,0,1);
  r1.yz = r3.ww * r0.yz;
  r4.yz = float2(0.912187994,0.685606003);
  r4.x = r3.w;
  r1.xyz = r1.xyz * r4.xyz + r3.xyz;
  r3.xyzw = t11.Sample(s1_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s1_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r2.xyzw = r1.wwww * r3.xyzw + r2.xyzw;
  r2.xyz = cb8[5].xyz * r2.xyz;
  r2.xyz = r2.www * cb8[6].xyz + r2.xyz;
  r1.xyz = r2.xyz * cb13[1].xxx + r1.xyz;
  r0.y = t3.Sample(s3_s, v0.xy).x;
  r0.x = r0.x * r0.y;
  r0.x = log2(r0.x);
  r0.y = 1 / cb0[114].x;
  r0.x = r0.y * r0.x;
  r0.x = exp2(r0.x);
  r0.x = saturate(r0.x * v3.w + v3.z);
  r0.x = saturate(v0.z * r0.x);
  r0.x = r0.x * r0.w;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = r0.x;
  return;
}