// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t0 : register(t0);

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
  float4 cb0[17];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
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
    r3.xyz = t8.Sample(s1_s, r3.xy).xyz;
  } else {
    r1.w = cmp((uint)r0.w >= 2);
    if (r1.w != 0) {
      r4.xy = v3.zw * cb7[3].xy + cb7[3].zw;
      r3.xyz = t6.Sample(s1_s, r4.xy).xyz;
    } else {
      r4.xy = v3.zw * cb7[0].xy + cb7[0].zw;
      r3.xyz = t4.Sample(s1_s, r4.xy).xyz;
    }
  }
  r4.xyzw = mad(int4(9,9,9,9), (int4)r0.wwww, int4(9,11,14,15));
  r0.w = mad(9, (int)r0.w, 17);
  r1.w = saturate(cb7[r4.y+0].x);
  r0.w = saturate(cb7[r0.w+0].x);
  r5.xyzw = t0.Sample(s3_s, v3.xy).xyzw;
  r2.w = t2.Sample(s4_s, v3.xy).w;
  r3.w = cmp(r2.w >= 0.156862751);
  r3.w = r3.w ? 1.000000 : 0;
  r2.w = -0.188235298 + r2.w;
  r2.w = saturate(1.231884 * r2.w);
  r2.w = saturate(cb7[r4.w+0].y * r2.w + cb7[r4.w+0].x);
  r2.w = saturate(cb7[r4.w+0].w * r2.w + cb7[r4.w+0].z);
  r6.xyz = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r7.xyz = saturate(cb7[r4.x+0].xyz * r6.xyz + r3.xyz);
  r7.xyz = -cb7[r4.x+0].xyz + r7.xyz;
  r7.xyz = r1.www * r7.xyz + cb7[r4.x+0].xyz;
  r8.xyz = saturate(float3(4,4,4) * r5.xyz);
  r9.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r7.xyz = saturate(r7.xyz * r8.xyz + r9.xyz);
  r3.xyz = saturate(cb7[r4.z+0].xyz * r6.xyz + r3.xyz);
  r3.xyz = -cb7[r4.z+0].xyz + r3.xyz;
  r3.xyz = r0.www * r3.xyz + cb7[r4.z+0].xyz;
  r3.xyz = saturate(r3.xyz * r8.xyz + r9.xyz);
  r4.yzw = r7.xyz + -r3.xyz;
  r3.xyz = r2.www * r4.yzw + r3.xyz;
  r3.xyz = r3.xyz + -r5.xyz;
  r3.xyz = r3.www * r3.xyz + r5.xyz;
  r0.w = dot(r2.xyz, v0.xyz);
  r0.w = r0.w * r0.w;
  r0.w = saturate(r0.w * cb0[7].x + cb0[7].y);
  r2.xyzw = cb0[9].xyzw * r0.wwww + cb0[8].xyzw;
  r2.xyzw = r2.xyzw * r5.xyzw;
  r0.w = dot(cb0[10].xy, v3.xy);
  r5.x = cb0[10].z + r0.w;
  r0.w = dot(cb0[11].xy, v3.xy);
  r5.y = cb0[11].z + r0.w;
  r4.yz = r5.xy * cb0[12].xy + cb0[12].zw;
  r0.w = t26.Sample(s2_s, r4.yz).x;
  r0.w = saturate(r0.w * cb0[13].x + cb0[13].y);
  r4.yz = v3.xy * cb0[14].xy + cb0[14].zw;
  r1.w = t27.Sample(s2_s, r4.yz).x;
  r1.w = saturate(r1.w);
  r5.xyzw = cb0[16].xyzw * r1.wwww + cb0[15].xyzw;
  r5.xyzw = r5.xyzw + r0.wwww;
  r2.xyzw = r5.xyzw * r2.xyzw;
  r5.xyzw = cb0[6].xxxx * r2.xyzw;
  r4.yzw = saturate(float3(4,4,4) * r3.xyz);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xyz);
  r3.xyz = cb7[r4.x+0].xyz * r4.yzw + r3.xyz;
  r2.xyz = -cb0[6].xxx * r2.xyz + r3.xyz;
  r2.xyz = r3.www * r2.xyz + r5.xyz;
  r0.w = -cb0[6].x * r2.w + 1;
  r0.w = r3.w * r0.w + r5.w;
  r2.xyz = cb13[1].www * r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r0.z = sqrt(r1.x);
  r0.z = t21.SampleLevel(s5_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s5_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r1.xyz = cb8[7].xyz * r2.xyz;
  r0.x = r0.w * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}