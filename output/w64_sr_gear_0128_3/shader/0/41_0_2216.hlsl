// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:50 2023
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

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s7_s : register(s7);

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
  float4 cb0[56];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xyz = cb12[7].xyz + -v4.xyz;
  r0.w = dot(r0.xyz, r0.xyz);
  r1.x = rsqrt(r0.w);
  r0.xyz = r1.xxx * r0.xyz;
  r0.w = sqrt(r0.w);
  r0.x = dot(r0.xyz, v0.xyz);
  r1.xyz = t3.Sample(s7_s, v3.xy).xyz;
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
  r5.xyz = t0.Sample(s4_s, v3.xy).xyz;
  r6.xy = t1.Sample(s5_s, v3.xy).xy;
  r6.xy = r6.xy * cb0[55].xx + cb0[55].yy;
  r7.xyzw = t2.Sample(s6_s, v3.xy).xyzw;
  r5.w = cmp(r7.w >= 0.156862751);
  r6.z = r5.w ? 1.000000 : 0;
  r8.xyz = float3(-0.25,-0.188235298,-0.156862751) + r7.ywz;
  r8.yz = saturate(float2(1.231884,1.18604648) * r8.yz);
  r9.xyz = saturate(float3(7.96875,7.96875,4) * r7.zwy);
  r6.w = v7.x ? 1 : -1;
  r7.z = saturate(cb7[r0.z+15].y * r8.y + cb7[r0.z+15].x);
  r7.z = saturate(cb7[r0.z+15].w * r7.z + cb7[r0.z+15].z);
  r7.w = cb0[2].x + 128.5;
  r7.w = 0.00390625 * r7.w;
  r8.y = cmp(0.0500000007 >= r9.y);
  r7.w = r8.y ? r7.w : -1;
  r10.xyz = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r11.xyz = saturate(cb7[r0.z+9].xyz * r10.xyz + r3.yzw);
  r11.xyz = -cb7[r0.z+9].xyz + r11.xyz;
  r11.xyz = r2.xxx * r11.xyz + cb7[r0.z+9].xyz;
  r2.x = saturate(cb7[r0.z+13].y * r7.y + cb7[r0.z+13].x);
  r2.x = saturate(cb7[r0.z+13].w * r2.x + cb7[r0.z+13].z);
  r8.x = saturate(r8.x);
  r3.x = saturate(r3.x * r9.z + r8.x);
  r8.x = saturate(cb7[r0.z+13].y * r3.x + cb7[r0.z+13].x);
  r8.x = saturate(cb7[r0.z+13].w * r8.x + cb7[r0.z+13].z);
  r8.x = r8.x + -r2.x;
  r2.x = r2.z * r8.x + r2.x;
  r8.xyw = saturate(float3(4,4,4) * r5.xyz);
  r12.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r11.xyz = saturate(r11.xyz * r8.xyw + r12.xyz);
  r13.xy = r1.xz * r2.yy + r6.xy;
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
  r3.xyz = r7.zzz * r4.xyz + r3.yzw;
  r4.xy = r13.xy + -r1.xz;
  r1.xz = r7.zz * r4.xy + r1.xz;
  r2.x = r2.x + -r2.z;
  r2.x = r7.z * r2.x + r2.z;
  r2.z = -r4.w + r2.w;
  r4.y = r7.z * r2.z + r4.w;
  r2.y = r2.y + -r0.y;
  r0.y = r7.z * r2.y + r0.y;
  r0.z = cb7[r0.z+12].x + 128.5;
  r0.z = 0.00390625 * r0.z;
  r2.y = cmp(0.0500000007 >= r2.w);
  r0.z = r2.y ? r0.z : -1;
  r0.y = min(r2.x, r0.y);
  r2.x = cmp(9.99999975e-005 < r1.y);
  r2.y = -2 * r1.y;
  r1.y = r1.y * -2 + -0.200000003;
  r1.y = r1.y * r0.y;
  r1.y = r1.y * -5.00250101 + r2.y;
  r1.y = min(r1.y, r0.y);
  r4.x = r2.x ? r1.y : r0.y;
  r2.xyz = r3.xyz + -r5.xyz;
  r2.xyz = r6.zzz * r2.xyz + r5.xyz;
  r1.xy = r1.xz + -r6.xy;
  r1.xy = r6.zz * r1.xy + r6.xy;
  r9.w = r7.y;
  r3.xy = r4.xy + -r9.wy;
  r3.xy = r6.zz * r3.xy + r9.wy;
  r0.y = r6.z * r1.w;
  o0.w = r5.w ? r0.z : r7.w;
  r0.z = cb0[16].x * r8.z;
  r0.x = r0.x * r0.x;
  r0.x = saturate(r0.x * cb0[17].x + cb0[17].y);
  r4.xyz = cb0[19].xyz * r0.xxx + cb0[18].xyz;
  r4.xyz = r4.xyz * r0.zzz;
  r0.x = cb0[6].x * v5.y;
  r0.x = max(0, r0.x);
  r0.x = log2(r0.x);
  r0.x = cb0[21].x * r0.x;
  r0.x = exp2(r0.x);
  r6.x = cb0[22].x + r0.x;
  r6.y = 0;
  r0.x = t10.Sample(s3_s, r6.xy).x;
  r0.x = saturate(r0.x * cb0[23].x + cb0[23].y);
  r6.xyz = cb0[25].xyz * r0.xxx + cb0[24].xyz;
  r0.xz = v3.xy * cb0[26].xy + cb0[26].zw;
  r0.xz = t11.Sample(s2_s, r0.xz).xy;
  r0.xz = -cb0[28].xy + r0.xz;
  r0.xz = r0.xz * cb0[27].xx + v3.xy;
  r0.xz = r0.xz * cb0[29].xy + cb0[29].zw;
  r7.yzw = t12.Sample(s2_s, r0.xz).xyz;
  r0.xz = v3.xy * cb0[30].xy + cb0[30].zw;
  r8.xyz = t13.Sample(s2_s, r0.xz).xyz;
  r0.xz = v3.yx * cb0[32].yx + cb0[32].wz;
  r3.zw = round(r0.xz);
  r0.xz = -r3.zw + r0.xz;
  r3.zw = abs(r0.xz) * float2(-16,-16) + float2(8,8);
  r0.xz = r3.zw * r0.xz;
  r3.zw = abs(r0.xz) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r0.xz = r3.zw * r0.xz;
  r0.xz = cb0[33].yx * r0.xz + v3.xy;
  r3.zw = r0.zx * cb0[34].yx + cb0[34].wz;
  r9.yz = round(r3.zw);
  r3.zw = -r9.yz + r3.zw;
  r9.yz = abs(r3.zw) * float2(-16,-16) + float2(8,8);
  r3.zw = r9.yz * r3.zw;
  r9.yz = abs(r3.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r3.zw = r9.yz * r3.zw;
  r0.xz = cb0[35].yx * r3.zw + r0.xz;
  r1.w = r0.z * cb0[36].y + cb0[36].w;
  r3.zw = r0.xz * cb0[37].xy + cb0[37].zw;
  r2.w = t14.Sample(s2_s, r3.zw).y;
  r2.w = -cb0[39].y + r2.w;
  r1.w = r2.w * cb0[38].x + r1.w;
  r1.w = frac(r1.w);
  r2.w = cb0[40].z + r1.w;
  r2.w = saturate(cb0[40].y * abs(r2.w) + cb0[40].x);
  r1.w = cb0[41].z + r1.w;
  r1.w = saturate(cb0[41].y * abs(r1.w) + cb0[41].x);
  r1.w = r2.w + r1.w;
  r1.w = min(1, r1.w);
  r3.zw = r0.xz * cb0[42].xy + cb0[42].zw;
  r2.w = cb0[43].x * cb0[6].x;
  r0.xz = t14.Sample(s2_s, r0.xz).xy;
  r0.xz = -cb0[44].xy + r0.xz;
  r0.xz = r0.xz * r2.ww + r3.zw;
  r0.x = t15.Sample(s2_s, r0.xz).x;
  r0.z = 1 + -r0.x;
  r0.z = max(0, r0.z);
  r0.z = log2(r0.z);
  r0.z = cb0[45].x * r0.z;
  r0.z = exp2(r0.z);
  r0.z = r0.z * cb0[46].x + cb0[6].x;
  r1.w = log2(r1.w);
  r0.z = r1.w * r0.z;
  r0.z = exp2(r0.z);
  r0.z = saturate(cb0[47].x + r0.z);
  r0.x = cb0[48].x + r0.x;
  r0.x = r0.z * r0.x + cb0[47].x;
  r9.yzw = cb0[49].xyz * r0.xxx;
  r8.xyz = r8.xyz * cb0[31].xyz + r9.yzw;
  r7.yzw = r8.xyz + r7.yzw;
  r6.xyz = r7.yzw * r6.xyz;
  r6.xyz = saturate(r6.xyz * cb0[50].xxx + cb0[50].yyy);
  r6.xyz = cb0[20].xyz * r6.xyz;
  r0.x = saturate(v5.y);
  r7.yzw = cb0[52].xyz * r0.xxx + cb0[51].xyz;
  r6.xyz = r7.yzw * r6.xyz;
  r5.xyz = r6.xyz * r5.xyz;
  r0.x = 1 + -v5.y;
  r0.x = r0.x * r0.x;
  r0.z = cb0[54].x + cb0[53].x;
  r0.x = r0.x * r0.z;
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
  r0.z = dot(r1.xy, r1.xy);
  r0.z = 1 + -r0.z;
  r0.z = max(0, r0.z);
  r1.z = sqrt(r0.z);
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r4.xyz = v0.xyz * r6.www;
  r5.xyz = v2.xyz * r1.yyy;
  r1.xyw = v1.xyz * r1.xxx + r5.xyz;
  r1.xyz = r4.xyz * r1.zzz + r1.xyw;
  r0.z = dot(r1.xyz, r1.xyz);
  r0.z = rsqrt(r0.z);
  r1.xyz = r1.xyz * r0.zzz;
  r0.z = cmp(0.000000 != cb0[4].x);
  if (r0.z != 0) {
    r3.zw = ddx_coarse(v3.xy);
    r0.z = dot(r3.zw, r3.zw);
    r0.z = sqrt(r0.z);
    r3.zw = ddy_coarse(v3.xy);
    r1.w = dot(r3.zw, r3.zw);
    r1.w = sqrt(r1.w);
    r0.z = max(r1.w, r0.z);
    r0.z = 1 / r0.z;
    r0.z = log2(r0.z);
    r1.w = floor(r0.z);
    r1.w = exp2(r1.w);
    r2.w = ceil(r0.z);
    r2.w = exp2(r2.w);
    r3.zw = v3.xy * r1.ww;
    r3.zw = floor(r3.zw);
    r1.w = dot(r3.zw, float2(17,0.100000001));
    r1.w = sin(r1.w);
    r1.w = 10000 * r1.w;
    r3.z = r3.w * 13 + r3.z;
    r3.z = sin(r3.z);
    r3.z = 0.100000001 + abs(r3.z);
    r1.w = r3.z * r1.w;
    r1.w = frac(r1.w);
    r3.zw = v3.xy * r2.ww;
    r3.zw = floor(r3.zw);
    r2.w = dot(r3.zw, float2(17,0.100000001));
    r2.w = sin(r2.w);
    r2.w = 10000 * r2.w;
    r3.z = r3.w * 13 + r3.z;
    r3.z = sin(r3.z);
    r3.z = 0.100000001 + abs(r3.z);
    r2.w = r3.z * r2.w;
    r2.w = frac(r2.w);
    r0.z = frac(r0.z);
    r2.w = r2.w + -r1.w;
    r1.w = r0.z * r2.w + r1.w;
    r2.w = 1 + -r0.z;
    r0.z = min(r2.w, r0.z);
    r2.w = r1.w * r1.w;
    r3.z = r0.z + r0.z;
    r3.w = 1 + -r0.z;
    r3.z = r3.z * r3.w;
    r2.w = r2.w / r3.z;
    r4.w = -r0.z * 0.5 + r1.w;
    r4.w = r4.w / r3.w;
    r5.x = 1 + -r1.w;
    r5.x = r5.x * r5.x;
    r3.z = r5.x / r3.z;
    r3.z = 1 + -r3.z;
    r3.w = cmp(r1.w < r3.w);
    r0.z = cmp(r1.w < r0.z);
    r0.z = r0.z ? r2.w : r4.w;
    r0.z = r3.w ? r0.z : r3.z;
    r1.w = cmp(0.5 >= cb0[3].x);
    r2.w = cb0[3].x + cb0[3].x;
    r2.w = r0.z * -r2.w + r2.w;
    r3.z = cb0[3].x * 2 + -2;
    r0.z = r0.z * r3.z + 1;
    r0.z = r1.w ? r2.w : r0.z;
  } else {
    r0.z = cb0[3].x;
  }
  r0.z = r9.x + -r0.z;
  r0.z = cmp(r0.z < 0);
  if (r0.z != 0) discard;
  r0.z = saturate(cb0[14].x);
  r1.w = dot(r4.xyz, r4.xyz);
  r1.w = rsqrt(r1.w);
  r4.xyz = r4.xyz * r1.www;
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
  r0.w = saturate(r0.w * cb0[12].x + cb0[12].y);
  r0.w = r1.w * r0.w;
  r1.w = dot(r2.xyz, float3(0.300000012,0.589999974,0.109999999));
  r1.w = max(9.99999975e-005, r1.w);
  r1.w = log2(r1.w);
  r1.w = -cb0[13].x * r1.w;
  r1.w = exp2(r1.w);
  r0.w = r1.w * r0.w;
  o2.w = v0.w + r0.z;
  r0.x = r0.w * cb0[15].x + r0.x;
  r0.z = r3.x * 0.125 + 0.375;
  o1.xyz = saturate(r1.xyz * r0.zzz + float3(0.5,0.5,0.5));
  r0.x = 0.0078125 + r0.x;
  r0.x = log2(r0.x);
  r0.x = saturate(r0.x * 0.0769230798 + 0.538461566);
  r7.x = saturate(r7.x);
  r0.x = r7.x + r0.x;
  o2.yz = float2(0.5,0.800000012) * r0.xy;
  o0.xyz = r2.xyz;
  o1.w = 0;
  o2.x = r3.y;
  return;
}