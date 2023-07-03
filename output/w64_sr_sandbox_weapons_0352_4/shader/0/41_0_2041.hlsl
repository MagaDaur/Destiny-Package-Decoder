// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t1 : register(t1);

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
  float4 cb0[122];
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
  float4 v13 : TEXCOORD13,
  float4 v14 : TEXCOORD14,
  float3 v15 : TEXCOORD15,
  float4 v16 : SV_POSITION0,
  uint v17 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = cb0[107].x + -cb0[106].x;
  r1.zw = float2(0,0);
  r2.xy = cb12[12].zw * v16.xy;
  r0.yz = cb12[12].xy * r2.xy;
  r1.xy = (int2)r0.yz;
  r0.y = t10.Load(r1.xyz).x;
  r0.y = r0.y * cb2[0].y + cb2[0].x;
  r0.y = 1 / r0.y;
  r0.y = -v0.w + r0.y;
  r0.z = saturate(r0.y * -0.820344985 + 1);
  r0.y = saturate(r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.w = r0.z + r0.z;
  r0.w = min(1, r0.w);
  r0.x = r0.w * r0.x + cb0[106].x;
  r0.w = cmp(r0.z < cb0[109].x);
  r0.x = r0.w ? r0.x : 0;
  r0.w = -0.5 + r0.z;
  r0.z = cmp(r0.z >= cb0[109].x);
  r0.w = r0.w + r0.w;
  r0.w = max(0, r0.w);
  r1.x = -cb0[107].x + cb0[106].x;
  r0.w = r0.w * r1.x + cb0[107].x;
  r0.x = r0.z ? r0.w : r0.x;
  r0.z = max(r0.x, r0.x);
  r0.z = max(r0.z, r0.x);
  r0.w = min(r0.x, r0.x);
  r0.w = min(r0.w, r0.x);
  r0.z = r0.z + -r0.w;
  r0.z = saturate(r0.z * 2 + -cb0[113].x);
  r1.xy = v0.xy * cb0[11].xy + cb0[11].zw;
  r1.xy = t0.Sample(s1_s, r1.xy).xy;
  r1.xy = float2(-0.5,-0.5) + r1.xy;
  r1.xy = r1.xy * cb0[101].xx + v0.xy;
  r1.xy = r1.xy * v7.xy + v7.zw;
  r0.w = t1.Sample(s1_s, r1.xy).x;
  r0.w = saturate(r0.w * v10.x + v10.y);
  r0.z = r0.w * 4.59000015 + r0.z;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r0.x;
  r0.x = r0.x * r0.x;
  r0.x = r0.w * cb0[114].x + r0.x;
  r0.z = -0.5 + v0.y;
  r0.z = abs(r0.z) * -1.11234701 + 1;
  r0.z = max(0, r0.z);
  r0.w = dot(v1.xyz, v1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = v1.xyz * r0.www;
  r0.w = dot(v2.xyz, v2.xyz);
  r1.w = rsqrt(r0.w);
  r0.w = sqrt(r0.w);
  r0.w = saturate(r0.w * 0.333332986 + -1);
  r3.xyz = v2.xyz * r1.www;
  r1.x = dot(r3.xyz, r1.xyz);
  r1.x = r1.x * r1.x;
  r1.y = 13.1578989 * r1.x;
  r1.x = saturate(r1.x * v11.x + v11.y);
  r1.xzw = r1.xxx * float3(-0.0157789998,-0.0291510001,-0.119538002) + cb0[97].xyz;
  r1.y = min(1, r1.y);
  r0.z = r1.y * r0.z;
  r0.x = r0.x * r0.z;
  r0.x = r0.x * r0.w;
  r0.z = saturate(r0.x * v10.z + v10.w);
  r0.x = saturate(r0.x);
  r0.x = saturate(v15.y * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.x = r0.x * r0.y;
  r0.yzw = cb0[99].xyz * r0.zzz + r1.xzw;
  r0.yzw = float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007) + r0.yzw;
  r0.yzw = float3(1.00000024,1.00000024,1.00000024) * r0.yzw;
  r0.yzw = max(float3(0,0,0), r0.yzw);
  r0.yzw = v15.zzz * r0.yzw;
  r0.yzw = cb13[1].www * r0.yzw;
  r0.yzw = cb13[1].xxx * r0.yzw;
  r0.yzw = cb8[7].xyz * r0.yzw;
  r1.x = dot(-v2.xyz, -v2.xyz);
  r1.x = sqrt(r1.x);
  r1.y = 0.015625 * r1.x;
  r1.x = saturate(r1.x * cb0[121].x + cb0[121].y);
  r1.y = min(1, r1.y);
  r2.z = sqrt(r1.y);
  r1.y = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.yyyy * r3.xyzw + float4(0,0,0,1);
  r0.yzw = r0.yzw * r3.www + r3.xyz;
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