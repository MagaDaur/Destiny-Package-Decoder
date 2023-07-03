// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
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
  float4 cb0[135];
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
  float2 v10 : TEXCOORD10,
  float4 v11 : SV_POSITION0,
  uint v12 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb0[96].xyz + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r0.xyz = float3(1.00000024,1.00000024,1.00000024) * r0.xyz;
  r0.xyz = max(float3(0,0,0), r0.xyz);
  r0.xyz = cb13[1].www * r0.xyz;
  r0.xyz = cb13[1].xxx * r0.xyz;
  r0.xyz = cb8[7].xyz * r0.xyz;
  r0.w = dot(-v2.xyz, -v2.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r0.w = saturate(r0.w * cb0[134].x + cb0[134].y);
  r1.x = min(1, r1.x);
  r1.z = sqrt(r1.x);
  r1.xy = cb12[12].zw * v11.xy;
  r1.z = t21.SampleLevel(s3_s, r1.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s3_s, r1.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r1.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r2.www * r0.xyz;
  r0.xyz = r0.xyz * float3(0.349999994,0.349999994,0.349999994) + r2.xyz;
  r2.xyzw = t11.Sample(s2_s, r1.xy).xyzw;
  r3.xyzw = t13.Sample(s2_s, r1.xy).xyzw;
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
  r0.w = saturate(0.333333343 * r0.w);
  r0.w = 1 + -r0.w;
  r0.w = 1 + -r0.w;
  r1.xy = float2(-0.5,-0.5) + v0.xy;
  r1.z = dot(r1.xy, r1.xy);
  r1.w = r1.z * r1.z;
  r1.z = sqrt(r1.z);
  r1.z = r1.z * -2 + 1;
  r1.z = max(0, r1.z);
  r1.w = v10.x * r1.w;
  r1.xy = r1.xy * r1.ww + v0.xy;
  r2.xy = v0.xy * v5.xy + v5.zw;
  r2.xy = t0.Sample(s1_s, r2.xy).xy;
  r2.xy = float2(-0.5,-0.5) + r2.xy;
  r1.xy = r2.xy * v9.zz + r1.xy;
  r2.xy = r2.xy * v9.zz + v0.xy;
  r2.xy = float2(-0.5,-0.5) + r2.xy;
  r1.w = dot(r2.xy, r2.xy);
  r1.w = sqrt(r1.w);
  r1.w = saturate(r1.w * v6.z + v6.w);
  r1.w = 1 + -r1.w;
  r1.w = r1.w * 4 + -cb0[106].x;
  r1.w = -1.5 + r1.w;
  r1.w = v8.x * r1.w + cb0[106].x;
  r1.z = r1.z * r1.w;
  r2.xy = r1.xy * v5.xy + v5.zw;
  r2.xy = t0.Sample(s1_s, r2.xy).xy;
  r2.xy = float2(-0.5,-0.5) + r2.xy;
  r1.xw = r2.xy * v9.zz + r1.xy;
  r1.y = r1.y * cb0[8].y + cb0[8].w;
  r1.y = frac(r1.y);
  r1.xyw = float3(-0.5,-0.5,-0.5) + r1.xyw;
  r1.y = abs(r1.y) * -3.33333302 + 1;
  r1.y = max(0, r1.y);
  r1.y = log2(r1.y);
  r1.y = cb0[114].x * r1.y;
  r1.y = exp2(r1.y);
  r1.y = min(1, r1.y);
  r1.x = dot(r1.xw, r1.xw);
  r1.x = sqrt(r1.x);
  r1.x = saturate(r1.x * v6.z + v6.w);
  r1.w = cmp(r1.x < 0.5);
  r2.xy = float2(-0.00999999978,-0.5) + r1.xx;
  r1.x = cmp(r1.x >= 0.5);
  r2.xy = saturate(float2(2.04081607,19.9999962) * r2.xy);
  r2.x = cb0[106].x * r2.x;
  r2.y = r2.y * -cb0[106].x + cb0[106].x;
  r1.w = r1.w ? r2.x : 0;
  r1.x = r1.x ? r2.y : r1.w;
  r1.x = r1.x * v9.y + r1.y;
  r1.x = r1.x * r1.z;
  r1.x = saturate(v10.y * r1.x);
  r1.x = saturate(v0.z * r1.x);
  r0.w = r1.x * r0.w;
  o0.xyz = r0.xyz * r0.www;
  o0.w = r0.w;
  return;
}