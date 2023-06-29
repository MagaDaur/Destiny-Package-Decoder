// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
Texture2D<float4> t11 : register(t11);

Texture2D<float4> t10 : register(t10);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

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

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[26];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r1.x = dot(r0.xyz, v0.xyz);
  r2.x = dot(r0.xyz, v1.xyz);
  r2.y = dot(r0.xyz, v2.xyz);
  r0.x = (uint)v2.w;
  r0.y = cmp((uint)r0.x >= 4);
  if (r0.y != 0) {
    r0.yz = v3.zw * cb7[6].xy + cb7[6].zw;
    r1.yz = v3.zw * cb7[7].xy + cb7[7].zw;
    r3.xyzw = t8.Sample(s1_s, r0.yz).wxyz;
    r1.yzw = t9.Sample(s1_s, r1.yz).xyz;
    r0.yz = r1.yz * cb7[8].xx + cb7[8].yy;
    r1.y = saturate(cb7[8].z + r1.w);
  } else {
    r1.z = cmp((uint)r0.x >= 2);
    if (r1.z != 0) {
      r1.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r2.zw = v3.zw * cb7[4].xy + cb7[4].zw;
      r3.xyzw = t6.Sample(s1_s, r1.zw).wxyz;
      r4.xyz = t7.Sample(s1_s, r2.zw).xyz;
      r0.yz = r4.xy * cb7[5].xx + cb7[5].yy;
      r1.y = saturate(cb7[5].z + r4.z);
    } else {
      r1.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r2.zw = v3.zw * cb7[1].xy + cb7[1].zw;
      r3.xyzw = t4.Sample(s1_s, r1.zw).wxyz;
      r4.xyz = t5.Sample(s1_s, r2.zw).xyz;
      r0.yz = r4.xy * cb7[2].xx + cb7[2].yy;
      r1.y = saturate(cb7[2].z + r4.z);
    }
  }
  r4.xyzw = mad(int4(9,9,9,9), (int4)r0.xxxx, int4(9,10,11,12));
  r5.xyzw = mad(int4(9,9,9,9), (int4)r0.xxxx, int4(13,14,15,16));
  r0.x = mad(9, (int)r0.x, 17);
  r6.xyzw = saturate(cb7[r4.z+0].xyzw);
  r1.zw = saturate(cb7[r4.w+0].yz);
  r7.xyzw = saturate(cb7[r0.x+0].xyzw);
  r8.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r2.zw = t1.Sample(s4_s, v3.xy).xy;
  r2.zw = r2.zw * cb0[25].xx + cb0[25].yy;
  r9.xyzw = t2.Sample(s5_s, v3.xy).xyzw;
  r0.x = cmp(r9.w >= 0.156862751);
  r4.z = r0.x ? 1.000000 : 0;
  r10.xyz = float3(-0.25,-0.188235298,-0.156862751) + r9.ywz;
  r10.yz = saturate(float2(1.231884,1.18604648) * r10.yz);
  r8.w = saturate(cb7[r5.z+0].y * r10.y + cb7[r5.z+0].x);
  r5.z = saturate(cb7[r5.z+0].w * r8.w + cb7[r5.z+0].z);
  r11.xy = saturate(float2(7.96875,4) * r9.wy);
  r8.w = cb0[2].x + 128.5;
  r8.w = 0.00390625 * r8.w;
  r9.z = cmp(0.0500000007 >= r11.x);
  r8.w = r9.z ? r8.w : -1;
  r12.xyz = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r13.xyz = saturate(cb7[r4.x+0].xyz * r12.xyz + r3.yzw);
  r13.xyz = -cb7[r4.x+0].xyz + r13.xyz;
  r13.xyz = r6.xxx * r13.xyz + cb7[r4.x+0].xyz;
  r4.x = saturate(cb7[r5.x+0].y * r9.y + cb7[r5.x+0].x);
  r4.x = saturate(cb7[r5.x+0].w * r4.x + cb7[r5.x+0].z);
  r10.x = saturate(r10.x);
  r3.x = saturate(r3.x * r11.y + r10.x);
  r6.x = saturate(cb7[r5.x+0].y * r3.x + cb7[r5.x+0].x);
  r5.x = saturate(cb7[r5.x+0].w * r6.x + cb7[r5.x+0].z);
  r5.x = r5.x + -r4.x;
  r4.x = r6.z * r5.x + r4.x;
  r10.xyw = saturate(float3(4,4,4) * r8.xyz);
  r14.xyz = saturate(float3(-0.25,-0.25,-0.25) + r8.xyz);
  r13.xyz = saturate(r13.xyz * r10.xyw + r14.xyz);
  r6.xz = r0.yz * r6.yy + r2.zw;
  r1.y = -1 + r1.y;
  r5.x = r6.y * r1.y + 1;
  r3.yzw = saturate(cb7[r5.y+0].xyz * r12.xyz + r3.yzw);
  r3.yzw = -cb7[r5.y+0].xyz + r3.yzw;
  r3.yzw = r7.xxx * r3.yzw + cb7[r5.y+0].xyz;
  r3.yzw = saturate(r3.yzw * r10.xyw + r14.xyz);
  r5.y = saturate(cb7[r5.w+0].y * r9.y + cb7[r5.w+0].x);
  r5.y = saturate(cb7[r5.w+0].w * r5.y + cb7[r5.w+0].z);
  r3.x = saturate(cb7[r5.w+0].y * r3.x + cb7[r5.w+0].x);
  r3.x = saturate(cb7[r5.w+0].w * r3.x + cb7[r5.w+0].z);
  r3.x = r3.x + -r5.y;
  r3.x = r7.z * r3.x + r5.y;
  r0.yz = r0.yz * r7.yy + r2.zw;
  r1.y = r7.y * r1.y + 1;
  r7.xyz = r13.xyz + -r3.yzw;
  r3.yzw = r5.zzz * r7.xyz + r3.yzw;
  r5.yw = r6.xz + -r0.yz;
  r0.yz = r5.zz * r5.yw + r0.yz;
  r4.x = r4.x + -r3.x;
  r3.x = r5.z * r4.x + r3.x;
  r4.x = -r7.w + r6.w;
  r6.y = r5.z * r4.x + r7.w;
  r4.x = r5.x + -r1.y;
  r1.y = r5.z * r4.x + r1.y;
  r4.x = cb7[r4.w+0].x + 128.5;
  r4.x = 0.00390625 * r4.x;
  r4.w = cmp(0.0500000007 >= r6.w);
  r4.x = r4.w ? r4.x : -1;
  r1.y = min(r3.x, r1.y);
  r3.x = cmp(9.99999975e-005 < r1.z);
  r4.w = -2 * r1.z;
  r1.z = r1.z * -2 + -0.200000003;
  r1.z = r1.z * r1.y;
  r1.z = r1.z * -5.00250101 + r4.w;
  r1.z = min(r1.y, r1.z);
  r6.x = r3.x ? r1.z : r1.y;
  r3.xyz = r3.yzw + -r8.xyz;
  r3.xyz = r4.zzz * r3.xyz + r8.xyz;
  r0.yz = r0.yz + -r2.zw;
  r7.xy = r4.zz * r0.yz + r2.zw;
  r11.z = r9.y;
  r0.yz = r6.xy + -r11.zx;
  r0.yz = r4.zz * r0.yz + r11.zx;
  r1.y = r4.z * r1.w;
  o0.w = r0.x ? r4.x : r8.w;
  r0.x = cmp(0 != cb7[r4.y+0].w);
  r4.xyw = r0.xxx ? cb7[r4.y+0].xyz : 0;
  r1.zw = cb0[14].xx * r2.xy;
  r1.zw = r1.zw / r1.xx;
  r1.zw = v3.xy + -r1.zw;
  r0.x = r1.x * r1.x;
  r1.x = saturate(r0.x * cb0[15].x + cb0[15].y);
  r1.x = cb0[17].x * r1.x + cb0[16].x;
  r2.xy = r1.zw * cb0[18].xy + cb0[18].zw;
  r1.zw = r1.zw * cb0[19].xy + cb0[19].zw;
  r1.zw = t10.Sample(s2_s, r1.zw).xy;
  r1.zw = -cb0[21].xy + r1.zw;
  r1.zw = r1.zw * cb0[20].xx + r2.xy;
  r1.z = t11.Sample(s2_s, r1.zw).x;
  r1.z = saturate(cb0[22].y * r1.z + cb0[22].x);
  r1.x = r1.x * r1.z;
  r0.x = saturate(r0.x * cb0[23].x + cb0[23].y);
  r0.x = r1.x * r0.x;
  r0.x = r10.z * r0.x;
  r0.x = cb0[24].x * r0.x;
  r1.xzw = r0.xxx * r4.xyw;
  r1.xzw = r1.xzw * r4.zzz;
  r2.xyz = r1.xzw * r5.zzz;
  r1.xzw = r1.xzw * r5.zzz + r3.xyz;
  r0.x = max(r1.x, r1.z);
  r0.x = max(r0.x, r1.w);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r1.xzw = r3.xyz * r0.xxx + r2.xyz;
  r0.x = max(r1.x, r1.z);
  r0.x = max(r0.x, r1.w);
  r0.x = max(1, r0.x);
  r1.xzw = r1.xzw / r0.xxx;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r2.x = dot(r7.xy, r7.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r7.z = sqrt(r2.x);
  r2.x = dot(r7.xyz, r7.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r7.xyz * r2.xxx;
  r3.xyz = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r3.xyz;
  r2.xyz = v0.xyz * r2.zzz + r2.xyw;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = saturate(cb0[12].x);
  r3.x = dot(v0.xyz, v0.xyz);
  r3.x = rsqrt(r3.x);
  r3.xyz = v0.xyz * r3.xxx;
  r3.x = dot(cb0[5].xyz, r3.xyz);
  r3.y = cb0[4].x + -cb0[3].x;
  r3.x = saturate(r3.x * r3.y + cb0[3].x);
  r3.y = -cb0[6].z + v4.z;
  r3.y = cb0[7].x * r3.y;
  r3.y = max(0, r3.y);
  r3.y = log2(r3.y);
  r3.y = cb0[8].x * r3.y;
  r3.y = exp2(r3.y);
  r3.y = saturate(cb0[9].x * r3.y);
  r3.x = r3.x * r3.y;
  r0.w = saturate(r0.w * cb0[10].x + cb0[10].y);
  r0.w = r3.x * r0.w;
  r3.x = dot(r1.xzw, float3(0.300000012,0.589999974,0.109999999));
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = log2(r3.x);
  r3.x = -cb0[11].x * r3.x;
  r3.x = exp2(r3.x);
  r0.w = r3.x * r0.w;
  o2.w = v0.w + r2.w;
  r0.x = r0.w * cb0[13].x + r0.x;
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r9.x = saturate(r9.x);
  r0.x = r9.x + r0.x;
  o2.y = 0.5 * r0.x;
  o2.z = 0.800000012 * r1.y;
  o0.xyz = r1.xzw;
  o1.w = 0;
  o2.x = r0.z;
  return;
}