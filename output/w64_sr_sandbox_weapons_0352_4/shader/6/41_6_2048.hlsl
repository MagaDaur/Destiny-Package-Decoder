// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:42 2023
Texture2D<float4> t3 : register(t3);

Texture2D<float4> t2 : register(t2);

Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s2_s : register(s2);

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
  float4 cb12[8];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[159];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12;
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
    r1.xyzw = t0.Load(r0.y).wxyz;
    r2.xyzw = (int4)r0.yyyy + int4(2,1,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r0.yzw = t0.Load(r2.y).xyz;
    r4.xyzw = t0.Load(r2.z).xyzw;
    r2.xyzw = t0.Load(r2.w).xyzw;
    r5.x = cb10[0].x + 0.25;
    r5.x = (int)r5.x;
    r5.y = (int)cb0[23].x;
    r5.x = (int)r5.y + (int)r5.x;
    r5.y = cb10[1].x + 0.25;
    r5.z = cmp(cb0[23].x < cb0[24].x);
    r5.z = r5.z ? cb0[23].x : 0;
    r5.yz = (int2)r5.yz;
    r5.y = (int)r5.z + (int)r5.y;
    r5.z = cb0[22].x / r4.x;
    r6.xyz = saturate(r2.wxz);
    r7.xyzw = r6.xxyy * float4(0.638037026,2.59459496,0.458824009,4.06666803) + float4(0,-1.59459496,0,-3.06666803);
    r8.xyz = cmp(r6.xxx >= float3(0,0.814999998,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r6.xw = r8.xy * r7.xy;
    r6.xw = float2(2,2) * r6.xw;
    r5.w = r6.x + r6.w;
    r5.w = r8.z * 2 + r5.w;
    r5.w = saturate(r8.w * 1 + r5.w);
    r5.w = r5.w * 0.699999988 + 0.100000001;
    r6.xyw = cmp(r6.yyy >= float3(0,0.850000024,1));
    r6.xyw = r6.xyw ? float3(1,1,1) : 0;
    r8.xyz = r6.xyw + r6.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r6.xy = r8.xy * r7.zw;
    r6.xy = float2(2,2) * r6.xy;
    r6.x = r6.x + r6.y;
    r6.x = r8.z * 2 + r6.x;
    r6.x = saturate(r6.w * 1 + r6.x);
    r1.x = saturate(r1.x);
    r7.xyzw = r1.xxxx * float4(-0.163724005,-38.0272865,-2.03225803,-105.380241) + float4(1.17084801,109.702209,1,33.7053261);
    r6.y = r1.x * r1.x;
    r7.xy = r7.xy * r6.yy + r7.zw;
    r8.xyz = cmp(r1.xxx >= float3(0,0.899999976,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r7.zw = r8.xy + r8.yz;
    r7.zw = float2(9.99999997e-007,9.99999997e-007) + r7.zw;
    r7.zw = float2(0.5,0.5) * r7.zw;
    r7.zw = frac(r7.zw);
    r7.xy = r7.zw * r7.xy;
    r7.xy = r7.xy + r7.xy;
    r6.w = saturate(r7.x + r7.y);
    r6.x = r6.x * 400 + 99;
    r6.x = r6.w * r6.x + 1;
    r7.xyzw = r1.xxxx * float4(0.689990997,-8.22656822,-1.79999995,-20.6633015) + float4(0.128566995,22.6426563,1,6.24721193);
    r6.yw = r7.xy * r6.yy + r7.zw;
    r7.xyz = cmp(r1.xxx >= float3(0,0.785000026,1));
    r7.xyz = r7.xyz ? float3(1,1,1) : 0;
    r7.xy = r7.xy + r7.yz;
    r7.xy = float2(9.99999997e-007,9.99999997e-007) + r7.xy;
    r7.xy = float2(0.5,0.5) * r7.xy;
    r7.xy = frac(r7.xy);
    r6.yw = r7.xy * r6.yw;
    r6.yw = r6.yw + r6.yw;
    r6.y = saturate(r6.y + r6.w);
    r6.y = r6.y * 55 + 15;
    r1.x = 1 + -r1.x;
    r1.x = r1.x * 3 + 3;
    r6.w = saturate(r3.x);
    r7.xyzw = r6.wwww * float4(144.42308,0.33503601,-2,-0.37470001) + float4(-39.3846169,-0.221453995,1,0.261117995);
    r8.x = r6.w * r6.w;
    r7.xy = r7.xy * r8.xx + r7.zw;
    r8.xyz = cmp(r6.www >= float3(0,0.200000003,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r7.zw = r8.xy + r8.yz;
    r7.zw = float2(9.99999997e-007,9.99999997e-007) + r7.zw;
    r7.zw = float2(0.5,0.5) * r7.zw;
    r7.zw = frac(r7.zw);
    r7.xy = r7.zw * r7.xy;
    r7.xy = r7.xy + r7.xy;
    r6.w = saturate(r7.x + r7.y);
    r7.xy = r6.zz * float2(1.61971796,0.658914983) + float2(0,0.341084987);
    r8.xyz = cmp(r6.zzz >= float3(0,0.354999989,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r7.xy = r8.xy * r7.xy;
    r7.xy = float2(2,2) * r7.xy;
    r6.z = r7.x + r7.y;
    r6.z = r8.z * 2 + r6.z;
    r6.z = r8.w * 1 + r6.z;
    r6.z = min(1, r6.z);
    r6.z = r6.z * 3 + 1;
    r3.x = r5.z + r3.x;
    r7.w = r3.x * r4.x;
    r8.xyz = r0.yzw * float3(0.166666672,0.166666672,0.166666672) + float3(0.5,0.5,0.5);
    r8.xyz = t1.SampleLevel(s1_s, r8.xyz, 0).xyz;
    r8.xyz = r8.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r8.xyz = r8.xyz * r1.xxx;
    r8.xyz = r8.xyz * cb0[22].xxx + r1.yzw;
    r9.xy = cb0[138].yx + -r0.zy;
    r9.xy = cb0[138].wz * r9.xy;
    r10.xyzw = t2.SampleLevel(s2_s, r9.xy, 0).xyzw;
    r9.xyz = t3.SampleLevel(s2_s, r9.xy, 0).xzw;
    r1.x = max(9.99999997e-007, r9.z);
    r10.xyzw = r10.xyzw / r1.xxxx;
    r1.x = r9.y / r1.x;
    r9.yzw = r10.xyz + -r0.yzw;
    r5.z = dot(r9.yzw, r9.yzw);
    r5.z = sqrt(r5.z);
    r5.z = max(9.99999997e-007, r5.z);
    r8.w = max(9.99999997e-007, r10.w);
    r8.w = r5.z / r8.w;
    r8.w = min(1, r8.w);
    r8.w = 1 + -r8.w;
    r1.x = max(9.99999997e-007, r1.x);
    r8.w = log2(r8.w);
    r1.x = r8.w * r1.x;
    r1.x = exp2(r1.x);
    r1.x = r9.x * r1.x;
    r9.xyz = r9.yzw / r5.zzz;
    r9.xyz = r9.xyz * r1.xxx;
    r9.xyz = cb0[22].xxx * r9.xyz;
    r8.xyz = r9.xyz * float3(0.100000001,0.100000001,0.100000001) + r8.xyz;
    r9.xyz = cb9[r5.x+32].zyw * float3(1,-1,1);
    r9.xyz = cb9[r5.x+32].zxy * r9.xyz;
    r10.xyz = cb9[r5.x+32].ywz * float3(-1,1,1);
    r9.xyz = cb9[r5.x+32].yzx * r10.xyz + -r9.xyz;
    r10.xyz = cb9[r5.x+32].wzy * float3(1,1,-1);
    r9.xyz = cb9[r5.x+32].www * r10.xyz + r9.xyz;
    r9.xyz = cb9[r5.x+32].xxx * cb9[r5.x+32].xyz + r9.xyz;
    r10.xyz = cb0[26].zxy * r9.yyy;
    r9.xyw = cb0[25].zxy * r9.xxx + r10.xyz;
    r9.xyz = cb0[27].zxy * r9.zzz + r9.xyw;
    r10.xyz = cb9[r5.x+0].yyy * cb0[26].yzx;
    r10.xyz = cb0[25].yzx * cb9[r5.x+0].xxx + r10.xyz;
    r10.xyz = cb0[27].yzx * cb9[r5.x+0].zzz + r10.xyz;
    r10.xyz = cb0[28].yzx + r10.xyz;
    r10.xyz = -r10.xyz + r0.zwy;
    r1.x = dot(r10.xyz, r10.xyz);
    r1.x = sqrt(r1.x);
    r1.x = -0.5 + r1.x;
    r5.x = cb0[22].x * r6.y;
    r5.z = dot(-r10.xyz, -r10.xyz);
    r5.z = rsqrt(r5.z);
    r11.xyz = -r10.zxy * r5.zzz;
    r11.xyz = r11.xyz * r5.xxx;
    r5.x = cmp(0 < r1.x);
    r1.x = cmp(r1.x < 0);
    r1.x = (int)-r5.x + (int)r1.x;
    r1.x = (int)r1.x;
    r12.xyz = r10.xyz * r9.xyz;
    r9.xyz = r9.zxy * r10.yzx + -r12.xyz;
    r5.x = dot(r9.xyz, r9.xyz);
    r5.x = rsqrt(r5.x);
    r9.xyz = r9.xyz * r5.xxx;
    r5.x = cb0[22].x * r6.x;
    r9.xyz = r9.xyz * r5.xxx;
    r9.xyz = r11.xyz * r1.xxx + r9.xyz;
    r1.xyz = r9.xyz + r1.yzw;
    r1.xyz = r1.xyz + -r8.xyz;
    r1.xyz = r6.www * r1.xyz + r8.xyz;
    r5.xzw = cb0[157].xyz * r5.www;
    r1.xyz = r5.xzw * cb0[156].xxx + r1.xyz;
    r1.w = saturate(cb0[158].x * r6.z);
    r1.w = 1 + -r1.w;
    r7.xyz = r1.xyz * r1.www;
    r1.xyz = r7.xyz * cb0[136].xxx + r0.yzw;
    r0.y = saturate(cb0[158].x * 0.5);
    r0.y = 1 + -r0.y;
    r3.y = r3.y * r0.y;
    r0.y = cb0[158].x * r3.y;
    r3.z = r0.y * 6.28318548 + r3.z;
    r0.yzw = -cb9[r5.y+32].yzx * r1.zxy;
    r6.xyz = r1.yzx * -cb9[r5.y+32].zxy + -r0.yzw;
    r0.y = dot(r1.xyz, -cb9[r5.y+32].xyz);
    r6.w = -r0.y;
    r8.xyz = cb9[r5.y+32].www * r1.xyz;
    r8.w = 0;
    r6.xyzw = r8.xyzw + r6.xyzw;
    r0.yzw = cb9[r5.y+32].zxy * r6.yzx;
    r0.yzw = cb9[r5.y+32].yzx * r6.zxy + -r0.yzw;
    r0.yzw = cb9[r5.y+32].www * r6.xyz + r0.yzw;
    r0.yzw = r6.www * cb9[r5.y+32].xyz + r0.yzw;
    r0.yzw = cb9[r5.y+0].xyz + r0.yzw;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r1.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r5.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.zzzz, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r5.wwww, r2.xyzw
  }
  return;
}