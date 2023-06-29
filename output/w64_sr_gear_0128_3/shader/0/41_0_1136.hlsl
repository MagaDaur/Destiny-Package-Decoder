// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

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
  float4 cb0[22];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.x = dot(r2.xyz, v1.xyz);
  r3.y = dot(r2.xyz, v2.xyz);
  r4.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r0.w = r4.y + -r4.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r4.y : r4.z;
  r5.xy = ddx_coarse(r4.xy);
  r5.z = ddx_coarse(r0.w);
  r6.xy = ddy_coarse(r4.xy);
  r6.z = ddy_coarse(r0.w);
  r3.zw = r5.xx * r5.yz;
  r4.zw = r6.xx * r6.yz;
  r5.xy = cmp(abs(r4.zw) < abs(r3.zw));
  r3.zw = r5.xy ? r3.zw : r4.zw;
  r1.w = -0.5 + r4.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r2.w = r4.x + r4.y;
  r2.w = -1 + r2.w;
  r2.w = cmp(abs(r2.w) < 0.00588235306);
  r3.zw = cmp(r3.zw < float2(0,0));
  r2.w = r2.w ? r3.z : 0;
  r3.z = 1 + -r4.y;
  r2.w = r2.w ? r3.z : r4.x;
  r3.z = r2.w + r0.w;
  r3.z = -1 + r3.z;
  r3.z = cmp(abs(r3.z) < 0.00588235306);
  r3.z = r3.w ? r3.z : 0;
  r3.w = 1 + -r0.w;
  r2.w = r3.z ? r3.w : r2.w;
  r1.w = r1.w ? r2.w : r4.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r3.zw = v3.zw * cb7[6].xy + cb7[6].zw;
    r4.xzw = t8.Sample(s1_s, r3.zw).xyz;
    r0.w = 4;
  } else {
    r2.w = cmp(r4.y >= 0.5);
    if (r2.w != 0) {
      r3.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r4.xzw = t6.Sample(s1_s, r3.zw).xyz;
      r0.w = 2;
    } else {
      r3.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r4.xzw = t4.Sample(s1_s, r3.zw).xyz;
      r0.w = 0;
    }
  }
  r1.w = cmp(r1.w >= 0.5);
  r2.w = (int)r0.w + 1;
  r0.w = r1.w ? r2.w : r0.w;
  r0.w = (int)r0.w * 9;
  r1.w = saturate(cb7[r0.w+11].x);
  r2.w = saturate(cb7[r0.w+17].x);
  r5.xyzw = t0.Sample(s3_s, v3.xy).xyzw;
  r3.z = t2.Sample(s4_s, v3.xy).w;
  r3.w = cmp(r3.z >= 0.156862751);
  r3.w = r3.w ? 1.000000 : 0;
  r3.z = -0.188235298 + r3.z;
  r3.z = saturate(1.231884 * r3.z);
  r3.z = saturate(cb7[r0.w+15].y * r3.z + cb7[r0.w+15].x);
  r3.z = saturate(cb7[r0.w+15].w * r3.z + cb7[r0.w+15].z);
  r6.xyz = saturate(float3(4,4,4) * r4.xzw);
  r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xzw);
  r7.xyz = saturate(cb7[r0.w+9].xyz * r6.xyz + r4.xyz);
  r7.xyz = -cb7[r0.w+9].xyz + r7.xyz;
  r7.xyz = r1.www * r7.xyz + cb7[r0.w+9].xyz;
  r8.xyz = saturate(float3(4,4,4) * r5.xyz);
  r9.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r7.xyz = saturate(r7.xyz * r8.xyz + r9.xyz);
  r4.xyz = saturate(cb7[r0.w+14].xyz * r6.xyz + r4.xyz);
  r4.xyz = -cb7[r0.w+14].xyz + r4.xyz;
  r4.xyz = r2.www * r4.xyz + cb7[r0.w+14].xyz;
  r4.xyz = saturate(r4.xyz * r8.xyz + r9.xyz);
  r6.xyz = r7.xyz + -r4.xyz;
  r4.xyz = r3.zzz * r6.xyz + r4.xyz;
  r4.xyz = r4.xyz + -r5.xyz;
  r4.xyz = r3.www * r4.xyz + r5.xyz;
  r1.w = dot(r2.xyz, v0.xyz);
  r2.xy = float2(1,1) + -v5.zx;
  r2.zw = v3.xy * cb0[8].xy + cb0[8].zw;
  r6.xy = v3.xy * cb0[9].xy + cb0[9].zw;
  r6.xy = t26.Sample(s2_s, r6.xy).xy;
  r6.xy = -cb0[11].xy + r6.xy;
  r2.zw = r6.xy * cb0[10].xx + r2.zw;
  r3.xy = cb0[12].xx * r3.xy;
  r3.xy = r3.xy / r1.ww;
  r2.zw = -r3.xy + r2.zw;
  r1.w = t27.Sample(s2_s, r2.zw).x;
  r2.z = saturate(r1.w * cb0[13].x + cb0[13].y);
  r7.xyzw = cb0[15].xyzw * r2.zzzz + cb0[14].xyzw;
  r1.w = saturate(r1.w * cb0[16].x + cb0[16].y);
  r8.xyzw = cb0[18].xyzw * r1.wwww + cb0[17].xyzw;
  r7.xyzw = r8.xyzw + r7.xyzw;
  r1.w = max(0, r2.y);
  r1.w = log2(r1.w);
  r1.w = cb0[19].x * r1.w;
  r1.w = exp2(r1.w);
  r8.xyzw = v5.zzzz * r7.xyzw;
  r8.xyzw = r8.xyzw * r1.wwww;
  r2.yz = r6.xy * cb0[10].xx + v3.xy;
  r2.yz = r2.yz * cb0[20].xy + cb0[20].zw;
  r1.w = t27.Sample(s2_s, r2.yz).x;
  r1.w = saturate(r1.w * cb0[21].x + cb0[21].y);
  r6.xyzw = r8.xyzw * r1.wwww;
  r2.xyzw = r2.xxxx * r7.xyzw + r6.xyzw;
  r6.xyzw = r2.xyzw * r5.xyzw;
  r3.xyz = saturate(float3(4,4,4) * r4.xyz);
  r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r3.xyz = cb7[r0.w+9].xyz * r3.xyz + r4.xyz;
  r2.xyz = -r2.xyz * r5.xyz + r3.xyz;
  r2.xyz = r3.www * r2.xyz + r6.xyz;
  r0.w = -r2.w * r5.w + 1;
  r0.w = r3.w * r0.w + r6.w;
  r2.xyz = cb13[1].www * r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r1.x = dot(-r1.xyz, -r1.xyz);
  r1.x = sqrt(r1.x);
  r1.x = 0.015625 * r1.x;
  r1.x = min(1, r1.x);
  r0.z = sqrt(r1.x);
  r0.z = t21.SampleLevel(s6_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s6_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r1.xyz = cb8[7].xyz * r2.xyz;
  r0.x = r0.w * r0.x;
  o0.xyz = r1.xyz * r0.xxx;
  o0.w = 0;
  return;
}