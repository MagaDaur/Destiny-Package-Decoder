// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:55 2023
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
  float4 cb0[44];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r0.x = dot(r0.xyz, v0.xyz);
  r1.xyz = t3.Sample(s6_s, v3.xy).xyz;
  r0.y = r1.y + -r1.z;
  r0.y = cmp(r0.y < 0.00470588217);
  r0.y = r0.y ? r1.y : r1.z;
  r2.xy = ddx_coarse(r1.xy);
  r2.z = ddx_coarse(r0.y);
  r3.xy = ddy_coarse(r1.xy);
  r3.z = ddy_coarse(r0.y);
  r1.zw = r2.xx * r2.yz;
  r2.xy = r3.xx * r3.yz;
  r2.zw = cmp(abs(r2.xy) < abs(r1.zw));
  r1.zw = r2.zw ? r1.zw : r2.xy;
  r0.z = -0.5 + r1.x;
  r0.z = cmp(abs(r0.z) < 0.00470588217);
  r2.x = r1.x + r1.y;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.zw = cmp(r1.zw < float2(0,0));
  r1.z = r1.z ? r2.x : 0;
  r2.x = 1 + -r1.y;
  r1.z = r1.z ? r2.x : r1.x;
  r2.x = r1.z + r0.y;
  r2.x = -1 + r2.x;
  r2.x = cmp(abs(r2.x) < 0.00588235306);
  r1.w = r1.w ? r2.x : 0;
  r2.x = 1 + -r0.y;
  r1.z = r1.w ? r2.x : r1.z;
  r0.z = r0.z ? r1.z : r1.x;
  r0.yz = cmp(r0.yz >= float2(0.5,0.5));
  if (r0.y != 0) {
    r1.xz = v3.zw * cb7[6].xy + cb7[6].zw;
    r2.xy = v3.zw * cb7[7].xy + cb7[7].zw;
    r3.xyzw = t8.Sample(s1_s, r1.xz).wxyz;
    r1.xzw = t9.Sample(s1_s, r2.xy).xyz;
    r1.xz = r1.xz * cb7[8].xx + cb7[8].yy;
    r0.y = saturate(cb7[8].z + r1.w);
    r1.w = 4;
  } else {
    r1.y = cmp(r1.y >= 0.5);
    if (r1.y != 0) {
      r2.xy = v3.zw * cb7[3].xy + cb7[3].zw;
      r2.zw = v3.zw * cb7[4].xy + cb7[4].zw;
      r3.xyzw = t6.Sample(s1_s, r2.xy).wxyz;
      r2.xyz = t7.Sample(s1_s, r2.zw).xyz;
      r1.xz = r2.xy * cb7[5].xx + cb7[5].yy;
      r0.y = saturate(cb7[5].z + r2.z);
      r1.w = 2;
    } else {
      r2.xy = v3.zw * cb7[0].xy + cb7[0].zw;
      r2.zw = v3.zw * cb7[1].xy + cb7[1].zw;
      r3.xyzw = t4.Sample(s1_s, r2.xy).wxyz;
      r2.xyz = t5.Sample(s1_s, r2.zw).xyz;
      r1.xz = r2.xy * cb7[2].xx + cb7[2].yy;
      r0.y = saturate(cb7[2].z + r2.z);
      r1.w = 0;
    }
  }
  r1.y = (int)r1.w + 1;
  r0.z = r0.z ? r1.y : r1.w;
  r0.z = (int)r0.z * 9;
  r2.xyzw = saturate(cb7[r0.z+11].xyzw);
  r1.yw = saturate(cb7[r0.z+12].yz);
  r4.xyzw = saturate(cb7[r0.z+17].xyzw);
  r5.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r6.xy = t1.Sample(s4_s, v3.xy).xy;
  r6.xy = r6.xy * cb0[43].xx + cb0[43].yy;
  r7.xyzw = t2.Sample(s5_s, v3.xy).xyzw;
  r5.w = cmp(r7.w >= 0.156862751);
  r6.z = r5.w ? 1.000000 : 0;
  r8.xyz = float3(-0.25,-0.188235298,-0.156862751) + r7.ywz;
  r8.yz = saturate(float2(1.231884,1.18604648) * r8.yz);
  r6.w = saturate(cb7[r0.z+15].y * r8.y + cb7[r0.z+15].x);
  r6.w = saturate(cb7[r0.z+15].w * r6.w + cb7[r0.z+15].z);
  r9.xy = saturate(float2(7.96875,4) * r7.wy);
  r7.z = cb0[10].x + 128.5;
  r7.z = 0.00390625 * r7.z;
  r7.w = cmp(0.0500000007 >= r9.x);
  r7.z = r7.w ? r7.z : -1;
  r10.xyz = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r11.xyz = saturate(cb7[r0.z+9].xyz * r10.xyz + r3.yzw);
  r11.xyz = -cb7[r0.z+9].xyz + r11.xyz;
  r11.xyz = r2.xxx * r11.xyz + cb7[r0.z+9].xyz;
  r2.x = saturate(cb7[r0.z+13].y * r7.y + cb7[r0.z+13].x);
  r2.x = saturate(cb7[r0.z+13].w * r2.x + cb7[r0.z+13].z);
  r8.x = saturate(r8.x);
  r3.x = saturate(r3.x * r9.y + r8.x);
  r7.w = saturate(cb7[r0.z+13].y * r3.x + cb7[r0.z+13].x);
  r7.w = saturate(cb7[r0.z+13].w * r7.w + cb7[r0.z+13].z);
  r7.w = r7.w + -r2.x;
  r2.x = r2.z * r7.w + r2.x;
  r8.xyw = saturate(float3(4,4,4) * r5.xyz);
  r12.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r11.xyz = saturate(r11.xyz * r8.xyw + r12.xyz);
  r9.yw = r1.xz * r2.yy + r6.xy;
  r0.y = -1 + r0.y;
  r2.y = r2.y * r0.y + 1;
  r3.yzw = saturate(cb7[r0.z+14].xyz * r10.xyz + r3.yzw);
  r3.yzw = -cb7[r0.z+14].xyz + r3.yzw;
  r3.yzw = r4.xxx * r3.yzw + cb7[r0.z+14].xyz;
  r3.yzw = saturate(r3.yzw * r8.xyw + r12.xyz);
  r2.z = saturate(cb7[r0.z+16].y * r7.y + cb7[r0.z+16].x);
  r2.z = saturate(cb7[r0.z+16].w * r2.z + cb7[r0.z+16].z);
  r3.x = saturate(cb7[r0.z+16].y * r3.x + cb7[r0.z+16].x);
  r3.x = saturate(cb7[r0.z+16].w * r3.x + cb7[r0.z+16].z);
  r3.x = r3.x + -r2.z;
  r2.z = r4.z * r3.x + r2.z;
  r1.xz = r1.xz * r4.yy + r6.xy;
  r0.y = r4.y * r0.y + 1;
  r4.xyz = r11.xyz + -r3.yzw;
  r3.xyz = r6.www * r4.xyz + r3.yzw;
  r4.xy = r9.yw + -r1.xz;
  r1.xz = r6.ww * r4.xy + r1.xz;
  r2.x = r2.x + -r2.z;
  r3.w = r6.w * r2.x + r2.z;
  r2.x = -r4.w + r2.w;
  r4.y = r6.w * r2.x + r4.w;
  r2.x = r2.y + -r0.y;
  r0.y = r6.w * r2.x + r0.y;
  r2.x = -cb0[42].x + cb0[27].x;
  r2.x = cmp(abs(r2.x) < 9.99999975e-006);
  r2.x = r2.x ? 1.000000 : 0;
  r2.y = 1 + -v5.y;
  r2.z = saturate(r8.z * r2.y);
  r4.z = saturate(r2.z * cb0[40].x + cb0[40].y);
  r4.w = cb0[27].x + -cb0[12].x;
  r4.w = cmp(abs(r4.w) < 9.99999975e-006);
  r4.w = r4.w ? 1.000000 : 0;
  r6.w = -cb0[30].x + cb0[27].x;
  r6.w = cmp(abs(r6.w) < 9.99999975e-006);
  r6.w = r6.w ? 1.000000 : 0;
  r7.w = -cb0[29].x + cb0[27].x;
  r7.w = cmp(abs(r7.w) < 9.99999975e-006);
  r7.w = r7.w ? 1.000000 : 0;
  r8.x = -cb0[28].x + cb0[27].x;
  r8.x = cmp(abs(r8.x) < 9.99999975e-006);
  r8.x = r8.x ? 1.000000 : 0;
  r10.xyz = -cb0[26].xyz + cb0[25].xyz;
  r8.xyw = r8.xxx * r10.xyz + cb0[26].xyz;
  r10.xyz = cb0[24].xyz + -r8.xyw;
  r8.xyw = r7.www * r10.xyz + r8.xyw;
  r10.xyz = cb0[23].xyz + -r8.xyw;
  r8.xyw = r6.www * r10.xyz + r8.xyw;
  r10.xyz = cb0[22].xyz + -r8.xyw;
  r10.xyz = r4.www * r10.xyz + r8.xyw;
  r10.w = r2.z * cb0[41].x + cb0[41].y;
  r11.xyz = cb0[39].xyz + -r10.xyz;
  r11.w = -r10.w + r4.z;
  r11.xyzw = r2.xxxx * r11.xyzw + r10.xyzw;
  r12.xyzw = r11.xyzw + -r3.xyzw;
  r3.xyzw = r11.wwww * r12.xyzw + r3.xyzw;
  r0.z = cb7[r0.z+12].x + 128.5;
  r0.z = 0.00390625 * r0.z;
  r2.x = cmp(0.0500000007 >= r2.w);
  r0.z = r2.x ? r0.z : -1;
  r0.y = min(r3.w, r0.y);
  r2.x = cmp(9.99999975e-005 < r1.y);
  r2.w = -2 * r1.y;
  r1.y = r1.y * -2 + -0.200000003;
  r1.y = r1.y * r0.y;
  r1.y = r1.y * -5.00250101 + r2.w;
  r1.y = min(r1.y, r0.y);
  r4.x = r2.x ? r1.y : r0.y;
  r3.xyz = r3.xyz + -r5.xyz;
  r3.xyz = r6.zzz * r3.xyz + r5.xyz;
  r1.xy = r1.xz + -r6.xy;
  r1.xy = r6.zz * r1.xy + r6.xy;
  r9.z = r7.y;
  r2.xw = r4.xy + -r9.zx;
  r2.xw = r6.zz * r2.xw + r9.zx;
  r0.y = r6.z * r1.w;
  o0.w = r5.w ? r0.z : r7.z;
  r0.z = saturate(r8.z * cb0[32].x + cb0[32].y);
  r0.z = r0.z * r2.y;
  r0.z = cb0[12].x * r0.z;
  r0.z = r2.z * cb0[31].x + r0.z;
  r4.xyz = r10.xyz * r0.zzz;
  r2.yz = v3.xy * cb0[33].xy + cb0[33].zw;
  r2.yz = t10.Sample(s2_s, r2.yz).xy;
  r2.yz = -cb0[35].xy + r2.yz;
  r2.yz = r2.yz * cb0[34].xx + v3.xy;
  r2.yz = r2.yz * cb0[36].xy + cb0[36].zw;
  r5.xyz = t11.Sample(s2_s, r2.yz).xyz;
  r5.xyz = r5.xyz * cb0[37].xxx + cb0[37].yyy;
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[38].x + cb0[38].y);
  r5.xyz = r5.xyz * r0.xxx;
  r6.xyz = r5.xyz * r4.xyz;
  r4.xyz = r4.xyz * r5.xyz + r3.xyz;
  r0.x = max(r4.x, r4.y);
  r0.x = max(r0.x, r4.z);
  r0.x = saturate(-1 + r0.x);
  r0.x = 1 + -r0.x;
  r3.xyz = r3.xyz * r0.xxx + r6.xyz;
  r0.x = max(r3.x, r3.y);
  r0.x = max(r0.x, r3.z);
  r0.x = max(1, r0.x);
  r3.xyz = r3.xyz / r0.xxx;
  r0.x = max(r6.x, r6.y);
  r0.x = max(r0.x, r6.z);
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
  r0.z = saturate(cb0[20].x);
  r1.w = dot(v0.xyz, v0.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = v0.xyz * r1.www;
  r1.w = dot(cb0[13].xyz, r4.xyz);
  r2.y = cb0[12].x + -cb0[11].x;
  r1.w = saturate(r1.w * r2.y + cb0[11].x);
  r2.y = -cb0[14].z + v4.z;
  r2.y = cb0[15].x * r2.y;
  r2.y = max(0, r2.y);
  r2.y = log2(r2.y);
  r2.y = cb0[16].x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = saturate(cb0[17].x * r2.y);
  r1.w = r2.y * r1.w;
  r0.w = saturate(r0.w * cb0[18].x + cb0[18].y);
  r0.w = r1.w * r0.w;
  r1.w = dot(r3.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = -cb0[19].x * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.w * r0.w;
  o2.w = v0.w + r0.z;
  r0.x = r0.w * cb0[21].x + r0.x;
  r0.z = r2.x * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.zzz + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r7.x = saturate(r7.x);
  r0.x = r7.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xy;
  o0.xyz = r3.xyz;
  o1.w = 0;
  o2.x = r2.w;
  return;
}