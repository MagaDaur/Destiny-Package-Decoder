// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture2D<float4> t31 : register(t31);

Texture2D<float4> t30 : register(t30);

Texture2D<float4> t29 : register(t29);

Texture2D<float4> t28 : register(t28);

Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t4 : register(t4);

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
  float4 cb0[42];
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
  r0.w = (uint)v2.w;
  r1.w = cmp((uint)r0.w >= 4);
  if (r1.w != 0) {
    r2.xy = v3.zw * cb7[6].xy + cb7[6].zw;
    r2.xyz = t8.Sample(s1_s, r2.xy).xyz;
  } else {
    r1.w = cmp((uint)r0.w >= 2);
    if (r1.w != 0) {
      r3.xy = v3.zw * cb7[3].xy + cb7[3].zw;
      r2.xyz = t6.Sample(s1_s, r3.xy).xyz;
    } else {
      r3.xy = v3.zw * cb7[0].xy + cb7[0].zw;
      r2.xyz = t4.Sample(s1_s, r3.xy).xyz;
    }
  }
  r3.xyzw = mad(int4(9,9,9,9), (int4)r0.wwww, int4(9,11,14,15));
  r0.w = mad(9, (int)r0.w, 17);
  r1.w = saturate(cb7[r3.y+0].x);
  r0.w = saturate(cb7[r0.w+0].x);
  r4.xyzw = t0.Sample(s3_s, v3.xy).xyzw;
  r2.w = t2.Sample(s4_s, v3.xy).w;
  r3.y = cmp(r2.w >= 0.156862751);
  r3.y = r3.y ? 1.000000 : 0;
  r2.w = -0.188235298 + r2.w;
  r2.w = saturate(1.231884 * r2.w);
  r2.w = saturate(cb7[r3.w+0].y * r2.w + cb7[r3.w+0].x);
  r2.w = saturate(cb7[r3.w+0].w * r2.w + cb7[r3.w+0].z);
  r5.xyz = saturate(float3(4,4,4) * r2.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r6.xyz = saturate(cb7[r3.x+0].xyz * r5.xyz + r2.xyz);
  r6.xyz = -cb7[r3.x+0].xyz + r6.xyz;
  r6.xyz = r1.www * r6.xyz + cb7[r3.x+0].xyz;
  r7.xyz = saturate(float3(4,4,4) * r4.xyz);
  r8.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r6.xyz = saturate(r6.xyz * r7.xyz + r8.xyz);
  r2.xyz = saturate(cb7[r3.z+0].xyz * r5.xyz + r2.xyz);
  r2.xyz = -cb7[r3.z+0].xyz + r2.xyz;
  r2.xyz = r0.www * r2.xyz + cb7[r3.z+0].xyz;
  r2.xyz = saturate(r2.xyz * r7.xyz + r8.xyz);
  r5.xyz = r6.xyz + -r2.xyz;
  r2.xyz = r2.www * r5.xyz + r2.xyz;
  r2.xyz = r2.xyz + -r4.xyz;
  r2.xyz = r3.yyy * r2.xyz + r4.xyz;
  r0.w = cb0[7].x * v5.y;
  r0.w = max(0, r0.w);
  r0.w = log2(r0.w);
  r0.w = cb0[8].x * r0.w;
  r0.w = exp2(r0.w);
  r5.x = cb0[9].x + r0.w;
  r5.y = 0;
  r0.w = t26.Sample(s5_s, r5.xy).x;
  r0.w = saturate(r0.w * cb0[10].x + cb0[10].y);
  r5.xyzw = cb0[12].xyzw * r0.wwww + cb0[11].xyzw;
  r3.zw = v3.xy * cb0[13].xy + cb0[13].zw;
  r3.zw = t27.Sample(s2_s, r3.zw).xy;
  r3.zw = -cb0[15].xy + r3.zw;
  r3.zw = r3.zw * cb0[14].xx + v3.xy;
  r3.zw = r3.zw * cb0[16].xy + cb0[16].zw;
  r6.xyz = t28.Sample(s2_s, r3.zw).xyz;
  r3.zw = v3.xy * cb0[17].xy + cb0[17].zw;
  r7.xyz = t29.Sample(s2_s, r3.zw).xyz;
  r7.w = 1;
  r3.zw = v3.yx * cb0[19].yx + cb0[19].wz;
  r8.xy = round(r3.zw);
  r3.zw = -r8.xy + r3.zw;
  r8.xy = abs(r3.zw) * float2(-16,-16) + float2(8,8);
  r3.zw = r8.xy * r3.zw;
  r8.xy = abs(r3.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r3.zw = r8.xy * r3.zw;
  r3.zw = cb0[20].yx * r3.zw + v3.xy;
  r8.xy = r3.wz * cb0[21].yx + cb0[21].wz;
  r8.zw = round(r8.xy);
  r8.xy = r8.xy + -r8.zw;
  r8.zw = abs(r8.xy) * float2(-16,-16) + float2(8,8);
  r8.xy = r8.xy * r8.zw;
  r8.zw = abs(r8.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r8.xy = r8.xy * r8.zw;
  r3.zw = cb0[22].yx * r8.xy + r3.zw;
  r0.w = r3.w * cb0[23].y + cb0[23].w;
  r8.xy = r3.zw * cb0[24].xy + cb0[24].zw;
  r1.w = t30.Sample(s2_s, r8.xy).y;
  r1.w = -cb0[26].y + r1.w;
  r0.w = r1.w * cb0[25].x + r0.w;
  r0.w = frac(r0.w);
  r1.w = cb0[27].z + r0.w;
  r1.w = saturate(cb0[27].y * abs(r1.w) + cb0[27].x);
  r0.w = cb0[28].z + r0.w;
  r0.w = saturate(cb0[28].y * abs(r0.w) + cb0[28].x);
  r0.w = r1.w + r0.w;
  r0.w = min(1, r0.w);
  r8.xy = r3.zw * cb0[29].xy + cb0[29].zw;
  r1.w = cb0[30].x * cb0[7].x;
  r3.zw = t30.Sample(s2_s, r3.zw).xy;
  r3.zw = -cb0[31].xy + r3.zw;
  r3.zw = r3.zw * r1.ww + r8.xy;
  r1.w = t31.Sample(s2_s, r3.zw).x;
  r2.w = 1 + -r1.w;
  r2.w = max(0, r2.w);
  r2.w = log2(r2.w);
  r2.w = cb0[32].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = r2.w * cb0[33].x + cb0[7].x;
  r0.w = log2(r0.w);
  r0.w = r2.w * r0.w;
  r0.w = exp2(r0.w);
  r0.w = saturate(cb0[34].x + r0.w);
  r1.w = cb0[35].x + r1.w;
  r8.xyz = r0.www * r1.www + cb0[34].xxx;
  r8.w = 1;
  r8.xyzw = cb0[36].xyzw * r8.xyzw;
  r7.xyzw = r7.xyzw * cb0[18].xyzw + r8.xyzw;
  r6.w = 1;
  r6.xyzw = r6.xyzw + r7.xyzw;
  r5.xyzw = r6.xyzw * r5.xyzw;
  r5.xyzw = saturate(r5.xyzw * cb0[37].xxxx + cb0[37].yyyy);
  r5.xyzw = cb0[6].xyzw * r5.xyzw;
  r0.w = saturate(v5.y);
  r6.xyzw = cb0[39].xyzw * r0.wwww + cb0[38].xyzw;
  r5.xyzw = r6.xyzw * r5.xyzw;
  r4.xyzw = r5.xyzw * r4.xyzw;
  r0.w = 1 + -v5.y;
  r0.w = r0.w * r0.w;
  r1.w = cb0[41].x + cb0[40].x;
  r0.w = r1.w * r0.w;
  r5.xyzw = r4.xyzw * r0.wwww;
  r6.xyz = saturate(float3(4,4,4) * r2.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r2.xyz = cb7[r3.x+0].xyz * r6.xyz + r2.xyz;
  r2.xyz = -r4.xyz * r0.www + r2.xyz;
  r2.xyz = r3.yyy * r2.xyz + r5.xyz;
  r0.w = -r4.w * r0.w + 1;
  r0.w = r3.y * r0.w + r5.w;
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