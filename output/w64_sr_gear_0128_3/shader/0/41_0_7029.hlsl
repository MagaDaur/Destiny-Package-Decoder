// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

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
  float3 v1 : TEXCOORD1,
  float w1 : TEXCOORD11,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD5,
  float4 v6 : TEXCOORD6,
  float4 v7 : TEXCOORD7,
  float4 v8 : TEXCOORD8,
  float4 v9 : TEXCOORD9,
  float4 v10 : TEXCOORD10,
  float4 v11 : SV_POSITION0,
  uint v12 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v0.xy * v4.xy + v4.zw;
  r0.xy = t0.Sample(s1_s, r0.xy).xy;
  r0.xyz = float3(-0.5,-0.5,-0.5) + r0.yxy;
  r0.xyz = r0.xyz * v10.yyy + v0.yxy;
  r0.y = t1.Sample(s1_s, r0.yz).x;
  r0.x = v5.z + r0.x;
  r0.x = saturate(v5.y * abs(r0.x) + v5.x);
  r0.x = r0.x * r0.x;
  r0.y = r0.y * r0.y;
  r0.y = saturate(r0.y * v8.z + v8.w);
  r0.yzw = v6.xyz * r0.yyy + v7.xyz;
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r1.x = 1;
  r1.yz = w1.xw;
  r0.yzw = r1.xyz * r0.yzw;
  r1.x = w1.x;
  r1.yz = cb13[1].ww;
  r0.yzw = r1.xyz * r0.yzw;
  r0.yzw = cb13[1].wxx * r0.yzw;
  r0.y = cb13[1].x * r0.y;
  r0.zw = cb8[7].yz * r0.zw;
  r1.x = cb8[7].x * r0.y;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r1.w = 0.015625 * r0.y;
  r0.y = saturate(r0.y * cb0[118].x + cb0[118].y);
  r1.w = min(1, r1.w);
  r2.z = sqrt(r1.w);
  r2.xy = cb12[12].zw * v11.xy;
  r1.w = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.wwww * r3.xyzw + float4(0,0,0,1);
  r1.yz = r3.ww * r0.zw;
  r4.x = r3.w;
  r4.yz = float2(0.404821992,0);
  r1.xyz = r1.xyz * r4.xyz + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r2.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r3.xyzw = r3.xyzw + -r2.xyzw;
  r2.xyzw = r0.yyyy * r3.xyzw + r2.xyzw;
  r0.yzw = cb8[5].xyz * r2.xyz;
  r0.yzw = r2.www * cb8[6].xyz + r0.yzw;
  r0.yzw = r0.yzw * cb13[1].xxx + r1.xyz;
  r1.xy = v0.xy * float2(1,13) + float2(0,-6);
  r1.x = t2.Sample(s1_s, r1.xy).x;
  r1.x = -0.5 + r1.x;
  r1.x = r1.x * cb0[103].x + v0.x;
  r1.x = 25 * r1.x;
  r1.x = frac(r1.x);
  r1.x = -0.5 + r1.x;
  r1.x = abs(r1.x) * -0.5 + 1;
  r1.x = saturate(r1.x * r1.x + v9.w);
  r0.x = r1.x * r0.x;
  r0.x = saturate(v10.w * r0.x);
  r0.x = saturate(v0.z * r0.x);
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = r0.x;
  return;
}