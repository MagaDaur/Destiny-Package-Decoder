// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:20 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t3 : register(t3);

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
  float4 r0,r1,r2,r3,r4;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = float2(-0.5,-0.5) + v0.xy;
  r0.z = dot(r0.xy, r0.xy);
  r0.z = r0.z * r0.z;
  r0.z = cb0[129].x * r0.z;
  r0.xy = r0.xy * r0.zz + v0.xy;
  r0.zw = v0.xy * cb0[9].xy + cb0[9].zw;
  r0.zw = t0.Sample(s1_s, r0.zw).xy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r0.xy = r0.zw * cb0[132].xx + r0.xy;
  r0.xy = r0.xy * cb0[8].xy + cb0[8].zw;
  r0.x = t1.Sample(s1_s, r0.xy).x;
  r0.x = saturate(r0.x);
  r0.y = log2(r0.x);
  r0.y = cb0[109].x * r0.y;
  r0.y = exp2(r0.y);
  r0.zw = v0.xy * cb0[13].xy + cb0[13].zw;
  r0.zw = t0.Sample(s1_s, r0.zw).xy;
  r0.zw = float2(-0.5,-0.5) + r0.zw;
  r0.zw = r0.zw * cb0[97].xx + v0.xy;
  r1.xy = float2(-0.5,-0.5) + r0.zw;
  r1.x = dot(r1.xy, r1.xy);
  r1.x = sqrt(r1.x);
  r1.x = saturate(r1.x * -0.580383003 + 1.16076601);
  r1.yzw = cb0[100].xyz + -cb0[12].xyz;
  r1.xyz = saturate(r1.xxx * r1.yzw + cb0[12].xyz);
  r1.xyz = r1.xyz * r0.yyy;
  r1.xyz = r1.xyz * float3(4.59479332,4.59479332,4.59479332) + float3(-2.51188652e-007,-2.51188652e-007,-2.51188652e-007);
  r1.xyz = float3(1.00000024,1.00000024,1.00000024) * r1.xyz;
  r1.xyz = max(float3(0,0,0), r1.xyz);
  r1.xyz = cb13[1].www * r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r1.xyz = cb8[7].xyz * r1.xyz;
  r0.y = dot(-v2.xyz, -v2.xyz);
  r0.y = sqrt(r0.y);
  r1.w = 0.015625 * r0.y;
  r0.y = saturate(r0.y * cb0[126].x + cb0[126].y);
  r1.w = min(1, r1.w);
  r2.z = sqrt(r1.w);
  r2.xy = cb12[12].zw * v3.xy;
  r1.w = t21.SampleLevel(s3_s, r2.xyz, 0).x;
  r3.xyzw = t20.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r3.xyzw = float4(-0,-0,-0,-1) + r3.xyzw;
  r3.xyzw = r1.wwww * r3.xyzw + float4(0,0,0,1);
  r1.xyz = r3.www * r1.xyz;
  r1.xyz = r1.xyz * float3(3,3,3) + r3.xyz;
  r3.xyzw = t11.Sample(s2_s, r2.xy).xyzw;
  r4.xyzw = t13.Sample(s2_s, r2.xy).xyzw;
  r2.xy = cb12[12].xy * r2.xy;
  r2.xy = (int2)r2.xy;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r3.xyzw = r0.yyyy * r3.xyzw + r4.xyzw;
  r3.xyz = cb8[5].xyz * r3.xyz;
  r3.xyz = r3.www * cb8[6].xyz + r3.xyz;
  r1.xyz = r3.xyz * cb13[1].xxx + r1.xyz;
  r0.y = t3.Sample(s1_s, r0.zw).x;
  r0.z = t2.Sample(s1_s, r0.zw).x;
  r0.y = cb0[110].x * r0.y;
  r0.x = saturate(r0.x * r0.z + r0.y);
  r0.yz = r0.xx * float2(-0.615999997,-0.0549999997) + float2(0.615999997,0.0549999997);
  r0.x = saturate(w1.x * r0.x);
  r0.x = saturate(v0.z * r0.x);
  r0.z = r0.z * cb0[18].z + v0.w;
  r0.y = cb0[18].z * r0.y;
  r2.zw = float2(0,0);
  r0.w = t10.Load(r2.xyz).x;
  r0.w = r0.w * cb2[0].y + cb2[0].x;
  r0.w = 1 / r0.w;
  r0.z = r0.w + -r0.z;
  r0.y = saturate(r0.z / r0.y);
  r0.y = 1 + -r0.y;
  r0.y = 1 + -r0.y;
  r0.x = r0.x * r0.y;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = r0.x;
  return;
}