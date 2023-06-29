// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:52 2023
Texture2D<float4> t14 : register(t14);

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

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[10];
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

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.x = dot(r0.xyz, v0.xyz);
  r0.yz = t13.Sample(s6_s, v3.xy).yz;
  r1.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r2.xy = t1.Sample(s4_s, v3.xy).xy;
  r2.xy = r2.xy * cb0[0].xx + cb0[0].yy;
  r3.xyz = t2.Sample(s5_s, v3.xy).xyw;
  r2.zw = v3.zw * cb6[0].xy + cb6[0].zw;
  r4.xy = v3.zw * cb6[1].xy + cb6[1].zw;
  r5.xyzw = t3.Sample(s7_s, r2.zw).xyzw;
  r4.xyz = t4.Sample(s8_s, r4.xy).xyz;
  r2.zw = r4.xy * cb6[2].xx + cb6[2].yy;
  r0.w = saturate(cb6[2].z + r4.z);
  r4.xyz = cb7[2].xyz + -cb6[5].xyz;
  r4.xyz = r3.zzz * r4.xyz + cb6[5].xyz;
  r6.xyz = cb7[3].xyz + -cb6[6].xyz;
  r6.xyz = r3.zzz * r6.xyz + cb6[6].xyz;
  r7.xy = cb7[4].wx + -cb6[7].wx;
  r7.yz = r3.zz * r7.yx + cb6[7].xw;
  r4.xyz = float3(-0.5,-0.5,-0.5) + r4.xyz;
  r4.xyz = r7.zzz * r4.xyz;
  r6.xyz = float3(-0.5,-0.5,-0.5) + r6.xyz;
  r6.xyz = r7.zzz * r6.xyz + float3(0.5,0.5,0.5);
  r1.w = cmp(r0.z < 0.5);
  r3.w = r0.z + r0.z;
  r8.xyz = float3(0.5,0.5,0.5) + -r6.xyz;
  r6.xyz = r3.www * r8.xyz + r6.xyz;
  r0.z = -0.5 + r0.z;
  r0.z = r0.z + r0.z;
  r4.xyz = r0.zzz * r4.xyz + float3(0.5,0.5,0.5);
  r4.xyz = r1.www ? r6.xyz : r4.xyz;
  r6.xyz = cb7[0].xyz + -cb6[3].xyz;
  r6.xyz = r3.zzz * r6.xyz + cb6[3].xyz;
  r8.xyz = r6.xyz * r4.xyz;
  r4.xyz = r6.xyz + r4.xyz;
  r4.xyz = r8.xyz * float3(-2,-2,-2) + r4.xyz;
  r4.xyz = r6.xyz * r4.xyz + r8.xyz;
  r6.xyz = saturate(cb6[11].xyz);
  r8.xyz = cb7[5].xyz + -cb6[8].xyz;
  r8.xyz = r3.zzz * r8.xyz + cb6[8].xyz;
  r0.z = saturate(cb6[7].y);
  r1.w = saturate(cb7[4].y);
  r1.w = r1.w + -r0.z;
  r0.z = r3.z * r1.w + r0.z;
  r1.w = cmp(0.00999999978 < r3.z);
  r1.w = r1.w ? cb7[7].x : cb6[10].x;
  r9.xy = cb7[7].yz + -cb6[10].yz;
  r9.xz = r3.zz * r9.xy + cb6[10].yz;
  r10.xyzw = cb7[6].xyzw + -cb6[9].xyzw;
  r10.xyzw = r3.zzzz * r10.xyzw + cb6[9].xyzw;
  r11.xyz = saturate(float3(4,4,4) * r5.xyz);
  r5.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r5.xyz = saturate(r4.xyz * r11.xyz + r5.xyz);
  r5.xyz = r5.xyz + -r4.xyz;
  r4.xyz = r6.xxx * r5.xyz + r4.xyz;
  r3.z = saturate(r10.y * r3.y + r10.x);
  r3.z = saturate(r10.w * r3.z + r10.z);
  r3.w = saturate(4 * r3.y);
  r3.y = saturate(-0.25 + r3.y);
  r4.w = saturate(r5.w * r3.w + r3.y);
  r4.w = saturate(r10.y * r4.w + r10.x);
  r4.w = saturate(r10.w * r4.w + r10.z);
  r4.w = r4.w + -r3.z;
  r3.z = r6.z * r4.w + r3.z;
  r5.xyz = saturate(float3(4,4,4) * r1.xyz);
  r1.xyz = saturate(float3(-0.25,-0.25,-0.25) + r1.xyz);
  r4.xyz = saturate(r4.xyz * r5.xyz + r1.xyz);
  r6.xzw = r8.xyz + -r4.xyz;
  r4.xyz = r0.zzz * r6.xzw + r4.xyz;
  r0.z = -1 + r0.w;
  r0.z = r6.y * r0.z + 1;
  r0.w = 128.5 + r1.w;
  r0.w = 0.00390625 * r0.w;
  r1.w = cmp(0.0500000007 >= r7.y);
  r8.w = r1.w ? r0.w : -1;
  r0.z = min(r3.z, r0.z);
  r0.w = cmp(9.99999975e-005 < r9.x);
  r9.x = saturate(r9.x);
  r1.w = -2 * r9.x;
  r3.z = r9.x * -2 + -0.200000003;
  r3.z = r3.z * r0.z;
  r1.w = r3.z * -5.00250101 + r1.w;
  r1.w = min(r1.w, r0.z);
  r7.x = r0.w ? r1.w : r0.z;
  r6.xy = r2.zw * r6.yy + r2.xy;
  r0.zw = v3.xy * cb0[5].xy + cb0[5].zw;
  r0.z = t14.Sample(s6_s, r0.zw).x;
  r2.zw = v3.xy * cb0[6].xy + cb0[6].zw;
  r0.w = t14.Sample(s6_s, r2.zw).x;
  r0.z = r0.z * r0.w;
  r0.xy = r0.xy * r0.xz;
  r0.x = saturate(r0.x * cb0[7].x + cb0[7].y);
  r0.x = cb0[8].y * r0.x + cb0[8].x;
  r0.x = r0.y * r0.x;
  r0.yzw = cb0[9].xyz * r0.xxx;
  r10.xyz = r0.xxx * cb0[9].xyz + r4.xyz;
  r0.x = max(r10.x, r10.y);
  r0.x = max(r0.x, r10.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r4.xyz = r4.xyz * r0.xxx + r0.yzw;
  r0.x = max(r4.x, r4.y);
  r0.x = max(r0.x, r4.z);
  r0.x = max(1, r0.x);
  r8.xyz = r4.xyz / r0.xxx;
  r0.x = max(r0.y, r0.z);
  r9.y = max(r0.x, r0.w);
  r0.x = cmp(0 != cb9[8].w);
  if (r0.x != 0) {
    r0.xy = v3.zw * cb8[0].xy + cb8[0].zw;
    r0.x = t5.Sample(s1_s, r0.xy).x;
    r0.x = saturate(cb8[2].y * r0.x + cb8[2].x);
    r0.x = cb8[2].w * r0.x + cb8[2].z;
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      r0.yz = v3.zw * cb9[0].xy + cb9[0].zw;
      r4.xyzw = t7.Sample(s2_s, r0.yz).xyzw;
      r0.yz = v3.zw * cb9[1].xy + cb9[1].zw;
      r0.yzw = t8.Sample(s2_s, r0.yz).xyz;
      r0.yz = r0.yz * cb9[3].xx + cb9[3].yy;
      r0.w = saturate(cb9[3].z + r0.w);
      r2.zw = v3.zw * cb8[1].xy + cb8[1].zw;
      r1.w = t6.Sample(s1_s, r2.zw).x;
      r1.w = saturate(cb8[3].y * r1.w + cb8[3].x);
      r1.w = cb8[3].w * r1.w + cb8[3].z;
      r2.zw = saturate(cb9[7].xy);
      r3.z = saturate(cb9[5].x);
      r3.z = r3.z * r1.w;
      r10.xyz = saturate(float3(4,4,4) * r4.xyz);
      r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
      r4.xyz = saturate(cb9[6].xyz * r10.xyz + r4.xyz);
      r4.xyz = -cb9[6].xyz + r4.xyz;
      r4.xyz = r2.zzz * r4.xyz + cb9[6].xyz;
      r2.z = saturate(r4.w * r3.w + r3.y);
      r2.z = saturate(cb9[2].y * r2.z + cb9[2].x);
      r2.z = saturate(cb9[2].w * r2.z + cb9[2].z);
      r4.xyz = saturate(r4.xyz * r5.xyz + r1.xyz);
      r10.xyz = cb9[4].xyz + -r4.xyz;
      r4.xyz = r3.zzz * r10.xyz + r4.xyz;
      r0.yz = r0.yz * r2.ww + r2.xy;
      r0.w = -1 + r0.w;
      r0.w = r2.w * r0.w + 1;
      r2.w = cb9[8].x + 128.5;
      r2.w = 0.00390625 * r2.w;
      r3.z = cmp(0.0500000007 >= cb9[7].w);
      r2.w = r3.z ? r2.w : -1;
      r0.w = min(r2.z, r0.w);
      r2.z = cmp(9.99999975e-005 < cb9[8].y);
      r3.z = saturate(cb9[8].y);
      r4.w = -2 * r3.z;
      r3.z = r3.z * -2 + -0.200000003;
      r3.z = r3.z * r0.w;
      r3.z = r3.z * -5.00250101 + r4.w;
      r3.z = min(r3.z, r0.w);
      r10.x = r2.z ? r3.z : r0.w;
      r4.xyz = r4.xyz + -r8.xyz;
      r8.xyz = r0.xxx * r4.xyz + r8.xyz;
      r0.yz = r0.yz + -r6.xy;
      r6.xy = r0.xx * r0.yz + r6.xy;
      r10.y = cb9[7].w;
      r0.yz = r10.xy + -r7.xy;
      r7.xy = r0.xx * r0.yz + r7.xy;
      r4.x = r1.w * cb9[5].y + -r9.y;
      r4.y = cb9[8].z + -r9.z;
      r9.yz = r0.xx * r4.xy + r9.yz;
      r0.x = cmp(r0.x < 0.5);
      r8.w = r0.x ? r8.w : r2.w;
    }
  }
  r0.x = cmp(0 != cb11[8].w);
  if (r0.x != 0) {
    r0.xy = v3.zw * cb10[0].xy + cb10[0].zw;
    r0.x = t9.Sample(s1_s, r0.xy).x;
    r0.x = saturate(cb10[2].y * r0.x + cb10[2].x);
    r0.x = cb10[2].w * r0.x + cb10[2].z;
    r0.y = cmp(0 < r0.x);
    if (r0.y != 0) {
      r0.yz = v3.zw * cb11[0].xy + cb11[0].zw;
      r4.xyzw = t11.Sample(s2_s, r0.yz).xyzw;
      r0.yz = v3.zw * cb11[1].xy + cb11[1].zw;
      r0.yzw = t12.Sample(s2_s, r0.yz).xyz;
      r0.yz = r0.yz * cb11[3].xx + cb11[3].yy;
      r0.w = saturate(cb11[3].z + r0.w);
      r2.zw = v3.zw * cb10[1].xy + cb10[1].zw;
      r1.w = t10.Sample(s1_s, r2.zw).x;
      r1.w = saturate(cb10[3].y * r1.w + cb10[3].x);
      r1.w = cb10[3].w * r1.w + cb10[3].z;
      r2.zw = saturate(cb11[7].xy);
      r3.z = saturate(cb11[5].x);
      r3.z = r3.z * r1.w;
      r10.xyz = saturate(float3(4,4,4) * r4.xyz);
      r4.xyz = saturate(float3(-0.25,-0.25,-0.25) + r4.xyz);
      r4.xyz = saturate(cb11[6].xyz * r10.xyz + r4.xyz);
      r4.xyz = -cb11[6].xyz + r4.xyz;
      r4.xyz = r2.zzz * r4.xyz + cb11[6].xyz;
      r2.z = saturate(r4.w * r3.w + r3.y);
      r2.z = saturate(cb11[2].y * r2.z + cb11[2].x);
      r2.z = saturate(cb11[2].w * r2.z + cb11[2].z);
      r1.xyz = saturate(r4.xyz * r5.xyz + r1.xyz);
      r4.xyz = cb11[4].xyz + -r1.xyz;
      r1.xyz = r3.zzz * r4.xyz + r1.xyz;
      r0.yz = r0.yz * r2.ww + r2.xy;
      r0.w = -1 + r0.w;
      r0.w = r2.w * r0.w + 1;
      r2.x = cb11[8].x + 128.5;
      r2.x = 0.00390625 * r2.x;
      r2.y = cmp(0.0500000007 >= cb11[7].w);
      r2.x = r2.y ? r2.x : -1;
      r0.w = min(r2.z, r0.w);
      r2.y = cmp(9.99999975e-005 < cb11[8].y);
      r2.z = saturate(cb11[8].y);
      r2.w = -2 * r2.z;
      r2.z = r2.z * -2 + -0.200000003;
      r2.z = r2.z * r0.w;
      r2.z = r2.z * -5.00250101 + r2.w;
      r2.z = min(r2.z, r0.w);
      r4.x = r2.y ? r2.z : r0.w;
      r1.xyz = r1.xyz + -r8.xyz;
      r8.xyz = r0.xxx * r1.xyz + r8.xyz;
      r0.yz = r0.yz + -r6.xy;
      r6.xy = r0.xx * r0.yz + r6.xy;
      r4.y = cb11[7].w;
      r0.yz = r4.xy + -r7.xy;
      r7.xy = r0.xx * r0.yz + r7.xy;
      r1.x = r1.w * cb11[5].y + -r9.y;
      r1.y = cb11[8].z + -r9.z;
      r9.yz = r0.xx * r1.xy + r9.yz;
      r0.x = cmp(r0.x < 0.5);
      r8.w = r0.x ? r8.w : r2.x;
    }
  }
  r0.x = dot(r6.xy, r6.xy);
  r0.x = 1 + -r0.x;
  r0.x = max(0, r0.x);
  r6.z = sqrt(r0.x);
  r0.x = dot(r6.xyz, r6.xyz);
  r0.x = rsqrt(r0.x);
  r0.xyz = r6.xyz * r0.xxx;
  r1.xyz = v2.xyz * r0.yyy;
  r0.xyw = v1.xyz * r0.xxx + r1.xyz;
  r0.xyz = v0.xyz * r0.zzz + r0.xyw;
  r0.w = dot(r0.xyz, r0.xyz);
  r0.w = rsqrt(r0.w);
  r0.xyz = r0.xyz * r0.www;
  r0.w = r7.x * 0.125 + 0.375;
  o1.xyz = saturate(r0.xyz * r0.www + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r9.y;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r3.x = saturate(r3.x);
  r0.x = r3.x + r0.x;
  r7.x = 0.5 * r0.x;
  r7.z = 0.800000012 * r9.z;
  o0.xyzw = r8.xyzw;
  o1.w = 0;
  r7.w = v0.w;
  o2.xyzw = r7.yxzw;
  return;
}