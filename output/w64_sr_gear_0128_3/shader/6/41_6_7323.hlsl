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
  float4 r0,r1,r2,r3,r4,r5;
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
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = t0.Load(r0.z).xy;
    r0.w = saturate(r1.w);
    r3.xyz = r0.www * float3(0,0.699999988,1) + float3(1,0.300000012,2);
    r4.xy = r0.ww * float2(11.1111107,-11.1111155) + float2(0,11.1111155);
    r5.xyzw = cmp(r0.wwww >= float4(0,0.0900000036,0.910000026,1));
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
    r5.xyz = r5.xyz + r5.yzw;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r5.xz = r5.xz * r4.xy;
    r4.xy = r5.xy + r5.xy;
    r0.w = r4.x + r4.y;
    r0.w = r5.z * 2 + r0.w;
    r0.w = min(1, r0.w);
    r4.x = saturate(cb0[6].x * 0.200000003);
    r4.yzw = r4.xxx * float3(1001624.81,0,-986895.063) + float3(-200323.969,1,378310.781);
    r5.xyzw = cmp(r4.xxxx >= float4(0.199999005,0.200000003,0.383332998,0.383334011));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r5.xy = r5.xy + r5.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r4.xy = r5.xy * r4.yz;
    r4.z = 2;
    r4.xy = r4.zz * r4.xy;
    r4.x = r4.x + r4.y;
    r4.x = saturate(r4.w * r5.z + r4.x);
    r0.w = r4.x * r0.w;
    r4.y = r5.w ? 0 : r0.w;
    r0.w = (uint)vThreadID.x << 2;
    r0.x = (int)r0.w + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyz = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r3.w = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r3.xyzw
    r4.x = r0.z;
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r4.xyzw
  }
  return;
}