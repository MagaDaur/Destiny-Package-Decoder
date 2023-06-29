// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:40 2023
TextureCube<float4> t25 : register(t25);

TextureCube<float4> t24 : register(t24);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t13 : register(t13);

Texture2D<float4> t11 : register(t11);

Texture2D<float4> t5 : register(t5);

Texture2D<float4> t4 : register(t4);

SamplerState s8_s : register(s8);

SamplerState s7_s : register(s7);

SamplerState s6_s : register(s6);

SamplerState s5_s : register(s5);

SamplerState s4_s : register(s4);

SamplerState s3_s : register(s3);

SamplerState s2_s : register(s2);

SamplerState s1_s : register(s1);

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
  float4 cb13[2];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[71];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
  uint4 bitmask, uiDest;
  float4 fDest;

  r0.xy = cb12[12].zw * v5.xy;
  r1.xyz = cb12[14].xyz + -v4.xyz;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r2.xyz = r1.xyz * r0.www;
  r3.xyz = -cb12[14].xyz + v4.xyz;
  r1.w = dot(-cb12[6].xyz, r3.xyz);
  r2.w = dot(v0.xyz, v0.xyz);
  r2.w = rsqrt(r2.w);
  r4.xyz = v0.xyz * r2.www;
  r3.w = dot(r2.xyz, v0.xyz);
  r3.w = r3.w * r3.w;
  r3.w = r3.w * cb0[12].x + cb0[12].y;
  r3.w = r3.w * cb0[13].x + cb0[13].y;
  r5.x = cmp(r3.w < cb0[20].x);
  r5.y = cmp(r3.w < cb0[21].x);
  r5.z = cmp(r3.w >= cb0[20].x);
  r5.y = r5.z ? r5.y : 0;
  r5.z = cmp(r3.w < cb0[22].x);
  r5.w = cmp(r3.w >= cb0[21].x);
  r5.z = r5.w ? r5.z : 0;
  r5.w = cmp(r3.w >= cb0[22].x);
  r6.x = -cb0[24].x + r3.w;
  r6.x = saturate(cb0[24].y * r6.x);
  r6.yzw = cb0[15].xyz + -cb0[14].xyz;
  r6.xyz = r6.xxx * r6.yzw + cb0[14].xyz;
  r6.w = -cb0[25].x + r3.w;
  r6.w = saturate(cb0[25].y * r6.w);
  r7.xyz = cb0[16].xyz + -cb0[15].xyz;
  r7.xyz = r6.www * r7.xyz + cb0[15].xyz;
  r6.w = -cb0[26].x + r3.w;
  r6.w = saturate(cb0[26].y * r6.w);
  r8.xyz = cb0[17].xyz + -cb0[16].xyz;
  r8.xyz = r6.www * r8.xyz + cb0[16].xyz;
  r3.w = -cb0[27].x + r3.w;
  r3.w = saturate(cb0[27].y * r3.w);
  r9.xyz = cb0[18].xyz + -cb0[17].xyz;
  r9.xyz = r3.www * r9.xyz + cb0[17].xyz;
  r6.xyz = r5.xxx ? r6.xyz : 0;
  r6.xyz = r5.yyy ? r7.xyz : r6.xyz;
  r5.xyz = r5.zzz ? r8.xyz : r6.xyz;
  r5.xyz = r5.www ? r9.xyz : r5.xyz;
  r5.xyz = cb0[28].xyz * r5.xyz;
  r6.xy = -cb0[29].xy + v3.xy;
  r3.w = dot(r6.xy, r6.xy);
  r3.w = sqrt(r3.w);
  r3.w = saturate(r3.w * cb0[31].x + cb0[31].y);
  r6.xyz = cb0[33].xyz * r3.www + cb0[32].xyz;
  r5.xyz = r5.xyz * cb0[34].xxx + r6.xyz;
  r6.xy = -cb0[35].xy + v3.xy;
  r3.w = dot(r6.xy, r6.xy);
  r3.w = sqrt(r3.w);
  r3.w = saturate(r3.w * cb0[37].x + cb0[37].y);
  r3.w = cb0[38].x + r3.w;
  r6.xy = -cb0[39].xy + v3.xy;
  r5.w = dot(r6.xy, r6.xy);
  r5.w = sqrt(r5.w);
  r5.w = saturate(r5.w * cb0[41].x + cb0[41].y);
  r5.w = saturate(r5.w * cb0[42].x + cb0[42].y);
  r3.w = r5.w * r3.w;
  r3.w = saturate(cb0[43].x * r3.w);
  r5.w = saturate(cb0[11].x);
  r6.x = cb0[8].x + 128.5;
  r6.x = 0.00390625 * r6.x;
  r6.y = cmp(cb0[9].x >= cb0[10].x);
  r6.x = r6.y ? r6.x : -1;
  r5.xyz = cb0[70].xxx * r5.xyz;
  r6.y = dot(r4.xyz, r2.xyz);
  r6.z = r6.x * 255 + -127.5;
  r7.y = saturate(0.0078125 * r6.z);
  r6.z = r6.y * r6.y;
  r7.x = min(1, r6.z);
  r7.xyzw = t5.SampleLevel(s8_s, r7.xy, 0).xyzw;
  r7.xyzw = r7.xyzw * r7.xyzw;
  r6.z = -cb0[10].x + 1;
  r6.w = 0.0399999991 * r6.z;
  r6.x = cmp(0.5 < r6.x);
  r8.xyz = r7.www * r5.xyz;
  r5.xyz = r6.xxx ? r8.xyz : r5.xyz;
  r7.xyz = r6.xxx ? r7.xyz : r6.www;
  r6.xzw = r5.xyz * r6.zzz;
  r5.xyz = r5.xyz * cb0[10].xxx + r7.xyz;
  r7.x = max(cb8[6].w, 9.99999975e-005);
  r7.x = log2(r7.x);
  r7.x = cb0[68].x * r7.x;
  r7.x = exp2(r7.x);
  r7.x = r7.x * r7.x;
  r7.y = cb8[6].w * cb8[6].w;
  r8.xyz = -cb3[0].xyz + v4.xyz;
  r8.xyz = abs(r8.xyz) / cb3[6].xyz;
  r9.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r8.xyz = r8.xyz / r9.xyz;
  r7.z = max(r8.x, r8.y);
  r7.z = max(r7.z, r8.z);
  r7.z = max(0.50999999, r7.z);
  r7.z = log2(r7.z);
  r7.z = floor(r7.z);
  r8.z = 1 + r7.z;
  r7.z = cmp(r8.z < cb3[8].x);
  r7.w = exp2(r8.z);
  r9.xyz = cb3[6].xyz * r7.www;
  r10.xyz = cb3[0].xyz / r9.xyz;
  r10.xyz = floor(r10.xyz);
  r9.xyz = -r10.xyz * r9.xyz + v4.xyz;
  r9.xyz = r9.xyz / cb3[6].xyz;
  r9.xyz = r9.xyz / cb3[3].xyz;
  r9.xyz = r9.xyz / r7.www;
  r8.xy = float2(0.5,0.5);
  r8.xyz = r9.xyz * float3(0.5,0.5,0.5) + r8.xyz;
  r7.w = 0.5 + r8.z;
  r8.xy = cb3[2].xy * r8.xy;
  r8.w = r7.w * cb3[2].z + cb3[9].x;
  r8.xyz = float3(0.5,0.5,0.5) + r8.xyw;
  r8.xyz = r8.xyz / cb3[4].xyz;
  r9.xy = cb8[4].zw;
  r9.z = 0;
  r8.xyz = r7.zzz ? r8.xyz : r9.xyz;
  r10.xyzw = t16.SampleLevel(s5_s, r8.xyz, 0).xyzw;
  r11.xyzw = t17.SampleLevel(s5_s, r8.xyz, 0).xyzw;
  r12.xyzw = t18.SampleLevel(s5_s, r8.xyz, 0).xyzw;
  r1.w = cb3[15].x * r1.w;
  r1.w = saturate(r1.w * 1.5 + cb3[15].y);
  r7.z = cmp(r1.w < 1);
  if (r7.z != 0) {
    r13.xyzw = t16.SampleLevel(s5_s, r9.xyz, 0).xyzw;
    r14.xyzw = t17.SampleLevel(s5_s, r9.xyz, 0).xyzw;
    r9.xyzw = t18.SampleLevel(s5_s, r9.xyz, 0).xyzw;
    r15.xyzw = -r13.xyzw + r10.xyzw;
    r10.xyzw = r1.wwww * r15.xyzw + r13.xyzw;
    r13.xyzw = -r14.xyzw + r11.xyzw;
    r11.xyzw = r1.wwww * r13.xyzw + r14.xyzw;
    r13.xyzw = r12.xyzw + -r9.xyzw;
    r12.xyzw = r1.wwww * r13.xyzw + r9.xyzw;
  }
  r4.w = 1;
  r9.x = dot(r10.xyzw, r4.xyzw);
  r9.y = dot(r11.xyzw, r4.xyzw);
  r9.z = dot(r12.xyzw, r4.xyzw);
  r9.xyz = max(float3(0,0,0), r9.xyz);
  r4.w = t19.SampleLevel(s4_s, r8.xyz, 0).x;
  r4.w = -1 + r4.w;
  r1.w = r1.w * r4.w + 1;
  r4.w = saturate(dot(cb0[46].xyz, r4.xyz));
  r7.xzw = cb0[45].xyz * r7.xxx;
  r7.xzw = r7.xzw * r1.www;
  r7.xzw = r7.xzw * r4.www;
  r7.xzw = r7.xzw * float3(0.318309873,0.318309873,0.318309873) + r9.xyz;
  r1.w = r6.y + r6.y;
  r2.xyz = r4.xyz * r1.www + -r2.xyz;
  r1.w = 1.5 * r5.w;
  r1.w = min(1, r1.w);
  r2.xyz = -v0.xyz * r2.www + r2.xyz;
  r2.xyz = r1.www * r2.xyz + r4.xyz;
  r1.w = dot(r2.xyz, r2.xyz);
  r1.w = rsqrt(r1.w);
  r8.xyz = r2.xyz * r1.www;
  r2.x = dot(r10.xyz, r10.xyz);
  r2.x = rsqrt(r2.x);
  r2.xyw = r10.xyz * r2.xxx;
  r4.w = dot(r11.xyz, r11.xyz);
  r4.w = rsqrt(r4.w);
  r9.xyz = r11.xyz * r4.www;
  r4.w = dot(r12.xyz, r12.xyz);
  r4.w = rsqrt(r4.w);
  r13.xyz = r12.xyz * r4.www;
  r9.xyz = float3(0.589999974,0.589999974,0.589999974) * r9.xyz;
  r2.xyw = r2.xyw * float3(0.300000012,0.300000012,0.300000012) + r9.xyz;
  r2.xyw = r13.xyz * float3(0.109999999,0.109999999,0.109999999) + r2.xyw;
  r4.w = dot(r2.xyw, r2.xyw);
  r4.w = rsqrt(r4.w);
  r2.xyw = r4.www * r2.xyw;
  r9.xyz = float3(0.666666746,0.666666746,0.666666746) * r2.xyw;
  r9.w = 0.333333373;
  r10.x = dot(r10.xyzw, r9.xyzw);
  r10.y = dot(r11.xyzw, r9.xyzw);
  r10.z = dot(r12.xyzw, r9.xyzw);
  r4.w = dot(r9.xyzw, r9.xyzw);
  r9.xyz = r10.xyz / r4.www;
  r9.xyz = max(float3(0,0,0), r9.xyz);
  r1.xyz = r1.xyz * r0.www + r2.xyw;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = saturate(dot(r1.xyz, r4.xyz));
  r4.x = saturate(dot(r4.xyz, r2.xyw));
  r1.x = saturate(dot(r2.xyw, r1.xyz));
  r1.y = -r5.w * 0.899999976 + 1;
  r1.y = r1.y * r1.y;
  r1.y = r1.y * r1.y;
  r1.x = 1 + -r1.x;
  r1.z = cb0[10].x * 0.839999974 + 0.0399999991;
  r2.x = r1.x * r1.x;
  r2.x = r2.x * r2.x;
  r2.y = r2.x * r1.x;
  r1.x = -r1.x * r2.x + 1;
  r1.z = 1 / r1.z;
  r1.x = r1.z * r2.y + r1.x;
  r1.z = r0.w * r1.y + -r0.w;
  r0.w = r1.z * r0.w + 1;
  r0.w = r0.w * r0.w;
  r0.w = r1.y / r0.w;
  r0.w = r1.x * r0.w;
  r0.w = 0.0397887304 * r0.w;
  r1.xyz = r9.xyz * r0.www;
  r1.xyz = r1.xyz * r4.xxx;
  r0.w = 1 + -r5.w;
  r2.x = sqrt(r0.w);
  r2.y = 8 * r2.x;
  r2.w = max(9.99999975e-005, r7.y);
  r2.w = log2(r2.w);
  r4.x = cb0[59].x * r2.w;
  r4.x = exp2(r4.x);
  r4.y = r6.y + r4.x;
  r4.y = log2(r4.y);
  r4.y = r5.w * r4.y;
  r4.y = exp2(r4.y);
  r4.y = r4.y + r4.x;
  r4.y = saturate(-1 + r4.y);
  r4.y = saturate(cb0[58].x * r4.y + cb0[58].y);
  r4.y = r4.y + -r4.x;
  r4.x = r5.w * r4.y + r4.x;
  r4.y = cmp(-0.5 < cb0[64].x);
  r9.xyz = cb12[7].xyz + -v4.xyz;
  r4.z = dot(r9.xyz, r9.xyz);
  r4.z = sqrt(r4.z);
  r4.z = saturate(r4.z * cb0[61].x + cb0[61].y);
  r4.w = cb0[64].x + -cb0[63].x;
  r4.z = r4.z * r4.w + cb0[63].x;
  r4.y = r4.y ? r4.z : cb0[63].x;
  r8.w = r2.z * r1.w + 1;
  r1.w = dot(r8.xyw, r8.xyw);
  r1.w = rsqrt(r1.w);
  r4.zw = r8.xy * r1.ww;
  r4.zw = r4.zw * float2(0.5,0.5) + float2(0.5,0.5);
  r9.xyz = t4.SampleLevel(s6_s, r4.zw, r2.y).xyz;
  r4.xzw = r9.xyz * r4.xxx;
  r9.xyz = r4.xzw * r4.yyy;
  r1.w = cb8[25].w * r2.x;
  r10.xyzw = t25.SampleLevel(s7_s, r8.xyz, r1.w).xyzw;
  r1.w = cmp(cb8[29].w < 0.5);
  r11.xyz = r10.xyz * r10.xyz;
  r10.xyz = r1.www ? r11.xyz : r10.xyz;
  r11.xyz = cb8[33].xyz * v4.yyy;
  r11.xyz = cb8[32].xyz * v4.xxx + r11.xyz;
  r11.xyz = cb8[34].xyz * v4.zzz + r11.xyz;
  r11.xyz = cb8[35].xyz + r11.xyz;
  r1.w = cb0[56].x * r2.w;
  r1.w = exp2(r1.w);
  r2.y = r6.y + r1.w;
  r2.y = log2(r2.y);
  r2.y = r5.w * r2.y;
  r2.y = exp2(r2.y);
  r2.y = r2.y + r1.w;
  r2.y = saturate(-1 + r2.y);
  r2.y = saturate(cb0[55].x * r2.y + cb0[55].y);
  r2.y = r2.y + -r1.w;
  r1.w = r5.w * r2.y + r1.w;
  r2.y = cb8[24].w * r1.w;
  r12.xyz = cb8[31].xyz + cb8[30].xyz;
  r2.yzw = r12.xyz * r2.yyy;
  r2.yzw = r10.xyz * r2.yzw;
  r10.xyz = saturate(-r11.xyz);
  r10.xyz = saturate(r10.xyz * cb8[22].xyz + -cb8[24].xyz);
  r10.xyz = float3(1,1,1) + -r10.xyz;
  r12.xyz = saturate(r11.xyz);
  r12.xyz = saturate(r12.xyz * cb8[23].xyz + -cb8[25].xyz);
  r12.xyz = float3(1,1,1) + -r12.xyz;
  r7.y = r12.x * r12.y;
  r7.y = r7.y * r12.z;
  r7.y = r7.y * r10.x;
  r7.y = r7.y * r10.y;
  r7.y = r7.y * r10.z;
  r8.w = cmp(0 < cb8[27].w);
  r10.xyz = log2(abs(r11.xyz));
  r10.xyz = cb8[27].www * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r9.w = dot(r10.xyz, cb8[27].xyz);
  r9.w = log2(r9.w);
  r9.w = cb8[28].x * r9.w;
  r9.w = exp2(r9.w);
  r9.w = saturate(cb8[28].y * r9.w + cb8[28].z);
  r9.w = 1 + -r9.w;
  r9.w = r9.w * r7.y;
  r7.y = r8.w ? r9.w : r7.y;
  r7.y = r10.w * r7.y;
  r8.w = cmp(0 < cb8[29].y);
  r10.xyz = cb0[65].xxx * r2.yzw;
  r2.yzw = cb0[62].xxx * r2.yzw;
  r2.yzw = r8.www ? r10.xyz : r2.yzw;
  r7.y = cb8[28].w * r7.y;
  r2.yzw = -r4.xzw * r4.yyy + r2.yzw;
  r2.yzw = r7.yyy * r2.yzw + r9.xyz;
  r2.x = cb8[11].w * r2.x;
  r4.xyzw = t24.SampleLevel(s7_s, r8.xyz, r2.x).xyzw;
  r2.x = cmp(cb8[15].w < 0.5);
  r8.xyz = r4.xyz * r4.xyz;
  r4.xyz = r2.xxx ? r8.xyz : r4.xyz;
  r8.xyz = cb8[19].xyz * v4.yyy;
  r8.xyz = cb8[18].xyz * v4.xxx + r8.xyz;
  r8.xyz = cb8[20].xyz * v4.zzz + r8.xyz;
  r8.xyz = cb8[21].xyz + r8.xyz;
  r1.w = cb8[10].w * r1.w;
  r9.xyz = cb8[17].xyz + cb8[16].xyz;
  r9.xyz = r9.xyz * r1.www;
  r4.xyz = r9.xyz * r4.xyz;
  r9.xyz = saturate(-r8.xyz);
  r9.xyz = saturate(r9.xyz * cb8[8].xyz + -cb8[10].xyz);
  r9.xyz = float3(1,1,1) + -r9.xyz;
  r10.xyz = saturate(r8.xyz);
  r10.xyz = saturate(r10.xyz * cb8[9].xyz + -cb8[11].xyz);
  r10.xyz = float3(1,1,1) + -r10.xyz;
  r1.w = r10.x * r10.y;
  r1.w = r1.w * r10.z;
  r1.w = r1.w * r9.x;
  r1.w = r1.w * r9.y;
  r1.w = r1.w * r9.z;
  r2.x = cmp(0 < cb8[13].w);
  r8.xyz = log2(abs(r8.xyz));
  r8.xyz = cb8[13].www * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r7.y = dot(r8.xyz, cb8[13].xyz);
  r7.y = log2(r7.y);
  r7.y = cb8[14].x * r7.y;
  r7.y = exp2(r7.y);
  r7.y = saturate(cb8[14].y * r7.y + cb8[14].z);
  r7.y = 1 + -r7.y;
  r7.y = r7.y * r1.w;
  r1.w = r2.x ? r7.y : r1.w;
  r1.w = r4.w * r1.w;
  r2.x = cmp(0 < cb8[15].y);
  r8.xyz = cb0[65].xxx * r4.xyz;
  r4.xyz = cb0[62].xxx * r4.xyz;
  r4.xyz = r2.xxx ? r8.xyz : r4.xyz;
  r1.w = cb8[14].w * r1.w;
  r4.xyz = r4.xyz + -r2.yzw;
  r2.xyz = r1.www * r4.xyz + r2.yzw;
  r1.w = saturate(1 + -r6.y);
  r2.w = r1.w * r1.w;
  r2.w = r2.w * r2.w;
  r1.w = r2.w * r1.w;
  r0.w = r0.w + r0.w;
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r2.w = r1.w * r0.w;
  r4.x = r5.w * 0.600000024 + 0.400000006;
  r0.w = -r1.w * r0.w + 1;
  r0.w = r4.x * r0.w;
  r4.xyz = r5.xyz * r0.www + r2.www;
  r0.w = max(0.00100000005, r3.w);
  r0.w = 1 / r0.w;
  r4.xyz = r4.xyz * r0.www;
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r4.xyz * r2.xyz;
  r1.xyz = r5.xyz * r1.xyz + r2.xyz;
  r1.xyz = r6.xzw * r7.xzw + r1.xyz;
  r1.xyz = cb13[1].xxx * r1.xyz;
  r0.w = cb0[7].x * 0.75;
  r0.w = max(0, r0.w);
  r1.w = dot(r3.xyz, r3.xyz);
  r1.w = sqrt(r1.w);
  r2.x = saturate(r1.w * cb0[3].x + cb0[3].y);
  r4.xyzw = t11.Sample(s2_s, r0.xy).xyzw;
  r5.xyzw = t13.Sample(s2_s, r0.xy).xyzw;
  r4.xyzw = -r5.xyzw + r4.xyzw;
  r2.xyzw = r2.xxxx * r4.xyzw + r5.xyzw;
  r3.x = r3.z / r1.w;
  r0.w = r1.w + -r0.w;
  r0.w = saturate(1.99999995e-005 * r0.w);
  r4.x = sqrt(r0.w);
  r4.y = r3.x * 0.5 + 0.5;
  r4.xyzw = t15.SampleLevel(s3_s, r4.xy, 0).xyzw;
  r0.w = cb13[1].x * cb0[5].x;
  r3.x = r4.w * cb0[6].x + -r4.w;
  r2.w = r2.w * r3.x + r2.w;
  r2.w = r2.w * r0.w;
  r0.w = -r0.w * r4.w + r0.w;
  r2.xyz = r2.xyz * r0.www;
  r2.xyz = cb0[4].xyz * r2.www + r2.xyz;
  r0.w = 0.015625 * r1.w;
  r0.w = min(1, r0.w);
  r0.z = sqrt(r0.w);
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r5.xyzw = t20.SampleLevel(s1_s, r0.xy, 0).xyzw;
  r5.xyzw = float4(-0,-0,-0,-1) + r5.xyzw;
  r0.xyzw = r0.zzzz * r5.xyzw + float4(0,0,0,1);
  r1.xyz = r4.xyz * r1.xyz;
  r0.xyz = r1.xyz * r0.www + r0.xyz;
  r0.xyz = r0.xyz + r2.xyz;
  o0.xyz = r0.xyz * r3.www;
  o0.w = r3.w;
  return;
}