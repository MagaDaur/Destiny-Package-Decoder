// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
Texture2D<float4> t28 : register(t28);

TextureCube<float4> t27 : register(t27);

Texture2D<float4> t26 : register(t26);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t8 : register(t8);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s9_s : register(s9);

SamplerState s8_s : register(s8);

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

cbuffer cb8 : register(b8)
{
  float4 cb8[8];
}

cbuffer cb3 : register(b3)
{
  float4 cb3[16];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[15];
}

cbuffer cb13 : register(b13)
{
  float4 cb13[5];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[48];
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
  out float4 o0 : SV_TARGET0)
{
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15,r16,r17,r18;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xyz = -cb12[14].xyz + v4.xyz;
  r1.w = dot(-cb12[6].xyz, r3.xyz);
  r3.x = dot(r2.xyz, v1.xyz);
  r3.y = dot(r2.xyz, v2.xyz);
  r2.w = v0.w * v0.w;
  r3.z = (uint)v2.w;
  r3.w = cmp((uint)r3.z >= 4);
  if (r3.w != 0) {
    r4.xy = v3.zw * cb7[6].xy + cb7[6].zw;
    r4.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r5.xyzw = t8.Sample(s1_s, r4.xy).wxyz;
    r4.xyz = t9.Sample(s1_s, r4.zw).xyz;
    r4.xy = r4.xy * cb7[8].xx + cb7[8].yy;
    r3.w = saturate(cb7[8].z + r4.z);
  } else {
    r4.z = cmp((uint)r3.z >= 2);
    if (r4.z != 0) {
      r4.zw = v3.zw * cb7[3].xy + cb7[3].zw;
      r6.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r5.xyzw = t6.Sample(s1_s, r4.zw).wxyz;
      r6.xyz = t7.Sample(s1_s, r6.xy).xyz;
      r4.xy = r6.xy * cb7[5].xx + cb7[5].yy;
      r3.w = saturate(cb7[5].z + r6.z);
    } else {
      r4.zw = v3.zw * cb7[0].xy + cb7[0].zw;
      r6.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r5.xyzw = t4.Sample(s1_s, r4.zw).wxyz;
      r6.xyz = t5.Sample(s1_s, r6.xy).xyz;
      r4.xy = r6.xy * cb7[2].xx + cb7[2].yy;
      r3.w = saturate(cb7[2].z + r6.z);
    }
  }
  r6.xyzw = mad(int4(9,9,9,9), (int4)r3.zzzz, int4(9,11,12,13));
  r7.xyzw = mad(int4(9,9,9,9), (int4)r3.zzzz, int4(14,15,16,17));
  r8.xyzw = saturate(cb7[r6.y+0].xyzw);
  r4.zw = saturate(cb7[r6.z+0].yz);
  r9.xyzw = saturate(cb7[r7.w+0].xyzw);
  r10.xyz = t0.Sample(s3_s, v3.xy).xyz;
  r6.yz = t1.Sample(s4_s, v3.xy).xy;
  r6.yz = r6.yz * cb0[4].xx + cb0[4].yy;
  r11.zw = t2.Sample(s5_s, v3.xy).yw;
  r3.z = cmp(r11.w >= 0.156862751);
  r3.z = r3.z ? 1.000000 : 0;
  r12.xy = float2(-0.25,-0.188235298) + r11.zw;
  r7.w = saturate(1.231884 * r12.y);
  r7.w = saturate(cb7[r7.y+0].y * r7.w + cb7[r7.y+0].x);
  r7.y = saturate(cb7[r7.y+0].w * r7.w + cb7[r7.y+0].z);
  r11.xy = saturate(float2(7.96875,4) * r11.wz);
  r12.yzw = saturate(float3(4,4,4) * r5.yzw);
  r5.yzw = saturate(float3(-0.25,-0.25,-0.25) + r5.yzw);
  r13.xyz = saturate(cb7[r6.x+0].xyz * r12.yzw + r5.yzw);
  r13.xyz = -cb7[r6.x+0].xyz + r13.xyz;
  r13.xyz = r8.xxx * r13.xyz + cb7[r6.x+0].xyz;
  r7.w = saturate(cb7[r6.w+0].y * r11.z + cb7[r6.w+0].x);
  r7.w = saturate(cb7[r6.w+0].w * r7.w + cb7[r6.w+0].z);
  r12.x = saturate(r12.x);
  r5.x = saturate(r5.x * r11.y + r12.x);
  r8.x = saturate(cb7[r6.w+0].y * r5.x + cb7[r6.w+0].x);
  r6.w = saturate(cb7[r6.w+0].w * r8.x + cb7[r6.w+0].z);
  r6.w = r6.w + -r7.w;
  r6.w = r8.z * r6.w + r7.w;
  r14.xyz = saturate(float3(4,4,4) * r10.xyz);
  r15.xyz = saturate(float3(-0.25,-0.25,-0.25) + r10.xyz);
  r13.xyz = saturate(r13.xyz * r14.xyz + r15.xyz);
  r8.xz = r4.xy * r8.yy + r6.yz;
  r3.w = -1 + r3.w;
  r7.w = r8.y * r3.w + 1;
  r5.yzw = saturate(cb7[r7.x+0].xyz * r12.yzw + r5.yzw);
  r5.yzw = -cb7[r7.x+0].xyz + r5.yzw;
  r5.yzw = r9.xxx * r5.yzw + cb7[r7.x+0].xyz;
  r5.yzw = saturate(r5.yzw * r14.xyz + r15.xyz);
  r7.x = saturate(cb7[r7.z+0].y * r11.z + cb7[r7.z+0].x);
  r7.x = saturate(cb7[r7.z+0].w * r7.x + cb7[r7.z+0].z);
  r5.x = saturate(cb7[r7.z+0].y * r5.x + cb7[r7.z+0].x);
  r5.x = saturate(cb7[r7.z+0].w * r5.x + cb7[r7.z+0].z);
  r5.x = r5.x + -r7.x;
  r5.x = r9.z * r5.x + r7.x;
  r4.xy = r4.xy * r9.yy + r6.yz;
  r3.w = r9.y * r3.w + 1;
  r9.xyz = r13.xyz + -r5.yzw;
  r5.yzw = r7.yyy * r9.xyz + r5.yzw;
  r7.xz = r8.xz + -r4.xy;
  r4.xy = r7.yy * r7.xz + r4.xy;
  r6.w = r6.w + -r5.x;
  r5.x = r7.y * r6.w + r5.x;
  r6.w = -r9.w + r8.w;
  r8.z = r7.y * r6.w + r9.w;
  r6.w = r7.w + -r3.w;
  r3.w = r7.y * r6.w + r3.w;
  r3.w = min(r5.x, r3.w);
  r5.x = cmp(9.99999975e-005 < r4.z);
  r6.w = -2 * r4.z;
  r4.z = r4.z * -2 + -0.200000003;
  r4.z = r4.z * r3.w;
  r4.z = r4.z * -5.00250101 + r6.w;
  r4.z = min(r4.z, r3.w);
  r8.xyw = r5.xxx ? r4.zzz : r3.www;
  r5.xyz = r5.yzw + -r10.xyz;
  r5.xyz = r3.zzz * r5.xyz + r10.xyz;
  r4.xy = r4.xy + -r6.yz;
  r4.xy = r3.zz * r4.xy + r6.yz;
  r7.xyzw = -r11.zzxz + r8.xyzw;
  r7.xyzw = r3.zzzz * r7.wxyz + r11.zzzx;
  r3.w = r3.z * r4.w;
  r4.w = dot(r4.xy, r4.xy);
  r4.w = 1 + -r4.w;
  r4.w = max(0, r4.w);
  r4.z = sqrt(r4.w);
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = rsqrt(r4.w);
  r4.xyz = r4.xyz * r4.www;
  r6.yzw = v2.xyz * r4.yyy;
  r4.xyw = v1.xyz * r4.xxx + r6.yzw;
  r4.xyz = v0.xyz * r4.zzz + r4.xyw;
  r4.w = dot(r4.xyz, r4.xyz);
  r4.w = rsqrt(r4.w);
  r8.xyz = r4.xyz * r4.www;
  r5.w = dot(r2.xyz, v0.xyz);
  r6.y = dot(r2.xyz, r8.xyz);
  r6.z = r6.y + r6.y;
  r9.xyz = r8.xyz * r6.zzz + -r2.xyz;
  r6.zw = cb0[6].xx * r3.xy;
  r6.zw = r6.zw / r5.ww;
  r6.zw = v3.xy + -r6.zw;
  r10.x = r6.y * r6.y;
  r10.x = saturate(r10.x * cb0[7].x + cb0[7].y);
  r10.xyz = cb0[9].xyz * r10.xxx + cb0[8].xyz;
  r3.xy = cb0[10].xx * r3.xy;
  r3.xy = r3.xy / r5.ww;
  r3.xy = r6.zw + -r3.xy;
  r3.xy = r3.xy * cb0[11].xy + cb0[11].zw;
  r6.zw = r3.yx * cb0[12].yx + cb0[12].wz;
  r11.xy = round(r6.zw);
  r6.zw = -r11.xy + r6.zw;
  r11.xy = abs(r6.zw) * float2(-16,-16) + float2(8,8);
  r6.zw = r11.xy * r6.zw;
  r11.xy = abs(r6.zw) * float2(0.224999994,0.224999994) + float2(0.774999976,0.774999976);
  r6.zw = r11.xy * r6.zw;
  r3.xy = cb0[13].yx * r6.zw + r3.xy;
  r11.xy = -cb0[15].xy + r3.xy;
  r6.z = dot(r11.xy, r11.xy);
  r6.z = cb0[14].x * r6.z;
  r11.z = -r11.x;
  r3.xy = r11.yz * r6.zz + r3.xy;
  r3.x = t26.Sample(s2_s, r3.xy).x;
  r3.x = saturate(cb0[16].y * r3.x + cb0[16].x);
  r10.xyz = r10.xyz * r3.xxx;
  r3.x = r5.w * r5.w;
  r3.x = saturate(r3.x * cb0[17].x + cb0[17].y);
  r11.xyz = r10.xyz * r3.xxx;
  r12.xyz = saturate(float3(4,4,4) * r5.xyz);
  r5.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r5.xyz = cb7[r6.x+0].xyz * r12.xyz + r5.xyz;
  r5.xyz = -r10.xyz * r3.xxx + r5.xyz;
  r3.xyz = r3.zzz * r5.xyz + r11.xyz;
  r5.xy = float2(1,1) + -r7.wx;
  r6.xzw = r5.xxx * r3.xyz;
  r3.xyz = r3.xyz * r7.www;
  r3.xyz = r5.xxx * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyz;
  r5.x = max(9.99999975e-005, r2.w);
  r5.x = log2(r5.x);
  r5.x = cb0[47].x * r5.x;
  r5.x = exp2(r5.x);
  r5.x = r5.x * r5.x;
  r2.w = r2.w * r2.w;
  r10.xyz = -cb3[0].xyz + v4.xyz;
  r10.xyz = abs(r10.xyz) / cb3[6].xyz;
  r11.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r10.xyz = r10.xyz / r11.xyz;
  r5.z = max(r10.x, r10.y);
  r5.z = max(r5.z, r10.z);
  r5.z = max(0.50999999, r5.z);
  r5.z = log2(r5.z);
  r5.z = floor(r5.z);
  r10.z = 1 + r5.z;
  r5.z = cmp(r10.z < cb3[8].x);
  r5.w = exp2(r10.z);
  r11.xyz = cb3[6].xyz * r5.www;
  r12.xyz = cb3[0].xyz / r11.xyz;
  r12.xyz = floor(r12.xyz);
  r11.xyz = -r12.xyz * r11.xyz + v4.xyz;
  r11.xyz = r11.xyz / cb3[6].xyz;
  r11.xyz = r11.xyz / cb3[3].xyz;
  r11.xyz = r11.xyz / r5.www;
  r10.xy = float2(0.5,0.5);
  r10.xyz = r11.xyz * float3(0.5,0.5,0.5) + r10.xyz;
  r5.w = 0.5 + r10.z;
  r10.xy = cb3[2].xy * r10.xy;
  r10.w = r5.w * cb3[2].z + cb3[9].x;
  r10.xyz = float3(0.5,0.5,0.5) + r10.xyw;
  r10.xyz = r10.xyz / cb3[4].xyz;
  r11.xy = cb8[4].zw;
  r11.z = 0;
  r10.xyz = r5.zzz ? r10.xyz : r11.xyz;
  r12.xyzw = t16.SampleLevel(s8_s, r10.xyz, 0).xyzw;
  r13.xyzw = t17.SampleLevel(s8_s, r10.xyz, 0).xyzw;
  r14.xyzw = t18.SampleLevel(s8_s, r10.xyz, 0).xyzw;
  r1.w = cb3[15].x * r1.w;
  r1.w = saturate(r1.w * 1.5 + cb3[15].y);
  r5.z = cmp(r1.w < 1);
  if (r5.z != 0) {
    r15.xyzw = t16.SampleLevel(s8_s, r11.xyz, 0).xyzw;
    r16.xyzw = t17.SampleLevel(s8_s, r11.xyz, 0).xyzw;
    r11.xyzw = t18.SampleLevel(s8_s, r11.xyz, 0).xyzw;
    r17.xyzw = -r15.xyzw + r12.xyzw;
    r12.xyzw = r1.wwww * r17.xyzw + r15.xyzw;
    r15.xyzw = -r16.xyzw + r13.xyzw;
    r13.xyzw = r1.wwww * r15.xyzw + r16.xyzw;
    r15.xyzw = r14.xyzw + -r11.xyzw;
    r14.xyzw = r1.wwww * r15.xyzw + r11.xyzw;
  }
  r8.w = 1;
  r11.x = dot(r12.xyzw, r8.xyzw);
  r11.y = dot(r13.xyzw, r8.xyzw);
  r11.z = dot(r14.xyzw, r8.xyzw);
  r11.xyz = max(float3(0,0,0), r11.xyz);
  r9.w = 1;
  r15.x = dot(r12.xyzw, r9.xyzw);
  r15.y = dot(r13.xyzw, r9.xyzw);
  r15.z = dot(r14.xyzw, r9.xyzw);
  r15.xyz = max(float3(0,0,0), r15.xyz);
  r5.z = dot(r12.xyz, r12.xyz);
  r5.z = rsqrt(r5.z);
  r16.xyz = r12.xyz * r5.zzz;
  r5.z = dot(r13.xyz, r13.xyz);
  r5.z = rsqrt(r5.z);
  r17.xyz = r13.xyz * r5.zzz;
  r5.z = dot(r14.xyz, r14.xyz);
  r5.z = rsqrt(r5.z);
  r18.xyz = r14.xyz * r5.zzz;
  r17.xyz = float3(0.589999974,0.589999974,0.589999974) * r17.xyz;
  r16.xyz = r16.xyz * float3(0.300000012,0.300000012,0.300000012) + r17.xyz;
  r16.xyz = r18.xyz * float3(0.109999999,0.109999999,0.109999999) + r16.xyz;
  r5.z = dot(r16.xyz, r16.xyz);
  r5.z = rsqrt(r5.z);
  r16.xyz = r16.xyz * r5.zzz;
  r16.w = 1;
  r17.x = dot(r12.xyzw, r16.xyzw);
  r17.y = dot(r13.xyzw, r16.xyzw);
  r17.z = dot(r14.xyzw, r16.xyzw);
  r17.xyz = max(float3(0,0,0), r17.xyz);
  r5.z = saturate(dot(r16.xyz, -r2.xyz));
  r16.xyzw = float4(-1,-1,-1,1) * r8.xyzw;
  r12.x = dot(r12.xyzw, r16.xyzw);
  r12.y = dot(r13.xyzw, r16.xyzw);
  r12.z = dot(r14.xyzw, r16.xyzw);
  r12.xyz = max(float3(0,0,0), r12.xyz);
  r12.xyz = cb13[4].xxx * r12.xyz;
  r5.z = log2(r5.z);
  r5.z = cb13[4].y * r5.z;
  r5.z = exp2(r5.z);
  r12.xyz = r5.zzz * r17.xyz + r12.xyz;
  r11.xyz = r12.xyz * r3.www + r11.xyz;
  r5.z = t19.SampleLevel(s7_s, r10.xyz, 0).x;
  r5.z = -1 + r5.z;
  r1.w = r1.w * r5.z + 1;
  r5.z = saturate(dot(cb0[21].xyz, r8.xyz));
  r5.w = min(0.200000003, r3.w);
  r5.z = r5.z + r5.w;
  r5.z = min(1, r5.z);
  r5.w = saturate(dot(cb0[21].xyz, -r8.xyz));
  r2.x = saturate(dot(cb0[21].xyz, -r2.xyz));
  r2.x = log2(r2.x);
  r2.x = cb13[4].y * r2.x;
  r2.x = exp2(r2.x);
  r2.x = saturate(r5.w * cb13[4].x + r2.x);
  r2.x = r2.x * r3.w;
  r10.xyz = cb0[20].xyz * r5.xxx;
  r10.xyz = r10.xyz * r1.www;
  r10.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r12.xyz = r10.xyz * r5.zzz;
  r2.xyz = r10.xyz * r2.xxx + r12.xyz;
  r2.xyz = r11.xyz + r2.xyz;
  r10.xy = float2(1.5,-0.5) * r7.yx;
  r10.xy = saturate(r10.xy);
  r4.xyz = -r4.xyz * r4.www + r9.xyz;
  r4.xyz = r10.xxx * r4.xyz + r8.xyz;
  r3.w = dot(r4.xyz, r4.xyz);
  r3.w = rsqrt(r3.w);
  r9.xyz = r4.xyz * r3.www;
  r4.x = cmp(0.00100000005 < r1.w);
  r10.xzw = r1.xyz * r0.www + cb0[30].xyz;
  r0.w = dot(r10.xzw, r10.xzw);
  r0.w = rsqrt(r0.w);
  r10.xzw = r10.xzw * r0.www;
  r0.w = saturate(dot(r10.xzw, r8.xyz));
  r4.y = saturate(dot(r8.xyz, cb0[30].xyz));
  r4.w = saturate(dot(cb0[30].xyz, r10.xzw));
  r5.x = r5.x * r1.w;
  r5.z = saturate(-r7.z * 0.899999976 + 1);
  r5.z = r5.z * r5.z;
  r5.z = r5.z * r5.z;
  r4.w = 1 + -r4.w;
  r5.w = r7.w * 0.839999974 + 0.0399999991;
  r7.y = r4.w * r4.w;
  r7.y = r7.y * r7.y;
  r7.z = r7.y * r4.w;
  r4.w = -r4.w * r7.y + 1;
  r5.w = 1 / r5.w;
  r4.w = r5.w * r7.z + r4.w;
  r5.w = r0.w * r5.z + -r0.w;
  r0.w = r5.w * r0.w + 1;
  r0.w = r0.w * r0.w;
  r0.w = r5.z / r0.w;
  r0.w = r4.w * r0.w;
  r0.w = r5.x * r0.w;
  r0.w = 0.0397887304 * r0.w;
  r5.xzw = cb0[29].xyz * r0.www;
  r5.xzw = r5.xzw * r4.yyy;
  r4.xyw = r4.xxx ? r5.xzw : 0;
  r0.w = sqrt(r5.y);
  r5.x = 1 + -r0.w;
  r5.y = cb0[35].x + -cb0[34].x;
  r5.x = r5.x * r5.y + cb0[34].x;
  r5.y = t27.CalculateLevelOfDetail(s9_s, r9.xyz);
  r5.x = max(r5.y, r5.x);
  r5.xyzw = t27.SampleLevel(s9_s, r9.xyz, r5.x).xyzw;
  r7.yzw = r1.www * cb0[36].xyz + r15.xyz;
  r5.xyz = r7.yzw * r5.xyz;
  r7.x = saturate(r7.x);
  r2.w = max(9.99999975e-005, r2.w);
  r2.w = log2(r2.w);
  r7.y = cb0[38].x * r2.w;
  r7.y = exp2(r7.y);
  r7.z = r7.y + r6.y;
  r7.z = log2(r7.z);
  r7.z = r7.x * r7.z;
  r7.z = exp2(r7.z);
  r7.z = r7.z + r7.y;
  r7.z = saturate(-1 + r7.z);
  r7.z = saturate(cb0[37].x * r7.z + cb0[37].y);
  r7.z = r7.z + -r7.y;
  r7.y = r7.x * r7.z + r7.y;
  r5.w = -1 + r5.w;
  r1.w = saturate(r1.w * r5.w + 1);
  r0.w = 8 * r0.w;
  r9.w = r4.z * r3.w + 1;
  r3.w = dot(r9.xyw, r9.xyw);
  r3.w = rsqrt(r3.w);
  r7.zw = r9.xy * r3.ww;
  r7.zw = r7.zw * float2(0.5,0.5) + float2(0.5,0.5);
  r8.xyz = t28.SampleLevel(s9_s, r7.zw, r0.w).xyz;
  r0.w = cmp(-0.5 < cb0[44].x);
  r9.xyz = cb12[7].xyz + -v4.xyz;
  r3.w = dot(r9.xyz, r9.xyz);
  r3.w = sqrt(r3.w);
  r3.w = saturate(r3.w * cb0[42].x + cb0[42].y);
  r4.z = cb0[44].x + -cb0[43].x;
  r3.w = r3.w * r4.z + cb0[43].x;
  r0.w = r0.w ? r3.w : cb0[43].x;
  r2.w = cb0[40].x * r2.w;
  r2.w = exp2(r2.w);
  r3.w = r6.y + r2.w;
  r3.w = log2(r3.w);
  r3.w = r7.x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r2.w;
  r3.w = saturate(-1 + r3.w);
  r3.w = saturate(cb0[39].x * r3.w + cb0[39].y);
  r3.w = r3.w + -r2.w;
  r2.w = r7.x * r3.w + r2.w;
  r8.xyz = r8.xyz * r0.www;
  r8.xyz = r8.xyz * r2.www;
  r5.xyz = r5.xyz * r7.yyy + -r8.xyz;
  r5.xyz = r1.www * r5.xyz + r8.xyz;
  r0.w = 1 + -r7.x;
  r1.w = saturate(1 + -r6.y);
  r2.w = r1.w * r1.w;
  r2.w = r2.w * r2.w;
  r1.w = r2.w * r1.w;
  r0.w = r0.w + -r10.y;
  r0.w = saturate(r0.w + r0.w);
  r0.w = 1 + -r0.w;
  r2.w = r1.w * r0.w;
  r3.w = r7.x * 0.600000024 + 0.400000006;
  r0.w = -r1.w * r0.w + 1;
  r0.w = r3.w * r0.w;
  r7.xyz = r3.xyz * r0.www + r2.www;
  r5.xyz = r7.xyz * r5.xyz;
  r3.xyz = r3.xyz * r4.xyw + r5.xyz;
  r2.xyz = r6.xzw * r2.xyz + r3.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = sqrt(r0.w);
  r0.w = 0.015625 * r0.w;
  r0.w = min(1, r0.w);
  r0.z = sqrt(r0.w);
  r0.z = t21.SampleLevel(s6_s, r0.xyz, 0).x;
  r0.x = t20.SampleLevel(s6_s, r0.xy, 0).w;
  r0.x = -1 + r0.x;
  r0.x = r0.z * r0.x + 1;
  r0.yzw = cb8[7].xyz * r2.xyz;
  o0.xyz = r0.yzw * r0.xxx;
  o0.w = 0;
  return;
}