// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:02 2023
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
  float4 cb0[134];
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

  r0.xyzw = float4(-0.5,-0.5,-0.5,-0.550000012) + v0.xyxy;
  r0.x = dot(r0.xy, r0.xy);
  r0.y = dot(r0.zw, r0.zw);
  r0.xy = sqrt(r0.xy);
  r0.y = saturate(r0.y * -5 + 2.5);
  r0.y = log2(r0.y);
  r0.y = cb0[118].x * r0.y;
  r0.y = exp2(r0.y);
  r0.xz = r0.xx * float2(-4.16861916,-3.95907307) + float2(1.20843101,1);
  r0.z = max(0, r0.z);
  r0.x = saturate(r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[104].x * r0.x;
  r0.x = exp2(r0.x);
  r1.xyz = r0.zzz * float3(0.0284540001,0.290185988,0.117602997) + cb0[99].xyz;
  r1.xyz = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r1.xyz;
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = cb0[20].xxx * r1.xyz;
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r0.z = dot(-v2.xyz, -v2.xyz);
  r0.z = sqrt(r0.z);
  r0.w = 0.015625 * r0.z;
  r0.z = saturate(r0.z * cb0[133].x + cb0[133].y);
  r0.w = min(1, r0.w);
  r2.z = sqrt(r0.w);
  r2.xy = cb12[12].zw * v3.xy;
  r0.w = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r0.wwww * r3.xyzw + float4(0,0,0,1);
  r1.xyz = r1.xyz * r3.www + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r2.xy = cb12[12].xy * r2.xy;
  r2.xy = (int2)r2.xy;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r3.xyzw = r0.zzzz * r3.xyzw + r4.xyzw;
  r3.xyz = cb8[5].xyz * r3.xyz;
  r3.xyz = r3.www * cb8[6].xyz + r3.xyz;
  r1.xyz = r3.xyz * cb13[1].xxx + r1.xyz;
  r2.zw = float2(0,0);
  r0.z = t10.Load(r2.xyz).x;
  r0.z = r0.z * cb2[0].y + cb2[0].x;
  r0.z = 1 / r0.z;
  r2.xy = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.w = t0.Sample(s1_s, r2.xy).x;
  r0.w = -0.5 + r0.w;
  r0.w = r0.w * cb0[106].x + v0.x;
  r0.w = r0.w * cb0[8].x + cb0[8].z;
  r0.w = frac(r0.w);
  r1.w = cb0[13].z + r0.w;
  r0.w = cb0[14].z + r0.w;
  r0.w = saturate(cb0[14].y * abs(r0.w) + cb0[14].x);
  r1.w = saturate(cb0[13].y * abs(r1.w) + cb0[13].x);
  r1.w = cb0[18].y * r1.w;
  r0.w = r0.w * cb0[19].x + r1.w;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[113].x * r0.w;
  r0.w = exp2(r0.w);
  r0.x = r0.x * cb0[114].x + r0.w;
  r0.x = saturate(r0.x * r0.y);
  r0.y = r0.x * 0.0477530062 + v0.w;
  r0.y = 0.202246994 + r0.y;
  r0.y = r0.z + -r0.y;
  r0.z = r0.x * 0.325842977 + 0.674157023;
  r0.x = saturate(w1.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.y = saturate(r0.y / r0.z);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = r0.x;
  return;
}