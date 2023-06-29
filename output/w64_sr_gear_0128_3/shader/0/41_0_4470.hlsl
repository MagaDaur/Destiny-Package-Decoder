// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:44 2023
Texture2D<float4> t28 : register(t28);

Texture2D<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

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

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[34];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v6.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xyz = -cb12[14].xyz + v4.xyz;
  r0.w = dot(-cb12[6].xyz, r3.xyz);
  r3.x = dot(r2.xyz, v1.xyz);
  r3.y = dot(r2.xyz, v2.xyz);
  r1.w = v0.w * v0.w;
  r4.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r2.w = r4.y + -r4.z;
  r2.w = cmp(r2.w < 0.00470588217);
  r2.w = r2.w ? r4.y : r4.z;
  r5.xy = ddx_coarse(r4.xy);
  r5.z = ddx_coarse(r2.w);
  r6.xy = ddy_coarse(r4.xy);
  r6.z = ddy_coarse(r2.w);
  r3.zw = r5.xx * r5.yz;
  r4.zw = r6.xx * r6.yz;
  r5.xy = cmp(abs(r4.zw) < abs(r3.zw));
  r3.zw = r5.xy ? r3.zw : r4.zw;
  r4.z = -0.5 + r4.x;
  r4.w = r4.x + r4.y;
  r4.w = -1 + r4.w;
  r4.zw = cmp(abs(r4.zw) < float2(0.00470588217,0.00588235306));
  r3.zw = cmp(r3.zw < float2(0,0));
  r3.z = r3.z ? r4.w : 0;
  r4.w = 1 + -r4.y;
  r3.z = r3.z ? r4.w : r4.x;
  r4.w = r3.z + r2.w;
  r4.w = -1 + r4.w;
  r4.w = cmp(abs(r4.w) < 0.00588235306);
  r3.w = r3.w ? r4.w : 0;
  r4.w = 1 + -r2.w;
  r3.z = r3.w ? r4.w : r3.z;
  r3.z = r4.z ? r3.z : r4.x;
  r2.w = cmp(r2.w >= 0.5);
  if (r2.w != 0) {
    r4.xz = v3.zw * cb7[7].xy + cb7[7].zw;
    r4.xz = t9.Sample(s1_s, r4.xz).xy;
    r4.xz = r4.xz * cb7[8].xx + cb7[8].yy;
    r2.w = 4;
  } else {
    r3.w = cmp(r4.y >= 0.5);
    if (r3.w != 0) {
      r4.yw = v3.zw * cb7[4].xy + cb7[4].zw;
      r4.yw = t7.Sample(s1_s, r4.yw).xy;
      r4.xz = r4.yw * cb7[5].xx + cb7[5].yy;
      r2.w = 2;
    } else {
      r4.yw = v3.zw * cb7[1].xy + cb7[1].zw;
      r4.yw = t5.Sample(s1_s, r4.yw).xy;
      r4.xz = r4.yw * cb7[2].xx + cb7[2].yy;
      r2.w = 0;
    }
  }
  r3.z = cmp(r3.z >= 0.5);
  r3.w = (int)r2.w + 1;
  r2.w = r3.z ? r3.w : r2.w;
  r2.w = (int)r2.w * 9;
  r3.z = saturate(cb7[r2.w+11].y);
  r3.w = saturate(cb7[r2.w+12].z);
  r4.y = saturate(cb7[r2.w+17].y);
  r5.xy = t1.Sample(s3_s, v3.xy).xy;
  r5.xy = r5.xy * cb0[4].xx + cb0[4].yy;
  r4.w = t2.Sample(s4_s, v3.xy).w;
  r5.z = cmp(r4.w >= 0.156862751);
  r5.z = r5.z ? 1.000000 : 0;
  r4.w = -0.188235298 + r4.w;
  r4.w = saturate(1.231884 * r4.w);
  r4.w = saturate(cb7[r2.w+15].y * r4.w + cb7[r2.w+15].x);
  r2.w = saturate(cb7[r2.w+15].w * r4.w + cb7[r2.w+15].z);
  r6.xy = r4.xz * r3.zz + r5.xy;
  r4.xy = r4.xz * r4.yy + r5.xy;
  r4.zw = r6.xy + -r4.xy;
  r4.xy = r2.ww * r4.zw + r4.xy;
  r4.xy = r4.xy + -r5.xy;
  r4.xy = r5.zz * r4.xy + r5.xy;
  r2.w = r5.z * r3.w;
  r3.z = dot(r4.xy, r4.xy);
  r3.z = 1 + -r3.z;
  r3.z = max(0, r3.z);
  r4.z = sqrt(r3.z);
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = r4.xyz * r3.zzz;
  r5.xyz = v2.xyz * r4.yyy;
  r4.xyw = v1.xyz * r4.xxx + r5.xyz;
  r4.xyz = v0.xyz * r4.zzz + r4.xyw;
  r3.z = dot(r4.xyz, r4.xyz);
  r3.z = rsqrt(r3.z);
  r4.xyz = r4.xyz * r3.zzz;
  r3.z = dot(r2.xyz, v0.xyz);
  r3.w = r3.z * r3.z;
  r3.w = saturate(r3.w * cb0[6].x + cb0[6].y);
  r3.w = r3.w * r3.w;
  r5.xyzw = cb0[8].xyzw * r3.wwww + cb0[7].xyzw;
  r3.xy = cb0[9].xx * r3.xy;
  r3.xy = r3.xy / r3.zz;
  r3.xy = v3.xy + -r3.xy;
  r3.zw = r3.xy * cb0[10].xy + cb0[10].zw;
  r6.xy = r3.xy * cb0[11].xy + cb0[11].zw;
  r6.xy = t26.Sample(s2_s, r6.xy).xy;
  r6.xy = -cb0[13].xy + r6.xy;
  r3.zw = r6.xy * cb0[12].xx + r3.zw;
  r3.z = t27.Sample(s2_s, r3.zw).x;
  r3.z = saturate(r3.z);
  r7.xyzw = cb0[15].xyzw * r3.zzzz + cb0[14].xyzw;
  r3.xy = r3.xy * cb0[16].xy + cb0[16].zw;
  r3.xy = r6.xy * cb0[12].xx + r3.xy;
  r3.x = t28.Sample(s2_s, r3.xy).x;
  r3.x = saturate(r3.x);
  r3.xyzw = cb0[18].xyzw * r3.xxxx + cb0[17].xyzw;
  r3.xyzw = r7.xyzw + r3.xyzw;
  r3.xyzw = r5.xyzw * r3.xyzw;
  r5.x = max(0, v5.x);
  r5.x = log2(r5.x);
  r5.x = cb0[19].x * r5.x;
  r5.x = exp2(r5.x);
  r3.xyzw = r5.xxxx * r3.xyzw;
  r5.x = cb0[20].z + v3.y;
  r5.x = saturate(cb0[20].y * abs(r5.x) + cb0[20].x);
  r5.xyzw = cb0[22].xyzw * r5.xxxx + cb0[21].xyzw;
  r3.xyzw = r5.xyzw * r3.xyzw;
  r3.xyzw = cb0[23].xxxx * r3.xyzw;
  r3.xyzw = cb0[24].xxxx * r3.xyzw;
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[33].x * r1.w;
  r1.w = exp2(r1.w);
  r5.xyz = -cb3[0].xyz + v4.xyz;
  r5.xyz = abs(r5.xyz) / cb3[6].xyz;
  r6.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r5.xyz = r5.xyz / r6.xyz;
  r5.x = max(r5.x, r5.y);
  r5.x = max(r5.x, r5.z);
  r5.x = max(0.50999999, r5.x);
  r5.x = log2(r5.x);
  r5.x = floor(r5.x);
  r5.z = 1 + r5.x;
  r5.w = cmp(r5.z < cb3[8].x);
  r6.x = exp2(r5.z);
  r6.yzw = cb3[6].xyz * r6.xxx;
  r7.xyz = cb3[0].xyz / r6.yzw;
  r7.xyz = floor(r7.xyz);
  r6.yzw = -r7.xyz * r6.yzw + v4.xyz;
  r6.yzw = r6.yzw / cb3[6].xyz;
  r6.yzw = r6.yzw / cb3[3].xyz;
  r6.xyz = r6.yzw / r6.xxx;
  r5.xy = float2(0.5,0.5);
  r5.xyz = r6.xyz * float3(0.5,0.5,0.5) + r5.xyz;
  r5.z = 0.5 + r5.z;
  r6.xy = cb3[2].xy * r5.xy;
  r6.w = r5.z * cb3[2].z + cb3[9].x;
  r5.xyz = float3(0.5,0.5,0.5) + r6.xyw;
  r5.xyz = r5.xyz / cb3[4].xyz;
  r6.xy = cb8[4].zw;
  r6.z = 0;
  r5.xyz = r5.www ? r5.xyz : r6.xyz;
  r7.xyzw = t16.SampleLevel(s8_s, r5.xyz, 0).xyzw;
  r8.xyzw = t17.SampleLevel(s8_s, r5.xyz, 0).xyzw;
  r9.xyzw = t18.SampleLevel(s8_s, r5.xyz, 0).xyzw;
  r0.w = cb3[15].x * r0.w;
  r0.w = saturate(r0.w * 1.5 + cb3[15].y);
  r5.w = cmp(r0.w < 1);
  if (r5.w != 0) {
    r10.xyzw = t16.SampleLevel(s8_s, r6.xyz, 0).xyzw;
    r11.xyzw = t17.SampleLevel(s8_s, r6.xyz, 0).xyzw;
    r6.xyzw = t18.SampleLevel(s8_s, r6.xyz, 0).xyzw;
    r12.xyzw = -r10.xyzw + r7.xyzw;
    r7.xyzw = r0.wwww * r12.xyzw + r10.xyzw;
    r10.xyzw = -r11.xyzw + r8.xyzw;
    r8.xyzw = r0.wwww * r10.xyzw + r11.xyzw;
    r10.xyzw = r9.xyzw + -r6.xyzw;
    r9.xyzw = r0.wwww * r10.xyzw + r6.xyzw;
  }
  r4.w = 1;
  r6.x = dot(r7.xyzw, r4.xyzw);
  r6.y = dot(r8.xyzw, r4.xyzw);
  r6.z = dot(r9.xyzw, r4.xyzw);
  r6.xyz = max(float3(0,0,0), r6.xyz);
  r5.w = dot(r7.xyz, r7.xyz);
  r5.w = rsqrt(r5.w);
  r10.xyz = r7.xyz * r5.www;
  r5.w = dot(r8.xyz, r8.xyz);
  r5.w = rsqrt(r5.w);
  r11.xyz = r8.xyz * r5.www;
  r5.w = dot(r9.xyz, r9.xyz);
  r5.w = rsqrt(r5.w);
  r12.xyz = r9.xyz * r5.www;
  r11.xyz = float3(0.589999974,0.589999974,0.589999974) * r11.xyz;
  r10.xyz = r10.xyz * float3(0.300000012,0.300000012,0.300000012) + r11.xyz;
  r10.xyz = r12.xyz * float3(0.109999999,0.109999999,0.109999999) + r10.xyz;
  r5.w = dot(r10.xyz, r10.xyz);
  r5.w = rsqrt(r5.w);
  r10.xyz = r10.xyz * r5.www;
  r10.w = 1;
  r11.x = dot(r7.xyzw, r10.xyzw);
  r11.y = dot(r8.xyzw, r10.xyzw);
  r11.z = dot(r9.xyzw, r10.xyzw);
  r11.xyz = max(float3(0,0,0), r11.xyz);
  r5.w = saturate(dot(r10.xyz, -r2.xyz));
  r10.xyzw = float4(-1,-1,-1,1) * r4.xyzw;
  r7.x = dot(r7.xyzw, r10.xyzw);
  r7.y = dot(r8.xyzw, r10.xyzw);
  r7.z = dot(r9.xyzw, r10.xyzw);
  r7.xyz = max(float3(0,0,0), r7.xyz);
  r7.xyz = cb13[4].xxx * r7.xyz;
  r4.w = log2(r5.w);
  r4.w = cb13[4].y * r4.w;
  r4.w = exp2(r4.w);
  r7.xyz = r4.www * r11.xyz + r7.xyz;
  r6.xyz = r7.xyz * r2.www + r6.xyz;
  r4.w = t19.SampleLevel(s7_s, r5.xyz, 0).x;
  r4.w = -1 + r4.w;
  r0.w = r0.w * r4.w + 1;
  r4.w = saturate(dot(cb0[28].xyz, r4.xyz));
  r5.x = min(0.200000003, r2.w);
  r4.w = r5.x + r4.w;
  r4.w = min(1, r4.w);
  r4.x = saturate(dot(cb0[28].xyz, -r4.xyz));
  r2.x = saturate(dot(cb0[28].xyz, -r2.xyz));
  r2.x = log2(r2.x);
  r2.x = cb13[4].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = saturate(r4.x * cb13[4].x + r2.x);
  r2.x = r2.x * r2.w;
  r2.yzw = cb0[27].xyz * r1.www;
  r2.yzw = r2.yzw * r0.www;
  r2.yzw = float3(0.318309873,0.318309873,0.318309873) * r2.yzw;
  r4.xyz = r2.yzw * r4.www;
  r2.xyz = r2.yzw * r2.xxx + r4.xyz;
  r2.xyz = r6.xyz + r2.xyz;
  r2.xyz = r3.xyz * r2.xyz;
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
  r0.x = r3.w * r0.x;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}