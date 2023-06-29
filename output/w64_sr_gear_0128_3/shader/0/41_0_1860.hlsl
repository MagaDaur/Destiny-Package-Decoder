// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
Texture2D<float4> t13 : register(t13);

Texture2D<float4> t12 : register(t12);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb11 : register(b11)
{
  float4 cb11[9];
}

cbuffer cb10 : register(b10)
{
  float4 cb10[4];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[9];
}

cbuffer cb8 : register(b8)
{
  float4 cb8[4];
}

cbuffer cb7 : register(b7)
{
  float4 cb7[8];
}

cbuffer cb6 : register(b6)
{
  float4 cb6[12];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[1];
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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.x = t13.Sample(s6_s, v3.xy).z;
  r0.yzw = t0.Sample(s3_s, v3.xy).xyz;
  r1.xy = t1.Sample(s4_s, v3.xy).xy;
  r1.xy = r1.xy * cb0[0].xx + cb0[0].yy;
  r2.xyz = t2.Sample(s5_s, v3.xy).xyw;
  r1.zw = v3.zw * cb6[0].xy + cb6[0].zw;
  r3.xy = v3.zw * cb6[1].xy + cb6[1].zw;
  r4.xyzw = t3.Sample(s7_s, r1.zw).xyzw;
  r3.xyz = t4.Sample(s8_s, r3.xy).xyz;
  r1.zw = r3.xy * cb6[2].xx + cb6[2].yy;
  r2.w = saturate(cb6[2].z + r3.z);
  r3.xyz = cb7[2].xyz + -cb6[5].xyz;
  r3.xyz = r2.zzz * r3.xyz + cb6[5].xyz;
  r5.xyz = cb7[3].xyz + -cb6[6].xyz;
  r5.xyz = r2.zzz * r5.xyz + cb6[6].xyz;
  r6.xy = cb7[4].wx + -cb6[7].wx;
  r6.yz = r2.zz * r6.yx + cb6[7].xw;
  r3.xyz = float3(-0.5,-0.5,-0.5) + r3.xyz;
  r3.xyz = r6.zzz * r3.xyz;
  r5.xyz = float3(-0.5,-0.5,-0.5) + r5.xyz;
  r5.xyz = r6.zzz * r5.xyz + float3(0.5,0.5,0.5);
  r3.w = cmp(r0.x < 0.5);
  r5.w = r0.x + r0.x;
  r7.xyz = float3(0.5,0.5,0.5) + -r5.xyz;
  r5.xyz = r5.www * r7.xyz + r5.xyz;
  r0.x = -0.5 + r0.x;
  r0.x = r0.x + r0.x;
  r3.xyz = r0.xxx * r3.xyz + float3(0.5,0.5,0.5);
  r3.xyz = r3.www ? r5.xyz : r3.xyz;
  r5.xyz = cb7[0].xyz + -cb6[3].xyz;
  r5.xyz = r2.zzz * r5.xyz + cb6[3].xyz;
  r7.xyz = r5.xyz * r3.xyz;
  r3.xyz = r5.xyz + r3.xyz;
  r3.xyz = r7.xyz * float3(-2,-2,-2) + r3.xyz;
  r3.xyz = r5.xyz * r3.xyz + r7.xyz;
  r5.xyz = saturate(cb6[11].xyz);
  r7.xyz = cb7[5].xyz + -cb6[8].xyz;
  r7.xyz = r2.zzz * r7.xyz + cb6[8].xyz;
  r0.x = saturate(cb6[7].y);
  r3.w = saturate(cb7[4].y);
  r3.w = r3.w + -r0.x;
  r0.x = r2.z * r3.w + r0.x;
  r3.w = cmp(0.00999999978 < r2.z);
  r3.w = r3.w ? cb7[7].x : cb6[10].x;
  r8.xy = cb7[7].yz + -cb6[10].yz;
  r8.xy = r2.zz * r8.xy + cb6[10].yz;
  r9.xyzw = cb7[6].xyzw + -cb6[9].xyzw;
  r9.xyzw = r2.zzzz * r9.xyzw + cb6[9].xyzw;
  r10.xyz = saturate(float3(4,4,4) * r4.xyz);
  r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
  r4.xyz = saturate(r3.xyz * r10.xyz + r4.xyz);
  r4.xyz = r4.xyz + -r3.xyz;
  r3.xyz = r5.xxx * r4.xyz + r3.xyz;
  r2.z = saturate(r9.y * r2.y + r9.x);
  r2.z = saturate(r9.w * r2.z + r9.z);
  r4.x = saturate(4 * r2.y);
  r2.y = saturate(-0.25 + r2.y);
  r4.y = saturate(r4.w * r4.x + r2.y);
  r4.y = saturate(r9.y * r4.y + r9.x);
  r4.y = saturate(r9.w * r4.y + r9.z);
  r4.y = r4.y + -r2.z;
  r2.z = r5.z * r4.y + r2.z;
  r4.yzw = saturate(float3(4,4,4) * r0.yzw);
  r0.yzw = saturate(float3(-0.25,-0.25,-0.25) + r0.yzw);
  r3.xyz = saturate(r3.xyz * r4.yzw + r0.yzw);
  r5.xzw = r7.xyz + -r3.xyz;
  r7.xyz = r0.xxx * r5.xzw + r3.xyz;
  r0.x = -1 + r2.w;
  r0.x = r5.y * r0.x + 1;
  r2.w = 128.5 + r3.w;
  r2.w = 0.00390625 * r2.w;
  r3.x = cmp(0.0500000007 >= r6.y);
  r7.w = r3.x ? r2.w : -1;
  r0.x = min(r2.z, r0.x);
  r2.z = cmp(9.99999975e-005 < r8.x);
  r8.x = saturate(r8.x);
  r2.w = -2 * r8.x;
  r3.x = r8.x * -2 + -0.200000003;
  r3.x = r3.x * r0.x;
  r2.w = r3.x * -5.00250101 + r2.w;
  r2.w = min(r2.w, r0.x);
  r6.x = r2.z ? r2.w : r0.x;
  r3.xy = r1.zw * r5.yy + r1.xy;
  r0.x = cmp(0 != cb9[8].w);
  if (r0.x != 0) {
    r1.zw = v3.zw * cb8[0].xy + cb8[0].zw;
    r0.x = t5.Sample(s1_s, r1.zw).x;
    r0.x = saturate(cb8[2].y * r0.x + cb8[2].x);
    r0.x = cb8[2].w * r0.x + cb8[2].z;
    r1.z = cmp(0 < r0.x);
    if (r1.z != 0) {
      r1.zw = v3.zw * cb9[0].xy + cb9[0].zw;
      r5.xyzw = t7.Sample(s2_s, r1.zw).xyzw;
      r1.zw = v3.zw * cb9[1].xy + cb9[1].zw;
      r9.xyz = t8.Sample(s2_s, r1.zw).xyz;
      r1.zw = r9.xy * cb9[3].xx + cb9[3].yy;
      r2.z = saturate(cb9[3].z + r9.z);
      r9.xy = v3.zw * cb8[1].xy + cb8[1].zw;
      r2.w = t6.Sample(s1_s, r9.xy).x;
      r2.w = saturate(cb8[3].y * r2.w + cb8[3].x);
      r2.w = cb8[3].w * r2.w + cb8[3].z;
      r9.xy = saturate(cb9[7].xy);
      r10.x = cb9[5].y * r2.w;
      r3.w = saturate(cb9[5].x);
      r2.w = r3.w * r2.w;
      r11.xyz = saturate(float3(4,4,4) * r5.xyz);
      r5.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
      r5.xyz = saturate(cb9[6].xyz * r11.xyz + r5.xyz);
      r5.xyz = -cb9[6].xyz + r5.xyz;
      r5.xyz = r9.xxx * r5.xyz + cb9[6].xyz;
      r3.w = saturate(r5.w * r4.x + r2.y);
      r3.w = saturate(cb9[2].y * r3.w + cb9[2].x);
      r3.w = saturate(cb9[2].w * r3.w + cb9[2].z);
      r5.xyz = saturate(r5.xyz * r4.yzw + r0.yzw);
      r9.xzw = cb9[4].xyz + -r5.xyz;
      r5.xyz = r2.www * r9.xzw + r5.xyz;
      r1.zw = r1.zw * r9.yy + r1.xy;
      r2.z = -1 + r2.z;
      r2.z = r9.y * r2.z + 1;
      r2.w = cb9[8].x + 128.5;
      r2.w = 0.00390625 * r2.w;
      r5.w = cmp(0.0500000007 >= cb9[7].w);
      r2.w = r5.w ? r2.w : -1;
      r2.z = min(r3.w, r2.z);
      r3.w = cmp(9.99999975e-005 < cb9[8].y);
      r5.w = saturate(cb9[8].y);
      r9.x = -2 * r5.w;
      r5.w = r5.w * -2 + -0.200000003;
      r5.w = r5.w * r2.z;
      r5.w = r5.w * -5.00250101 + r9.x;
      r5.w = min(r5.w, r2.z);
      r9.x = r3.w ? r5.w : r2.z;
      r5.xyz = r5.xyz + -r7.xyz;
      r7.xyz = r0.xxx * r5.xyz + r7.xyz;
      r1.zw = r1.zw + -r3.xy;
      r3.xy = r0.xx * r1.zw + r3.xy;
      r9.y = cb9[7].w;
      r1.zw = r9.xy + -r6.xy;
      r6.xy = r0.xx * r1.zw + r6.xy;
      r8.z = 0;
      r10.y = cb9[8].z + -r8.y;
      r8.xy = r0.xx * r10.xy + r8.zy;
      r0.x = cmp(r0.x < 0.5);
      r7.w = r0.x ? r7.w : r2.w;
    } else {
      r8.w = 0;
      r8.xy = r8.wy;
    }
  } else {
    r8.x = 0;
  }
  r0.x = cmp(0 != cb11[8].w);
  if (r0.x != 0) {
    r1.zw = v3.zw * cb10[0].xy + cb10[0].zw;
    r0.x = t9.Sample(s1_s, r1.zw).x;
    r0.x = saturate(cb10[2].y * r0.x + cb10[2].x);
    r0.x = cb10[2].w * r0.x + cb10[2].z;
    r1.z = cmp(0 < r0.x);
    if (r1.z != 0) {
      r1.zw = v3.zw * cb11[0].xy + cb11[0].zw;
      r5.xyzw = t11.Sample(s2_s, r1.zw).xyzw;
      r1.zw = v3.zw * cb11[1].xy + cb11[1].zw;
      r9.xyz = t12.Sample(s2_s, r1.zw).xyz;
      r1.zw = r9.xy * cb11[3].xx + cb11[3].yy;
      r2.z = saturate(cb11[3].z + r9.z);
      r8.zw = v3.zw * cb10[1].xy + cb10[1].zw;
      r2.w = t10.Sample(s1_s, r8.zw).x;
      r2.w = saturate(cb10[3].y * r2.w + cb10[3].x);
      r2.w = cb10[3].w * r2.w + cb10[3].z;
      r8.zw = saturate(cb11[7].xy);
      r3.w = saturate(cb11[5].x);
      r3.w = r3.w * r2.w;
      r9.xyz = saturate(float3(4,4,4) * r5.xyz);
      r5.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
      r5.xyz = saturate(cb11[6].xyz * r9.xyz + r5.xyz);
      r5.xyz = -cb11[6].xyz + r5.xyz;
      r5.xyz = r8.zzz * r5.xyz + cb11[6].xyz;
      r2.y = saturate(r5.w * r4.x + r2.y);
      r2.y = saturate(cb11[2].y * r2.y + cb11[2].x);
      r2.y = saturate(cb11[2].w * r2.y + cb11[2].z);
      r0.yzw = saturate(r5.xyz * r4.yzw + r0.yzw);
      r4.xyz = cb11[4].xyz + -r0.yzw;
      r0.yzw = r3.www * r4.xyz + r0.yzw;
      r1.xy = r1.zw * r8.ww + r1.xy;
      r1.z = -1 + r2.z;
      r1.z = r8.w * r1.z + 1;
      r1.w = cb11[8].x + 128.5;
      r1.w = 0.00390625 * r1.w;
      r2.z = cmp(0.0500000007 >= cb11[7].w);
      r1.w = r2.z ? r1.w : -1;
      r1.z = min(r2.y, r1.z);
      r2.y = cmp(9.99999975e-005 < cb11[8].y);
      r2.z = saturate(cb11[8].y);
      r3.w = -2 * r2.z;
      r2.z = r2.z * -2 + -0.200000003;
      r2.z = r2.z * r1.z;
      r2.z = r2.z * -5.00250101 + r3.w;
      r2.z = min(r2.z, r1.z);
      r4.x = r2.y ? r2.z : r1.z;
      r0.yzw = r0.yzw + -r7.xyz;
      r7.xyz = r0.xxx * r0.yzw + r7.xyz;
      r0.yz = r1.xy + -r3.xy;
      r3.xy = r0.xx * r0.yz + r3.xy;
      r4.y = cb11[7].w;
      r0.yz = r4.xy + -r6.xy;
      r6.xy = r0.xx * r0.yz + r6.xy;
      r1.x = r2.w * cb11[5].y + -r8.x;
      r1.y = cb11[8].z + -r8.y;
      r8.xy = r0.xx * r1.xy + r8.xy;
      r0.x = cmp(r0.x < 0.5);
      r7.w = r0.x ? r7.w : r1.w;
    }
  }
  r0.x = dot(r3.xy, r3.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r3.z = sqrt(r0.x);
  r0.x = dot(r3.xyz, r3.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r3.xyz * r0.xxx;
  r1.xyz = v2.xyz * r0.yyy;
  r0.xyw = v1.xyz * r0.xxx + r1.xyz;
  r0.xyz = v0.xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = r6.x * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r8.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r2.x = saturate(r2.x);
  r0.x = r2.x + r0.x;
  r6.x = 0.5 * r0.x;
  r6.z = 0.800000012 * r8.y;
  o0.xyzw = r7.xyzw;
  o1.w = 0;
  r6.w = v0.w;
  o2.xyzw = r6.yxzw;
  return;
}