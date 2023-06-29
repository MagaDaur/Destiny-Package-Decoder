// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:50 2023
Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

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
  float4 cb0[14];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r0.w = dot(r2.xyz, v0.xyz);
  r2.xy = v3.xy * cb0[3].xy + cb0[3].zw;
  r3.xyz = t3.Sample(s4_s, r2.xy).xyz;
  r1.w = r3.y + -r3.z;
  r1.w = cmp(r1.w < 0.00470588217);
  r1.w = r1.w ? r3.y : r3.z;
  r4.xy = ddx_coarse(r3.xy);
  r4.z = ddx_coarse(r1.w);
  r5.xy = ddy_coarse(r3.xy);
  r5.z = ddy_coarse(r1.w);
  r2.zw = r4.xx * r4.yz;
  r3.zw = r5.xx * r5.yz;
  r4.xy = cmp(abs(r3.zw) < abs(r2.zw));
  r2.zw = r4.xy ? r2.zw : r3.zw;
  r3.z = -0.5 + r3.x;
  r3.w = r3.x + r3.y;
  r3.w = -1 + r3.w;
  r3.zw = cmp(abs(r3.zw) < float2(0.00470588217,0.00588235306));
  r2.zw = cmp(r2.zw < float2(0,0));
  r2.z = r2.z ? r3.w : 0;
  r3.w = 1 + -r3.y;
  r2.z = r2.z ? r3.w : r3.x;
  r3.w = r2.z + r1.w;
  r3.w = -1 + r3.w;
  r3.w = cmp(abs(r3.w) < 0.00588235306);
  r2.w = r2.w ? r3.w : 0;
  r3.w = 1 + -r1.w;
  r2.z = r2.w ? r3.w : r2.z;
  r2.z = r3.z ? r2.z : r3.x;
  r1.w = cmp(r1.w >= 0.5);
  if (r1.w != 0) {
    r3.xz = v3.zw * cb7[6].xy + cb7[6].zw;
    r3.xzw = t8.Sample(s1_s, r3.xz).xyz;
    r1.w = 4;
  } else {
    r2.w = cmp(r3.y >= 0.5);
    if (r2.w != 0) {
      r4.xy = v3.zw * cb7[3].xy + cb7[3].zw;
      r3.xzw = t6.Sample(s1_s, r4.xy).xyz;
      r1.w = 2;
    } else {
      r4.xy = v3.zw * cb7[0].xy + cb7[0].zw;
      r3.xzw = t4.Sample(s1_s, r4.xy).xyz;
      r1.w = 0;
    }
  }
  r2.z = cmp(r2.z >= 0.5);
  r2.w = (int)r1.w + 1;
  r1.w = r2.z ? r2.w : r1.w;
  r1.w = (int)r1.w * 9;
  r2.z = saturate(cb7[r1.w+11].x);
  r2.w = saturate(cb7[r1.w+17].x);
  r4.xyz = t0.Sample(s2_s, r2.xy).xyz;
  r2.x = t2.Sample(s3_s, r2.xy).w;
  r2.y = cmp(r2.x >= 0.156862751);
  r2.y = r2.y ? 1.000000 : 0;
  r2.x = -0.188235298 + r2.x;
  r2.x = saturate(1.231884 * r2.x);
  r2.x = saturate(cb7[r1.w+15].y * r2.x + cb7[r1.w+15].x);
  r2.x = saturate(cb7[r1.w+15].w * r2.x + cb7[r1.w+15].z);
  r5.xyz = saturate(float3(4,4,4) * r3.xzw);
  r3.xyz = saturate(float3(-0.25,-0.25,-0.25) + r3.xzw);
  r6.xyz = saturate(cb7[r1.w+9].xyz * r5.xyz + r3.xyz);
  r6.xyz = -cb7[r1.w+9].xyz + r6.xyz;
  r6.xyz = r2.zzz * r6.xyz + cb7[r1.w+9].xyz;
  r7.xyz = saturate(float3(4,4,4) * r4.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r6.xyz = saturate(r6.xyz * r7.xyz + r8.xyz);
  r3.xyz = saturate(cb7[r1.w+14].xyz * r5.xyz + r3.xyz);
  r3.xyz = -cb7[r1.w+14].xyz + r3.xyz;
  r3.xyz = r2.www * r3.xyz + cb7[r1.w+14].xyz;
  r3.xyz = saturate(r3.xyz * r7.xyz + r8.xyz);
  r5.xyz = r6.xyz + -r3.xyz;
  r3.xyz = r2.xxx * r5.xyz + r3.xyz;
  r3.xyz = r3.xyz * cb0[10].xyz + -r4.xyz;
  r3.xyz = r2.yyy * r3.xyz + r4.xyz;
  r2.z = cmp(0 != cb7[r1.w+10].w);
  r4.xyz = r2.zzz ? cb7[r1.w+10].xyz : 0;
  r0.w = r0.w * r0.w;
  r0.w = saturate(r0.w * cb0[5].x + cb0[5].y);
  r2.z = saturate(v5.x * cb0[6].x + cb0[6].y);
  r2.z = cb0[7].x * r2.z;
  r2.z = cb0[8].x * r2.z;
  r2.z = max(0, r2.z);
  r2.z = log2(r2.z);
  r2.z = cb0[9].x * r2.z;
  r2.z = exp2(r2.z);
  r0.w = r2.z * r0.w;
  r4.xyz = r0.www * r4.xyz;
  r4.xyz = r4.xyz * r2.yyy;
  r5.xyz = r4.xyz * r2.xxx;
  r2.xzw = r4.xyz * r2.xxx + r3.xyz;
  r0.w = max(r2.x, r2.z);
  r0.w = max(r0.w, r2.w);
  r0.w = saturate(-1 + r0.w);
  r0.w = 1 + -r0.w;
  r2.xzw = r3.xyz * r0.www + r5.xyz;
  r0.w = max(r2.x, r2.z);
  r0.w = max(r0.w, r2.w);
  r0.w = max(1, r0.w);
  r2.xzw = r2.xzw / r0.www;
  r3.xyz = saturate(float3(4,4,4) * r2.xzw);
  r2.xzw = saturate(float3(-0.25,-0.25,-0.25) + r2.xzw);
  r2.xzw = cb7[r1.w+9].xyz * r3.xyz + r2.xzw;
  r2.xzw = -cb0[13].xyz + r2.xzw;
  r2.xzw = r2.yyy * r2.xzw + cb0[13].xyz;
  r0.w = -cb0[13].w + 1;
  r0.w = r2.y * r0.w + cb0[13].w;
  r2.xyz = cb13[1].www * r2.xzw;
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