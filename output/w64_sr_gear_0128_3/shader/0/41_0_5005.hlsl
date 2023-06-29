// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:43 2023
Texture2D<float4> t26 : register(t26);

TextureCube<float4> t25 : register(t25);

TextureCube<float4> t24 : register(t24);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t9 : register(t9);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s11_s : register(s11);

SamplerState s10_s : register(s10);

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
  float4 cb8[36];
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
  float4 cb0[36];
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
  r2.w = v0.w * v0.w;
  r3.xyz = t3.Sample(s5_s, v3.xy).xyz;
  r3.w = r3.y + -r3.z;
  r3.w = cmp(r3.w < 0.00470588217);
  r3.z = r3.w ? r3.y : r3.z;
  r4.xyz = ddx_coarse(r3.xyz);
  r5.xyz = ddy_coarse(r3.xyz);
  r4.xy = r4.xx * r4.yz;
  r4.zw = r5.xx * r5.yz;
  r5.xy = cmp(abs(r4.zw) < abs(r4.xy));
  r4.xy = r5.xy ? r4.xy : r4.zw;
  r3.w = -0.5 + r3.x;
  r3.w = cmp(abs(r3.w) < 0.00470588217);
  r4.z = r3.x + r3.y;
  r4.z = -1 + r4.z;
  r4.z = cmp(abs(r4.z) < 0.00588235306);
  r4.xy = cmp(r4.xy < float2(0,0));
  r4.x = r4.x ? r4.z : 0;
  r4.z = 1 + -r3.y;
  r4.x = r4.x ? r4.z : r3.x;
  r4.z = r4.x + r3.z;
  r4.z = -1 + r4.z;
  r4.z = cmp(abs(r4.z) < 0.00588235306);
  r4.y = r4.y ? r4.z : 0;
  r4.z = 1 + -r3.z;
  r4.x = r4.y ? r4.z : r4.x;
  r3.x = r3.w ? r4.x : r3.x;
  r3.z = cmp(r3.z >= 0.5);
  if (r3.z != 0) {
    r3.zw = v3.zw * cb7[7].xy + cb7[7].zw;
    r3.z = t9.Sample(s1_s, r3.zw).z;
    r3.z = saturate(cb7[8].z + r3.z);
    r3.w = 4;
  } else {
    r3.y = cmp(r3.y >= 0.5);
    if (r3.y != 0) {
      r4.xy = v3.zw * cb7[4].xy + cb7[4].zw;
      r3.y = t7.Sample(s1_s, r4.xy).z;
      r3.z = saturate(cb7[5].z + r3.y);
      r3.w = 2;
    } else {
      r4.xy = v3.zw * cb7[1].xy + cb7[1].zw;
      r3.y = t5.Sample(s1_s, r4.xy).z;
      r3.z = saturate(cb7[2].z + r3.y);
      r3.w = 0;
    }
  }
  r3.x = cmp(r3.x >= 0.5);
  r3.y = (int)r3.w + 1;
  r3.x = r3.x ? r3.y : r3.w;
  r3.x = (int)r3.x * 9;
  r3.yw = saturate(cb7[r3.x+11].yw);
  r4.xy = saturate(cb7[r3.x+12].yz);
  r4.z = saturate(cb7[r3.x+17].w);
  r5.xyz = t0.Sample(s2_s, v3.xy).xyz;
  r6.xy = t1.Sample(s3_s, v3.xy).xy;
  r6.xy = r6.xy * cb0[6].xx + cb0[6].yy;
  r7.yzw = t2.Sample(s4_s, v3.xy).zyw;
  r4.w = cmp(r7.w >= 0.156862751);
  r4.w = r4.w ? 1.000000 : 0;
  r5.w = -0.188235298 + r7.w;
  r5.w = saturate(1.231884 * r5.w);
  r5.w = saturate(cb7[r3.x+15].y * r5.w + cb7[r3.x+15].x);
  r5.w = saturate(cb7[r3.x+15].w * r5.w + cb7[r3.x+15].z);
  r7.xy = saturate(float2(7.96875,7.96875) * r7.wy);
  r6.z = saturate(cb7[r3.x+13].y * r7.z + cb7[r3.x+13].x);
  r6.z = saturate(cb7[r3.x+13].w * r6.z + cb7[r3.x+13].z);
  r8.xyz = saturate(float3(4,4,4) * r5.xyz);
  r9.xyz = saturate(float3(-0.25,-0.25,-0.25) + r5.xyz);
  r10.xyz = saturate(cb7[r3.x+9].xyz * r8.xyz + r9.xyz);
  r3.z = -1 + r3.z;
  r3.y = r3.y * r3.z;
  r8.xyz = saturate(cb7[r3.x+14].xyz * r8.xyz + r9.xyz);
  r9.xyz = r10.xyz + -r8.xyz;
  r8.xyz = r5.www * r9.xyz + r8.xyz;
  r3.z = r6.z + -r7.z;
  r8.w = r5.w * r3.z + r7.z;
  r3.z = -r4.z + r3.w;
  r9.z = r5.w * r3.z + r4.z;
  r3.y = r5.w * r3.y + 1;
  r10.xyzw = cb0[5].xyzw + -cb0[4].xyzw;
  r10.xyzw = r7.yyyy * r10.xyzw + cb0[4].xyzw;
  r11.xyzw = saturate(float4(4,4,4,4) * r10.xyzw);
  r10.xyzw = saturate(float4(-0.25,-0.25,-0.25,-0.25) + r10.xyzw);
  r8.xyzw = r8.xyzw * r11.xyzw + r10.xyzw;
  r3.y = min(r8.w, r3.y);
  r3.z = cmp(9.99999975e-005 < r4.x);
  r3.w = -2 * r4.x;
  r4.x = r4.x * -2 + -0.200000003;
  r4.x = r4.x * r3.y;
  r3.w = r4.x * -5.00250101 + r3.w;
  r3.w = min(r3.y, r3.w);
  r9.xyw = r3.zzz ? r3.www : r3.yyy;
  r3.yzw = r8.xyz + -r5.xyz;
  r3.yzw = r4.www * r3.yzw + r5.xyz;
  r4.xz = r5.ww * r6.xy + -r6.xy;
  r6.xy = r4.ww * r4.xz + r6.xy;
  r8.xyzw = r9.xyzw + -r7.zzxz;
  r8.xyzw = r4.wwww * r8.wxyz + r7.zzzx;
  r4.x = r4.w * r4.y;
  r4.y = dot(r6.xy, r6.xy);
  r4.y = 1 + -r4.y;
  r4.y = max(0, r4.y);
  r6.z = sqrt(r4.y);
  r4.y = dot(r6.xyz, r6.xyz);
  r4.y = rsqrt(r4.y);
  r6.xyz = r6.xyz * r4.yyy;
  r7.xzw = v2.xyz * r6.yyy;
  r6.xyw = v1.xyz * r6.xxx + r7.xzw;
  r6.xyz = v0.xyz * r6.zzz + r6.xyw;
  r4.y = dot(r6.xyz, r6.xyz);
  r4.y = rsqrt(r4.y);
  r9.xyz = r6.xyz * r4.yyy;
  r4.z = dot(r2.xyz, r9.xyz);
  r5.w = r4.z * r4.z;
  r5.w = saturate(r5.w * cb0[8].x + cb0[8].y);
  r5.w = r5.w * r5.w;
  r5.w = cb0[9].y * r5.w + cb0[9].x;
  r5.w = saturate(r5.w + r7.y);
  r7.xyz = saturate(float3(4,4,4) * r3.yzw);
  r3.yzw = saturate(float3(-0.25,-0.25,-0.25) + r3.yzw);
  r3.xyz = cb7[r3.x+9].xyz * r7.xyz + r3.yzw;
  r3.xyz = r3.xyz + -r5.xyz;
  r3.xyz = r4.www * r3.xyz + r5.xyz;
  r5.xy = float2(1,1) + -r8.wx;
  r7.xyz = r5.xxx * r3.xyz;
  r3.xyz = r3.xyz * r8.www;
  r3.xyz = r5.xxx * float3(0.0399999991,0.0399999991,0.0399999991) + r3.xyz;
  r3.w = max(9.99999975e-005, r2.w);
  r3.w = log2(r3.w);
  r3.w = cb0[35].x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w * r3.w;
  r2.w = r2.w * r2.w;
  r10.xyz = -cb3[0].xyz + v4.xyz;
  r10.xyz = abs(r10.xyz) / cb3[6].xyz;
  r11.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r10.xyz = r10.xyz / r11.xyz;
  r4.w = max(r10.x, r10.y);
  r4.w = max(r4.w, r10.z);
  r4.w = max(0.50999999, r4.w);
  r4.w = log2(r4.w);
  r4.w = floor(r4.w);
  r10.z = 1 + r4.w;
  r4.w = cmp(r10.z < cb3[8].x);
  r5.x = exp2(r10.z);
  r11.xyz = cb3[6].xyz * r5.xxx;
  r12.xyz = cb3[0].xyz / r11.xyz;
  r12.xyz = floor(r12.xyz);
  r11.xyz = -r12.xyz * r11.xyz + v4.xyz;
  r11.xyz = r11.xyz / cb3[6].xyz;
  r11.xyz = r11.xyz / cb3[3].xyz;
  r11.xyz = r11.xyz / r5.xxx;
  r10.xy = float2(0.5,0.5);
  r10.xyz = r11.xyz * float3(0.5,0.5,0.5) + r10.xyz;
  r5.x = 0.5 + r10.z;
  r10.xy = cb3[2].xy * r10.xy;
  r10.w = r5.x * cb3[2].z + cb3[9].x;
  r10.xyz = float3(0.5,0.5,0.5) + r10.xyw;
  r10.xyz = r10.xyz / cb3[4].xyz;
  r11.xy = cb8[4].zw;
  r11.z = 0;
  r10.xyz = r4.www ? r10.xyz : r11.xyz;
  r12.xyzw = t16.SampleLevel(s9_s, r10.xyz, 0).xyzw;
  r13.xyzw = t17.SampleLevel(s9_s, r10.xyz, 0).xyzw;
  r14.xyzw = t18.SampleLevel(s9_s, r10.xyz, 0).xyzw;
  r1.w = cb3[15].x * r1.w;
  r1.w = saturate(r1.w * 1.5 + cb3[15].y);
  r4.w = cmp(r1.w < 1);
  if (r4.w != 0) {
    r15.xyzw = t16.SampleLevel(s9_s, r11.xyz, 0).xyzw;
    r16.xyzw = t17.SampleLevel(s9_s, r11.xyz, 0).xyzw;
    r11.xyzw = t18.SampleLevel(s9_s, r11.xyz, 0).xyzw;
    r17.xyzw = -r15.xyzw + r12.xyzw;
    r12.xyzw = r1.wwww * r17.xyzw + r15.xyzw;
    r15.xyzw = -r16.xyzw + r13.xyzw;
    r13.xyzw = r1.wwww * r15.xyzw + r16.xyzw;
    r15.xyzw = r14.xyzw + -r11.xyzw;
    r14.xyzw = r1.wwww * r15.xyzw + r11.xyzw;
  }
  r9.w = 1;
  r11.x = dot(r12.xyzw, r9.xyzw);
  r11.y = dot(r13.xyzw, r9.xyzw);
  r11.z = dot(r14.xyzw, r9.xyzw);
  r11.xyz = max(float3(0,0,0), r11.xyz);
  r4.w = dot(r12.xyz, r12.xyz);
  r4.w = rsqrt(r4.w);
  r15.xyz = r12.xyz * r4.www;
  r4.w = dot(r13.xyz, r13.xyz);
  r4.w = rsqrt(r4.w);
  r16.xyz = r13.xyz * r4.www;
  r4.w = dot(r14.xyz, r14.xyz);
  r4.w = rsqrt(r4.w);
  r17.xyz = r14.xyz * r4.www;
  r16.xyz = float3(0.589999974,0.589999974,0.589999974) * r16.xyz;
  r15.xyz = r15.xyz * float3(0.300000012,0.300000012,0.300000012) + r16.xyz;
  r15.xyz = r17.xyz * float3(0.109999999,0.109999999,0.109999999) + r15.xyz;
  r4.w = dot(r15.xyz, r15.xyz);
  r4.w = rsqrt(r4.w);
  r15.xyz = r15.xyz * r4.www;
  r15.w = 1;
  r16.x = dot(r12.xyzw, r15.xyzw);
  r16.y = dot(r13.xyzw, r15.xyzw);
  r16.z = dot(r14.xyzw, r15.xyzw);
  r16.xyz = max(float3(0,0,0), r16.xyz);
  r4.w = saturate(dot(r15.xyz, -r2.xyz));
  r17.xyzw = float4(-1,-1,-1,1) * r9.xyzw;
  r18.x = dot(r12.xyzw, r17.xyzw);
  r18.y = dot(r13.xyzw, r17.xyzw);
  r18.z = dot(r14.xyzw, r17.xyzw);
  r17.xyz = max(float3(0,0,0), r18.xyz);
  r17.xyz = cb13[4].xxx * r17.xyz;
  r4.w = log2(r4.w);
  r4.w = cb13[4].y * r4.w;
  r4.w = exp2(r4.w);
  r16.xyz = r4.www * r16.xyz + r17.xyz;
  r11.xyz = r16.xyz * r4.xxx + r11.xyz;
  r4.w = t19.SampleLevel(s8_s, r10.xyz, 0).x;
  r4.w = -1 + r4.w;
  r1.w = r1.w * r4.w + 1;
  r4.w = saturate(dot(cb0[13].xyz, r9.xyz));
  r5.x = min(0.200000003, r4.x);
  r4.w = r5.x + r4.w;
  r4.w = min(1, r4.w);
  r5.x = saturate(dot(cb0[13].xyz, -r9.xyz));
  r5.z = saturate(dot(cb0[13].xyz, -r2.xyz));
  r5.z = log2(r5.z);
  r5.z = cb13[4].y * r5.z;
  r5.z = exp2(r5.z);
  r5.x = saturate(r5.x * cb13[4].x + r5.z);
  r4.x = r5.x * r4.x;
  r10.xyz = cb0[12].xyz * r3.www;
  r10.xyz = r10.xyz * r1.www;
  r10.xyz = float3(0.318309873,0.318309873,0.318309873) * r10.xyz;
  r16.xyz = r10.xyz * r4.www;
  r10.xyz = r10.xyz * r4.xxx + r16.xyz;
  r10.xyz = r11.xyz + r10.xyz;
  r1.w = r4.z + r4.z;
  r2.xyz = r9.xyz * r1.www + -r2.xyz;
  r11.xy = float2(1.5,-0.5) * r8.yx;
  r11.xy = saturate(r11.xy);
  r2.xyz = -r6.xyz * r4.yyy + r2.xyz;
  r2.xyz = r11.xxx * r2.xyz + r9.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r6.xyz = r2.xyz * r1.www;
  r16.xyz = float3(0.666666746,0.666666746,0.666666746) * r15.xyz;
  r16.w = 0.333333373;
  r12.x = dot(r12.xyzw, r16.xyzw);
  r12.y = dot(r13.xyzw, r16.xyzw);
  r12.z = dot(r14.xyzw, r16.xyzw);
  r2.x = dot(r16.xyzw, r16.xyzw);
  r4.xyw = r12.xyz / r2.xxx;
  r4.xyw = max(float3(0,0,0), r4.xyw);
  r11.xzw = r1.xyz * r0.www + r15.xyz;
  r0.w = dot(r11.xzw, r11.xzw);
  r0.w = rsqrt(r0.w);
  r11.xzw = r11.xzw * r0.www;
  r0.w = saturate(dot(r11.xzw, r9.xyz));
  r2.x = saturate(dot(r9.xyz, r15.xyz));
  r2.y = saturate(dot(r15.xyz, r11.xzw));
  r3.w = saturate(-r8.z * 0.899999976 + 1);
  r3.w = r3.w * r3.w;
  r3.w = r3.w * r3.w;
  r2.y = 1 + -r2.y;
  r5.x = r8.w * 0.839999974 + 0.0399999991;
  r5.z = r2.y * r2.y;
  r5.z = r5.z * r5.z;
  r7.w = r5.z * r2.y;
  r2.y = -r2.y * r5.z + 1;
  r5.x = 1 / r5.x;
  r2.y = r5.x * r7.w + r2.y;
  r5.x = r0.w * r3.w + -r0.w;
  r0.w = r5.x * r0.w + 1;
  r0.w = r0.w * r0.w;
  r0.w = r3.w / r0.w;
  r0.w = r2.y * r0.w;
  r0.w = 0.0397887304 * r0.w;
  r4.xyw = r4.xyw * r0.www;
  r4.xyw = r4.xyw * r2.xxx;
  r0.w = sqrt(r5.y);
  r2.x = 8 * r0.w;
  r8.x = saturate(r8.x);
  r2.y = max(9.99999975e-005, r2.w);
  r2.y = log2(r2.y);
  r2.w = cb0[26].x * r2.y;
  r2.w = exp2(r2.w);
  r3.w = r4.z + r2.w;
  r3.w = log2(r3.w);
  r3.w = r8.x * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r2.w;
  r3.w = saturate(-1 + r3.w);
  r3.w = saturate(cb0[25].x * r3.w + cb0[25].y);
  r3.w = r3.w + -r2.w;
  r2.w = r8.x * r3.w + r2.w;
  r3.w = cmp(-0.5 < cb0[31].x);
  r5.xyz = cb12[7].xyz + -v4.xyz;
  r5.x = dot(r5.xyz, r5.xyz);
  r5.x = sqrt(r5.x);
  r5.x = saturate(r5.x * cb0[28].x + cb0[28].y);
  r5.y = cb0[31].x + -cb0[30].x;
  r5.x = r5.x * r5.y + cb0[30].x;
  r3.w = r3.w ? r5.x : cb0[30].x;
  r6.w = r2.z * r1.w + 1;
  r1.w = dot(r6.xyw, r6.xyw);
  r1.w = rsqrt(r1.w);
  r5.xy = r6.xy * r1.ww;
  r5.xy = r5.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r5.xyz = t26.SampleLevel(s10_s, r5.xy, r2.x).xyz;
  r2.xzw = r5.xyz * r2.www;
  r5.xyz = r2.xzw * r3.www;
  r1.w = cb8[25].w * r0.w;
  r9.xyzw = t25.SampleLevel(s11_s, r6.xyz, r1.w).xyzw;
  r1.w = cmp(cb8[29].w < 0.5);
  r8.yzw = r9.xyz * r9.xyz;
  r8.yzw = r1.www ? r8.yzw : r9.xyz;
  r9.xyz = cb8[33].xyz * v4.yyy;
  r9.xyz = cb8[32].xyz * v4.xxx + r9.xyz;
  r9.xyz = cb8[34].xyz * v4.zzz + r9.xyz;
  r9.xyz = cb8[35].xyz + r9.xyz;
  r1.w = cb0[23].x * r2.y;
  r1.w = exp2(r1.w);
  r2.y = r4.z + r1.w;
  r2.y = log2(r2.y);
  r2.y = r8.x * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.y + r1.w;
  r2.y = saturate(-1 + r2.y);
  r2.y = saturate(cb0[22].x * r2.y + cb0[22].y);
  r2.y = r2.y + -r1.w;
  r1.w = r8.x * r2.y + r1.w;
  r2.y = cb8[24].w * r1.w;
  r11.xzw = cb8[31].xyz + cb8[30].xyz;
  r11.xzw = r11.xzw * r2.yyy;
  r8.yzw = r11.xzw * r8.yzw;
  r11.xzw = saturate(-r9.xyz);
  r11.xzw = saturate(r11.xzw * cb8[22].xyz + -cb8[24].xyz);
  r11.xzw = float3(1,1,1) + -r11.xzw;
  r12.xyz = saturate(r9.xyz);
  r12.xyz = saturate(r12.xyz * cb8[23].xyz + -cb8[25].xyz);
  r12.xyz = float3(1,1,1) + -r12.xyz;
  r2.y = r12.x * r12.y;
  r2.y = r2.y * r12.z;
  r2.y = r2.y * r11.x;
  r2.y = r2.y * r11.z;
  r2.y = r2.y * r11.w;
  r6.w = cmp(0 < cb8[27].w);
  r9.xyz = log2(abs(r9.xyz));
  r9.xyz = cb8[27].www * r9.xyz;
  r9.xyz = exp2(r9.xyz);
  r7.w = dot(r9.xyz, cb8[27].xyz);
  r7.w = log2(r7.w);
  r7.w = cb8[28].x * r7.w;
  r7.w = exp2(r7.w);
  r7.w = saturate(cb8[28].y * r7.w + cb8[28].z);
  r7.w = 1 + -r7.w;
  r7.w = r7.w * r2.y;
  r2.y = r6.w ? r7.w : r2.y;
  r2.y = r9.w * r2.y;
  r6.w = cmp(0 < cb8[29].y);
  r9.xyz = cb0[32].xxx * r8.yzw;
  r8.yzw = cb0[29].xxx * r8.yzw;
  r8.yzw = r6.www ? r9.xyz : r8.yzw;
  r2.y = cb8[28].w * r2.y;
  r2.xzw = -r2.xzw * r3.www + r8.yzw;
  r2.xyz = r2.yyy * r2.xzw + r5.xyz;
  r0.w = cb8[11].w * r0.w;
  r6.xyzw = t24.SampleLevel(s11_s, r6.xyz, r0.w).xyzw;
  r0.w = cmp(cb8[15].w < 0.5);
  r5.xyz = r6.xyz * r6.xyz;
  r5.xyz = r0.www ? r5.xyz : r6.xyz;
  r6.xyz = cb8[19].xyz * v4.yyy;
  r6.xyz = cb8[18].xyz * v4.xxx + r6.xyz;
  r6.xyz = cb8[20].xyz * v4.zzz + r6.xyz;
  r6.xyz = cb8[21].xyz + r6.xyz;
  r0.w = cb8[10].w * r1.w;
  r8.yzw = cb8[17].xyz + cb8[16].xyz;
  r8.yzw = r8.yzw * r0.www;
  r5.xyz = r8.yzw * r5.xyz;
  r8.yzw = saturate(-r6.xyz);
  r8.yzw = saturate(r8.yzw * cb8[8].xyz + -cb8[10].xyz);
  r8.yzw = float3(1,1,1) + -r8.yzw;
  r9.xyz = saturate(r6.xyz);
  r9.xyz = saturate(r9.xyz * cb8[9].xyz + -cb8[11].xyz);
  r9.xyz = float3(1,1,1) + -r9.xyz;
  r0.w = r9.x * r9.y;
  r0.w = r0.w * r9.z;
  r0.w = r0.w * r8.y;
  r0.w = r0.w * r8.z;
  r0.w = r0.w * r8.w;
  r1.w = cmp(0 < cb8[13].w);
  r6.xyz = log2(abs(r6.xyz));
  r6.xyz = cb8[13].www * r6.xyz;
  r6.xyz = exp2(r6.xyz);
  r2.w = dot(r6.xyz, cb8[13].xyz);
  r2.w = log2(r2.w);
  r2.w = cb8[14].x * r2.w;
  r2.w = exp2(r2.w);
  r2.w = saturate(cb8[14].y * r2.w + cb8[14].z);
  r2.w = 1 + -r2.w;
  r2.w = r2.w * r0.w;
  r0.w = r1.w ? r2.w : r0.w;
  r0.w = r6.w * r0.w;
  r1.w = cmp(0 < cb8[15].y);
  r6.xyz = cb0[32].xxx * r5.xyz;
  r5.xyz = cb0[29].xxx * r5.xyz;
  r5.xyz = r1.www ? r6.xyz : r5.xyz;
  r0.w = cb8[14].w * r0.w;
  r5.xyz = r5.xyz + -r2.xyz;
  r2.xyz = r0.www * r5.xyz + r2.xyz;
  r0.w = 1 + -r8.x;
  r1.w = saturate(1 + -r4.z);
  r2.w = r1.w * r1.w;
  r2.w = r2.w * r2.w;
  r1.w = r2.w * r1.w;
  r0.w = r0.w + -r11.y;
  r0.w = saturate(r0.w + r0.w);
  r0.w = 1 + -r0.w;
  r2.w = r1.w * r0.w;
  r3.w = r8.x * 0.600000024 + 0.400000006;
  r0.w = -r1.w * r0.w + 1;
  r0.w = r3.w * r0.w;
  r5.xyz = r3.xyz * r0.www + r2.www;
  r0.w = max(0.00100000005, r5.w);
  r0.w = 1 / r0.w;
  r5.xyz = r5.xyz * r0.www;
  r4.xyz = r4.xyw * r0.www;
  r2.xyz = r5.xyz * r2.xyz;
  r2.xyz = r3.xyz * r4.xyz + r2.xyz;
  r2.xyz = r7.xyz * r10.xyz + r2.xyz;
  r2.xyz = cb13[1].xxx * r2.xyz;
  r0.w = dot(-r1.xyz, -r1.xyz);
  r0.w = sqrt(r0.w);
  r1.x = 0.015625 * r0.w;
  r1.x = min(1, r1.x);
  r0.z = sqrt(r1.x);
  r0.z = t21.SampleLevel(s7_s, r0.xyz, 0).x;
  r1.xyzw = t20.SampleLevel(s7_s, r0.xy, 0).xyzw;
  r1.xyzw = float4(-0,-0,-0,-1) + r1.xyzw;
  r1.xyzw = r0.zzzz * r1.xyzw + float4(0,0,0,1);
  r0.z = saturate(r0.w * cb0[10].x + cb0[10].y);
  r3.xyzw = t11.Sample(s6_s, r0.xy).xyzw;
  r4.xyzw = t13.Sample(s6_s, r0.xy).xyzw;
  r3.xyzw = -r4.xyzw + r3.xyzw;
  r0.xyzw = r0.zzzz * r3.xyzw + r4.xyzw;
  r0.xyz = cb8[5].xyz * r0.xyz;
  r0.xyz = r0.www * cb8[6].xyz + r0.xyz;
  r2.xyz = cb8[7].xyz * r2.xyz;
  r1.xyz = r2.xyz * r1.www + r1.xyz;
  r0.xyz = r0.xyz * cb13[1].xxx + r1.xyz;
  o0.xyz = r0.xyz * r5.www;
  o0.w = r5.w;
  return;
}