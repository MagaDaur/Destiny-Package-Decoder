// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
Texture3D<float4> t3 : register(t3);

Buffer<float4> t2 : register(t2);

Texture2D<float4> t1 : register(t1);

Texture2D<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[13];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[193];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t2.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t2.Load(r2.x).xyzw;
    r0.yzw = t2.Load(r2.y).xzw;
    r4.xyzw = t2.Load(r2.z).xyzw;
    r2.xyzw = t2.Load(r2.w).xyzw;
    r5.x = cb10[1].x + 0.25;
    r5.y = cmp(cb0[23].x < cb0[24].x);
    r5.y = r5.y ? cb0[23].x : 0;
    r5.xy = (int2)r5.xy;
    r5.x = (int)r5.y + (int)r5.x;
    r5.y = cb0[22].x / r4.z;
    r6.xyz = saturate(r2.wyy);
    r5.z = saturate(r4.w);
    r5.w = cb10[0].x + 0.25;
    r5.w = (int)r5.w;
    r7.xyzw = r5.zzzz * float4(-0.949999988,0.0199999996,0.458824009,4.06666803) + float4(1,-0.00999999978,0,-3.06666803);
    r6.w = 3.1415925 * r7.y;
    sincos(r6.w, r8.x, r9.x);
    r8.xyz = float3(0,1,0) * r8.xxx;
    r9.yzw = -cb9[r5.w+32].zxy * cb9[r5.w+32].yzx;
    r9.yzw = -cb9[r5.w+32].yzx * cb9[r5.w+32].zxy + -r9.yzw;
    r6.w = dot(-cb9[r5.w+32].xyz, cb9[r5.w+32].xyz);
    r10.w = -r6.w;
    r10.xyz = cb9[r5.w+32].www * cb9[r5.w+32].xyz + r9.yzw;
    r11.xyzw = cb9[r5.w+32].xyzw * float4(-1,-1,-1,1);
    r10.xyzw = cb9[r5.w+32].wwww * r11.xyzw + r10.xyzw;
    r11.xyzw = r10.zxyy * r8.yzzy;
    r9.yzw = -r8.zzy * r10.yzx + r11.xyz;
    r11.w = -r11.w;
    r11.xyz = r9.xxx * r10.xyz + r9.yzw;
    r8.w = r9.x;
    r8.xyzw = r10.wwww * r8.xyzw + r11.xyzw;
    r9.xyz = cb9[r5.w+32].zxy * r8.yzx;
    r9.xyz = cb9[r5.w+32].yzx * r8.zxy + -r9.xyz;
    r6.w = dot(cb9[r5.w+32].xyz, r8.xyz);
    r10.w = -r6.w;
    r10.xyz = cb9[r5.w+32].www * r8.xyz + r9.xyz;
    r8.xyzw = r8.wwww * cb9[r5.w+32].xyzw + r10.xyzw;
    r6.xyz = r6.xyz * float3(0.599999964,10,0) + float3(0.300000012,-5,0);
    r6.w = saturate(cb0[2].w);
    r7.y = 0.212766007 * r6.w;
    r9.x = r6.w * 1.01276505 + -0.225530997;
    r6.w = r6.w * r6.w;
    r6.w = saturate(r9.x * r6.w + r7.y);
    r6.yzw = r6.yzz * r6.www;
    r9.xyzw = -cb9[r5.w+32].zxyx * r6.wwyy;
    r10.xyz = -r6.wyw * -cb9[r5.w+32].yzx + r9.xyz;
    r10.w = -r9.w;
    r9.xyz = cb9[r5.w+32].www * r6.yzw;
    r9.w = 0;
    r9.xyzw = r10.xyzw + r9.xyzw;
    r6.yzw = cb9[r5.w+32].zxy * r9.yzx;
    r6.yzw = cb9[r5.w+32].yzx * r9.zxy + -r6.yzw;
    r6.yzw = cb9[r5.w+32].www * r9.xyz + r6.yzw;
    r6.yzw = r9.www * cb9[r5.w+32].xyz + r6.yzw;
    r6.yzw = cb9[r5.w+0].xyz + r6.yzw;
    r9.xyz = cmp(r5.zzz >= float3(0,0.850000024,1));
    r9.xyw = r9.xyz ? float3(1,1,1) : 0;
    r9.xyz = r9.xyw + r9.yww;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r5.zw = r9.xy * r7.zw;
    r5.zw = float2(2,2) * r5.zw;
    r5.z = r5.z + r5.w;
    r5.z = r9.z * 2 + r5.z;
    r5.z = saturate(r9.w * 1 + r5.z);
    r0.y = saturate(r0.y);
    r9.xyzw = r0.yyyy * float4(-0.163724005,-38.0272865,-2.03225803,-105.380241) + float4(1.17084801,109.702209,1,33.7053261);
    r5.w = r0.y * r0.y;
    r7.yz = r9.xy * r5.ww + r9.zw;
    r9.xyz = cmp(r0.yyy >= float3(0,0.899999976,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r9.xy = r9.xy + r9.yz;
    r9.xy = float2(9.99999997e-007,9.99999997e-007) + r9.xy;
    r9.xy = float2(0.5,0.5) * r9.xy;
    r9.xy = frac(r9.xy);
    r7.yz = r9.xy * r7.yz;
    r7.yz = r7.yz + r7.yz;
    r7.y = saturate(r7.y + r7.z);
    r5.z = r5.z * 400 + 99;
    r5.z = r7.y * r5.z + 1;
    r9.xyzw = r0.yyyy * float4(0.689990997,-8.22656822,-1.79999995,-20.6633015) + float4(0.128566995,22.6426563,1,6.24721193);
    r7.yz = r9.xy * r5.ww + r9.zw;
    r9.xyz = cmp(r0.yyy >= float3(0,0.785000026,1));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r9.xy = r9.xy + r9.yz;
    r9.xy = float2(9.99999997e-007,9.99999997e-007) + r9.xy;
    r9.xy = float2(0.5,0.5) * r9.xy;
    r9.xy = frac(r9.xy);
    r7.yz = r9.xy * r7.yz;
    r7.yz = r7.yz + r7.yz;
    r0.y = saturate(r7.y + r7.z);
    r0.y = r0.y * 55 + 15;
    r5.w = saturate(r3.w);
    r5.w = 1 + -r5.w;
    r5.w = r5.w * -9.5 + 10;
    r9.z = r5.y + r0.z;
    r9.x = r9.z * r4.z;
    r7.yzw = float3(1,1,-1) * r8.wzy;
    r10.xyz = r8.zxy * r7.zwy;
    r10.xyz = r8.yzx * r7.wyz + -r10.xyz;
    r7.yzw = r8.www * r7.yzw + r10.xyz;
    r7.yzw = r8.xxx * r8.xyz + r7.yzw;
    r8.xyz = cb0[26].zxy * r7.zzz;
    r8.xyz = cb0[25].zxy * r7.yyy + r8.xyz;
    r7.yzw = cb0[27].zxy * r7.www + r8.xyz;
    r8.xyz = cb0[26].yzx * r6.zzz;
    r8.xyz = cb0[25].yzx * r6.yyy + r8.xyz;
    r6.yzw = cb0[27].yzx * r6.www + r8.xyz;
    r6.yzw = cb0[28].yzx + r6.yzw;
    r6.yzw = -r6.yzw + r3.yzx;
    r0.z = dot(r6.yzw, r6.yzw);
    r0.z = sqrt(r0.z);
    r0.z = -0.5 + r0.z;
    r0.y = cb0[22].x * r0.y;
    r5.y = dot(-r6.yzw, -r6.yzw);
    r5.y = rsqrt(r5.y);
    r8.xyz = -r6.wyz * r5.yyy;
    r8.xyz = r8.xyz * r0.yyy;
    r0.y = cmp(0 < r0.z);
    r0.z = cmp(r0.z < 0);
    r0.y = (int)-r0.y + (int)r0.z;
    r0.y = (int)r0.y;
    r10.xyz = r7.yzw * r6.yzw;
    r6.yzw = r7.wyz * r6.zwy + -r10.xyz;
    r0.z = dot(r6.yzw, r6.yzw);
    r0.z = rsqrt(r0.z);
    r6.yzw = r6.yzw * r0.zzz;
    r0.z = cb0[22].x * r5.z;
    r6.yzw = r6.yzw * r0.zzz;
    r6.yzw = r8.xyz * r0.yyy + r6.yzw;
    r6.yzw = r6.yzw + r1.xyz;
    r8.xyzw = float4(0.5,1,0.5,0.5) + r3.xwyz;
    r7.yzw = t3.SampleLevel(s1_s, r8.xzw, 0).xyz;
    r7.yzw = r7.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r7.yzw = cb0[22].xxx * r7.yzw;
    r6.yzw = r7.yzw * float3(100,100,100) + r6.yzw;
    r6.yzw = cb0[191].xyz * cb0[190].xxx + r6.yzw;
    r0.y = saturate(cb0[192].x);
    r0.y = 1 + -r0.y;
    r6.yzw = r6.yzw * r0.yyy;
    r7.yzw = r6.yzw * cb0[159].xxx + r3.xyz;
    r0.y = saturate(cb0[192].x * r5.w);
    r0.y = 1 + -r0.y;
    r9.w = r0.w * r0.y;
    r0.y = cb0[192].x * r9.w;
    r4.x = r0.y * 6.28318548 + r4.x;
    r0.y = dot(r1.xyz, r1.xyz);
    r0.y = sqrt(r0.y);
    r0.z = 9.99999975e-006 + r0.y;
    r5.yzw = r1.xyz / r0.zzz;
    r5.yzw = r5.yzw * float3(0.00999999978,0.00999999978,0.00999999978) + r3.xyz;
    r0.y = cmp(0.00100000005 < r0.y);
    r0.yzw = r0.yyy ? r5.yzw : r3.xyz;
    r5.y = dot(r6.yzw, r6.yzw);
    r5.y = sqrt(r5.y);
    r5.zw = float2(9.99999975e-006,9.99999975e-005) + r5.yy;
    r10.xyz = r6.yzw / r5.zzz;
    r10.xyz = r10.xyz * float3(0.00999999978,0.00999999978,0.00999999978) + r7.yzw;
    r5.z = cmp(0.00100000005 < r5.y);
    r10.xyz = r5.zzz ? r10.xyz : r7.yzw;
    r11.xyz = cb12[1].xyw * r0.zzz;
    r11.xyz = cb12[0].xyw * r0.yyy + r11.xyz;
    r0.yzw = cb12[2].xyw * r0.www + r11.xyz;
    r0.yzw = cb12[3].xyw + r0.yzw;
    r11.xyz = cb12[1].xyw * r10.yyy;
    r10.xyw = cb12[0].xyw * r10.xxx + r11.xyz;
    r10.xyz = cb12[2].xyw * r10.zzz + r10.xyw;
    r10.xyz = cb12[3].xyw + r10.xyz;
    r0.yz = r0.yz / r0.ww;
    r0.yz = r0.yz * float2(0.5,-0.5) + float2(0.5,0.5);
    r8.zw = r10.xy / r10.zz;
    r8.zw = r8.zw * float2(0.5,-0.5) + float2(0.5,0.5);
    r0.yz = cb12[12].xy * r0.yz;
    r11.xy = (int2)r0.yz;
    r11.zw = float2(0,0);
    r0.y = t1.Load(r11.xyw).x;
    r0.y = r0.y * cb0[0].y + cb0[0].x;
    r0.y = 1 / r0.y;
    r8.zw = cb12[12].xy * r8.zw;
    r12.xy = (int2)r8.zw;
    r12.zw = float2(0,0);
    r0.z = t1.Load(r12.xyw).x;
    r0.z = r0.z * cb0[0].y + cb0[0].x;
    r0.z = 1 / r0.z;
    r10.xyw = t0.Load(r11.xyz).xyz;
    r10.xyw = r10.xyw * float3(2,2,2) + float3(-1,-1,-1);
    r5.z = dot(r10.xyw, r10.xyw);
    r5.z = rsqrt(r5.z);
    r10.xyw = r10.xyw * r5.zzz;
    r11.xyz = t0.Load(r12.xyz).xyz;
    r11.xyz = r11.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r5.z = dot(r11.xyz, r11.xyz);
    r5.z = rsqrt(r5.z);
    r11.xyz = r11.xyz * r5.zzz;
    r5.z = r0.y + -r0.z;
    r8.z = dot(r10.xyw, r11.xyz);
    r8.z = 1 + -r8.z;
    r0.y = r0.y + -r0.w;
    r0.z = r0.z + -r10.z;
    r0.y = r0.y * r0.z;
    r0.y = cmp(r0.y < 0);
    r0.w = cmp(abs(r5.z) < 2.5);
    r0.y = r0.w ? r0.y : 0;
    r0.w = cmp(r8.z < 0.600000024);
    r0.y = r0.w ? r0.y : 0;
    r10.x = cb0[22].x + r1.w;
    r12.xyz = r6.yzw / r5.www;
    r0.w = dot(r11.xyz, r12.xyz);
    r1.w = r0.w + r0.w;
    r13.xyz = -r1.www * r11.xyz + r12.xyz;
    r12.xyz = -r0.www * r11.xyz + r12.xyz;
    r0.w = dot(r12.xyz, r12.xyz);
    r0.w = rsqrt(r0.w);
    r12.xyz = r12.xyz * r0.www + -r13.xyz;
    r12.xyz = r12.xyz * float3(0.699999988,0.699999988,0.699999988) + r13.xyz;
    r0.w = dot(r12.xyz, r12.xyz);
    r0.w = rsqrt(r0.w);
    r12.xyz = r12.xyz * r0.www;
    r5.yzw = r12.xyz * r5.yyy;
    r5.yzw = float3(0.600000024,0.600000024,0.600000024) * r5.yzw;
    r12.xyz = r5.yzw * cb0[22].xxx + r3.xyz;
    r7.yzw = r0.yyy ? r12.xyz : r7.yzw;
    r5.yzw = r0.yyy ? r5.yzw : r6.yzw;
    r8.x = 0;
    r10.y = r3.w;
    r0.yw = r0.yy ? r8.xy : r10.xy;
    r1.w = cmp(abs(r0.z) < 0.100000001);
    r3.w = dot(r11.xyz, r6.yzw);
    r8.xyz = -r3.www * r11.xyz + r6.yzw;
    r8.w = dot(r8.xyz, r8.xyz);
    r8.w = rsqrt(r8.w);
    r8.xyz = r8.xyz * r8.www;
    r6.y = dot(r8.xyz, r6.yzw);
    r6.x = 1 + -r6.x;
    r6.x = r6.y * r6.x;
    r3.w = cmp(abs(r3.w) < 1);
    r3.w = r1.w ? r3.w : 0;
    r6.y = cmp(r6.x < r7.x);
    r1.w = r1.w ? r6.y : 0;
    r6.x = r1.w ? 9.99999975e-005 : r6.x;
    r6.xyz = r8.xyz * r6.xxx;
    r5.yzw = r3.www ? r6.xyz : r5.yzw;
    r6.xyz = cb12[7].xyz + -r7.yzw;
    r6.w = dot(r6.xyz, r6.xyz);
    r6.w = rsqrt(r6.w);
    r6.xyz = r6.xyz * r6.www;
    r0.z = 0.00999999978 + -r0.z;
    r6.xyz = r6.xyz * r0.zzz + r3.xyz;
    r6.xyz = r5.yzw * cb0[22].xxx + r6.xyz;
    r6.xyz = r3.www ? r6.xyz : r7.yzw;
    r0.z = r3.w ? r1.w : 0;
    r6.xyz = r0.zzz ? r3.xyz : r6.xyz;
    r1.xyz = r0.zzz ? r1.xyz : r5.yzw;
    r0.z = max(1, r0.w);
    r6.w = r3.w ? r0.z : r0.w;
    r3.xyz = -cb9[r5.x+32].yzx * r6.zxy;
    r3.xyz = r6.yzx * -cb9[r5.x+32].zxy + -r3.xyz;
    r0.z = dot(r6.xyz, -cb9[r5.x+32].xyz);
    r3.w = -r0.z;
    r7.xyz = cb9[r5.x+32].www * r6.xyz;
    r7.w = 0;
    r3.xyzw = r7.xyzw + r3.xyzw;
    r5.yzw = cb9[r5.x+32].zxy * r3.yzx;
    r5.yzw = cb9[r5.x+32].yzx * r3.zxy + -r5.yzw;
    r3.xyz = cb9[r5.x+32].www * r3.xyz + r5.yzw;
    r3.xyz = r3.www * cb9[r5.x+32].xyz + r3.xyz;
    r3.xyz = cb9[r5.x+0].xyz + r3.xyz;
    r3.xyz = -cb12[7].xyz + r3.xyz;
    r0.z = dot(r3.xyz, r3.xyz);
    r9.y = sqrt(r0.z);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
    r1.w = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r9.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}