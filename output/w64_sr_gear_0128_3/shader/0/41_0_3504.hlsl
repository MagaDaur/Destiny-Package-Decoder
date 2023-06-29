// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:46 2023
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

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
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
  float3 v4 : TEXCOORD4,
  float4 v5 : SV_POSITION0,
  uint v6 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r1.z = dot(r0.xyz, v0.xyz);
  r1.x = dot(r0.xyz, v1.xyz);
  r1.y = dot(r0.xyz, v2.xyz);
  r0.xyz = t3.Sample(s6_s, v3.xy).xyz;
  r1.w = r0.y + -r0.z;
  r1.w = cmp(r1.w < 0.00470588217);
  r0.z = r1.w ? r0.y : r0.z;
  r2.xyz = ddx_coarse(r0.xyz);
  r3.xyz = ddy_coarse(r0.xyz);
  r2.xy = r2.xx * r2.yz;
  r2.zw = r3.xx * r3.yz;
  r3.xy = cmp(abs(r2.zw) < abs(r2.xy));
  r2.xy = r3.xy ? r2.xy : r2.zw;
  r1.w = -0.5 + r0.x;
  r1.w = cmp(abs(r1.w) < 0.00470588217);
  r2.z = r0.x + r0.y;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r2.xy = cmp(r2.xy < float2(0,0));
  r2.x = r2.x ? r2.z : 0;
  r2.z = 1 + -r0.y;
  r2.x = r2.x ? r2.z : r0.x;
  r2.z = r2.x + r0.z;
  r2.z = -1 + r2.z;
  r2.z = cmp(abs(r2.z) < 0.00588235306);
  r2.y = r2.y ? r2.z : 0;
  r2.z = 1 + -r0.z;
  r2.x = r2.y ? r2.z : r2.x;
  r0.x = r1.w ? r2.x : r0.x;
  r0.xz = cmp(r0.xz >= float2(0.5,0.5));
  if (r0.z != 0) {
    r2.xy = v3.zw * cb7[6].xy + cb7[6].zw;
    r2.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r3.xyzw = t8.Sample(s1_s, r2.xy).wxyz;
    r2.xyz = t9.Sample(s1_s, r2.zw).xyz;
    r2.xy = r2.xy * cb7[8].xx + cb7[8].yy;
    r0.z = saturate(cb7[8].z + r2.z);
    r1.w = 4;
  } else {
    r0.y = cmp(r0.y >= 0.5);
    if (r0.y != 0) {
      r2.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r4.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r3.xyzw = t6.Sample(s1_s, r2.zw).wxyz;
      r4.xyz = t7.Sample(s1_s, r4.xy).xyz;
      r2.xy = r4.xy * cb7[5].xx + cb7[5].yy;
      r0.z = saturate(cb7[5].z + r4.z);
      r1.w = 2;
    } else {
      r2.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r4.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r3.xyzw = t4.Sample(s1_s, r2.zw).wxyz;
      r4.xyz = t5.Sample(s1_s, r4.xy).xyz;
      r2.xy = r4.xy * cb7[2].xx + cb7[2].yy;
      r0.z = saturate(cb7[2].z + r4.z);
      r1.w = 0;
    }
  }
  r0.y = (int)r1.w + 1;
  r0.x = r0.x ? r0.y : r1.w;
  r0.x = (int)r0.x * 9;
  r4.xyzw = saturate(cb7[r0.x+11].xyzw);
  r2.zw = saturate(cb7[r0.x+12].yz);
  r5.xyzw = saturate(cb7[r0.x+17].xyzw);
  r6.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r7.xy = t1.Sample(s4_s, v3.xy).xy;
  r7.xy = r7.xy * cb0[21].xx + cb0[21].yy;
  r8.xyzw = t2.Sample(s5_s, v3.xy).xyzw;
  r0.y = cmp(r8.w >= 0.156862751);
  r1.w = r0.y ? 1.000000 : 0;
  r9.xyz = float3(-0.25,-0.188235298,-0.156862751) + r8.ywz;
  r7.zw = saturate(float2(1.231884,1.18604648) * r9.yz);
  r6.w = saturate(cb7[r0.x+15].y * r7.z + cb7[r0.x+15].x);
  r6.w = saturate(cb7[r0.x+15].w * r6.w + cb7[r0.x+15].z);
  r10.xy = saturate(float2(7.96875,4) * r8.wy);
  r7.z = cb0[2].x + 128.5;
  r7.z = 0.00390625 * r7.z;
  r8.z = cmp(0.0500000007 >= r10.x);
  r7.z = r8.z ? r7.z : -1;
  r9.yzw = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r11.xyz = saturate(cb7[r0.x+9].xyz * r9.yzw + r3.yzw);
  r11.xyz = -cb7[r0.x+9].xyz + r11.xyz;
  r11.xyz = r4.xxx * r11.xyz + cb7[r0.x+9].xyz;
  r4.x = saturate(cb7[r0.x+13].y * r8.y + cb7[r0.x+13].x);
  r4.x = saturate(cb7[r0.x+13].w * r4.x + cb7[r0.x+13].z);
  r9.x = saturate(r9.x);
  r3.x = saturate(r3.x * r10.y + r9.x);
  r8.z = saturate(cb7[r0.x+13].y * r3.x + cb7[r0.x+13].x);
  r8.z = saturate(cb7[r0.x+13].w * r8.z + cb7[r0.x+13].z);
  r8.z = r8.z + -r4.x;
  r4.x = r4.z * r8.z + r4.x;
  r12.xyz = saturate(float3(4,4,4) * r6.xyz);
  r13.xyz = saturate(float3(-0.25,-0.25,-0.25) + r6.xyz);
  r11.xyz = saturate(r11.xyz * r12.xyz + r13.xyz);
  r8.zw = r2.xy * r4.yy + r7.xy;
  r0.z = -1 + r0.z;
  r4.y = r4.y * r0.z + 1;
  r3.yzw = saturate(cb7[r0.x+14].xyz * r9.yzw + r3.yzw);
  r3.yzw = -cb7[r0.x+14].xyz + r3.yzw;
  r3.yzw = r5.xxx * r3.yzw + cb7[r0.x+14].xyz;
  r3.yzw = saturate(r3.yzw * r12.xyz + r13.xyz);
  r4.z = saturate(cb7[r0.x+16].y * r8.y + cb7[r0.x+16].x);
  r4.z = saturate(cb7[r0.x+16].w * r4.z + cb7[r0.x+16].z);
  r3.x = saturate(cb7[r0.x+16].y * r3.x + cb7[r0.x+16].x);
  r3.x = saturate(cb7[r0.x+16].w * r3.x + cb7[r0.x+16].z);
  r3.x = r3.x + -r4.z;
  r3.x = r5.z * r3.x + r4.z;
  r2.xy = r2.xy * r5.yy + r7.xy;
  r0.z = r5.y * r0.z + 1;
  r5.xyz = r11.xyz + -r3.yzw;
  r3.yzw = r6.www * r5.xyz + r3.yzw;
  r5.xy = r8.zw + -r2.xy;
  r2.xy = r6.ww * r5.xy + r2.xy;
  r4.x = r4.x + -r3.x;
  r3.x = r6.w * r4.x + r3.x;
  r4.x = -r5.w + r4.w;
  r5.y = r6.w * r4.x + r5.w;
  r4.x = r4.y + -r0.z;
  r0.z = r6.w * r4.x + r0.z;
  r9.xyzw = t11.Sample(s2_s, v3.xy).xyzw;
  r3.x = r9.w * r3.x;
  r4.x = cb7[r0.x+12].x + 128.5;
  r4.x = 0.00390625 * r4.x;
  r4.y = cmp(0.0500000007 >= r4.w);
  r4.x = r4.y ? r4.x : -1;
  r0.z = min(r3.x, r0.z);
  r3.x = cmp(9.99999975e-005 < r2.z);
  r4.y = -2 * r2.z;
  r2.z = r2.z * -2 + -0.200000003;
  r2.z = r2.z * r0.z;
  r2.z = r2.z * -5.00250101 + r4.y;
  r2.z = min(r2.z, r0.z);
  r5.x = r3.x ? r2.z : r0.z;
  r3.xyz = r3.yzw * r9.xyz + -r6.xyz;
  r3.xyz = r1.www * r3.xyz + r6.xyz;
  r2.xy = r2.xy + -r7.xy;
  r2.xy = r1.ww * r2.xy + r7.xy;
  r10.z = r8.y;
  r4.yz = r5.xy + -r10.zx;
  r4.yz = r1.ww * r4.yz + r10.zx;
  r0.z = r1.w * r2.w;
  o0.w = r0.y ? r4.x : r7.z;
  r0.y = cmp(0 != cb7[r0.x+10].w);
  r5.xyz = r0.yyy ? cb7[r0.x+10].xyz : 0;
  r0.x = r1.z * r1.z;
  r0.x = saturate(r0.x * cb0[14].x + cb0[14].y);
  r0.x = cb0[15].y * r0.x + cb0[15].x;
  r4.xw = v3.xy;
  r6.xy = float2(0.5,0.5) + -r4.xw;
  r6.z = cb0[16].x;
  r0.y = dot(r6.xyz, r6.xyz);
  r2.w = cmp(r0.y < cb0[17].x);
  r3.w = sqrt(r0.y);
  r6.xyz = r6.xyz / r3.www;
  r1.z = dot(r6.xyz, r1.xyz);
  r4.x = cb0[17].x + -r0.y;
  r4.w = r1.z * r1.z;
  r0.y = r4.w * r0.y + r4.x;
  r0.y = sqrt(r0.y);
  r0.y = r1.z * r3.w + -r0.y;
  r1.xy = r1.xy * r0.yy + v3.xy;
  r1.xy = r2.ww ? r1.xy : v3.xy;
  r1.xy = r1.xy * cb0[18].xy + cb0[18].zw;
  r0.y = t10.Sample(s2_s, r1.xy).x;
  r0.y = r7.w * r0.y;
  r0.y = r0.y * cb0[19].x + cb0[19].y;
  r0.x = r0.x * r0.y;
  r0.x = cb0[20].x * r0.x;
  r1.xyz = r0.xxx * r5.xyz;
  r1.xyz = r1.xyz * r1.www;
  r5.xyz = r1.xyz * r6.www;
  r1.xyz = r1.xyz * r6.www + r3.xyz;
  r0.x = max(r1.x, r1.y);
  r0.x = max(r0.x, r1.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r1.xyz = r3.xyz * r0.xxx + r5.xyz;
  r0.x = max(r1.x, r1.y);
  r0.x = max(r0.x, r1.z);
  r0.x = max(1, r0.x);
  r1.xyz = r1.xyz / r0.xxx;
  r0.x = max(r5.x, r5.y);
  r0.x = max(r0.x, r5.z);
  r0.y = dot(r2.xy, r2.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r2.z = sqrt(r0.y);
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r3.xyz = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r3.xyz;
  r2.xyz = v0.xyz * r2.zzz + r2.xyw;
  r0.y = dot(r2.xyz, r2.xyz);
  r0.y = rsqrt(r0.y);
  r2.xyz = r2.xyz * r0.yyy;
  r0.y = saturate(cb0[12].x);
  r1.w = dot(v0.xyz, v0.xyz);
  r1.w = rsqrt(r1.w);
  r3.xyz = v0.xyz * r1.www;
  r1.w = dot(cb0[5].xyz, r3.xyz);
  r2.w = cb0[4].x + -cb0[3].x;
  r1.w = saturate(r1.w * r2.w + cb0[3].x);
  r2.w = -cb0[6].z + v4.z;
  r2.w = cb0[7].x * r2.w;
  r2.w = max(0, r2.w);
  r2.w = log2(r2.w);
  r2.w = cb0[8].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb0[9].x * r2.w);
  r1.w = r2.w * r1.w;
  r0.w = saturate(r0.w * cb0[10].x + cb0[10].y);
  r0.w = r1.w * r0.w;
  r1.w = dot(r1.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = -cb0[11].x * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.w * r0.w;
  o2.w = v0.w + r0.y;
  r0.x = r0.w * cb0[13].x + r0.x;
  r0.y = r4.y * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r8.x = saturate(r8.x);
  r0.x = r8.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xz;
  o0.xyz = r1.xyz;
  o1.w = 0;
  o2.x = r4.z;
  return;
}