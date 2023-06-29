// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:45 2023
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

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

cbuffer cb7 : register(b7)
{
  float4 cb7[63];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[8];
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

  r0.xy = v3.xy * cb0[6].xy + cb0[6].zw;
  r1.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r0.z = r1.y + -r1.z;
  r0.z = cmp(r0.z < 0.00470588217);
  r0.z = r0.z ? r1.y : r1.z;
  r2.xy = ddx_coarse(r1.xy);
  r2.z = ddx_coarse(r0.z);
  r3.xy = ddy_coarse(r1.xy);
  r3.z = ddy_coarse(r0.z);
  r1.zw = r2.xx * r2.yz;
  r2.xy = r3.xx * r3.yz;
  r2.zw = cmp(abs(r2.xy) < abs(r1.zw));
  r1.zw = r2.zw ? r1.zw : r2.xy;
  r0.w = -0.5 + r1.x;
  r0.w = cmp(abs(r0.w) < 0.00470588217);
  r2.x = r1.x + r1.y;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.zw = cmp(r1.zw < float2(0,0));
  r1.z = r1.z ? r2.x : 0;
  r2.x = 1 + -r1.y;
  r1.z = r1.z ? r2.x : r1.x;
  r2.x = r1.z + r0.z;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.w = r1.w ? r2.x : 0;
  r2.x = 1 + -r0.z;
  r1.z = r1.w ? r2.x : r1.z;
  r0.w = r0.w ? r1.z : r1.x;
  r0.z = cmp(r0.z >= 0.5);
  if (r0.z != 0) {
    r1.xz = r0.xy * cb7[6].xy + cb7[6].zw;
    r2.xy = r0.xy * cb7[7].xy + cb7[7].zw;
    r3.xyzw = t8.Sample(s1_s, r1.xz).wxyz;
    r1.xzw = t9.Sample(s1_s, r2.xy).xyz;
    r1.xz = r1.xz * cb7[8].xx + cb7[8].yy;
    r0.z = saturate(cb7[8].z + r1.w);
    r1.w = 4;
  } else {
    r1.y = cmp(r1.y >= 0.5);
    if (r1.y != 0) {
      r2.xy = r0.xy * cb7[3].xy + cb7[3].zw;
      r2.zw = r0.xy * cb7[4].xy + cb7[4].zw;
      r3.xyzw = t6.Sample(s1_s, r2.xy).wxyz;
      r2.xyz = t7.Sample(s1_s, r2.zw).xyz;
      r1.xz = r2.xy * cb7[5].xx + cb7[5].yy;
      r0.z = saturate(cb7[5].z + r2.z);
      r1.w = 2;
    } else {
      r2.xy = r0.xy * cb7[0].xy + cb7[0].zw;
      r0.xy = r0.xy * cb7[1].xy + cb7[1].zw;
      r3.xyzw = t4.Sample(s1_s, r2.xy).wxyz;
      r2.xyz = t5.Sample(s1_s, r0.xy).xyz;
      r1.xz = r2.xy * cb7[2].xx + cb7[2].yy;
      r0.z = saturate(cb7[2].z + r2.z);
      r1.w = 0;
    }
  }
  r0.x = cmp(r0.w >= 0.5);
  r0.y = (int)r1.w + 1;
  r0.x = r0.x ? r0.y : r1.w;
  r0.x = (int)r0.x * 9;
  r2.xyzw = saturate(cb7[r0.x+11].xyzw);
  r0.yw = saturate(cb7[r0.x+12].yz);
  r4.xyzw = saturate(cb7[r0.x+17].xyzw);
  r5.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r1.yw = t1.Sample(s3_s, v3.xy).xy;
  r1.yw = r1.yw * cb0[7].xx + cb0[7].yy;
  r6.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r5.w = cmp(r6.w >= 0.156862751);
  r7.x = r5.w ? 1.000000 : 0;
  r7.yzw = float3(-0.25,-0.188235298,-0.156862751) + r6.ywz;
  r7.zw = saturate(float2(1.231884,1.18604648) * r7.zw);
  r8.xyz = saturate(float3(7.96875,7.96875,4) * r6.zwy);
  r6.z = v6.x ? 1 : -1;
  r6.w = saturate(cb7[r0.x+15].y * r7.z + cb7[r0.x+15].x);
  r6.w = saturate(cb7[r0.x+15].w * r6.w + cb7[r0.x+15].z);
  r7.z = cb0[2].x + 128.5;
  r7.z = 0.00390625 * r7.z;
  r9.x = cmp(0.0500000007 >= r8.y);
  r7.z = r9.x ? r7.z : -1;
  r9.xyz = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r10.xyz = saturate(cb7[r0.x+9].xyz * r9.xyz + r3.yzw);
  r10.xyz = -cb7[r0.x+9].xyz + r10.xyz;
  r10.xyz = r2.xxx * r10.xyz + cb7[r0.x+9].xyz;
  r2.x = saturate(cb7[r0.x+13].y * r6.y + cb7[r0.x+13].x);
  r2.x = saturate(cb7[r0.x+13].w * r2.x + cb7[r0.x+13].z);
  r7.y = saturate(r7.y);
  r3.x = saturate(r3.x * r8.z + r7.y);
  r7.y = saturate(cb7[r0.x+13].y * r3.x + cb7[r0.x+13].x);
  r7.y = saturate(cb7[r0.x+13].w * r7.y + cb7[r0.x+13].z);
  r7.y = r7.y + -r2.x;
  r2.x = r2.z * r7.y + r2.x;
  r11.xyz = saturate(float3(4,4,4) * r5.xyz);
  r12.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r10.xyz = saturate(r10.xyz * r11.xyz + r12.xyz);
  r13.xy = r1.xz * r2.yy + r1.yw;
  r0.z = -1 + r0.z;
  r2.y = r2.y * r0.z + 1;
  r3.yzw = saturate(cb7[r0.x+14].xyz * r9.xyz + r3.yzw);
  r3.yzw = -cb7[r0.x+14].xyz + r3.yzw;
  r3.yzw = r4.xxx * r3.yzw + cb7[r0.x+14].xyz;
  r3.yzw = saturate(r3.yzw * r11.xyz + r12.xyz);
  r2.z = saturate(cb7[r0.x+16].y * r6.y + cb7[r0.x+16].x);
  r2.z = saturate(cb7[r0.x+16].w * r2.z + cb7[r0.x+16].z);
  r3.x = saturate(cb7[r0.x+16].y * r3.x + cb7[r0.x+16].x);
  r3.x = saturate(cb7[r0.x+16].w * r3.x + cb7[r0.x+16].z);
  r3.x = r3.x + -r2.z;
  r2.z = r4.z * r3.x + r2.z;
  r1.xz = r1.xz * r4.yy + r1.yw;
  r0.z = r4.y * r0.z + 1;
  r4.xyz = r10.xyz + -r3.yzw;
  r3.xyz = r6.www * r4.xyz + r3.yzw;
  r4.xy = r13.xy + -r1.xz;
  r1.xz = r6.ww * r4.xy + r1.xz;
  r2.x = r2.x + -r2.z;
  r2.x = r6.w * r2.x + r2.z;
  r2.z = -r4.w + r2.w;
  r4.y = r6.w * r2.z + r4.w;
  r2.y = r2.y + -r0.z;
  r0.z = r6.w * r2.y + r0.z;
  r2.y = cb7[r0.x+12].x + 128.5;
  r2.y = 0.00390625 * r2.y;
  r2.z = cmp(0.0500000007 >= r2.w);
  r2.y = r2.z ? r2.y : -1;
  r0.z = min(r2.x, r0.z);
  r2.x = cmp(9.99999975e-005 < r0.y);
  r2.z = -2 * r0.y;
  r0.y = r0.y * -2 + -0.200000003;
  r0.y = r0.y * r0.z;
  r0.y = r0.y * -5.00250101 + r2.z;
  r0.y = min(r0.z, r0.y);
  r4.x = r2.x ? r0.y : r0.z;
  r2.xzw = r3.xyz + -r5.xyz;
  r2.xzw = r7.xxx * r2.xzw + r5.xyz;
  r0.yz = r1.xz + -r1.yw;
  r1.xy = r7.xx * r0.yz + r1.yw;
  r8.w = r6.y;
  r0.yz = r4.xy + -r8.wy;
  r0.yz = r7.xx * r0.yz + r8.wy;
  r0.w = r7.x * r0.w;
  o0.w = r5.w ? r2.y : r7.z;
  r1.w = cmp(0 != cb7[r0.x+10].w);
  r3.xyz = r1.www ? cb7[r0.x+10].xyz : 0;
  r0.x = cb0[5].x * r7.w;
  r3.xyz = r0.xxx * r3.xyz;
  r3.xyz = r3.xyz * r7.xxx;
  r4.xyz = r3.xyz * r6.www;
  r3.xyz = r3.xyz * r6.www + r2.xzw;
  r0.x = max(r3.x, r3.y);
  r0.x = max(r0.x, r3.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r2.xyz = r2.xzw * r0.xxx + r4.xyz;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r0.x = max(1, r0.x);
  o0.xyz = r2.xyz / r0.xxx;
  r0.x = max(r4.x, r4.y);
  r0.x = max(r0.x, r4.z);
  r1.w = dot(r1.xy, r1.xy);
  r1.w = 1 + -r1.w;
  r1.w = max(0, r1.w);
  r1.z = sqrt(r1.w);
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r2.xyz = v0.xyz * r6.zzz;
  r3.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r3.xyz;
  r1.xyz = r2.xyz * r1.zzz + r1.xyw;
  r1.w = dot(r1.xyz, r1.xyz);
  r1.w = rsqrt(r1.w);
  r1.xyz = r1.xyz * r1.www;
  r1.w = cmp(0.000000 != cb0[4].x);
  if (r1.w != 0) {
    r2.xy = ddx_coarse(v3.xy);
    r1.w = dot(r2.xy, r2.xy);
    r1.w = sqrt(r1.w);
    r2.xy = ddy_coarse(v3.xy);
    r2.x = dot(r2.xy, r2.xy);
    r2.x = sqrt(r2.x);
    r1.w = max(r2.x, r1.w);
    r1.w = 1 / r1.w;
    r1.w = log2(r1.w);
    r2.x = floor(r1.w);
    r2.x = exp2(r2.x);
    r2.y = ceil(r1.w);
    r2.y = exp2(r2.y);
    r2.xz = v3.xy * r2.xx;
    r2.xz = floor(r2.xz);
    r2.w = dot(r2.xz, float2(17,0.100000001));
    r2.w = sin(r2.w);
    r2.w = 10000 * r2.w;
    r2.x = r2.z * 13 + r2.x;
    r2.x = sin(r2.x);
    r2.x = 0.100000001 + abs(r2.x);
    r2.x = r2.w * r2.x;
    r2.yz = v3.xy * r2.yy;
    r2.yz = floor(r2.yz);
    r2.w = dot(r2.yz, float2(17,0.100000001));
    r2.w = sin(r2.w);
    r2.w = 10000 * r2.w;
    r2.y = r2.z * 13 + r2.y;
    r2.y = sin(r2.y);
    r2.y = 0.100000001 + abs(r2.y);
    r2.y = r2.w * r2.y;
    r2.xy = frac(r2.xy);
    r1.w = frac(r1.w);
    r2.y = r2.y + -r2.x;
    r2.x = r1.w * r2.y + r2.x;
    r2.y = 1 + -r1.w;
    r1.w = min(r2.y, r1.w);
    r2.z = r1.w + r1.w;
    r2.w = 1 + -r1.w;
    r2.yz = r2.xz * r2.xw;
    r2.y = r2.y / r2.z;
    r3.x = -r1.w * 0.5 + r2.x;
    r3.x = r3.x / r2.w;
    r3.y = 1 + -r2.x;
    r3.y = r3.y * r3.y;
    r2.z = r3.y / r2.z;
    r2.z = 1 + -r2.z;
    r2.w = cmp(r2.x < r2.w);
    r1.w = cmp(r2.x < r1.w);
    r1.w = r1.w ? r2.y : r3.x;
    r1.w = r2.w ? r1.w : r2.z;
    r2.x = cmp(0.5 >= cb0[3].x);
    r2.y = cb0[3].x + cb0[3].x;
    r2.y = r1.w * -r2.y + r2.y;
    r2.z = cb0[3].x * 2 + -2;
    r1.w = r1.w * r2.z + 1;
    r1.w = r2.x ? r2.y : r1.w;
  } else {
    r1.w = cb0[3].x;
  }
  r1.w = r8.x + -r1.w;
  r1.w = cmp(r1.w < 0);
  if (r1.w != 0) discard;
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r6.x = saturate(r6.x);
  r0.x = r6.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xw;
  o1.w = 0;
  o2.x = r0.z;
  o2.w = v0.w;
  return;
}