// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb9 : register(b9)
{
  float4 cb9[5];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[9];
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
  float4 v7 : SV_POSITION0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v7.xy;
  r0.xy = cb12[12].xy * r0.xy;
  r0.xy = (int2)r0.xy;
  r0.zw = float2(0,0);
  r1.x = t0.Load(r0.xyw).x;
  r1.x = r1.x * cb9[4].y + cb9[4].x;
  r1.x = 1 / r1.x;
  r1.x = r1.x / v6.w;
  r1.yzw = v6.xyz + -v1.xyz;
  r1.xyz = r1.xxx * r1.yzw + v1.xyz;
  r2.xyz = float3(0.5,0.5,0.5) + -abs(r1.xyz);
  r2.xyz = cmp(r2.xyz < float3(0,0,0));
  r1.w = (int)r2.y | (int)r2.x;
  r1.w = (int)r2.z | (int)r1.w;
  if (r1.w != 0) discard;
  r1.xy = float2(0.5,0.5) + r1.xy;
  r1.w = t2.Sample(s1_s, r1.xy).x;
  r2.x = cmp(0 < r1.w);
  if (r2.x != 0) {
    r2.y = saturate(1 + -r1.w);
    r3.y = saturate(cb0[1].x);
    r4.xyz = cb0[0].xyz * r1.www;
    r1.w = 1 + -r2.y;
    r2.x = 0;
  } else {
    r3.y = 0;
    r1.w = 0;
    r4.xyz = float3(0,0,0);
    r2.xy = float2(1,1);
  }
  r1.xy = r1.xy * cb0[2].xy + cb0[2].zw;
  r5.xyzw = t3.Sample(s2_s, r1.xy).xyzw;
  r6.xyzw = cb0[3].xyzw * r5.xyzw;
  r2.z = cmp(0 < r6.w);
  if (r2.z != 0) {
    r2.z = saturate(-r5.w * cb0[3].w + 1);
    r2.w = saturate(cb0[1].x);
    r5.xyz = t4.Sample(s1_s, r1.xy).xyz;
    r1.xy = r5.xy * cb0[4].xx + cb0[4].yy;
    r4.w = saturate(cb0[4].z + r5.z);
    r3.z = min(r4.w, r2.w);
    r5.xyz = r6.www * r6.xyz;
    r4.xyz = r2.zzz * r4.xyz + r5.xyz;
    r3.xw = float2(1,1);
    r3.zw = r6.ww * r3.zw;
    r3.xy = r2.zz * r3.xy + r3.wz;
    r1.xy = r6.ww * r1.xy;
    r3.zw = r2.zz * r2.xy;
    r1.w = -r2.z * r2.y + 1;
    r2.xy = r3.zw;
  } else {
    r3.x = 1;
    r1.xy = float2(0,0);
  }
  r1.z = r1.z * r1.z;
  r1.z = saturate(cb0[6].x * r1.z + cb0[6].y);
  r0.xyz = t5.Load(r0.xyz).xyz;
  r0.xyz = r0.xyz * float3(2,2,2) + float3(-1,-1,-1);
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = sqrt(r0.w);
  r0.xyz = r0.xyz / r0.www;
  r0.x = dot(r0.xyz, -v4.xyz);
  r0.x = saturate(r0.x * cb0[5].x + cb0[5].y);
  r0.x = r1.z * r0.x;
  r0.x = cb0[8].x * r0.x;
  r0.y = dot(r1.xy, r1.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r0.y = sqrt(r0.y);
  r5.xyz = v3.xyz * r1.yyy;
  r1.xyz = r1.xxx * v2.xyz + r5.xyz;
  r0.yzw = r0.yyy * -v4.xyz + r1.xyz;
  r1.x = dot(r0.yzw, r0.yzw);
  r1.x = rsqrt(r1.x);
  r0.yzw = r1.xxx * r0.yzw;
  r0.x = v5.x * r0.x;
  r5.xw = r1.ww * r0.xx;
  o0.xyz = r4.xyz * r0.xxx;
  r1.x = -1 + r2.y;
  o0.w = r0.x * r1.x + 1;
  r1.x = r3.y * 0.125 + 0.375;
  r0.yzw = saturate(r0.yzw * r1.xxx + float3(0.5,0.5,0.5));
  o1.xyz = r0.yzw * r5.xww;
  o1.w = -r1.w * r0.x + 1;
  r3.x = saturate(r3.x);
  r5.y = r5.w * r3.x;
  r5.z = r5.w * r2.x;
  o2.xyzw = r5.xyzw * float4(0,0.5,0.800000012,-1) + float4(0,0,0,1);
  return;
}