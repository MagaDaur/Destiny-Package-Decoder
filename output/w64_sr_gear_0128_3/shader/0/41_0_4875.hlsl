// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:43 2023
TextureCube<float4> t25 : register(t25);

TextureCube<float4> t24 : register(t24);

Texture3D<float4> t21 : register(t21);

Texture2D<float4> t20 : register(t20);

Texture3D<float4> t19 : register(t19);

Texture3D<float4> t18 : register(t18);

Texture3D<float4> t17 : register(t17);

Texture3D<float4> t16 : register(t16);

Texture2D<float4> t15 : register(t15);

Texture2D<float4> t7 : register(t7);

Texture2D<float4> t6 : register(t6);

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
  float4 cb0[50];
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
  r2.w = dot(cb0[20].xy, v3.xy);
  r3.x = cb0[20].z + r2.w;
  r2.w = dot(cb0[21].xy, v3.xy);
  r3.y = cb0[21].z + r2.w;
  r3.xyz = t6.Sample(s4_s, r3.xy).xyz;
  r3.xy = r3.xy * cb0[22].xx + cb0[22].yy;
  r2.w = dot(r3.xy, r3.xy);
  r2.w = 1 + -r2.w;
  r2.w = max(0, r2.w);
  r2.w = sqrt(r2.w);
  r3.z = saturate(cb0[22].z + r3.z);
  r4.xyz = v2.xyz * r3.yyy;
  r3.xyw = v1.xyz * r3.xxx + r4.xyz;
  r3.xyw = v0.xyz * r2.www + r3.xyw;
  r2.w = dot(r3.xyw, r3.xyw);
  r2.w = rsqrt(r2.w);
  r4.xyz = r3.xyw * r2.www;
  r5.x = dot(r2.xyz, v0.xyz);
  r5.yz = v3.xy * cb0[9].xy + cb0[9].zw;
  r5.y = t5.Sample(s4_s, r5.yz).x;
  r5.zw = v3.xy * cb0[10].xy + cb0[10].zw;
  r5.z = t5.Sample(s4_s, r5.zw).x;
  r5.y = r5.z * cb0[11].x + r5.y;
  r5.z = saturate(r5.y);
  r6.xyz = cb0[14].xyz * r5.zzz + cb0[13].xyz;
  r5.x = r5.x * r5.x;
  r5.x = saturate(r5.x * cb0[16].x + cb0[16].y);
  r5.zw = -cb0[17].xy + v3.xy;
  r5.z = dot(r5.zw, r5.zw);
  r5.z = sqrt(r5.z);
  r5.z = saturate(r5.z * cb0[19].x + cb0[19].y);
  r5.x = r5.x * r5.z;
  r6.xyz = r6.xyz * r5.xxx;
  r5.x = cb0[15].x * r5.x;
  r5.y = cb0[12].y * r5.y + cb0[12].x;
  r5.y = saturate(cb0[8].x + r5.y);
  r6.xyz = cb0[49].xxx * r6.xyz;
  r3.z = min(r5.y, r3.z);
  r5.y = -cb0[7].x + 1;
  r7.xyz = r6.xyz * r5.yyy;
  r6.xyz = cb0[7].xxx * r6.xyz;
  r5.yzw = r5.yyy * float3(0.0399999991,0.0399999991,0.0399999991) + r6.xyz;
  r6.x = max(9.99999975e-005, v0.w);
  r6.x = log2(r6.x);
  r6.x = cb0[47].x * r6.x;
  r6.x = exp2(r6.x);
  r6.x = r6.x * r6.x;
  r6.y = v0.w * v0.w;
  r8.xyz = -cb3[0].xyz + v4.xyz;
  r8.xyz = abs(r8.xyz) / cb3[6].xyz;
  r9.xyz = cb3[3].xyz + float3(-2,-2,-2);
  r8.xyz = r8.xyz / r9.xyz;
  r6.z = max(r8.x, r8.y);
  r6.z = max(r6.z, r8.z);
  r6.z = max(0.50999999, r6.z);
  r6.z = log2(r6.z);
  r6.z = floor(r6.z);
  r8.z = 1 + r6.z;
  r6.z = cmp(r8.z < cb3[8].x);
  r6.w = exp2(r8.z);
  r9.xyz = cb3[6].xyz * r6.www;
  r10.xyz = cb3[0].xyz / r9.xyz;
  r10.xyz = floor(r10.xyz);
  r9.xyz = -r10.xyz * r9.xyz + v4.xyz;
  r9.xyz = r9.xyz / cb3[6].xyz;
  r9.xyz = r9.xyz / cb3[3].xyz;
  r9.xyz = r9.xyz / r6.www;
  r8.xy = float2(0.5,0.5);
  r8.xyz = r9.xyz * float3(0.5,0.5,0.5) + r8.xyz;
  r6.w = 0.5 + r8.z;
  r8.xy = cb3[2].xy * r8.xy;
  r8.w = r6.w * cb3[2].z + cb3[9].x;
  r8.xyz = float3(0.5,0.5,0.5) + r8.xyw;
  r8.xyz = r8.xyz / cb3[4].xyz;
  r9.xy = cb8[4].zw;
  r9.z = 0;
  r8.xyz = r6.zzz ? r8.xyz : r9.xyz;
  r10.xyzw = t16.SampleLevel(s6_s, r8.xyz, 0).xyzw;
  r11.xyzw = t17.SampleLevel(s6_s, r8.xyz, 0).xyzw;
  r12.xyzw = t18.SampleLevel(s6_s, r8.xyz, 0).xyzw;
  r1.w = cb3[15].x * r1.w;
  r1.w = saturate(r1.w * 1.5 + cb3[15].y);
  r6.z = cmp(r1.w < 1);
  if (r6.z != 0) {
    r13.xyzw = t16.SampleLevel(s6_s, r9.xyz, 0).xyzw;
    r14.xyzw = t17.SampleLevel(s6_s, r9.xyz, 0).xyzw;
    r9.xyzw = t18.SampleLevel(s6_s, r9.xyz, 0).xyzw;
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
  r4.w = t19.SampleLevel(s5_s, r8.xyz, 0).x;
  r4.w = -1 + r4.w;
  r1.w = r1.w * r4.w + 1;
  r4.w = saturate(dot(cb0[25].xyz, r4.xyz));
  r6.xzw = cb0[24].xyz * r6.xxx;
  r6.xzw = r6.xzw * r1.www;
  r6.xzw = r6.xzw * r4.www;
  r6.xzw = r6.xzw * float3(0.318309873,0.318309873,0.318309873) + r9.xyz;
  r1.w = dot(r4.xyz, r2.xyz);
  r4.w = r1.w + r1.w;
  r2.xyz = r4.xyz * r4.www + -r2.xyz;
  r4.w = 1.5 * r3.z;
  r4.w = min(1, r4.w);
  r2.xyz = -r3.xyw * r2.www + r2.xyz;
  r2.xyz = r4.www * r2.xyz + r4.xyz;
  r2.w = dot(r2.xyz, r2.xyz);
  r2.w = rsqrt(r2.w);
  r8.xyz = r2.xyz * r2.www;
  r2.x = dot(r10.xyz, r10.xyz);
  r2.x = rsqrt(r2.x);
  r3.xyw = r10.xyz * r2.xxx;
  r2.x = dot(r11.xyz, r11.xyz);
  r2.x = rsqrt(r2.x);
  r9.xyz = r11.xyz * r2.xxx;
  r2.x = dot(r12.xyz, r12.xyz);
  r2.x = rsqrt(r2.x);
  r13.xyz = r12.xyz * r2.xxx;
  r9.xyz = float3(0.589999974,0.589999974,0.589999974) * r9.xyz;
  r3.xyw = r3.xyw * float3(0.300000012,0.300000012,0.300000012) + r9.xyz;
  r3.xyw = r13.xyz * float3(0.109999999,0.109999999,0.109999999) + r3.xyw;
  r2.x = dot(r3.xyw, r3.xyw);
  r2.x = rsqrt(r2.x);
  r3.xyw = r3.xyw * r2.xxx;
  r9.xyz = float3(0.666666746,0.666666746,0.666666746) * r3.xyw;
  r9.w = 0.333333373;
  r10.x = dot(r10.xyzw, r9.xyzw);
  r10.y = dot(r11.xyzw, r9.xyzw);
  r10.z = dot(r12.xyzw, r9.xyzw);
  r2.x = dot(r9.xyzw, r9.xyzw);
  r9.xyz = r10.xyz / r2.xxx;
  r9.xyz = max(float3(0,0,0), r9.xyz);
  r1.xyz = r1.xyz * r0.www + r3.xyw;
  r0.w = dot(r1.xyz, r1.xyz);
  r0.w = rsqrt(r0.w);
  r1.xyz = r1.xyz * r0.www;
  r0.w = saturate(dot(r1.xyz, r4.xyz));
  r2.x = saturate(dot(r4.xyz, r3.xyw));
  r1.x = saturate(dot(r3.xyw, r1.xyz));
  r1.y = -r3.z * 0.899999976 + 1;
  r1.y = r1.y * r1.y;
  r1.y = r1.y * r1.y;
  r1.x = 1 + -r1.x;
  r1.z = cb0[7].x * 0.839999974 + 0.0399999991;
  r2.y = r1.x * r1.x;
  r2.y = r2.y * r2.y;
  r3.x = r2.y * r1.x;
  r1.x = -r1.x * r2.y + 1;
  r1.z = 1 / r1.z;
  r1.x = r1.z * r3.x + r1.x;
  r1.z = r0.w * r1.y + -r0.w;
  r0.w = r1.z * r0.w + 1;
  r0.w = r0.w * r0.w;
  r0.w = r1.y / r0.w;
  r0.w = r1.x * r0.w;
  r0.xyw = float3(4,4,0.0397887304) * r0.xyw;
  r1.xyz = r9.xyz * r0.www;
  r1.xyz = r1.xyz * r2.xxx;
  r0.w = 1 + -r3.z;
  r2.x = sqrt(r0.w);
  r2.y = 8 * r2.x;
  r3.x = max(9.99999975e-005, r6.y);
  r3.x = log2(r3.x);
  r3.y = cb0[38].x * r3.x;
  r3.y = exp2(r3.y);
  r3.w = r3.y + r1.w;
  r3.w = log2(r3.w);
  r3.w = r3.z * r3.w;
  r3.w = exp2(r3.w);
  r3.w = r3.w + r3.y;
  r3.w = saturate(-1 + r3.w);
  r3.w = saturate(cb0[37].x * r3.w + cb0[37].y);
  r3.w = r3.w + -r3.y;
  r3.y = r3.z * r3.w + r3.y;
  r3.w = cmp(-0.5 < cb0[43].x);
  r4.xyz = cb12[7].xyz + -v4.xyz;
  r4.x = dot(r4.xyz, r4.xyz);
  r4.x = sqrt(r4.x);
  r4.x = saturate(r4.x * cb0[40].x + cb0[40].y);
  r4.y = cb0[43].x + -cb0[42].x;
  r4.x = r4.x * r4.y + cb0[42].x;
  r3.w = r3.w ? r4.x : cb0[42].x;
  r8.w = r2.z * r2.w + 1;
  r2.z = dot(r8.xyw, r8.xyw);
  r2.z = rsqrt(r2.z);
  r2.zw = r8.xy * r2.zz;
  r2.zw = r2.zw * float2(0.5,0.5) + float2(0.5,0.5);
  r2.yzw = t7.SampleLevel(s7_s, r2.zw, r2.y).xyz;
  r2.yzw = r2.yzw * r3.yyy;
  r4.xyz = r2.yzw * r3.www;
  r3.y = cb8[25].w * r2.x;
  r9.xyzw = t25.SampleLevel(s8_s, r8.xyz, r3.y).xyzw;
  r3.y = cmp(cb8[29].w < 0.5);
  r10.xyz = r9.xyz * r9.xyz;
  r9.xyz = r3.yyy ? r10.xyz : r9.xyz;
  r10.xyz = cb8[33].xyz * v4.yyy;
  r10.xyz = cb8[32].xyz * v4.xxx + r10.xyz;
  r10.xyz = cb8[34].xyz * v4.zzz + r10.xyz;
  r10.xyz = cb8[35].xyz + r10.xyz;
  r3.x = cb0[35].x * r3.x;
  r3.x = exp2(r3.x);
  r3.y = r3.x + r1.w;
  r3.y = log2(r3.y);
  r3.y = r3.z * r3.y;
  r3.y = exp2(r3.y);
  r3.y = r3.y + r3.x;
  r3.y = saturate(-1 + r3.y);
  r3.y = saturate(cb0[34].x * r3.y + cb0[34].y);
  r3.y = r3.y + -r3.x;
  r3.x = r3.z * r3.y + r3.x;
  r3.y = cb8[24].w * r3.x;
  r11.xyz = cb8[31].xyz + cb8[30].xyz;
  r11.xyz = r11.xyz * r3.yyy;
  r9.xyz = r11.xyz * r9.xyz;
  r11.xyz = saturate(-r10.xyz);
  r11.xyz = saturate(r11.xyz * cb8[22].xyz + -cb8[24].xyz);
  r11.xyz = float3(1,1,1) + -r11.xyz;
  r12.xyz = saturate(r10.xyz);
  r12.xyz = saturate(r12.xyz * cb8[23].xyz + -cb8[25].xyz);
  r12.xyz = float3(1,1,1) + -r12.xyz;
  r3.y = r12.x * r12.y;
  r3.y = r3.y * r12.z;
  r3.y = r3.y * r11.x;
  r3.y = r3.y * r11.y;
  r3.y = r3.y * r11.z;
  r4.w = cmp(0 < cb8[27].w);
  r10.xyz = log2(abs(r10.xyz));
  r10.xyz = cb8[27].www * r10.xyz;
  r10.xyz = exp2(r10.xyz);
  r6.y = dot(r10.xyz, cb8[27].xyz);
  r6.y = log2(r6.y);
  r6.y = cb8[28].x * r6.y;
  r6.y = exp2(r6.y);
  r6.y = saturate(cb8[28].y * r6.y + cb8[28].z);
  r6.y = 1 + -r6.y;
  r6.y = r6.y * r3.y;
  r3.y = r4.w ? r6.y : r3.y;
  r3.y = r9.w * r3.y;
  r4.w = cmp(0 < cb8[29].y);
  r10.xyz = cb0[44].xxx * r9.xyz;
  r9.xyz = cb0[41].xxx * r9.xyz;
  r9.xyz = r4.www ? r10.xyz : r9.xyz;
  r3.y = cb8[28].w * r3.y;
  r2.yzw = -r2.yzw * r3.www + r9.xyz;
  r2.yzw = r3.yyy * r2.yzw + r4.xyz;
  r2.x = cb8[11].w * r2.x;
  r4.xyzw = t24.SampleLevel(s8_s, r8.xyz, r2.x).xyzw;
  r2.x = cmp(cb8[15].w < 0.5);
  r8.xyz = r4.xyz * r4.xyz;
  r4.xyz = r2.xxx ? r8.xyz : r4.xyz;
  r8.xyz = cb8[19].xyz * v4.yyy;
  r8.xyz = cb8[18].xyz * v4.xxx + r8.xyz;
  r8.xyz = cb8[20].xyz * v4.zzz + r8.xyz;
  r8.xyz = cb8[21].xyz + r8.xyz;
  r2.x = cb8[10].w * r3.x;
  r3.xyw = cb8[17].xyz + cb8[16].xyz;
  r3.xyw = r3.xyw * r2.xxx;
  r3.xyw = r4.xyz * r3.xyw;
  r4.xyz = saturate(-r8.xyz);
  r4.xyz = saturate(r4.xyz * cb8[8].xyz + -cb8[10].xyz);
  r4.xyz = float3(1,1,1) + -r4.xyz;
  r9.xyz = saturate(r8.xyz);
  r9.xyz = saturate(r9.xyz * cb8[9].xyz + -cb8[11].xyz);
  r9.xyz = float3(1,1,1) + -r9.xyz;
  r2.x = r9.x * r9.y;
  r2.x = r2.x * r9.z;
  r2.x = r2.x * r4.x;
  r2.x = r2.x * r4.y;
  r2.x = r2.x * r4.z;
  r4.x = cmp(0 < cb8[13].w);
  r8.xyz = log2(abs(r8.xyz));
  r8.xyz = cb8[13].www * r8.xyz;
  r8.xyz = exp2(r8.xyz);
  r4.y = dot(r8.xyz, cb8[13].xyz);
  r4.y = log2(r4.y);
  r4.y = cb8[14].x * r4.y;
  r4.y = exp2(r4.y);
  r4.y = saturate(cb8[14].y * r4.y + cb8[14].z);
  r4.y = 1 + -r4.y;
  r4.y = r4.y * r2.x;
  r2.x = r4.x ? r4.y : r2.x;
  r2.x = r4.w * r2.x;
  r4.x = cmp(0 < cb8[15].y);
  r4.yzw = cb0[44].xxx * r3.xyw;
  r3.xyw = cb0[41].xxx * r3.xyw;
  r3.xyw = r4.xxx ? r4.yzw : r3.xyw;
  r2.x = cb8[14].w * r2.x;
  r3.xyw = r3.xyw + -r2.yzw;
  r2.xyz = r2.xxx * r3.xyw + r2.yzw;
  r1.w = saturate(1 + -r1.w);
  r2.w = r1.w * r1.w;
  r2.w = r2.w * r2.w;
  r1.w = r2.w * r1.w;
  r0.w = r0.w + r0.w;
  r0.w = min(1, r0.w);
  r0.w = 1 + -r0.w;
  r2.w = r1.w * r0.w;
  r3.x = r3.z * 0.600000024 + 0.400000006;
  r0.w = -r1.w * r0.w + 1;
  r0.w = r3.x * r0.w;
  r3.xyz = r5.yzw * r0.www + r2.www;
  r0.w = max(0.00100000005, r5.x);
  r0.w = 1 / r0.w;
  r3.xyz = r3.xyz * r0.www;
  r1.xyz = r1.xyz * r0.www;
  r2.xyz = r3.xyz * r2.xyz;
  r1.xyz = r5.yzw * r1.xyz + r2.xyz;
  r1.xyz = r7.xyz * r6.xzw + r1.xyz;
  r2.xyz = -cb12[7].xyz + v4.xyz;
  r0.w = cb0[6].x * 0.75;
  r0.w = max(0, r0.w);
  r1.w = dot(r2.xyz, r2.xyz);
  r2.w = sqrt(r1.w);
  r1.w = rsqrt(r1.w);
  r3.xy = r2.xy * r1.ww;
  r3.w = r2.z * r1.w + 1;
  r1.w = dot(r3.xyw, r3.xyw);
  r1.w = rsqrt(r1.w);
  r2.xy = r3.xy * r1.ww;
  r2.xy = r2.xy * float2(0.5,0.5) + float2(0.5,0.5);
  r3.xyz = t4.Sample(s2_s, r2.xy).xyz;
  r1.w = r2.z / r2.w;
  r0.w = r2.w + -r0.w;
  r0.w = saturate(1.99999995e-005 * r0.w);
  r2.x = sqrt(r0.w);
  r2.y = r1.w * 0.5 + 0.5;
  r4.xyzw = t15.SampleLevel(s3_s, r2.xy, 0).xyzw;
  r0.w = cb13[1].x * cb0[4].x;
  r0.w = -r0.w * r4.w + r0.w;
  r1.w = 0.015625 * r2.w;
  r1.w = min(1, r1.w);
  r0.z = sqrt(r1.w);
  r0.z = t21.SampleLevel(s1_s, r0.xyz, 0).x;
  r2.xyzw = t20.SampleLevel(s1_s, r0.xy, 0).xyzw;
  r2.xyzw = float4(-0,-0,-0,-1) + r2.xyzw;
  r2.xyzw = r0.zzzz * r2.xyzw + float4(0,0,0,1);
  r0.xyz = r4.xyz * r1.xyz;
  r0.xyz = r0.xyz * r2.www + r2.xyz;
  r0.xyz = r3.xyz * r0.www + r0.xyz;
  o0.xyz = r0.xyz * r5.xxx;
  o0.w = r5.x;
  return;
}