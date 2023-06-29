// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
Texture2D<float4> t31 : register(t31);

Texture2D<float4> t30 : register(t30);

Texture2D<float4> t29 : register(t29);

Texture2D<float4> t28 : register(t28);

Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

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
  float4 cb7[55];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r2.xyz = t3.Sample(s4_s, v3.xy).xyz;
  r0.w = r2.y + -r2.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r2.y : r2.z;
  r3.xy = ddx_coarse(r2.xy);
  r3.z = ddx_coarse(r0.w);
  r4.xy = ddy_coarse(r2.xy);
  r4.z = ddy_coarse(r0.w);
  r2.zw = r3.xx * r3.yz;
  r3.xy = r4.xx * r4.yz;
  r3.zw = cmp(abs(r3.xy) < abs(r2.zw));
  r2.zw = r3.zw ? r2.zw : r3.xy;
  r1.w = -0.5 + r2.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r3.x = r2.x + r2.y;
  r3.x = -1 + r3.x;
  r3.x = cmp(abs(r3.x) < 0.00588235306);
  r2.zw = cmp(r2.zw < float2(0,0));
  r2.z = r2.z ? r3.x : 0;
  r3.x = 1 + -r2.y;
  r2.z = r2.z ? r3.x : r2.x;
  r3.x = r2.z + r0.w;
  r3.x = -1 + r3.x;
  r3.x = cmp(abs(r3.x) < 0.00588235306);
  r2.w = r2.w ? r3.x : 0;
  r3.x = 1 + -r0.w;
  r2.z = r2.w ? r3.x : r2.z;
  r1.w = r1.w ? r2.z : r2.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r0.w = 4;
  } else {
    r2.x = cmp(r2.y >= 0.5);
    if (r2.x != 0) {
      r0.w = 2;
    } else {
      r0.w = 0;
    }
  }
  r1.w = cmp(r1.w >= 0.5);
  r2.x = (int)r0.w + 1;
  r0.w = r1.w ? r2.x : r0.w;
  r0.w = (int)r0.w * 9;
  r2.xyzw = t0.Sample(s2_s, v3.xy).xyzw;
  r1.w = t2.Sample(s3_s, v3.xy).w;
  r1.w = cmp(r1.w >= 0.156862751);
  r1.w = r1.w ? 1.000000 : 0;
  r3.x = cb0[7].x * v5.y;
  r3.x = max(0, r3.x);
  r3.x = log2(r3.x);
  r3.x = cb0[8].x * r3.x;
  r3.x = exp2(r3.x);
  r3.x = cb0[9].x + r3.x;
  r3.y = 0;
  r3.x = t26.Sample(s5_s, r3.xy).x;
  r3.x = saturate(r3.x * cb0[10].x + cb0[10].y);
  r3.xyzw = cb0[12].xyzw * r3.xxxx + cb0[11].xyzw;
  r4.xy = v3.xy * cb0[13].xy + cb0[13].zw;
  r4.xy = t27.Sample(s1_s, r4.xy).xy;
  r4.xy = -cb0[15].xy + r4.xy;
  r4.xy = r4.xy * cb0[14].xx + v3.xy;
  r4.xy = r4.xy * cb0[16].xy + cb0[16].zw;
  r4.xyz = t28.Sample(s1_s, r4.xy).xyz;
  r5.xy = v3.xy * cb0[17].xy + cb0[17].zw;
  r5.xyz = t29.Sample(s1_s, r5.xy).xyz;
  r5.w = 1;
  r6.xy = v3.yx * cb0[19].yx + cb0[19].wz;
  r6.zw = round(r6.xy);
  r6.xy = r6.xy + -r6.zw;
  r6.zw = abs(r6.xy) * float2(-16,-16) + float2(8,8);
  r6.xy = r6.xy * r6.zw;
  r6.zw = abs(r6.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r6.xy = r6.xy * r6.zw;
  r6.xy = cb0[20].yx * r6.xy + v3.xy;
  r6.zw = r6.yx * cb0[21].yx + cb0[21].wz;
  r7.xy = round(r6.zw);
  r6.zw = -r7.xy + r6.zw;
  r7.xy = abs(r6.zw) * float2(-16,-16) + float2(8,8);
  r6.zw = r7.xy * r6.zw;
  r7.xy = abs(r6.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r6.zw = r7.xy * r6.zw;
  r6.xy = cb0[22].yx * r6.zw + r6.xy;
  r6.z = r6.y * cb0[23].y + cb0[23].w;
  r7.xy = r6.xy * cb0[24].xy + cb0[24].zw;
  r6.w = t30.Sample(s1_s, r7.xy).y;
  r6.w = -cb0[26].y + r6.w;
  r6.z = r6.w * cb0[25].x + r6.z;
  r6.z = frac(r6.z);
  r6.w = cb0[27].z + r6.z;
  r6.w = saturate(cb0[27].y * abs(r6.w) + cb0[27].x);
  r6.z = cb0[28].z + r6.z;
  r6.z = saturate(cb0[28].y * abs(r6.z) + cb0[28].x);
  r6.z = r6.w + r6.z;
  r6.z = min(1, r6.z);
  r7.xy = r6.xy * cb0[29].xy + cb0[29].zw;
  r6.w = cb0[30].x * cb0[7].x;
  r6.xy = t30.Sample(s1_s, r6.xy).xy;
  r6.xy = -cb0[31].xy + r6.xy;
  r6.xy = r6.xy * r6.ww + r7.xy;
  r6.x = t31.Sample(s1_s, r6.xy).x;
  r6.y = 1 + -r6.x;
  r6.y = max(0, r6.y);
  r6.y = log2(r6.y);
  r6.y = cb0[32].x * r6.y;
  r6.y = exp2(r6.y);
  r6.y = r6.y * cb0[33].x + cb0[7].x;
  r6.z = log2(r6.z);
  r6.y = r6.y * r6.z;
  r6.y = exp2(r6.y);
  r6.y = saturate(cb0[34].x + r6.y);
  r6.x = cb0[35].x + r6.x;
  r6.xyz = r6.yyy * r6.xxx + cb0[34].xxx;
  r6.w = 1;
  r6.xyzw = cb0[36].xyzw * r6.xyzw;
  r5.xyzw = r5.xyzw * cb0[18].xyzw + r6.xyzw;
  r4.w = 1;
  r4.xyzw = r4.xyzw + r5.xyzw;
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = saturate(r3.xyzw * cb0[37].xxxx + cb0[37].yyyy);
  r3.xyzw = cb0[6].xyzw * r3.xyzw;
  r4.x = saturate(v5.y);
  r4.xyzw = cb0[39].xyzw * r4.xxxx + cb0[38].xyzw;
  r3.xyzw = r4.xyzw * r3.xyzw;
  r3.xyzw = r3.xyzw * r2.xyzw;
  r2.w = 1 + -v5.y;
  r2.w = r2.w * r2.w;
  r4.x = cb0[41].x + cb0[40].x;
  r2.w = r4.x * r2.w;
  r4.xyzw = r3.xyzw * r2.wwww;
  r5.xyz = saturate(float3(4,4,4) * r2.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r2.xyz = cb7[r0.w+9].xyz * r5.xyz + r2.xyz;
  r2.xyz = -r3.xyz * r2.www + r2.xyz;
  r2.xyz = r1.www * r2.xyz + r4.xyz;
  r0.w = -r3.w * r2.w + 1;
  r0.w = r1.w * r0.w + r4.w;
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