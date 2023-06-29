// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:44 2023
Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb4 : register(b4)
{
  float4 cb4[8];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = v3.xy * cb4[1].xy + cb4[1].zw;
  r0.zw = v3.xy * cb4[2].xy + cb4[2].zw;
  r1.xy = v3.xy * cb4[3].xy + cb4[3].zw;
  r2.xyzw = t5.Sample(s2_s, r0.xy).xyzw;
  r0.x = t4.Sample(s1_s, r1.xy).x;
  r0.x = saturate(cb4[6].y * r0.x + cb4[6].x);
  r0.x = cb4[6].w * r0.x + cb4[6].z;
  r0.yzw = t6.Sample(s3_s, r0.zw).xyz;
  r0.yz = r0.yz * cb4[7].xx + cb4[7].yy;
  r0.w = saturate(cb4[7].z + r0.w);
  r1.xy = cb4[4].xx * r0.yz;
  r2.xyz = saturate(cb4[5].xyz * r2.xyz);
  r0.y = dot(r1.xy, r1.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r1.z = sqrt(r0.y);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r0.y = min(r2.w, r0.w);
  r3.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r3.xyz;
  r1.xyz = v0.xyz * r1.zzz + r1.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = cmp(0 < cb4[0].x);
  if (r0.z != 0) {
    r0.z = r0.y * 0.125 + 0.375;
    o1.xyz = saturate(r1.xyz * r0.zzz + float3(0.5,0.5,0.5));
    r0.z = -0.5 + r0.x;
    r0.z = cmp(r0.z < 0);
    if (r0.z != 0) discard;
    o0.xyz = r2.xyz;
    o0.w = 0;
    o1.w = 0;
    o2.xyzw = float4(0,0.5,0,1);
  } else {
    o0.xyz = r2.xyz * r0.xxx;
    r0.z = cmp(cb4[0].y < 2);
    r0.y = r0.y * 0.125 + 0.375;
    r1.xyz = saturate(r1.xyz * r0.yyy + float3(0.5,0.5,0.5));
    o1.xyz = r1.xyz * r0.xxx;
    r1.xyzw = r0.xxxx * float4(0,0.5,0,-1) + float4(0,0,0,1);
    o2.xyzw = r0.zzzz ? float4(0,0,0,0) : r1.xyzw;
    r0.x = 1 + -r0.x;
    o0.w = r0.x;
    o1.w = r0.x;
  }
  return;
}