// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:53 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.yz = v3.xy * cb0[17].xy + cb0[17].zw;
  r1.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r0.w = r1.y + -r1.z;
  r0.w = cmp(r0.w < 0.00470588217);
  r0.w = r0.w ? r1.y : r1.z;
  r2.xy = ddx_coarse(r1.xy);
  r2.z = ddx_coarse(r0.w);
  r3.xy = ddy_coarse(r1.xy);
  r3.z = ddy_coarse(r0.w);
  r1.zw = r2.xx * r2.yz;
  r2.xy = r3.xx * r3.yz;
  r2.zw = cmp(abs(r2.xy) < abs(r1.zw));
  r1.zw = r2.zw ? r1.zw : r2.xy;
  r2.x = -0.5 + r1.x;
  r2.y = r1.x + r1.y;
  r2.y = -1 + r2.y;
  r2.xy = cmp(abs(r2.xy) < float2(0.00470588217,0.00588235306));
  r1.zw = cmp(r1.zw < float2(0,0));
  r1.z = r1.z ? r2.y : 0;
  r2.y = 1 + -r1.y;
  r1.z = r1.z ? r2.y : r1.x;
  r2.y = r1.z + r0.w;
  r2.y = -1 + r2.y;
  r2.y = cmp(abs(r2.y) < 0.00588235306);
  r1.w = r1.w ? r2.y : 0;
  r2.y = 1 + -r0.w;
  r1.z = r1.w ? r2.y : r1.z;
  r1.x = r2.x ? r1.z : r1.x;
  r0.w = cmp(r0.w >= 0.5);
  if (r0.w != 0) {
    r1.zw = r0.yz * cb7[6].xy + cb7[6].zw;
    r2.xy = r0.yz * cb7[7].xy + cb7[7].zw;
    r3.xyzw = t8.Sample(s1_s, r1.zw).wxyz;
    r2.xyz = t9.Sample(s1_s, r2.xy).xyz;
    r1.zw = r2.xy * cb7[8].xx + cb7[8].yy;
    r0.w = saturate(cb7[8].z + r2.z);
    r2.x = 4;
  } else {
    r1.y = cmp(r1.y >= 0.5);
    if (r1.y != 0) {
      r2.yz = r0.yz * cb7[3].xy + cb7[3].zw;
      r4.xy = r0.yz * cb7[4].xy + cb7[4].zw;
      r3.xyzw = t6.Sample(s1_s, r2.yz).wxyz;
      r2.yzw = t7.Sample(s1_s, r4.xy).xyz;
      r1.zw = r2.yz * cb7[5].xx + cb7[5].yy;
      r0.w = saturate(cb7[5].z + r2.w);
      r2.x = 2;
    } else {
      r2.yz = r0.yz * cb7[0].xy + cb7[0].zw;
      r0.yz = r0.yz * cb7[1].xy + cb7[1].zw;
      r3.xyzw = t4.Sample(s1_s, r2.yz).wxyz;
      r2.yzw = t5.Sample(s1_s, r0.yz).xyz;
      r1.zw = r2.yz * cb7[2].xx + cb7[2].yy;
      r0.w = saturate(cb7[2].z + r2.w);
      r2.x = 0;
    }
  }
  r0.y = cmp(r1.x >= 0.5);
  r0.z = (int)r2.x + 1;
  r0.y = r0.y ? r0.z : r2.x;
  r0.y = (int)r0.y * 9;
  r2.xyzw = saturate(cb7[r0.y+11].xyzw);
  r1.xy = saturate(cb7[r0.y+12].yz);
  r4.xyzw = saturate(cb7[r0.y+17].xyzw);
  r5.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r6.xy = t1.Sample(s3_s, v3.xy).xy;
  r6.xy = r6.xy * cb0[18].xx + cb0[18].yy;
  r7.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r0.z = cmp(r7.w >= 0.156862751);
  r5.w = r0.z ? 1.000000 : 0;
  r8.xyz = float3(-0.25,-0.188235298,-0.156862751) + r7.ywz;
  r6.zw = saturate(float2(1.231884,1.18604648) * r8.yz);
  r9.xyz = saturate(float3(7.96875,7.96875,4) * r7.zwy);
  r7.z = v6.x ? 1 : -1;
  r6.z = saturate(cb7[r0.y+15].y * r6.z + cb7[r0.y+15].x);
  r6.z = saturate(cb7[r0.y+15].w * r6.z + cb7[r0.y+15].z);
  r7.w = cb0[2].x + 128.5;
  r7.w = 0.00390625 * r7.w;
  r8.y = cmp(0.0500000007 >= r9.y);
  r7.w = r8.y ? r7.w : -1;
  r8.yzw = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r10.xyz = saturate(cb7[r0.y+9].xyz * r8.yzw + r3.yzw);
  r10.xyz = -cb7[r0.y+9].xyz + r10.xyz;
  r10.xyz = r2.xxx * r10.xyz + cb7[r0.y+9].xyz;
  r2.x = saturate(cb7[r0.y+13].y * r7.y + cb7[r0.y+13].x);
  r2.x = saturate(cb7[r0.y+13].w * r2.x + cb7[r0.y+13].z);
  r8.x = saturate(r8.x);
  r3.x = saturate(r3.x * r9.z + r8.x);
  r8.x = saturate(cb7[r0.y+13].y * r3.x + cb7[r0.y+13].x);
  r8.x = saturate(cb7[r0.y+13].w * r8.x + cb7[r0.y+13].z);
  r8.x = r8.x + -r2.x;
  r2.x = r2.z * r8.x + r2.x;
  r11.xyz = saturate(float3(4,4,4) * r5.xyz);
  r12.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r10.xyz = saturate(r10.xyz * r11.xyz + r12.xyz);
  r13.xy = r1.zw * r2.yy + r6.xy;
  r0.w = -1 + r0.w;
  r2.y = r2.y * r0.w + 1;
  r3.yzw = saturate(cb7[r0.y+14].xyz * r8.yzw + r3.yzw);
  r3.yzw = -cb7[r0.y+14].xyz + r3.yzw;
  r3.yzw = r4.xxx * r3.yzw + cb7[r0.y+14].xyz;
  r3.yzw = saturate(r3.yzw * r11.xyz + r12.xyz);
  r2.z = saturate(cb7[r0.y+16].y * r7.y + cb7[r0.y+16].x);
  r2.z = saturate(cb7[r0.y+16].w * r2.z + cb7[r0.y+16].z);
  r3.x = saturate(cb7[r0.y+16].y * r3.x + cb7[r0.y+16].x);
  r3.x = saturate(cb7[r0.y+16].w * r3.x + cb7[r0.y+16].z);
  r3.x = r3.x + -r2.z;
  r2.z = r4.z * r3.x + r2.z;
  r1.zw = r1.zw * r4.yy + r6.xy;
  r0.w = r4.y * r0.w + 1;
  r4.xyz = r10.xyz + -r3.yzw;
  r3.xyz = r6.zzz * r4.xyz + r3.yzw;
  r4.xy = r13.xy + -r1.zw;
  r1.zw = r6.zz * r4.xy + r1.zw;
  r2.x = r2.x + -r2.z;
  r2.x = r6.z * r2.x + r2.z;
  r2.z = -r4.w + r2.w;
  r4.y = r6.z * r2.z + r4.w;
  r2.y = r2.y + -r0.w;
  r0.w = r6.z * r2.y + r0.w;
  r2.y = cb7[r0.y+12].x + 128.5;
  r2.y = 0.00390625 * r2.y;
  r2.z = cmp(0.0500000007 >= r2.w);
  r2.y = r2.z ? r2.y : -1;
  r0.w = min(r2.x, r0.w);
  r2.x = cmp(9.99999975e-005 < r1.x);
  r2.z = -2 * r1.x;
  r1.x = r1.x * -2 + -0.200000003;
  r1.x = r1.x * r0.w;
  r1.x = r1.x * -5.00250101 + r2.z;
  r1.x = min(r1.x, r0.w);
  r4.x = r2.x ? r1.x : r0.w;
  r2.xzw = r3.xyz + -r5.xyz;
  r2.xzw = r5.www * r2.xzw + r5.xyz;
  r1.xz = r1.zw + -r6.xy;
  r3.xy = r5.ww * r1.xz + r6.xy;
  r9.w = r7.y;
  r1.xz = r4.xy + -r9.wy;
  r1.xz = r5.ww * r1.xz + r9.wy;
  r0.w = r5.w * r1.y;
  o0.w = r0.z ? r2.y : r7.w;
  r0.z = cmp(0 != cb7[r0.y+10].w);
  r4.xyz = r0.zzz ? cb7[r0.y+10].xyz : 0;
  r0.y = cb0[16].x * r6.w;
  r4.xyz = r0.yyy * r4.xyz;
  r4.xyz = r4.xyz * r5.www;
  r5.xyz = r4.xyz * r6.zzz;
  r4.xyz = r4.xyz * r6.zzz + r2.xzw;
  r0.y = max(r4.x, r4.y);
  r0.y = max(r0.y, r4.z);
  r0.y = saturate(-1 + r0.y);
  r0.y = 1 + -r0.y;
  r2.xyz = r2.xzw * r0.yyy + r5.xyz;
  r0.y = max(r2.x, r2.y);
  r0.y = max(r0.y, r2.z);
  r0.y = max(1, r0.y);
  r2.xyz = r2.xyz / r0.yyy;
  r0.y = max(r5.x, r5.y);
  r0.y = max(r0.y, r5.z);
  r0.z = dot(r3.xy, r3.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r3.z = sqrt(r0.z);
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r4.xyz = v0.xyz * r7.zzz;
  r5.xyz = v2.xyz * r3.yyy;
  r3.xyw = v1.xyz * r3.xxx + r5.xyz;
  r3.xyz = r4.xyz * r3.zzz + r3.xyw;
  r0.z = dot(r3.xyz, r3.xyz);
  r0.z = rsqrt(r0.z);
  r3.xyz = r3.xyz * r0.zzz;
  r0.z = cmp(0.000000 != cb0[4].x);
  if (r0.z != 0) {
    r1.yw = ddx_coarse(v3.xy);
    r0.z = dot(r1.yw, r1.yw);
    r0.z = sqrt(r0.z);
    r1.yw = ddy_coarse(v3.xy);
    r1.y = dot(r1.yw, r1.yw);
    r1.y = sqrt(r1.y);
    r0.z = max(r1.y, r0.z);
    r0.z = 1 / r0.z;
    r0.z = log2(r0.z);
    r1.y = floor(r0.z);
    r1.y = exp2(r1.y);
    r1.w = ceil(r0.z);
    r1.w = exp2(r1.w);
    r5.xy = v3.xy * r1.yy;
    r5.xy = floor(r5.xy);
    r1.y = dot(r5.xy, float2(17,0.100000001));
    r1.y = sin(r1.y);
    r1.y = 10000 * r1.y;
    r2.w = r5.y * 13 + r5.x;
    r2.w = sin(r2.w);
    r2.w = 0.100000001 + abs(r2.w);
    r1.y = r2.w * r1.y;
    r5.xy = v3.xy * r1.ww;
    r5.xy = floor(r5.xy);
    r1.w = dot(r5.xy, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r2.w = r5.y * 13 + r5.x;
    r2.w = sin(r2.w);
    r2.w = 0.100000001 + abs(r2.w);
    r1.w = r2.w * r1.w;
    r1.yw = frac(r1.yw);
    r0.z = frac(r0.z);
    r1.w = r1.w + -r1.y;
    r1.y = r0.z * r1.w + r1.y;
    r1.w = 1 + -r0.z;
    r0.z = min(r1.w, r0.z);
    r1.w = r1.y * r1.y;
    r2.w = r0.z + r0.z;
    r3.w = 1 + -r0.z;
    r2.w = r3.w * r2.w;
    r1.w = r1.w / r2.w;
    r4.w = -r0.z * 0.5 + r1.y;
    r4.w = r4.w / r3.w;
    r5.x = 1 + -r1.y;
    r5.x = r5.x * r5.x;
    r2.w = r5.x / r2.w;
    r2.w = 1 + -r2.w;
    r3.w = cmp(r1.y < r3.w);
    r0.z = cmp(r1.y < r0.z);
    r0.z = r0.z ? r1.w : r4.w;
    r0.z = r3.w ? r0.z : r2.w;
    r1.y = cmp(0.5 >= cb0[3].x);
    r1.w = cb0[3].x + cb0[3].x;
    r1.w = r0.z * -r1.w + r1.w;
    r2.w = cb0[3].x * 2 + -2;
    r0.z = r0.z * r2.w + 1;
    r0.z = r1.y ? r1.w : r0.z;
  } else {
    r0.z = cb0[3].x;
  }
  r0.z = r9.x + -r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.z = saturate(cb0[14].x);
  r1.y = dot(r4.xyz, r4.xyz);
  r1.y = rsqrt(r1.y);
  r4.xyz = r4.xyz * r1.yyy;
  r1.y = dot(cb0[7].xyz, r4.xyz);
  r1.w = cb0[6].x + -cb0[5].x;
  r1.y = saturate(r1.y * r1.w + cb0[5].x);
  r1.w = -cb0[8].z + v4.z;
  r1.w = cb0[9].x * r1.w;
  r1.w = max(0, r1.w);
  r1.w = log2(r1.w);
  r1.w = cb0[10].x * r1.w;
  r1.w = exp2(r1.w);
  r1.w = saturate(cb0[11].x * r1.w);
  r1.y = r1.y * r1.w;
  r0.x = saturate(r0.x * cb0[12].x + cb0[12].y);
  r0.x = r1.y * r0.x;
  r1.y = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.y = max(9.99999975e-005, r1.y);
  r1.y = log2(r1.y);
  r1.y = -cb0[13].x * r1.y;
  r1.y = exp2(r1.y);
  r0.x = r1.y * r0.x;
  o2.w = v0.w + r0.z;
  r0.x = r0.x * cb0[15].x + r0.y;
  r0.y = r1.x * 0.125 + 0.375;
  o1.xyz = saturate(r3.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r7.x = saturate(r7.x);
  r0.x = r7.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xw;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r1.z;
  return;
}