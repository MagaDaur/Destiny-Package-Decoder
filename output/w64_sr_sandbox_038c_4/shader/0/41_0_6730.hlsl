// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
Texture2D<float4> t10 : register(t10);

Texture3D<float4> t4 : register(t4);

Texture3D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[114];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float3 v2 : TEXCOORD2,
  float4 v3 : SV_POSITION0,
  uint v4 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[14].xyz + -v2.xyz;
  r1.xyz = r0.xyz * float3(2,2,2) + cb0[10].xyz;
  r0.xyz = r0.xyz * float3(4,4,4) + cb0[8].xyz;
  r0.x = t4.Sample(s2_s, r0.xyz).x;
  r0.y = t3.Sample(s2_s, r1.xyz).x;
  r0.x = r0.y * r0.x;
  r0.x = saturate(r0.x * 22.9739666 + -4);
  r0.y = cb0[105].x;
  r0.x = t2.Sample(s1_s, r0.xy).x;
  r0.yz = v0.xy + v0.xy;
  r0.y = t1.Sample(s1_s, r0.yz).x;
  r0.z = max(0, r0.y);
  r0.z = log2(r0.z);
  r0.z = cb0[99].x * r0.z;
  r0.z = exp2(r0.z);
  r0.y = r0.z * cb0[106].x + r0.y;
  r0.x = r0.x * r0.y;
  r0.y = 1 + r0.y;
  r0.x = cb0[107].x * r0.x;
  r0.x = r0.z * cb0[108].x + r0.x;
  r0.z = t0.Sample(s1_s, v0.xy).x;
  r0.z = cb0[96].x * r0.z;
  r0.y = r0.z * r0.y;
  r0.yw = max(float2(0,0), r0.yz);
  r0.y = log2(r0.y);
  r0.y = cb0[113].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = saturate(cb0[13].z * r0.y);
  r0.y = saturate(v0.z * r0.y);
  r0.z = log2(r0.w);
  r0.z = cb0[97].x * r0.z;
  r0.z = exp2(r0.z);
  r0.x = saturate(r0.z * cb0[109].x + r0.x);
  r0.xzw = r0.xxx * float3(0.150898993,0.38033101,0.590131998) + float3(0.0110727483,-2.51188652e-007,0.409867764);
  r0.xzw = float3(1.00000024,1.00000024,1.00000024) * r0.xzw;
  r0.xzw = max(float3(0,0,0), r0.xzw);
  r0.xzw = cb0[13].www * r0.xzw;
  r0.xzw = cb13[1].www * r0.xzw;
  r0.xzw = cb13[1].xxx * r0.xzw;
  r0.xzw = cb8[7].xyz * r0.xzw;
  r1.xy = cb12[12].zw * v3.xy;
  r1.xy = cb12[12].xy * r1.xy;
  r1.xy = (int2)r1.xy;
  r1.zw = float2(0,0);
  r1.x = t10.Load(r1.xyz).x;
  r1.x = r1.x * cb2[0].y + cb2[0].x;
  r1.x = 1 / r1.x;
  r1.x = -v0.w + r1.x;
  r1.x = saturate(0.5 * r1.x);
  r1.x = 1 + -r1.x;
  r1.x = 1 + -r1.x;
  r0.y = r1.x * r0.y;
  o0.xyz = r0.xzw * r0.yyy;
  o0.w = 0;
  return;
}