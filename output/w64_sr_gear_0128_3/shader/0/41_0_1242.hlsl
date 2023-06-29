// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:54 2023
Texture2D<float4> t15 : register(t15);

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
  float4 cb0[57];
}




// 3Dmigoto declarations
#define cmp -


void main(
  float4 v0 : TEXCOORD0,
  float4 v1 : TEXCOORD1,
  float4 v2 : TEXCOORD2,
  float4 v3 : TEXCOORD3,
  float4 v4 : TEXCOORD4,
  float4 v5 : TEXCOORD8,
  float4 v6 : SV_POSITION0,
  uint v7 : SV_isFrontFace0,
  out float4 o0 : SV_TARGET0,
  out float4 o1 : SV_TARGET1,
  out float4 o2 : SV_TARGET2)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16;
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
    r2.xyzw = t8.Sample(s1_s, r1.xy).wxyz;
    r1.xyz = t9.Sample(s1_s, r1.zw).xyz;
    r1.xy = r1.xy * cb7[8].xx + cb7[8].yy;
    r0.z = saturate(cb7[8].z + r1.z);
  } else {
    r1.z = cmp((uint)r0.y >= 2);
    if (r1.z != 0) {
      r1.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r3.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r2.xyzw = t6.Sample(s1_s, r1.zw).wxyz;
      r3.xyz = t7.Sample(s1_s, r3.xy).xyz;
      r1.xy = r3.xy * cb7[5].xx + cb7[5].yy;
      r0.z = saturate(cb7[5].z + r3.z);
    } else {
      r1.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r3.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r2.xyzw = t4.Sample(s1_s, r1.zw).wxyz;
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
  r7.xyz = t0.Sample(s4_s, v3.xy).xyz;
  r8.xy = t1.Sample(s5_s, v3.xy).xy;
  r8.xy = r8.xy * cb0[56].xx + cb0[56].yy;
  r9.xyzw = t2.Sample(s6_s, v3.xy).xyzw;
  r0.y = cmp(r9.w >= 0.156862751);
  r3.y = r0.y ? 1.000000 : 0;
  r10.xyz = float3(-0.25,-0.188235298,-0.156862751) + r9.ywz;
  r8.zw = saturate(float2(1.231884,1.18604648) * r10.yz);
  r4.w = saturate(cb7[r4.y+0].y * r8.z + cb7[r4.y+0].x);
  r4.y = saturate(cb7[r4.y+0].w * r4.w + cb7[r4.y+0].z);
  r11.xy = saturate(float2(7.96875,4) * r9.wy);
  r4.w = cb0[2].x + 128.5;
  r4.w = 0.00390625 * r4.w;
  r8.z = cmp(0.0500000007 >= r11.x);
  r4.w = r8.z ? r4.w : -1;
  r12.xyzw = cb0[54].xyzw + -cb0[53].xyzw;
  r12.xyzw = cb0[55].xxxx * r12.xyzw + cb0[53].xyzw;
  r12.xyzw = r12.xyzw * r8.wwww;
  r7.w = r9.y;
  r13.xyzw = r7.xyzw * r12.xyzw;
  r10.yzw = saturate(float3(4,4,4) * r2.yzw);
  r2.yzw = saturate(float3(-0.25,-0.25,-0.25) + r2.yzw);
  r14.xyz = saturate(cb7[r3.x+0].xyz * r10.yzw + r2.yzw);
  r14.xyz = -cb7[r3.x+0].xyz + r14.xyz;
  r14.xyz = r5.xxx * r14.xyz + cb7[r3.x+0].xyz;
  r3.x = saturate(cb7[r3.w+0].y * r9.y + cb7[r3.w+0].x);
  r3.x = saturate(cb7[r3.w+0].w * r3.x + cb7[r3.w+0].z);
  r10.x = saturate(r10.x);
  r2.x = saturate(r2.x * r11.y + r10.x);
  r5.x = saturate(cb7[r3.w+0].y * r2.x + cb7[r3.w+0].x);
  r3.w = saturate(cb7[r3.w+0].w * r5.x + cb7[r3.w+0].z);
  r3.w = r3.w + -r3.x;
  r3.x = r5.z * r3.w + r3.x;
  r15.xyz = saturate(float3(4,4,4) * r7.xyz);
  r16.xyz = saturate(float3(-0.25,-0.25,-0.25) + r7.xyz);
  r14.xyz = saturate(r14.xyz * r15.xyz + r16.xyz);
  r5.xz = r1.xy * r5.yy + r8.xy;
  r0.z = -1 + r0.z;
  r3.w = r5.y * r0.z + 1;
  r2.yzw = saturate(cb7[r4.x+0].xyz * r10.yzw + r2.yzw);
  r2.yzw = -cb7[r4.x+0].xyz + r2.yzw;
  r2.yzw = r6.xxx * r2.yzw + cb7[r4.x+0].xyz;
  r2.yzw = saturate(r2.yzw * r15.xyz + r16.xyz);
  r4.x = saturate(cb7[r4.z+0].y * r9.y + cb7[r4.z+0].x);
  r4.x = saturate(cb7[r4.z+0].w * r4.x + cb7[r4.z+0].z);
  r2.x = saturate(cb7[r4.z+0].y * r2.x + cb7[r4.z+0].x);
  r2.x = saturate(cb7[r4.z+0].w * r2.x + cb7[r4.z+0].z);
  r2.x = r2.x + -r4.x;
  r2.x = r6.z * r2.x + r4.x;
  r1.xy = r1.xy * r6.yy + r8.xy;
  r0.z = r6.y * r0.z + 1;
  r6.xyz = r14.xyz + -r2.yzw;
  r2.yzw = r4.yyy * r6.xyz + r2.yzw;
  r4.xz = r5.xz + -r1.xy;
  r1.xy = r4.yy * r4.xz + r1.xy;
  r3.x = r3.x + -r2.x;
  r2.x = r4.y * r3.x + r2.x;
  r3.x = -r6.w + r5.w;
  r5.y = r4.y * r3.x + r6.w;
  r3.x = r3.w + -r0.z;
  r0.z = r4.y * r3.x + r0.z;
  r3.x = cb7[r3.z+0].x + 128.5;
  r3.x = 0.00390625 * r3.x;
  r3.z = cmp(0.0500000007 >= r5.w);
  r3.x = r3.z ? r3.x : -1;
  r0.z = min(r2.x, r0.z);
  r2.x = cmp(9.99999975e-005 < r1.z);
  r3.z = -2 * r1.z;
  r1.z = r1.z * -2 + -0.200000003;
  r1.z = r1.z * r0.z;
  r1.z = r1.z * -5.00250101 + r3.z;
  r1.z = min(r1.z, r0.z);
  r5.x = r2.x ? r1.z : r0.z;
  r2.xyz = -r7.xyz * r12.xyz + r2.yzw;
  r2.xyz = r3.yyy * r2.xyz + r13.xyz;
  r1.xy = r1.xy + -r8.xy;
  r1.xy = r3.yy * r1.xy + r8.xy;
  r11.z = r13.w;
  r3.zw = r5.xy + -r11.zx;
  r3.zw = r3.yy * r3.zw + r11.zx;
  r0.z = r3.y * r1.w;
  o0.w = r0.y ? r3.x : r4.w;
  r0.y = cb0[14].x * r8.w;
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[15].x + cb0[15].y);
  r4.xyz = cb0[17].xyz * r0.xxx + cb0[16].xyz;
  r4.xyz = r4.xyz * r0.yyy;
  r0.x = cb0[4].x * v5.y;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[19].x * r0.x;
  r0.x = exp2(r0.x);
  r0.x = cb0[20].x + r0.x;
  r0.y = 0;
  r0.x = t10.Sample(s3_s, r0.xy).x;
  r0.x = saturate(r0.x * cb0[21].x + cb0[21].y);
  r5.xyz = cb0[23].xyz * r0.xxx + cb0[22].xyz;
  r0.xy = v3.xy * cb0[24].xy + cb0[24].zw;
  r0.xy = t11.Sample(s2_s, r0.xy).xy;
  r0.xy = -cb0[26].xy + r0.xy;
  r0.xy = r0.xy * cb0[25].xx + v3.xy;
  r0.xy = r0.xy * cb0[27].xy + cb0[27].zw;
  r6.xyz = t12.Sample(s2_s, r0.xy).xyz;
  r0.xy = v3.xy * cb0[28].xy + cb0[28].zw;
  r8.xyz = t13.Sample(s2_s, r0.xy).xyz;
  r0.xy = v3.yx * cb0[30].yx + cb0[30].wz;
  r3.xy = round(r0.xy);
  r0.xy = -r3.xy + r0.xy;
  r3.xy = abs(r0.xy) * float2(-16,-16) + float2(8,8);
  r0.xy = r3.xy * r0.xy;
  r3.xy = abs(r0.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.xy = r3.xy * r0.xy;
  r0.xy = cb0[31].yx * r0.xy + v3.xy;
  r3.xy = r0.yx * cb0[32].yx + cb0[32].wz;
  r9.yz = round(r3.xy);
  r3.xy = -r9.yz + r3.xy;
  r9.yz = abs(r3.xy) * float2(-16,-16) + float2(8,8);
  r3.xy = r9.yz * r3.xy;
  r9.yz = abs(r3.xy) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r3.xy = r9.yz * r3.xy;
  r0.xy = cb0[33].yx * r3.xy + r0.xy;
  r1.w = r0.y * cb0[34].y + cb0[34].w;
  r3.xy = r0.xy * cb0[35].xy + cb0[35].zw;
  r2.w = t14.Sample(s2_s, r3.xy).y;
  r2.w = -cb0[37].y + r2.w;
  r1.w = r2.w * cb0[36].x + r1.w;
  r1.w = frac(r1.w);
  r2.w = cb0[38].z + r1.w;
  r2.w = saturate(cb0[38].y * abs(r2.w) + cb0[38].x);
  r1.w = cb0[39].z + r1.w;
  r1.w = saturate(cb0[39].y * abs(r1.w) + cb0[39].x);
  r1.w = r2.w + r1.w;
  r1.w = min(1, r1.w);
  r3.xy = r0.xy * cb0[40].xy + cb0[40].zw;
  r2.w = cb0[41].x * cb0[4].x;
  r0.xy = t14.Sample(s2_s, r0.xy).xy;
  r0.xy = -cb0[42].xy + r0.xy;
  r0.xy = r0.xy * r2.ww + r3.xy;
  r0.x = t15.Sample(s2_s, r0.xy).x;
  r0.y = 1 + -r0.x;
  r0.y = max(0, r0.y);
  r0.y = log2(r0.y);
  r0.y = cb0[43].x * r0.y;
  r0.y = exp2(r0.y);
  r0.y = r0.y * cb0[44].x + cb0[4].x;
  r1.w = log2(r1.w);
  r0.y = r1.w * r0.y;
  r0.y = exp2(r0.y);
  r0.y = saturate(cb0[45].x + r0.y);
  r0.x = cb0[46].x + r0.x;
  r0.x = r0.y * r0.x + cb0[45].x;
  r9.yzw = cb0[47].xyz * r0.xxx;
  r8.xyz = r8.xyz * cb0[29].xyz + r9.yzw;
  r6.xyz = r8.xyz + r6.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r5.xyz = saturate(r5.xyz * cb0[48].xxx + cb0[48].yyy);
  r5.xyz = cb0[18].xyz * r5.xyz;
  r0.x = saturate(v5.y);
  r6.xyz = cb0[50].xyz * r0.xxx + cb0[49].xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r5.xyz = r7.xyz * r5.xyz;
  r0.x = 1 + -v5.y;
  r0.x = r0.x * r0.x;
  r0.y = cb0[52].x + cb0[51].x;
  r0.x = r0.x * r0.y;
  r5.xyz = r5.xyz * r0.xxx;
  r6.xyz = r5.xyz * r4.xyz;
  r4.xyz = r4.xyz * r5.xyz + r2.xyz;
  r0.x = max(r4.x, r4.y);
  r0.x = max(r0.x, r4.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r2.xyz = r2.xyz * r0.xxx + r6.xyz;
  r0.x = max(r2.x, r2.y);
  r0.x = max(r0.x, r2.z);
  r0.x = max(1, r0.x);
  r2.xyz = r2.xyz / r0.xxx;
  r0.x = max(r6.x, r6.y);
  r0.x = max(r0.x, r6.z);
  r0.y = dot(r1.xy, r1.xy);
  r0.y = 1 + -r0.y;
  r0.y = max(0, r0.y);
  r1.z = sqrt(r0.y);
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r4.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r4.xyz;
  r1.xyz = v0.xyz * r1.zzz + r1.xyw;
  r0.y = dot(r1.xyz, r1.xyz);
  r0.y = rsqrt(r0.y);
  r1.xyz = r1.xyz * r0.yyy;
  r0.y = saturate(cb0[12].x);
  r1.w = dot(v0.xyz, v0.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = v0.xyz * r1.www;
  r1.w = dot(cb0[5].xyz, r4.xyz);
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
  r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = -cb0[11].x * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.w * r0.w;
  o2.w = v0.w + r0.y;
  r0.x = r0.w * cb0[13].x + r0.x;
  r0.y = r3.z * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.yyy + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r9.x = saturate(r9.x);
  r0.x = r9.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xz;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r3.w;
  return;
}