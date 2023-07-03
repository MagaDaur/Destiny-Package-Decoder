// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture3D<float4> t0 : register(t0);

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
  float4 cb2[6];
}

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
  float4 cb0[128];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2,
  out float4 o3 : SV_TARGET3)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = -0.5 + v0.y;
  r0.xy = saturate(abs(r0.xx) * float2(-4.28571415,-3.01694798) + float2(2,1.5));
  r0.yzw = r0.yyy * float3(0.0284540001,0.290185988,0.117602997) + cb0[97].xyz;
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v4.zzz * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[127].x + cb0[127].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r2.xy = cb12[12].zw * v5.xy;
  r1.y = t21.SampleLevel(s4_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s4_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.yzw = r0.yzw * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s3_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s3_s, r2.xy).xyzw;
  r1.yzw = t10.Sample(s2_s, r2.xy).xyw;
  r2.xyzw = -r4.xyzw + r3.xyzw;
  r2.xyzw = r1.xxxx * r2.xyzw + r4.xyzw;
  r2.xyz = cb8[5].xyz * r2.xyz;
  r2.xyz = r2.www * cb8[6].xyz + r2.xyz;
  r0.yzw = r2.xyz * cb13[1].xxx + r0.yzw;
  r1.x = -1 + r1.w;
  r1.yz = -v0.ww + r1.yz;
  r1.yz = saturate(r1.yz + r1.yz);
  r1.yz = float2(1,1) + -r1.yz;
  r1.x = cb2[5].x * r1.x + 1;
  r1.y = r1.y + -r1.z;
  r1.x = r1.x * r1.y + r1.z;
  r1.xy = float2(1,1) + -r1.xz;
  r2.xyz = cb12[14].xyz + -v2.xyz;
  r2.xyz = r2.xyz * float3(0.0399999991,0.0399999991,0.0399999991) + cb0[9].xyz;
  r1.z = t0.Sample(s1_s, r2.xyz).x;
  r1.z = saturate(r1.z);
  r1.z = 1 + -r1.z;
  r1.w = v0.x * cb0[8].x + cb0[8].z;
  r1.w = frac(r1.w);
  r1.w = -0.5 + r1.w;
  r1.w = abs(r1.w) * -0.5 + 0.75;
  r1.z = r1.z * r1.w;
  r0.x = r1.z * r0.x;
  r0.x = v4.y * r0.x;
  r1.z = -0.5 + v3.z;
  r1.z = saturate(0.5 * r1.z);
  r0.x = saturate(r1.z * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r2.xyzw = r0.xxxx * r1.xxxx;
  r1.xyzw = r0.xxxx * r1.yyyy;
  o0.xyz = r2.www * r0.yzw;
  o1.xyz = r1.xyz * r0.yzw;
  o0.w = r2.w;
  o2.xyzw = r2.xyzw;
  o1.w = r1.w;
  o3.xyzw = r1.xyzw;
  return;
}