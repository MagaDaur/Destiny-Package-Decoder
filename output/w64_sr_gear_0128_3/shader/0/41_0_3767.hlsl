// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:46 2023
Texture2D<float4> t10 : register(t10);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t0 : register(t0);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[5];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r0.zw = v3.xy * cb0[4].xy + cb0[4].zw;
  r1.x = (uint)v2.w;
  r1.y = cmp((uint)r1.x >= 4);
  if (r1.y != 0) {
    r1.yz = r0.zw * cb7[6].xy + cb7[6].zw;
    r1.y = t8.Sample(s1_s, r1.yz).w;
  } else {
    r1.z = cmp((uint)r1.x >= 2);
    if (r1.z != 0) {
      r1.zw = r0.zw * cb7[3].xy + cb7[3].zw;
      r1.y = t6.Sample(s1_s, r1.zw).w;
    } else {
      r1.zw = r0.zw * cb7[0].xy + cb7[0].zw;
      r1.y = t4.Sample(s1_s, r1.zw).w;
    }
  }
  r1.xzw = mad(int3(9,9,9), (int3)r1.xxx, int3(9,11,13));
  r2.xy = saturate(cb7[r1.z+0].zw);
  r3.xyz = t0.Sample(s2_s, r0.zw).xyz;
  r4.xyzw = t2.Sample(s3_s, r0.zw).xzwy;
  r0.z = cmp(r4.z >= 0.156862751);
  r0.w = r0.z ? 1.000000 : 0;
  r5.xy = saturate(float2(7.96875,7.96875) * r4.yx);
  r0.z = r0.z ? 0 : 1;
  r6.xyz = saturate(cb7[r1.x+0].xyz * float3(4,4,4));
  r7.xyz = saturate(cb7[r1.x+0].xyz + float3(-0.25,-0.25,-0.25));
  r6.xyz = r3.xyz * r6.xyz + r7.xyz;
  r1.x = -r4.w + r1.y;
  r1.x = r2.x * r1.x + r4.w;
  r1.x = saturate(cb7[r1.w+0].y * r1.x + cb7[r1.w+0].x);
  r6.w = saturate(cb7[r1.w+0].w * r1.x + cb7[r1.w+0].z);
  r4.xyz = r3.xyz;
  r1.xyzw = r4.xyzw + -r6.xyzw;
  r1.xyzw = r0.zzzz * r1.xyzw + r6.xyzw;
  r2.x = r0.w * r2.y;
  r0.z = 1 + -r5.x;
  r0.xy = cb12[12].xy * r0.xy;
  r3.xy = (int2)r0.xy;
  r3.zw = float2(0,0);
  r0.xyw = t10.Load(r3.xyz).xyz;
  r0.xyw = r0.xyw * float3(2,2,2) + float3(-1,-1,-1);
  r2.w = dot(r0.xyw, r0.xyw);
  r2.w = sqrt(r2.w);
  r0.xyw = r0.xyw / r2.www;
  o0.xyz = r5.xxx * r1.xyz;
  r1.x = r1.w * 0.125 + 0.375;
  r0.xyw = saturate(r0.xyw * r1.xxx + float3(0.5,0.5,0.5));
  o1.xyz = r0.xyw * r5.xxx;
  r2.y = r5.x * r5.y;
  r2.z = 0;
  r5.z = 0.5;
  o2.xyz = r2.xyz * r5.xzx;
  o0.w = r0.z;
  o1.w = r0.z;
  o2.w = r0.z;
  return;
}