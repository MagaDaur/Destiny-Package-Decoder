// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
    r0.z = (uint)vThreadID.x << 2;
    r0.y = (int)r0.z + (int)r0.y;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yzw = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r4.xyz = t0.Load(r0.w).xyz;
    r0.y = saturate(r4.x);
    r5.xyz = r0.yyy * float3(0.25,-0.236842006,-2.23684192) + float3(0.25,1.47368503,1);
    r0.z = saturate(r1.w * 0.5 + -0.5);
    r0.z = r0.z * 0.5 + 0.5;
    r6.w = r5.x * r0.z;
    r0.z = r0.y * r0.y;
    r0.z = saturate(r5.y * r0.z + r5.z);
    r0.z = r0.z * 0.00350000057 + 0.00449999981;
    r0.w = saturate(r2.w);
    r5.xyz = r0.www * float3(0.378378004,-352.035614,4.05773497) + float3(-1.37837803,94.2328415,-7.37151909);
    r5.w = r0.w * r0.w;
    r5.x = r5.x * r5.w + 1;
    r5.x = max(0, r5.x);
    r5.x = r5.x * 0.949999988 + 0.0500000007;
    r0.z = r5.x * r0.z;
    r5.x = saturate(-1 + r1.w);
    r5.x = r5.x * 0.75 + 0.25;
    r7.y = r5.x * r0.z;
    r8.xy = r0.ww * float2(0,2.55799699) + float2(0,0.755786002);
    r5.xy = r5.yz * r5.ww + r8.xy;
    r8.xyz = cmp(r0.www >= float3(0,0.176667005,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r0.zw = r8.xy + r8.yz;
    r0.zw = float2(9.99999997e-007,9.99999997e-007) + r0.zw;
    r0.zw = float2(0.5,0.5) * r0.zw;
    r0.zw = frac(r0.zw);
    r0.zw = r0.zw * r5.xy;
    r0.zw = r0.zw + r0.zw;
    r0.z = saturate(r0.z + r0.w);
    r5.xy = r0.yy * float2(0.192982003,5.75862122) + float2(0,-4.75862122);
    r8.xyz = cmp(r0.yyy >= float3(0,0.855000019,1));
    r8.xyw = r8.xyz ? float3(1,1,1) : 0;
    r8.xyz = r8.xyw + r8.yww;
    r8.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r8.xyz;
    r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
    r8.xyz = frac(r8.xyz);
    r0.yw = r8.xy * r5.xy;
    r0.yw = float2(2,2) * r0.yw;
    r0.y = r0.y + r0.w;
    r0.y = r8.z * 2 + r0.y;
    r0.y = saturate(r8.w * 1 + r0.y);
    r0.y = 1 + r0.y;
    r0.y = r0.z * r0.y;
    r0.z = saturate(cb0[3].x * 0.200000003);
    r5.xyz = r0.zzz * float3(986895.063,0,-986895.063) + float3(-592136.063,1,779647.125);
    r8.xyzw = cmp(r0.zzzz >= float4(0.599999011,0.600000024,0.789999008,0.790000021));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r0.zw = r8.xy + r8.yz;
    r0.zw = float2(9.99999997e-007,9.99999997e-007) + r0.zw;
    r0.zw = float2(0.5,0.5) * r0.zw;
    r0.zw = frac(r0.zw);
    r0.zw = r0.zw * r5.xy;
    r5.x = 2;
    r0.zw = r5.xx * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = saturate(r5.z * r8.z + r0.z);
    r0.y = r0.y * r0.z;
    r7.z = r8.w ? 0 : r0.y;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r6.xyz = r3.xyz;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r7.x = 0;
    r7.w = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r7.xyzw
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}