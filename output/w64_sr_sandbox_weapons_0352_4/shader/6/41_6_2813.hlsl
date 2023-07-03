// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb13 : register(b13)
{
  float4 cb13[1];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[99];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[88].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[98].x;
    r0.y = (uint)cb0[89].x;
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.yz = t0.Load(r2.w).xy;
    r6.xyz = r5.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r0.y = cb13[0].y * 0.200000003;
    r0.y = frac(r0.y);
    r7.x = saturate(r5.w);
    r8.w = r7.x + r0.y;
    r0.y = saturate(r3.w);
    r9.xyzw = r0.yyyy * float4(3.59986401,-5.15447998,0,-4.30629683) + float4(-1.10904896,9.92542553,0,0.535350025);
    r0.z = r0.y * r0.y;
    r9.xy = r9.xy * r0.zz + r9.zw;
    r10.xyz = cmp(r0.yyy >= float3(0,0.308081001,1));
    r10.xyw = r10.xyz ? float3(1,1,1) : 0;
    r10.xyz = r10.xyw + r10.yww;
    r10.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r10.xyz;
    r10.xyz = float3(0.5,0.5,0.5) * r10.xyz;
    r10.xyz = frac(r10.xyz);
    r9.xy = r10.xy * r9.xy;
    r9.xy = float2(2,2) * r9.xy;
    r0.w = r9.x + r9.y;
    r0.w = r10.z * 2 + r0.w;
    r0.w = saturate(r10.w * 1 + r0.w);
    r0.w = 1 + r0.w;
    r9.xy = r0.ww * float2(1,-0.5) + float2(0,0.5);
    r10.xyz = r0.yyy * float3(-326.91217,-8.58962059,0.978093982) + float3(65.1557312,6.06003809,-2.34643793);
    r11.xyz = r0.yyy * float3(2.7947371,-0.380264997,1.75859404) + float3(0,0.732589006,0.609749973);
    r10.xyz = r10.xyz * r0.zzz + r11.xyz;
    r11.xyzw = cmp(r0.yyyy >= float4(0,0.146465003,0.398990005,1));
    r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r11.xyz = r11.xyz + r11.yzw;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r10.xyz = r11.xyz * r10.xyz;
    r10.xy = float2(2,2) * r10.xy;
    r0.w = r10.x + r10.y;
    r0.w = r10.z * 2 + r0.w;
    r9.w = saturate(r11.w * 1 + r0.w);
    r10.xyz = r7.xxx * float3(0.360412002,6.34737015,0.440636009) + float3(0,-2.78181911,0.559364021);
    r11.xyzw = cmp(r7.xxxx >= float4(0,0.464646012,0.56565702,1));
    r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r11.xyz = r11.xyz + r11.yzw;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r10.xyz = r11.xyz * r10.xyz;
    r10.xy = float2(2,2) * r10.xy;
    r0.w = r10.x + r10.y;
    r0.w = r10.z * 2 + r0.w;
    r0.w = saturate(r11.w * 1 + r0.w);
    r10.xyz = r0.www * float3(-1.5,1.5,1) + float3(2,0.5,1);
    r11.xyzw = r0.yyyy * float4(-9.35559082,-0.0156789999,2.4375,1.15432405) + float4(2.73362899,-0.596500993,0,0.457855999);
    r11.xy = r11.xy * r0.zz + r11.zw;
    r12.xyz = cmp(r0.yyy >= float3(0,0.363635987,1));
    r12.xyw = r12.xyz ? float3(1,1,1) : 0;
    r12.xyz = r12.xyw + r12.yww;
    r12.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r12.xyz;
    r12.xyz = float3(0.5,0.5,0.5) * r12.xyz;
    r12.xyz = frac(r12.xyz);
    r11.xy = r12.xy * r11.xy;
    r11.xy = float2(2,2) * r11.xy;
    r0.w = r11.x + r11.y;
    r0.w = r12.z * 2 + r0.w;
    r0.w = saturate(r12.w * 1 + r0.w);
    r0.w = 0.5 * r0.w;
    r11.xyzw = saturate(r2.yyzz);
    r12.xyzw = r11.xyzw * float4(0.621302009,3.20689702,0.437126011,4.03225803) + float4(0,-2.20689702,0,-3.03225803);
    r11.xyz = cmp(r11.yyy >= float3(0,0.853534997,1));
    r13.xyw = r11.xyz ? float3(1,1,1) : 0;
    r11.xyz = r13.xyw + r13.yww;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r11.xy = r11.xy * r12.xy;
    r11.xy = float2(2,2) * r11.xy;
    r11.x = r11.x + r11.y;
    r11.x = r11.z * 2 + r11.x;
    r11.x = saturate(r13.w * 1 + r11.x);
    r11.x = r11.x * 0.149999976 + 0.850000024;
    r13.x = r11.x * r0.w;
    r14.xyzw = r0.yyyy * float4(-4.85582685,18.2092667,0,28.035614) + float4(2.84482789,-41.3514404,1,-4.89343691);
    r0.zw = r14.xy * r0.zz + r14.zw;
    r11.xyz = cmp(r0.yyy >= float3(0,0.585859001,1));
    r11.xyz = r11.xyz ? float3(1,1,1) : 0;
    r11.xy = r11.xy + r11.yz;
    r11.xy = float2(9.99999997e-007,9.99999997e-007) + r11.xy;
    r11.xy = float2(0.5,0.5) * r11.xy;
    r11.xy = frac(r11.xy);
    r0.yz = r11.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r13.y = saturate(r0.y + r0.z);
    r0.y = saturate(r1.w);
    r0.zw = r0.yy * float2(-2.56882596,-0.441240013) + float2(1,0.441240013);
    r11.xyz = cmp(r0.yyy >= float3(0,0.262625992,1));
    r11.xyz = r11.xyz ? float3(1,1,1) : 0;
    r11.xy = r11.xy + r11.yz;
    r11.xy = float2(9.99999997e-007,9.99999997e-007) + r11.xy;
    r11.xy = float2(0.5,0.5) * r11.xy;
    r11.xy = frac(r11.xy);
    r0.yz = r11.xy * r0.zw;
    r0.yz = r0.yz + r0.yz;
    r0.y = saturate(r0.y + r0.z);
    r0.y = r0.y * 99 + 1;
    r11.xyz = cmp(r11.www >= float3(0,0.843433976,1));
    r11.xyw = r11.xyz ? float3(1,1,1) : 0;
    r11.xyz = r11.xyw + r11.yww;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r0.zw = r11.xy * r12.zw;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r11.z * 2 + r0.z;
    r0.z = saturate(r11.w * 1 + r0.z);
    r0.z = r0.z * 0.75 + 0.25;
    r13.z = r0.y * r0.z;
    r0.x = mad(9, (int)vThreadID.x, (int)r0.x);
    r8.xy = float2(0.200000003,0.200000003);
    r8.z = cb0[3].x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r8.xyzw
    r8.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.yyyy, r3.xyzw
    r6.w = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.zzzz, r6.xyzw
    r10.w = r4.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r8.wwww, r10.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r9.z = r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r9.xyzw
    r13.w = r4.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r13.xyzw
    r7.yzw = r5.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r2.x = r5.w;
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}