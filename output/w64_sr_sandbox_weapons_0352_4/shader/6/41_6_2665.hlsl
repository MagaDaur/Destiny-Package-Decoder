// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:39 2023
Buffer<float4> t0 : register(t0);

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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r2.xyz = t0.Load(r2.z).xzw;
    r5.xyzw = t0.Load(r2.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.x = t0.Load(r0.y).x;
    r7.w = saturate(r2.z);
    r0.yz = saturate(r5.xy);
    r8.xy = r0.zz * float2(0.479674995,3.37036991) + float2(0,-2.37036991);
    r9.xyz = cmp(r0.zzz >= float3(0,0.819999993,1));
    r9.xyw = r9.xyz ? float3(1,1,1) : 0;
    r9.xyz = r9.xyw + r9.yww;
    r9.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r9.xyz;
    r9.xyz = float3(0.5,0.5,0.5) * r9.xyz;
    r9.xyz = frac(r9.xyz);
    r8.xy = r9.xy * r8.xy;
    r8.xy = float2(2,2) * r8.xy;
    r0.w = r8.x + r8.y;
    r0.w = r9.z * 2 + r0.w;
    r0.w = saturate(r9.w * 1 + r0.w);
    r0.w = r0.w * 0.0200000014 + 0.0299999993;
    r2.w = saturate(r3.w);
    r8.x = r2.w * 1016801 + -464339.125;
    r8.yzw = cmp(r2.www >= float3(0.456667006,0.456667989,1));
    r9.xyw = r8.yzw ? float3(1,1,1) : 0;
    r8.yz = r9.xy + r9.yw;
    r8.yz = float2(9.99999997e-007,9.99999997e-007) + r8.yz;
    r8.yz = float2(0.5,0.5) * r8.yz;
    r9.yz = frac(r8.yz);
    r9.x = r9.y * r8.x;
    r8.xy = float2(2,2) * r9.xz;
    r2.w = r8.x + r8.y;
    r2.w = saturate(r9.w * 1 + r2.w);
    r8.xy = saturate(float2(10.1010103,5.05050516) * r1.ww);
    r8.x = r8.x * 2 + 1;
    r2.w = r8.x * r2.w;
    r9.y = r2.w * r0.w;
    r9.xz = r8.yy * float2(-1.28846204,-0.117999993) + float2(0.288462013,-0.0329999998);
    r0.w = r8.y * r8.y;
    r0.w = r9.x * r0.w + 1;
    r0.w = min(1, r0.w);
    r2.w = saturate(-1 + r3.w);
    r8.x = r2.w * 986895.063 + -493446.531;
    r8.yzw = cmp(r2.www >= float3(0.499998987,0.5,1));
    r10.xyw = r8.yzw ? float3(1,1,1) : 0;
    r8.yz = r10.xy + r10.yw;
    r8.yz = float2(9.99999997e-007,9.99999997e-007) + r8.yz;
    r8.yz = float2(0.5,0.5) * r8.yz;
    r10.yz = frac(r8.yz);
    r10.x = r10.y * r8.x;
    r8.xy = float2(2,2) * r10.xz;
    r2.w = r8.x + r8.y;
    r2.w = saturate(r10.w * 1 + r2.w);
    r2.w = 1 + -r2.w;
    r9.w = r2.w * r0.w;
    r0.z = 1 + -r0.z;
    r8.x = r0.z * 115 + 5;
    r10.xyz = r0.yyy * float3(0.519999981,141.000137,0.543623984) + float3(0,-70.2400665,0.456375986);
    r11.xyzw = cmp(r0.yyyy >= float4(0,0.5,0.503332973,1));
    r11.xyzw = r11.xyzw ? float4(1,1,1,1) : 0;
    r11.xyz = r11.xyz + r11.yzw;
    r11.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r11.xyz;
    r11.xyz = float3(0.5,0.5,0.5) * r11.xyz;
    r11.xyz = frac(r11.xyz);
    r10.xyz = r11.xyz * r10.xyz;
    r0.zw = float2(2,2) * r10.xy;
    r0.z = r0.z + r0.w;
    r0.z = r10.z * 2 + r0.z;
    r8.z = saturate(r11.w * 1 + r0.z);
    r0.x = mad(9, (int)vThreadID.x, (int)r0.x);
    r7.yz = float2(0.5,0.5);
    r7.x = cb0[3].x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.yzxw
    r10.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.xxxx, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.yyyy, r3.xyzw
    r7.yz = r4.xy;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.zzzz, r7.xwyz
    r7.xy = r4.zw;
    r7.z = r2.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r10.wwww, r7.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(5,6,7,8);
    r9.x = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r9.xyzw
    r8.yw = r2.yz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r8.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r6.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r6.xyzw
  }
  return;
}