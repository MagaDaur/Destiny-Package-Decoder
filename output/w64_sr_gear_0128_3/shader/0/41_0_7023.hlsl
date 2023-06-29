// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[119];
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
  float4 v10 : TEXCOORD10,
  float4 v11 : TEXCOORD11,
  float4 v12 : TEXCOORD12,
  float3 v13 : TEXCOORD30,
  float4 v14 : SV_POSITION0,
  uint v15 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = dot(v1.xyz, v1.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = v1.xyz * r0.xxx;
  r0.w = dot(v2.xyz, v2.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v2.xyz * r0.www;
  r0.x = dot(r1.xyz, r0.xyz);
  r0.x = r0.x * r0.x;
  r0.x = r0.x * 0.800000012 + 0.200000003;
  r0.x = min(1, r0.x);
  r0.y = v0.y * v8.y + v8.w;
  r0.y = frac(r0.y);
  r0.y = r0.y * -5 + 1;
  r0.y = max(0, r0.y);
  r0.y = v12.z + r0.y;
  r0.x = r0.x * cb0[97].x + r0.y;
  r0.x = r0.x * r0.x;
  r0.x = min(1, r0.x);
  r0.xyz = r0.xxx * float3(11.6669998,11.6669998,11.6669998) + cb0[101].xyz;
  r1.xy = v0.xy * v7.xy + v7.zw;
  r0.w = t0.Sample(s1_s, r1.xy).x;
  r0.w = saturate(r0.w);
  r1.xyz = r0.www * float3(0.968980014,0.968980014,0.968980014) + cb0[104].xyz;
  r0.xyz = r0.xyz * r1.xyz + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r1.x = 1;
  r1.yz = cb13[1].ww;
  r0.xyz = r1.xyz * r0.xyz;
  r0.xyz = cb13[1].wxx * r0.xyz;
  r0.x = cb13[1].x * r0.x;
  r0.yz = cb8[7].yz * r0.yz;
  r1.x = cb8[7].x * r0.x;
  r0.x = dot(-v2.xyz, -v2.xyz);
  r0.x = sqrt(r0.x);
  r0.w = 0.015625 * r0.x;
  r0.x = saturate(r0.x * cb0[118].x + cb0[118].y);
  r0.w = min(1, r0.w);
  r2.z = sqrt(r0.w);
  r2.xy = cb12[12].zw * v14.xy;
  r0.w = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + float4(0,0,0,1);
  r1.yz = r3.ww * r0.yz;
  r4.x = r3.w;
  r4.yz = float2(0.404821992,0);
  r0.yzw = r1.xyz * r4.xyz + r3.xyz;
  r1.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r1.xyzw = -r2.xyzw + r1.xyzw;
  r1.xyzw = r0.xxxx * r1.xyzw + r2.xyzw;
  r1.xyz = cb8[5].xyz * r1.xyz;
  r1.xyz = r1.www * cb8[6].xyz + r1.xyz;
  r0.xyz = r1.xyz * cb13[1].xxx + r0.yzw;
  r0.w = v0.y * v6.y + v6.w;
  r0.w = -0.5 + r0.w;
  r0.w = saturate(abs(r0.w) * -11.1111116 + 5.5);
  r1.x = -0.5 + v0.y;
  r1.x = saturate(abs(r1.x) * -3.33333302 + 1.5);
  r0.w = r1.x * r0.w;
  r0.w = saturate(v12.w * r0.w);
  r0.w = saturate(v0.z * r0.w);
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}