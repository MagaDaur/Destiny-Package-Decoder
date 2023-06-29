// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:51 2023
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
  r3.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(9,10,11,12));
  r4.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(13,14,15,16));
  r0.y = mad(9, (int)r0.y, 17);
  r5.xyzw = saturate(cb7[r3.z+0].xyzw);
  r1.yz = saturate(cb7[r3.w+0].yz);
  r6.xyzw = saturate(cb7[r0.y+0].xyzw);
  r7.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r8.xy = t1.Sample(s3_s, v3.xy).xy;
  r8.xy = r8.xy * cb0[17].xx + cb0[17].yy;
  r9.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r0.y = cmp(r9.w >= 0.156862751);
  r1.w = r0.y ? 1.000000 : 0;
  r10.xyz = float3(-0.25,-0.188235298,-0.156862751) + r9.ywz;
  r8.zw = saturate(float2(1.231884,1.18604648) * r10.yz);
  r11.xyz = saturate(float3(7.96875,7.96875,4) * r9.zwy);
  r3.z = v6.x ? 1 : -1;
  r7.w = saturate(cb7[r4.z+0].y * r8.z + cb7[r4.z+0].x);
  r4.z = saturate(cb7[r4.z+0].w * r7.w + cb7[r4.z+0].z);
  r7.w = cb0[2].x + 128.5;
  r7.w = 0.00390625 * r7.w;
  r8.z = cmp(0.0500000007 >= r11.y);
  r7.w = r8.z ? r7.w : -1;
  r10.yzw = saturate(float3(4,4,4) * r2.yzw);
  r2.yzw = saturate(float3(-0.25,-0.25,-0.25) + r2.yzw);
  r12.xyz = saturate(cb7[r3.x+0].xyz * r10.yzw + r2.yzw);
  r12.xyz = -cb7[r3.x+0].xyz + r12.xyz;
  r12.xyz = r5.xxx * r12.xyz + cb7[r3.x+0].xyz;
  r3.x = saturate(cb7[r4.x+0].y * r9.y + cb7[r4.x+0].x);
  r3.x = saturate(cb7[r4.x+0].w * r3.x + cb7[r4.x+0].z);
  r10.x = saturate(r10.x);
  r2.x = saturate(r2.x * r11.z + r10.x);
  r5.x = saturate(cb7[r4.x+0].y * r2.x + cb7[r4.x+0].x);
  r4.x = saturate(cb7[r4.x+0].w * r5.x + cb7[r4.x+0].z);
  r4.x = r4.x + -r3.x;
  r3.x = r5.z * r4.x + r3.x;
  r13.xyz = saturate(float3(4,4,4) * r7.xyz);
  r14.xyz = saturate(float3(-0.25,-0.25,-0.25) + r7.xyz);
  r12.xyz = saturate(r12.xyz * r13.xyz + r14.xyz);
  r5.xz = r0.zw * r5.yy + r8.xy;
  r1.x = -1 + r1.x;
  r4.x = r5.y * r1.x + 1;
  r2.yzw = saturate(cb7[r4.y+0].xyz * r10.yzw + r2.yzw);
  r2.yzw = -cb7[r4.y+0].xyz + r2.yzw;
  r2.yzw = r6.xxx * r2.yzw + cb7[r4.y+0].xyz;
  r2.yzw = saturate(r2.yzw * r13.xyz + r14.xyz);
  r4.y = saturate(cb7[r4.w+0].y * r9.y + cb7[r4.w+0].x);
  r4.y = saturate(cb7[r4.w+0].w * r4.y + cb7[r4.w+0].z);
  r2.x = saturate(cb7[r4.w+0].y * r2.x + cb7[r4.w+0].x);
  r2.x = saturate(cb7[r4.w+0].w * r2.x + cb7[r4.w+0].z);
  r2.x = r2.x + -r4.y;
  r2.x = r6.z * r2.x + r4.y;
  r0.zw = r0.zw * r6.yy + r8.xy;
  r1.x = r6.y * r1.x + 1;
  r6.xyz = r12.xyz + -r2.yzw;
  r2.yzw = r4.zzz * r6.xyz + r2.yzw;
  r4.yw = r5.xz + -r0.zw;
  r0.zw = r4.zz * r4.yw + r0.zw;
  r3.x = r3.x + -r2.x;
  r2.x = r4.z * r3.x + r2.x;
  r3.x = -r6.w + r5.w;
  r5.y = r4.z * r3.x + r6.w;
  r3.x = r4.x + -r1.x;
  r1.x = r4.z * r3.x + r1.x;
  r3.x = cb7[r3.w+0].x + 128.5;
  r3.x = 0.00390625 * r3.x;
  r3.w = cmp(0.0500000007 >= r5.w);
  r3.x = r3.w ? r3.x : -1;
  r1.x = min(r2.x, r1.x);
  r2.x = cmp(9.99999975e-005 < r1.y);
  r3.w = -2 * r1.y;
  r1.y = r1.y * -2 + -0.200000003;
  r1.y = r1.y * r1.x;
  r1.y = r1.y * -5.00250101 + r3.w;
  r1.y = min(r1.x, r1.y);
  r5.x = r2.x ? r1.y : r1.x;
  r2.xyz = r2.yzw + -r7.xyz;
  r2.xyz = r1.www * r2.xyz + r7.xyz;
  r0.zw = r0.zw + -r8.xy;
  r6.xy = r1.ww * r0.zw + r8.xy;
  r11.w = r9.y;
  r0.zw = r5.xy + -r11.wy;
  r0.zw = r1.ww * r0.zw + r11.wy;
  r1.x = r1.w * r1.z;
  o0.w = r0.y ? r3.x : r7.w;
  r0.y = cmp(0 != cb7[r3.y+0].w);
  r3.xyw = r0.yyy ? cb7[r3.y+0].xyz : 0;
  r0.y = cb0[16].x * r8.w;
  r3.xyw = r0.yyy * r3.xyw;
  r1.yzw = r3.xyw * r1.www;
  r3.xyw = r1.yzw * r4.zzz;
  r1.yzw = r1.yzw * r4.zzz + r2.xyz;
  r0.y = max(r1.y, r1.z);
  r0.y = max(r0.y, r1.w);
  r0.y = saturate(-1 + r0.y);
  r0.y = 1 + -r0.y;
  r1.yzw = r2.xyz * r0.yyy + r3.xyw;
  r0.y = max(r1.y, r1.z);
  r0.y = max(r0.y, r1.w);
  r0.y = max(1, r0.y);
  r1.yzw = r1.yzw / r0.yyy;
  r0.y = max(r3.x, r3.y);
  r0.y = max(r0.y, r3.w);
  r2.x = dot(r6.xy, r6.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r6.z = sqrt(r2.x);
  r2.x = dot(r6.xyz, r6.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r6.xyz * r2.xxx;
  r3.xyz = v0.xyz * r3.zzz;
  r4.xyz = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r4.xyz;
  r2.xyz = r3.xyz * r2.zzz + r2.xyw;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = cmp(0.000000 != cb0[4].x);
  if (r2.w != 0) {
    r4.xy = ddx_coarse(v3.xy);
    r2.w = dot(r4.xy, r4.xy);
    r2.w = sqrt(r2.w);
    r4.xy = ddy_coarse(v3.xy);
    r3.w = dot(r4.xy, r4.xy);
    r3.w = sqrt(r3.w);
    r2.w = max(r3.w, r2.w);
    r2.w = 1 / r2.w;
    r2.w = log2(r2.w);
    r3.w = floor(r2.w);
    r3.w = exp2(r3.w);
    r4.x = ceil(r2.w);
    r4.x = exp2(r4.x);
    r4.yz = v3.xy * r3.ww;
    r4.yz = floor(r4.yz);
    r3.w = dot(r4.yz, float2(17,0.100000001));
    r3.w = sin(r3.w);
    r3.w = 10000 * r3.w;
    r4.y = r4.z * 13 + r4.y;
    r4.y = sin(r4.y);
    r4.y = 0.100000001 + abs(r4.y);
    r3.w = r4.y * r3.w;
    r3.w = frac(r3.w);
    r4.xy = v3.xy * r4.xx;
    r4.xy = floor(r4.xy);
    r4.z = dot(r4.xy, float2(17,0.100000001));
    r4.z = sin(r4.z);
    r4.z = 10000 * r4.z;
    r4.x = r4.y * 13 + r4.x;
    r4.x = sin(r4.x);
    r4.x = 0.100000001 + abs(r4.x);
    r4.x = r4.z * r4.x;
    r4.x = frac(r4.x);
    r2.w = frac(r2.w);
    r4.x = r4.x + -r3.w;
    r3.w = r2.w * r4.x + r3.w;
    r4.x = 1 + -r2.w;
    r2.w = min(r4.x, r2.w);
    r4.x = r3.w * r3.w;
    r4.y = r2.w + r2.w;
    r4.z = 1 + -r2.w;
    r4.y = r4.y * r4.z;
    r4.w = -r2.w * 0.5 + r3.w;
    r4.xw = r4.xw / r4.yz;
    r5.x = 1 + -r3.w;
    r5.x = r5.x * r5.x;
    r4.y = r5.x / r4.y;
    r4.y = 1 + -r4.y;
    r4.z = cmp(r3.w < r4.z);
    r2.w = cmp(r3.w < r2.w);
    r2.w = r2.w ? r4.x : r4.w;
    r2.w = r4.z ? r2.w : r4.y;
    r3.w = cmp(0.5 >= cb0[3].x);
    r4.x = cb0[3].x + cb0[3].x;
    r4.x = r2.w * -r4.x + r4.x;
    r4.y = cb0[3].x * 2 + -2;
    r2.w = r2.w * r4.y + 1;
    r2.w = r3.w ? r4.x : r2.w;
  } else {
    r2.w = cb0[3].x;
  }
  r2.w = r11.x + -r2.w;
  r2.w = cmp(r2.w < 0);
  if (r2.w != 0) discard;
  r2.w = saturate(cb0[14].x);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r3.x = dot(cb0[7].xyz, r3.xyz);
  r3.y = cb0[6].x + -cb0[5].x;
  r3.x = saturate(r3.x * r3.y + cb0[5].x);
  r3.y = -cb0[8].z + v4.z;
  r3.y = cb0[9].x * r3.y;
  r3.y = max(0, r3.y);
  r3.y = log2(r3.y);
  r3.y = cb0[10].x * r3.y;
  r3.y = exp2(r3.y);
  r3.y = saturate(cb0[11].x * r3.y);
  r3.x = r3.x * r3.y;
  r0.x = saturate(r0.x * cb0[12].x + cb0[12].y);
  r0.x = r3.x * r0.x;
  r3.x = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = log2(r3.x);
  r3.x = -cb0[13].x * r3.x;
  r3.x = exp2(r3.x);
  r0.x = r3.x * r0.x;
  o2.w = v0.w + r2.w;
  r0.x = r0.x * cb0[15].x + r0.y;
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