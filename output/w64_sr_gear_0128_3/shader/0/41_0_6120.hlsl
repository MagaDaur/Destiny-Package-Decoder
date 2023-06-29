// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
}

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
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
  float4 cb0[18];
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
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r0.w = (uint)v2.w;
  r1.w = cmp((uint)r0.w >= 4);
  if (r1.w != 0) {
    r3.xy = v3.zw * cb7[6].xy + cb7[6].zw;
    r3.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r4.xyz = t8.Sample(s1_s, r3.xy).xyz;
    r3.xy = t9.Sample(s1_s, r3.zw).xy;
    r3.xy = r3.xy * cb7[8].xx + cb7[8].yy;
  } else {
    r1.w = cmp((uint)r0.w >= 2);
    if (r1.w != 0) {
      r3.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r5.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r4.xyz = t6.Sample(s1_s, r3.zw).xyz;
      r3.zw = t7.Sample(s1_s, r5.xy).xy;
      r3.xy = r3.zw * cb7[5].xx + cb7[5].yy;
    } else {
      r3.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r5.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r4.xyz = t4.Sample(s1_s, r3.zw).xyz;
      r3.zw = t5.Sample(s1_s, r5.xy).xy;
      r3.xy = r3.zw * cb7[2].xx + cb7[2].yy;
    }
  }
  r5.xyzw = mad(int4(9,9,9,9), (int4)r0.wwww, int4(9,11,14,15));
  r0.w = mad(9, (int)r0.w, 17);
  r3.zw = saturate(cb7[r5.y+0].xy);
  r6.xy = saturate(cb7[r0.w+0].xy);
  r7.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r6.zw = t1.Sample(s4_s, v3.xy).xy;
  r6.zw = r6.zw * cb0[6].xx + cb0[6].yy;
  r8.zw = t2.Sample(s5_s, v3.xy).wy;
  r0.w = cmp(r8.z >= 0.156862751);
  r0.w = r0.w ? 1.000000 : 0;
  r1.w = -0.188235298 + r8.z;
  r1.w = saturate(1.231884 * r1.w);
  r1.w = saturate(cb7[r5.w+0].y * r1.w + cb7[r5.w+0].x);
  r1.w = saturate(cb7[r5.w+0].w * r1.w + cb7[r5.w+0].z);
  r9.xyz = saturate(float3(4,4,4) * r4.xyz);
  r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r10.xyz = saturate(cb7[r5.x+0].xyz * r9.xyz + r4.xyz);
  r10.xyz = -cb7[r5.x+0].xyz + r10.xyz;
  r5.xyw = r3.zzz * r10.xyz + cb7[r5.x+0].xyz;
  r10.xyz = saturate(float3(4,4,4) * r7.xyz);
  r11.xyz = saturate(float3(-0.25,-0.25,-0.25) + r7.xyz);
  r5.xyw = saturate(r5.xyw * r10.xyz + r11.xyz);
  r3.zw = r3.xy * r3.ww + r6.zw;
  r4.xyz = saturate(cb7[r5.z+0].xyz * r9.xyz + r4.xyz);
  r4.xyz = -cb7[r5.z+0].xyz + r4.xyz;
  r4.xyz = r6.xxx * r4.xyz + cb7[r5.z+0].xyz;
  r4.xyz = saturate(r4.xyz * r10.xyz + r11.xyz);
  r3.xy = r3.xy * r6.yy + r6.zw;
  r4.w = 1;
  r5.xyz = r5.xyw + -r4.xyz;
  r5.w = 0;
  r4.xyzw = r1.wwww * r5.xyzw + r4.xyzw;
  r3.zw = r3.zw + -r3.xy;
  r3.xy = r1.ww * r3.zw + r3.xy;
  r8.xyz = r7.xyz;
  r4.xyzw = -r8.xyzw + r4.xyzw;
  r4.xyzw = r0.wwww * r4.xyzw + r8.xyzw;
  r3.xy = r3.xy + -r6.zw;
  r3.xy = r0.ww * r3.xy + r6.zw;
  r0.w = dot(r3.xy, r3.xy);
  r0.w = 1 + -r0.w;
  r0.w = max(0, r0.w);
  r3.z = sqrt(r0.w);
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r5.xyz = v2.xyz * r3.yyy;
  r3.xyw = v1.xyz * r3.xxx + r5.xyz;
  r3.xyz = v0.xyz * r3.zzz + r3.xyw;
  r0.w = dot(r3.xyz, r3.xyz);
  r0.w = rsqrt(r0.w);
  r3.xyz = r3.xyz * r0.www;
  r5.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r5.zw = v3.xy * cb0[10].xy + cb0[10].zw;
  r5.zw = t26.Sample(s2_s, r5.zw).xy;
  r5.xy = r5.zw * cb0[11].xy + r5.xy;
  r5.xy = cb0[11].zw + r5.xy;
  r0.w = t27.Sample(s2_s, r5.xy).x;
  r0.w = saturate(r0.w);
  r5.xyzw = cb0[13].xyzw * r0.wwww + cb0[12].xyzw;
  r6.xyzw = saturate(float4(4,4,4,4) * r5.xyzw);
  r5.xyzw = saturate(float4(-0.25,-0.25,-0.25,-0.25) + r5.xyzw);
  r5.xyzw = cb0[8].xyzw * r6.xyzw + r5.xyzw;
  r6.xyzw = saturate(float4(4,4,4,4) * r4.xyzw);
  r4.xyzw = saturate(float4(-0.25,-0.25,-0.25,-0.25) + r4.xyzw);
  r4.xyzw = r5.xyzw * r6.xyzw + r4.xyzw;
  r4.xyzw = cb0[14].xxxx * r4.xyzw;
  r0.w = dot(r2.xyz, r3.xyz);
  r0.w = 1 + -r0.w;
  r0.w = -r0.w * r0.w + 1;
  r0.w = saturate(r0.w * cb0[16].x + cb0[16].y);
  r2.xyzw = cb0[17].xyzw * r0.wwww + cb0[15].xyzw;
  r2.xyzw = r4.xyzw * r2.xyzw;
  r2.xyz = cb13[1].www * r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r0.z = sqrt(r0.w);
  r0.z = t21.SampleLevel(s6_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s6_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.yzw = cb8[7].xyz * r2.xyz;
  r0.x = r2.w * r0.x;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}