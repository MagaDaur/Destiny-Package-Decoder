// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
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
  float4 cb0[23];
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
  r0.x = dot(r0.xyz, v0.xyz);
  r0.y = (uint)v2.w;
  r0.z = cmp((uint)r0.y >= 4);
  if (r0.z != 0) {
    r1.xy = v3.zw * cb7[6].xy + cb7[6].zw;
    r1.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r2.xyz = t8.Sample(s1_s, r1.xy).xyz;
    r1.xyz = t9.Sample(s1_s, r1.zw).xyz;
    r1.xy = r1.xy * cb7[8].xx + cb7[8].yy;
    r0.z = saturate(cb7[8].z + r1.z);
  } else {
    r1.z = cmp((uint)r0.y >= 2);
    if (r1.z != 0) {
      r1.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r3.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r2.xyz = t6.Sample(s1_s, r1.zw).xyz;
      r3.xyz = t7.Sample(s1_s, r3.xy).xyz;
      r1.xy = r3.xy * cb7[5].xx + cb7[5].yy;
      r0.z = saturate(cb7[5].z + r3.z);
    } else {
      r1.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r3.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r2.xyz = t4.Sample(s1_s, r1.zw).xyz;
      r3.xyz = t5.Sample(s1_s, r3.xy).xyz;
      r1.xy = r3.xy * cb7[2].xx + cb7[2].yy;
      r0.z = saturate(cb7[2].z + r3.z);
    }
  }
  r3.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(9,11,12,13));
  r4.xyzw = mad(int4(9,9,9,9), (int4)r0.yyyy, int4(14,15,16,17));
  r5.xyzw = saturate(cb7[r3.y+0].xyzw);
  r1.zw = saturate(cb7[r3.z+0].yz);
  r6.xyzw = saturate(cb7[r4.w+0].xyzw);
  r7.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r8.xy = t1.Sample(s4_s, v3.xy).xy;
  r8.xy = r8.xy * cb0[22].xx + cb0[22].yy;
  r9.xyz = t2.Sample(s5_s, v3.xy).xzw;
  r0.y = cmp(r9.z >= 0.156862751);
  r2.w = r0.y ? 1.000000 : 0;
  r3.y = -0.188235298 + r9.z;
  r3.y = saturate(1.231884 * r3.y);
  r8.zw = saturate(float2(7.96875,7.96875) * r9.yz);
  r4.w = v6.x ? 1 : -1;
  r3.y = saturate(cb7[r4.y+0].y * r3.y + cb7[r4.y+0].x);
  r3.y = saturate(cb7[r4.y+0].w * r3.y + cb7[r4.y+0].z);
  r10.y = r8.w * cb0[2].x + cb0[2].y;
  r9.yz = v3.xy * cb0[3].xy + cb0[3].zw;
  r4.y = t10.Sample(s2_s, r9.yz).x;
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[4].x + cb0[4].y);
  r0.x = r4.y * r0.x;
  r0.x = saturate(r0.x * cb0[5].x + cb0[5].y);
  r4.y = cb0[6].x * r0.x;
  r7.w = saturate(cb0[7].x);
  r10.x = -2 * r7.w;
  r7.w = cb0[8].x + 128.5;
  r7.w = 0.00390625 * r7.w;
  r8.w = cmp(0.0500000007 >= r10.y);
  r7.w = r8.w ? r7.w : -1;
  r9.yzw = saturate(float3(4,4,4) * r2.xyz);
  r2.xyz = saturate(float3(-0.25,-0.25,-0.25) + r2.xyz);
  r11.xyz = saturate(cb7[r3.x+0].xyz * r9.yzw + r2.xyz);
  r11.xyz = -cb7[r3.x+0].xyz + r11.xyz;
  r11.xyz = r5.xxx * r11.xyz + cb7[r3.x+0].xyz;
  r3.x = saturate(cb7[r3.w+0].y * r10.x + cb7[r3.w+0].x);
  r3.x = saturate(cb7[r3.w+0].w * r3.x + cb7[r3.w+0].z);
  r5.x = saturate(cb7[r3.w+0].x);
  r3.w = saturate(cb7[r3.w+0].w * r5.x + cb7[r3.w+0].z);
  r3.w = r3.w + -r3.x;
  r3.x = r5.z * r3.w + r3.x;
  r12.xyz = saturate(float3(4,4,4) * r7.xyz);
  r13.xyz = saturate(float3(-0.25,-0.25,-0.25) + r7.xyz);
  r11.xyz = saturate(r11.xyz * r12.xyz + r13.xyz);
  r5.xz = r1.xy * r5.yy + r8.xy;
  r0.z = -1 + r0.z;
  r3.w = r5.y * r0.z + 1;
  r2.xyz = saturate(cb7[r4.x+0].xyz * r9.yzw + r2.xyz);
  r2.xyz = -cb7[r4.x+0].xyz + r2.xyz;
  r2.xyz = r6.xxx * r2.xyz + cb7[r4.x+0].xyz;
  r2.xyz = saturate(r2.xyz * r12.xyz + r13.xyz);
  r4.x = saturate(cb7[r4.z+0].y * r10.x + cb7[r4.z+0].x);
  r4.x = saturate(cb7[r4.z+0].w * r4.x + cb7[r4.z+0].z);
  r5.y = saturate(cb7[r4.z+0].x);
  r4.z = saturate(cb7[r4.z+0].w * r5.y + cb7[r4.z+0].z);
  r4.z = r4.z + -r4.x;
  r4.x = r6.z * r4.z + r4.x;
  r1.xy = r1.xy * r6.yy + r8.xy;
  r0.z = r6.y * r0.z + 1;
  r6.xyz = r11.xyz + -r2.xyz;
  r2.xyz = r3.yyy * r6.xyz + r2.xyz;
  r5.xy = r5.xz + -r1.xy;
  r1.xy = r3.yy * r5.xy + r1.xy;
  r3.x = -r4.x + r3.x;
  r3.x = r3.y * r3.x + r4.x;
  r4.x = -r6.w + r5.w;
  r5.y = r3.y * r4.x + r6.w;
  r3.w = r3.w + -r0.z;
  r0.z = r3.y * r3.w + r0.z;
  r3.y = cb7[r3.z+0].x + 128.5;
  r3.y = 0.00390625 * r3.y;
  r3.z = cmp(0.0500000007 >= r5.w);
  r3.y = r3.z ? r3.y : -1;
  r0.z = min(r3.x, r0.z);
  r3.x = cmp(9.99999975e-005 < r1.z);
  r3.z = -2 * r1.z;
  r1.z = r1.z * -2 + -0.200000003;
  r1.z = r1.z * r0.z;
  r1.z = r1.z * -5.00250101 + r3.z;
  r1.z = min(r1.z, r0.z);
  r5.x = r3.x ? r1.z : r0.z;
  r2.xyz = r2.xyz + -r7.xyz;
  r2.xyz = r2.www * r2.xyz + r7.xyz;
  r1.xy = r1.xy + -r8.xy;
  r1.xy = r2.ww * r1.xy + r8.xy;
  r3.xz = r5.xy + -r10.xy;
  r3.xz = r2.ww * r3.xz + r10.xy;
  r0.x = -r0.x * cb0[6].x + r1.w;
  r0.x = r2.w * r0.x + r4.y;
  o0.w = r0.y ? r3.y : r7.w;
  r0.y = dot(r1.xy, r1.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r1.z = sqrt(r0.y);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r4.xyz = v0.xyz * r4.www;
  r5.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r5.xyz;
  r1.xyz = r4.xyz * r1.zzz + r1.xyw;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r0.y = cmp(0.000000 != cb0[10].x);
  if (r0.y != 0) {
    r0.yz = ddx_coarse(v3.xy);
    r0.y = dot(r0.yz, r0.yz);
    r3.yw = ddy_coarse(v3.xy);
    r0.z = dot(r3.yw, r3.yw);
    r0.yz = sqrt(r0.yz);
    r0.y = max(r0.y, r0.z);
    r0.y = 1 / r0.y;
    r0.y = log2(r0.y);
    r0.z = floor(r0.y);
    r0.z = exp2(r0.z);
    r1.w = ceil(r0.y);
    r1.w = exp2(r1.w);
    r3.yw = v3.xy * r0.zz;
    r3.yw = floor(r3.yw);
    r0.z = dot(r3.yw, float2(17,0.100000001));
    r0.z = sin(r0.z);
    r0.z = 10000 * r0.z;
    r2.w = r3.w * 13 + r3.y;
    r2.w = sin(r2.w);
    r2.w = 0.100000001 + abs(r2.w);
    r0.z = r2.w * r0.z;
    r3.yw = v3.xy * r1.ww;
    r3.yw = floor(r3.yw);
    r1.w = dot(r3.yw, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r2.w = r3.w * 13 + r3.y;
    r2.w = sin(r2.w);
    r2.w = 0.100000001 + abs(r2.w);
    r1.w = r2.w * r1.w;
    r1.w = frac(r1.w);
    r0.yz = frac(r0.yz);
    r1.w = r1.w + -r0.z;
    r0.z = r0.y * r1.w + r0.z;
    r1.w = 1 + -r0.y;
    r0.y = min(r1.w, r0.y);
    r1.w = r0.z * r0.z;
    r2.w = r0.y + r0.y;
    r3.y = 1 + -r0.y;
    r2.w = r3.y * r2.w;
    r1.w = r1.w / r2.w;
    r3.w = -r0.y * 0.5 + r0.z;
    r3.w = r3.w / r3.y;
    r4.w = 1 + -r0.z;
    r4.w = r4.w * r4.w;
    r2.w = r4.w / r2.w;
    r2.w = 1 + -r2.w;
    r3.y = cmp(r0.z < r3.y);
    r0.y = cmp(r0.z < r0.y);
    r0.y = r0.y ? r1.w : r3.w;
    r0.y = r3.y ? r0.y : r2.w;
    r0.z = cmp(0.5 >= cb0[9].x);
    r1.w = cb0[9].x + cb0[9].x;
    r1.w = r0.y * -r1.w + r1.w;
    r2.w = cb0[9].x * 2 + -2;
    r0.y = r0.y * r2.w + 1;
    r0.y = r0.z ? r1.w : r0.y;
  } else {
    r0.y = cb0[9].x;
  }
  r0.y = r8.z + -r0.y;
  r0.y = cmp(r0.y < 0);
  if (r0.y != 0) discard;
  r0.y = saturate(cb0[20].x);
  r0.z = dot(r4.xyz, r4.xyz);
  r0.z = rsqrt(r0.z);
  r4.xyz = r4.xyz * r0.zzz;
  r0.z = dot(cb0[13].xyz, r4.xyz);
  r1.w = cb0[12].x + -cb0[11].x;
  r0.z = saturate(r0.z * r1.w + cb0[11].x);
  r1.w = -cb0[14].z + v4.z;
  r1.w = cb0[15].x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[16].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb0[17].x * r1.w);
  r0.z = r1.w * r0.z;
  r0.w = saturate(r0.w * cb0[18].x + cb0[18].y);
  r0.z = r0.z * r0.w;
  r0.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r0.w = max(9.99999975e-005, r0.w);
  r0.w = log2(r0.w);
  r0.w = -cb0[19].x * r0.w;
  r0.w = exp2(r0.w);
  r0.z = r0.w * r0.z;
  o2.w = v0.w + r0.y;
  r0.y = r3.x * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.y = r0.z * cb0[21].x + 0.0078125;
  r0.y = log2(r0.y);
  r0.y = saturate(r0.y * 0.0769230798 + 0.538461566);
  r9.x = saturate(r9.x);
  r0.y = r9.x + r0.y;
  o2.yz = float2(0.5,0.800000012) * r0.yx;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r3.z;
  return;
}