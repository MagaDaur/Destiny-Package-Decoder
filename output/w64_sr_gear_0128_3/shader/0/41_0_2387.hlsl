// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:50 2023
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

cbuffer cb13 : register(b13)
{
  float4 cb13[4];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.x = dot(r0.xyz, r0.xyz);
  r0.x = sqrt(r0.x);
  r0.yz = v3.xy * cb0[24].xy + cb0[24].zw;
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
  r0.z = (int)r0.y * 9;
  r2.xyzw = saturate(cb7[r0.z+11].xyzw);
  r1.xy = saturate(cb7[r0.z+12].yz);
  r4.xyzw = saturate(cb7[r0.z+17].xyzw);
  r5.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r6.xy = t1.Sample(s3_s, v3.xy).xy;
  r6.xy = r6.xy * cb0[25].xx + cb0[25].yy;
  r7.xyzw = t2.Sample(s4_s, v3.xy).xyzw;
  r6.z = cmp(r7.w >= 0.156862751);
  r6.w = r6.z ? 1.000000 : 0;
  r8.xy = float2(-0.188235298,-0.156862751) + r7.wz;
  r8.xy = saturate(float2(1.231884,1.18604648) * r8.xy);
  r7.zw = saturate(float2(7.96875,7.96875) * r7.zw);
  r8.z = v6.x ? 1 : -1;
  r8.x = saturate(cb7[r0.z+15].y * r8.x + cb7[r0.z+15].x);
  r8.x = saturate(cb7[r0.z+15].w * r8.x + cb7[r0.z+15].z);
  r8.w = saturate(r7.y * cb0[2].x + cb0[2].y);
  r8.w = saturate(cb0[3].x * r8.w);
  r9.x = 1 + -r8.w;
  r9.y = r7.w * cb0[4].x + cb0[4].y;
  r9.y = r9.x * r9.y;
  r9.z = saturate(cb0[5].y * r7.y + cb0[5].x);
  r7.w = r6.z ? 0 : r7.w;
  r9.z = r9.z + -r7.y;
  r5.w = r7.w * r9.z + r7.y;
  r7.y = cb0[6].x + 128.5;
  r7.y = 0.00390625 * r7.y;
  r7.w = cmp(0.0500000007 >= r9.y);
  r7.y = r7.w ? r7.y : -1;
  r0.y = cmp((int)r0.y == 2);
  r0.y = r0.y ? 1.000000 : 0;
  r7.w = saturate(r8.w * cb0[23].x + cb0[23].y);
  r0.y = r7.w + r0.y;
  r0.y = min(1, r0.y);
  r10.xyzw = cb0[22].xyzw + -cb0[21].xyzw;
  r10.xyzw = saturate(r0.yyyy * r10.xyzw + cb0[21].xyzw);
  r11.xyzw = saturate(float4(4,4,4,4) * r5.xyzw);
  r12.xyzw = saturate(float4(-0.25,-0.25,-0.25,-0.25) + r5.xyzw);
  r10.xyzw = r10.xyzw * r11.xyzw + r12.xyzw;
  r5.xyz = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r13.xyz = saturate(cb7[r0.z+9].xyz * r5.xyz + r3.yzw);
  r13.xyz = -cb7[r0.z+9].xyz + r13.xyz;
  r13.xyz = r2.xxx * r13.xyz + cb7[r0.z+9].xyz;
  r0.y = saturate(cb7[r0.z+13].y * r5.w + cb7[r0.z+13].x);
  r0.y = saturate(cb7[r0.z+13].w * r0.y + cb7[r0.z+13].z);
  r2.x = saturate(r3.x * r11.w + r12.w);
  r3.x = saturate(cb7[r0.z+13].y * r2.x + cb7[r0.z+13].x);
  r3.x = saturate(cb7[r0.z+13].w * r3.x + cb7[r0.z+13].z);
  r3.x = r3.x + -r0.y;
  r0.y = r2.z * r3.x + r0.y;
  r13.xyz = saturate(r13.xyz * r11.xyz + r12.xyz);
  r9.zw = r1.zw * r2.yy + r6.xy;
  r0.w = -1 + r0.w;
  r2.y = r2.y * r0.w + 1;
  r3.xyz = saturate(cb7[r0.z+14].xyz * r5.xyz + r3.yzw);
  r3.xyz = -cb7[r0.z+14].xyz + r3.xyz;
  r3.xyz = r4.xxx * r3.xyz + cb7[r0.z+14].xyz;
  r3.xyz = saturate(r3.xyz * r11.xyz + r12.xyz);
  r2.z = saturate(cb7[r0.z+16].y * r5.w + cb7[r0.z+16].x);
  r2.z = saturate(cb7[r0.z+16].w * r2.z + cb7[r0.z+16].z);
  r2.x = saturate(cb7[r0.z+16].y * r2.x + cb7[r0.z+16].x);
  r2.x = saturate(cb7[r0.z+16].w * r2.x + cb7[r0.z+16].z);
  r2.x = r2.x + -r2.z;
  r2.x = r4.z * r2.x + r2.z;
  r1.zw = r1.zw * r4.yy + r6.xy;
  r0.w = r4.y * r0.w + 1;
  r4.xyz = r13.xyz + -r3.xyz;
  r3.xyz = r8.xxx * r4.xyz + r3.xyz;
  r4.xy = r9.zw + -r1.zw;
  r1.zw = r8.xx * r4.xy + r1.zw;
  r0.y = -r2.x + r0.y;
  r0.y = r8.x * r0.y + r2.x;
  r2.x = -r4.w + r2.w;
  r4.y = r8.x * r2.x + r4.w;
  r2.x = r2.y + -r0.w;
  r0.w = r8.x * r2.x + r0.w;
  r2.x = cb7[r0.z+12].x + 128.5;
  r2.x = 0.00390625 * r2.x;
  r2.y = cmp(0.0500000007 >= r2.w);
  r2.x = r2.y ? r2.x : -1;
  r0.y = min(r0.y, r0.w);
  r0.w = cmp(9.99999975e-005 < r1.x);
  r2.y = -2 * r1.x;
  r1.x = r1.x * -2 + -0.200000003;
  r1.x = r1.x * r0.y;
  r1.x = r1.x * -5.00250101 + r2.y;
  r1.x = min(r1.x, r0.y);
  r4.x = r0.w ? r1.x : r0.y;
  r2.yzw = r3.xyz + -r10.xyz;
  r2.yzw = r6.www * r2.yzw + r10.xyz;
  r0.yw = r1.zw + -r6.xy;
  r3.xy = r6.ww * r0.yw + r6.xy;
  r9.x = r10.w;
  r0.yw = r4.xy + -r9.xy;
  r0.yw = r6.ww * r0.yw + r9.xy;
  r1.x = r6.w * r1.y;
  o0.w = r6.z ? r2.x : r7.y;
  r1.y = cmp(0 != cb7[r0.z+10].w);
  r1.yzw = r1.yyy ? cb7[r0.z+10].xyz : 0;
  r0.z = cb0[20].x * r8.y;
  r1.yzw = r0.zzz * r1.yzw;
  r1.yzw = r1.yzw * r6.www;
  r4.xyz = r1.yzw * r8.xxx;
  r1.yzw = r1.yzw * r8.xxx + r2.yzw;
  r0.z = max(r1.y, r1.z);
  r0.z = max(r0.z, r1.w);
  r0.z = saturate(-1 + r0.z);
  r0.z = 1 + -r0.z;
  r1.yzw = r2.yzw * r0.zzz + r4.xyz;
  r0.z = max(r1.y, r1.z);
  r0.z = max(r0.z, r1.w);
  r0.z = max(1, r0.z);
  r1.yzw = r1.yzw / r0.zzz;
  r0.z = max(r4.x, r4.y);
  r0.z = max(r0.z, r4.z);
  r2.x = dot(r3.xy, r3.xy);
  r2.x = 1 + -r2.x;
  r2.x = max(0, r2.x);
  r3.z = sqrt(r2.x);
  r2.x = dot(r3.xyz, r3.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyz = r3.xyz * r2.xxx;
  r3.xyz = v0.xyz * r8.zzz;
  r4.xyz = v2.xyz * r2.yyy;
  r2.xyw = v1.xyz * r2.xxx + r4.xyz;
  r2.xyz = r3.xyz * r2.zzz + r2.xyw;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r2.xyz = r2.xyz * r2.www;
  r2.w = cmp(0.000000 != cb0[8].x);
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
    r3.w = cmp(0.5 >= cb13[3].x);
    r4.x = cb13[3].x + cb13[3].x;
    r4.x = r2.w * -r4.x + r4.x;
    r4.y = cb13[3].x * 2 + -2;
    r2.w = r2.w * r4.y + 1;
    r2.w = r3.w ? r4.x : r2.w;
  } else {
    r2.w = cb13[3].x;
  }
  r2.w = r7.z + -r2.w;
  r2.w = cmp(r2.w < 0);
  if (r2.w != 0) discard;
  r2.w = saturate(cb0[18].x);
  r3.w = dot(r3.xyz, r3.xyz);
  r3.w = rsqrt(r3.w);
  r3.xyz = r3.xyz * r3.www;
  r3.x = dot(cb0[11].xyz, r3.xyz);
  r3.y = cb0[10].x + -cb0[9].x;
  r3.x = saturate(r3.x * r3.y + cb0[9].x);
  r3.y = -cb0[12].z + v4.z;
  r3.y = cb0[13].x * r3.y;
  r3.y = max(0, r3.y);
  r3.y = log2(r3.y);
  r3.y = cb0[14].x * r3.y;
  r3.y = exp2(r3.y);
  r3.y = saturate(cb0[15].x * r3.y);
  r3.x = r3.x * r3.y;
  r0.x = saturate(r0.x * cb0[16].x + cb0[16].y);
  r0.x = r3.x * r0.x;
  r3.x = dot(r1.yzw, float3(0.300000012,0.589999974,0.109999999));
  r3.x = max(9.99999975e-005, r3.x);
  r3.x = log2(r3.x);
  r3.x = -cb0[17].x * r3.x;
  r3.x = exp2(r3.x);
  r0.x = r3.x * r0.x;
  o2.w = v0.w + r2.w;
  r0.x = r0.x * cb0[19].x + r0.z;
  r0.y = r0.y * 0.125 + 0.375;
  o1.xyz = saturate(r2.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r7.x = saturate(r7.x);
  r0.x = r7.x + r0.x;
  o2.y = 0.5 * r0.x;
  o2.z = 0.800000012 * r1.x;
  o0.xyz = r1.yzw;
  o1.w = 0;
  o2.x = r0.w;
  return;
}