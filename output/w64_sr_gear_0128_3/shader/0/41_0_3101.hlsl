// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:48 2023
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

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[19];
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
  r0.yzw = t3.Sample(s5_s, v3.xy).xyz;
  r1.x = r0.z + -r0.w;
  r1.x = cmp(r1.x < 0.00470588217);
  r0.w = r1.x ? r0.z : r0.w;
  r1.xyz = ddx_coarse(r0.yzw);
  r2.xyz = ddy_coarse(r0.yzw);
  r1.xy = r1.xx * r1.yz;
  r1.zw = r2.xx * r2.yz;
  r2.xy = cmp(abs(r1.zw) < abs(r1.xy));
  r1.xy = r2.xy ? r1.xy : r1.zw;
  r1.z = -0.5 + r0.y;
  r1.w = r0.y + r0.z;
  r1.w = -1 + r1.w;
  r1.zw = cmp(abs(r1.zw) < float2(0.00470588217,0.00588235306));
  r1.xy = cmp(r1.xy < float2(0,0));
  r1.x = r1.x ? r1.w : 0;
  r1.w = 1 + -r0.z;
  r1.x = r1.x ? r1.w : r0.y;
  r1.w = r1.x + r0.w;
  r1.w = -1 + r1.w;
  r1.w = cmp(abs(r1.w) < 0.00588235306);
  r1.y = r1.y ? r1.w : 0;
  r1.w = 1 + -r0.w;
  r1.x = r1.y ? r1.w : r1.x;
  r0.y = r1.z ? r1.x : r0.y;
  r0.yw = cmp(r0.yw >= float2(0.5,0.5));
  if (r0.w != 0) {
    r1.xy = v3.zw * cb7[6].xy + cb7[6].zw;
    r1.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r2.xyzw = t8.Sample(s1_s, r1.xy).wxyz;
    r1.xyz = t9.Sample(s1_s, r1.zw).xyz;
    r1.xy = r1.xy * cb7[8].xx + cb7[8].yy;
    r0.w = saturate(cb7[8].z + r1.z);
    r1.z = 4;
  } else {
    r0.z = cmp(r0.z >= 0.5);
    if (r0.z != 0) {
      r3.xy = v3.zw * cb7[3].xy + cb7[3].zw;
      r3.zw = v3.zw * cb7[4].xy + cb7[4].zw;
      r2.xyzw = t6.Sample(s1_s, r3.xy).wxyz;
      r3.xyz = t7.Sample(s1_s, r3.zw).xyz;
      r1.xy = r3.xy * cb7[5].xx + cb7[5].yy;
      r0.w = saturate(cb7[5].z + r3.z);
      r1.z = 2;
    } else {
      r3.xy = v3.zw * cb7[0].xy + cb7[0].zw;
      r3.zw = v3.zw * cb7[1].xy + cb7[1].zw;
      r2.xyzw = t4.Sample(s1_s, r3.xy).wxyz;
      r3.xyz = t5.Sample(s1_s, r3.zw).xyz;
      r1.xy = r3.xy * cb7[2].xx + cb7[2].yy;
      r0.w = saturate(cb7[2].z + r3.z);
      r1.z = 0;
    }
  }
  r0.z = (int)r1.z + 1;
  r0.y = r0.y ? r0.z : r1.z;
  r0.y = (int)r0.y * 9;
  r3.xyzw = saturate(cb7[r0.y+11].xyzw);
  r1.zw = saturate(cb7[r0.y+12].yz);
  r4.xyzw = saturate(cb7[r0.y+17].xyzw);
  r5.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r6.xy = t1.Sample(s3_s, v3.xy).xy;
  r6.xy = r6.xy * cb0[18].xx + cb0[18].yy;
  r7.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r0.z = cmp(r7.w >= 0.156862751);
  r6.z = r0.z ? 1.000000 : 0;
  r8.xyz = float3(-0.25,-0.188235298,-0.156862751) + r7.ywz;
  r8.yz = saturate(float2(1.231884,1.18604648) * r8.yz);
  r6.w = saturate(cb7[r0.y+15].y * r8.y + cb7[r0.y+15].x);
  r6.w = saturate(cb7[r0.y+15].w * r6.w + cb7[r0.y+15].z);
  r9.xyz = saturate(float3(7.96875,4,7.96875) * r7.wyz);
  r7.z = cb0[2].x + 128.5;
  r7.z = 0.00390625 * r7.z;
  r7.w = cmp(0.0500000007 >= r9.x);
  r7.z = r7.w ? r7.z : -1;
  r5.w = r7.y;
  r10.xyzw = cb0[17].xyzw * r5.xyzw;
  r11.xyz = saturate(float3(4,4,4) * r2.yzw);
  r2.yzw = saturate(float3(-0.25,-0.25,-0.25) + r2.yzw);
  r12.xyz = saturate(cb7[r0.y+9].xyz * r11.xyz + r2.yzw);
  r12.xyz = -cb7[r0.y+9].xyz + r12.xyz;
  r12.xyz = r3.xxx * r12.xyz + cb7[r0.y+9].xyz;
  r3.x = saturate(cb7[r0.y+13].y * r7.y + cb7[r0.y+13].x);
  r3.x = saturate(cb7[r0.y+13].w * r3.x + cb7[r0.y+13].z);
  r8.x = saturate(r8.x);
  r2.x = saturate(r2.x * r9.y + r8.x);
  r5.w = saturate(cb7[r0.y+13].y * r2.x + cb7[r0.y+13].x);
  r5.w = saturate(cb7[r0.y+13].w * r5.w + cb7[r0.y+13].z);
  r5.w = r5.w + -r3.x;
  r3.x = r3.z * r5.w + r3.x;
  r8.xyw = saturate(float3(4,4,4) * r5.xyz);
  r13.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r12.xyz = saturate(r12.xyz * r8.xyw + r13.xyz);
  r14.xy = r1.xy * r3.yy + r6.xy;
  r0.w = -1 + r0.w;
  r3.y = r3.y * r0.w + 1;
  r2.yzw = saturate(cb7[r0.y+14].xyz * r11.xyz + r2.yzw);
  r2.yzw = -cb7[r0.y+14].xyz + r2.yzw;
  r2.yzw = r4.xxx * r2.yzw + cb7[r0.y+14].xyz;
  r2.yzw = saturate(r2.yzw * r8.xyw + r13.xyz);
  r3.z = saturate(cb7[r0.y+16].y * r7.y + cb7[r0.y+16].x);
  r3.z = saturate(cb7[r0.y+16].w * r3.z + cb7[r0.y+16].z);
  r2.x = saturate(cb7[r0.y+16].y * r2.x + cb7[r0.y+16].x);
  r2.x = saturate(cb7[r0.y+16].w * r2.x + cb7[r0.y+16].z);
  r2.x = r2.x + -r3.z;
  r2.x = r4.z * r2.x + r3.z;
  r1.xy = r1.xy * r4.yy + r6.xy;
  r0.w = r4.y * r0.w + 1;
  r4.xyz = r12.xyz + -r2.yzw;
  r2.yzw = r6.www * r4.xyz + r2.yzw;
  r4.xy = r14.xy + -r1.xy;
  r1.xy = r6.ww * r4.xy + r1.xy;
  r3.x = r3.x + -r2.x;
  r2.x = r6.w * r3.x + r2.x;
  r3.x = -r4.w + r3.w;
  r4.y = r6.w * r3.x + r4.w;
  r3.x = r3.y + -r0.w;
  r0.w = r6.w * r3.x + r0.w;
  r3.x = cb7[r0.y+12].x + 128.5;
  r3.x = 0.00390625 * r3.x;
  r3.y = cmp(0.0500000007 >= r3.w);
  r3.x = r3.y ? r3.x : -1;
  r0.w = min(r2.x, r0.w);
  r2.x = cmp(9.99999975e-005 < r1.z);
  r3.y = -2 * r1.z;
  r1.z = r1.z * -2 + -0.200000003;
  r1.z = r1.z * r0.w;
  r1.z = r1.z * -5.00250101 + r3.y;
  r1.z = min(r1.z, r0.w);
  r4.x = r2.x ? r1.z : r0.w;
  r2.xyz = -r5.xyz * cb0[17].xyz + r2.yzw;
  r2.xyz = r6.zzz * r2.xyz + r10.xyz;
  r1.xy = r1.xy + -r6.xy;
  r1.xy = r6.zz * r1.xy + r6.xy;
  r9.w = r10.w;
  r3.yz = r4.xy + -r9.wx;
  r3.yz = r6.zz * r3.yz + r9.wx;
  r0.w = r6.z * r1.w;
  o0.w = r0.z ? r3.x : r7.z;
  r0.z = cmp(0 != cb7[r0.y+10].w);
  r4.xyz = r0.zzz ? cb7[r0.y+10].xyz : 0;
  r0.y = cb0[16].x * r8.z;
  r4.xyz = r0.yyy * r4.xyz;
  r4.xyz = r4.xyz * r6.zzz;
  r5.xyz = r4.xyz * r6.www;
  r4.xyz = r4.xyz * r6.www + r2.xyz;
  r0.y = max(r4.x, r4.y);
  r0.y = max(r0.y, r4.z);
  r0.y = saturate(-1 + r0.y);
  r0.y = 1 + -r0.y;
  r2.xyz = r2.xyz * r0.yyy + r5.xyz;
  r0.y = max(r2.x, r2.y);
  r0.y = max(r0.y, r2.z);
  r0.y = max(1, r0.y);
  r2.xyz = r2.xyz / r0.yyy;
  r0.y = max(r5.x, r5.y);
  r0.y = max(r0.y, r5.z);
  r0.z = dot(r1.xy, r1.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r1.z = sqrt(r0.z);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r4.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r4.xyz;
  r1.xyz = v0.xyz * r1.zzz + r1.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = cmp(0.000000 != cb0[4].x);
  if (r0.z != 0) {
    r3.xw = ddx_coarse(v3.xy);
    r0.z = dot(r3.xw, r3.xw);
    r0.z = sqrt(r0.z);
    r3.xw = ddy_coarse(v3.xy);
    r1.w = dot(r3.xw, r3.xw);
    r1.w = sqrt(r1.w);
    r0.z = max(r1.w, r0.z);
    r0.z = 1 / r0.z;
    r0.z = log2(r0.z);
    r1.w = floor(r0.z);
    r1.w = exp2(r1.w);
    r2.w = ceil(r0.z);
    r2.w = exp2(r2.w);
    r3.xw = v3.xy * r1.ww;
    r3.xw = floor(r3.xw);
    r1.w = dot(r3.xw, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r3.x = r3.w * 13 + r3.x;
    r3.x = sin(r3.x);
    r3.x = 0.100000001 + abs(r3.x);
    r1.w = r3.x * r1.w;
    r1.w = frac(r1.w);
    r3.xw = v3.xy * r2.ww;
    r3.xw = floor(r3.xw);
    r2.w = dot(r3.xw, float2(17,0.100000001));
    r2.w = sin(r2.w);
    r2.w = 10000 * r2.w;
    r3.x = r3.w * 13 + r3.x;
    r3.x = sin(r3.x);
    r3.x = 0.100000001 + abs(r3.x);
    r2.w = r3.x * r2.w;
    r2.w = frac(r2.w);
    r0.z = frac(r0.z);
    r2.w = r2.w + -r1.w;
    r1.w = r0.z * r2.w + r1.w;
    r2.w = 1 + -r0.z;
    r0.z = min(r2.w, r0.z);
    r2.w = r1.w * r1.w;
    r3.x = r0.z + r0.z;
    r3.w = 1 + -r0.z;
    r3.x = r3.x * r3.w;
    r2.w = r2.w / r3.x;
    r4.x = -r0.z * 0.5 + r1.w;
    r4.x = r4.x / r3.w;
    r4.y = 1 + -r1.w;
    r4.y = r4.y * r4.y;
    r3.x = r4.y / r3.x;
    r3.x = 1 + -r3.x;
    r3.w = cmp(r1.w < r3.w);
    r0.z = cmp(r1.w < r0.z);
    r0.z = r0.z ? r2.w : r4.x;
    r0.z = r3.w ? r0.z : r3.x;
    r1.w = cmp(0.5 >= cb0[3].x);
    r2.w = cb0[3].x + cb0[3].x;
    r2.w = r0.z * -r2.w + r2.w;
    r3.x = cb0[3].x * 2 + -2;
    r0.z = r0.z * r3.x + 1;
    r0.z = r1.w ? r2.w : r0.z;
  } else {
    r0.z = cb0[3].x;
  }
  r0.z = r9.z + -r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.z = saturate(cb0[14].x);
  r1.w = dot(v0.xyz, v0.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = v0.xyz * r1.www;
  r1.w = dot(cb0[7].xyz, r4.xyz);
  r2.w = cb0[6].x + -cb0[5].x;
  r1.w = saturate(r1.w * r2.w + cb0[5].x);
  r2.w = -cb0[8].z + v4.z;
  r2.w = cb0[9].x * r2.w;
  r2.w = max(0, r2.w);
  r2.w = log2(r2.w);
  r2.w = cb0[10].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb0[11].x * r2.w);
  r1.w = r2.w * r1.w;
  r0.x = saturate(r0.x * cb0[12].x + cb0[12].y);
  r0.x = r1.w * r0.x;
  r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = -cb0[13].x * r1.w;
  r1.w = exp2(r1.w);
  r0.x = r1.w * r0.x;
  o2.w = v0.w + r0.z;
  r0.x = r0.x * cb0[15].x + r0.y;
  r0.y = r3.y * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r7.x = saturate(r7.x);
  r0.x = r7.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xw;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r3.z;
  return;
}