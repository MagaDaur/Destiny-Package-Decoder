// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

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
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.y = (uint)v2.w;
  r0.z = cmp((uint)r0.y >= 4);
  if (r0.z != 0) {
    r0.zw = v3.zw * cb7[6].xy + cb7[6].zw;
    r1.xy = v3.zw * cb7[7].xy + cb7[7].zw;
    r2.xyzw = t8.Sample(s1_s, r0.zw).wxyz;
    r1.xyz = t9.Sample(s1_s, r1.xy).xyz;
    r0.zw = r1.xy * cb7[8].xx + cb7[8].yy;
    r1.x = saturate(cb7[8].z + r1.z);
  } else {
    r1.y = cmp((uint)r0.y >= 2);
    if (r1.y != 0) {
      r1.yz = v3.zw * cb7[3].xy + cb7[3].zw;
      r3.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r2.xyzw = t6.Sample(s1_s, r1.yz).wxyz;
      r1.yzw = t7.Sample(s1_s, r3.xy).xyz;
      r0.zw = r1.yz * cb7[5].xx + cb7[5].yy;
      r1.x = saturate(cb7[5].z + r1.w);
    } else {
      r1.yz = v3.zw * cb7[0].xy + cb7[0].zw;
      r3.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r2.xyzw = t4.Sample(s1_s, r1.yz).wxyz;
      r1.yzw = t5.Sample(s1_s, r3.xy).xyz;
      r0.zw = r1.yz * cb7[2].xx + cb7[2].yy;
      r1.x = saturate(cb7[2].z + r1.w);
    }
  }
  r3.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(9,11,12,13));
  r4.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(14,15,16,17));
  r5.xyzw = saturate(cb7[r3.y+0].xyzw);
  r1.yz = saturate(cb7[r3.z+0].yz);
  r6.xyzw = saturate(cb7[r4.w+0].xyzw);
  r7.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r8.xy = t1.Sample(s3_s, v3.xy).xy;
  r8.xy = r8.xy * cb0[17].xx + cb0[17].yy;
  r9.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r0.y = cmp(r9.w >= 0.156862751);
  r1.w = r0.y ? 1.000000 : 0;
  r10.xyz = float3(-0.25,-0.188235298,-0.156862751) + r9.ywz;
  r8.zw = saturate(float2(1.231884,1.18604648) * r10.yz);
  r3.y = saturate(cb7[r4.y+0].y * r8.z + cb7[r4.y+0].x);
  r3.y = saturate(cb7[r4.y+0].w * r3.y + cb7[r4.y+0].z);
  r11.xy = saturate(float2(7.96875,4) * r9.wy);
  r4.y = cb0[2].x + 128.5;
  r4.y = 0.00390625 * r4.y;
  r4.w = cmp(0.0500000007 >= r11.x);
  r4.y = r4.w ? r4.y : -1;
  r10.yzw = saturate(float3(4,4,4) * r2.yzw);
  r2.yzw = saturate(float3(-0.25,-0.25,-0.25) + r2.yzw);
  r12.xyz = saturate(cb7[r3.x+0].xyz * r10.yzw + r2.yzw);
  r12.xyz = -cb7[r3.x+0].xyz + r12.xyz;
  r12.xyz = r5.xxx * r12.xyz + cb7[r3.x+0].xyz;
  r3.x = saturate(cb7[r3.w+0].y * r9.y + cb7[r3.w+0].x);
  r3.x = saturate(cb7[r3.w+0].w * r3.x + cb7[r3.w+0].z);
  r10.x = saturate(r10.x);
  r2.x = saturate(r2.x * r11.y + r10.x);
  r4.w = saturate(cb7[r3.w+0].y * r2.x + cb7[r3.w+0].x);
  r3.w = saturate(cb7[r3.w+0].w * r4.w + cb7[r3.w+0].z);
  r3.w = r3.w + -r3.x;
  r3.x = r5.z * r3.w + r3.x;
  r13.xyz = saturate(float3(4,4,4) * r7.xyz);
  r14.xyz = saturate(float3(-0.25,-0.25,-0.25) + r7.xyz);
  r12.xyz = saturate(r12.xyz * r13.xyz + r14.xyz);
  r5.xz = r0.zw * r5.yy + r8.xy;
  r1.x = -1 + r1.x;
  r3.w = r5.y * r1.x + 1;
  r2.yzw = saturate(cb7[r4.x+0].xyz * r10.yzw + r2.yzw);
  r2.yzw = -cb7[r4.x+0].xyz + r2.yzw;
  r2.yzw = r6.xxx * r2.yzw + cb7[r4.x+0].xyz;
  r2.yzw = saturate(r2.yzw * r13.xyz + r14.xyz);
  r4.x = saturate(cb7[r4.z+0].y * r9.y + cb7[r4.z+0].x);
  r4.x = saturate(cb7[r4.z+0].w * r4.x + cb7[r4.z+0].z);
  r2.x = saturate(cb7[r4.z+0].y * r2.x + cb7[r4.z+0].x);
  r2.x = saturate(cb7[r4.z+0].w * r2.x + cb7[r4.z+0].z);
  r2.x = r2.x + -r4.x;
  r2.x = r6.z * r2.x + r4.x;
  r0.zw = r0.zw * r6.yy + r8.xy;
  r1.x = r6.y * r1.x + 1;
  r4.xzw = r12.xyz + -r2.yzw;
  r2.yzw = r3.yyy * r4.xzw + r2.yzw;
  r4.xz = r5.xz + -r0.zw;
  r0.zw = r3.yy * r4.xz + r0.zw;
  r3.x = r3.x + -r2.x;
  r2.x = r3.y * r3.x + r2.x;
  r3.x = -r6.w + r5.w;
  r5.y = r3.y * r3.x + r6.w;
  r3.x = r3.w + -r1.x;
  r1.x = r3.y * r3.x + r1.x;
  r3.x = cb7[r3.z+0].x + 128.5;
  r3.x = 0.00390625 * r3.x;
  r3.y = cmp(0.0500000007 >= r5.w);
  r3.x = r3.y ? r3.x : -1;
  r1.x = min(r2.x, r1.x);
  r2.x = cmp(9.99999975e-005 < r1.y);
  r3.y = -2 * r1.y;
  r1.y = r1.y * -2 + -0.200000003;
  r1.y = r1.y * r1.x;
  r1.y = r1.y * -5.00250101 + r3.y;
  r1.y = min(r1.x, r1.y);
  r5.x = r2.x ? r1.y : r1.x;
  r2.xyz = r2.yzw + -r7.xyz;
  r2.xyz = r1.www * r2.xyz + r7.xyz;
  r0.zw = r0.zw + -r8.xy;
  r6.xy = r1.ww * r0.zw + r8.xy;
  r11.z = r9.y;
  r0.zw = r5.xy + -r11.zx;
  r0.zw = r1.ww * r0.zw + r11.zx;
  r1.x = r1.w * r1.z;
  o0.w = r0.y ? r3.x : r4.y;
  r1.yzw = cb0[15].xyz + cb0[14].xyz;
  r0.y = r8.w * cb0[16].x + cb0[16].y;
  r3.xyz = r1.yzw * r0.yyy;
  r1.yzw = r1.yzw * r0.yyy + r2.xyz;
  r0.y = max(r1.y, r1.z);
  r0.y = max(r0.y, r1.w);
  r0.y = saturate(-1 + r0.y);
  r0.y = 1 + -r0.y;
  r1.yzw = r2.xyz * r0.yyy + r3.xyz;
  r0.y = max(r1.y, r1.z);
  r0.y = max(r0.y, r1.w);
  r0.y = max(1, r0.y);
  r1.yzw = r1.yzw / r0.yyy;
  r0.y = max(r3.x, r3.y);
  r0.y = max(r0.y, r3.z);
  r2.x = dot(r6.xy, r6.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r6.z = sqrt(r2.x);
  r2.x = dot(r6.xyz, r6.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r6.xyz * r2.xxx;
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
  r0.x = saturate(r0.x * cb0[10].x + cb0[10].y);
  r0.x = r3.x * r0.x;
  r3.x = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = log2(r3.x);
  r3.x = -cb0[11].x * r3.x;
  r3.x = exp2(r3.x);
  r0.x = r3.x * r0.x;
  o2.w = v0.w + r2.w;
  r0.x = r0.x * cb0[13].x + r0.y;
  r0.y = r0.z * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r9.x = saturate(r9.x);
  r0.x = r9.x + r0.x;
  o2.y = 0.5 * r0.x;
  o2.z = 0.800000012 * r1.x;
  o0.xyz = r1.yzw;
  o1.w = 0;
  o2.x = r0.w;
  return;
}