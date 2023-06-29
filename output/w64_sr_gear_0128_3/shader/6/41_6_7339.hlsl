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
    r3.xy = t0.Load(r0.z).xy;
    r0.y = saturate(r1.w);
    r0.zw = r0.yy * float2(11.1111107,-11.1111155) + float2(0,11.1111155);
    r4.xyzw = cmp(r0.yyyy >= float4(0,0.0900000036,0.910000026,1));
    r4.xyzw = r4.xyzw ? float4(1,1,1,1) : 0;
    r4.xyz = r4.xyz + r4.yzw;
    r4.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r4.xyz;
    r4.xyz = float3(0.5,0.5,0.5) * r4.xyz;
    r4.xyz = frac(r4.xyz);
    r4.xz = r4.xz * r0.zw;
    r0.yz = r4.xy + r4.xy;
    r0.y = r0.y + r0.z;
    r0.y = r4.z * 2 + r0.y;
    r0.y = min(1, r0.y);
    r0.z = saturate(cb0[6].x * 0.200000003);
    r4.xyz = r0.zzz * float3(1001624.81,0,-986895.063) + float3(-200323.969,1,378310.781);
    r5.xyzw = cmp(r0.zzzz >= float4(0.199999005,0.200000003,0.383332998,0.383334011));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r0.zw = r5.xy + r5.yz;
    r0.zw = float2(9.99999997e-007,9.99999997e-007) + r0.zw;
    r0.yzw = float3(0.0299999993,0.5,0.5) * r0.yzw;
    r0.zw = frac(r0.zw);
    r0.zw = r0.zw * r4.xy;
    r4.x = 2;
    r0.zw = r4.xx * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = saturate(r4.z * r5.z + r0.z);
    r0.y = r0.y * r0.z;
    r3.z = r5.w ? 0 : r0.y;
    r0.x = mad(3, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r0.yz = (int2)r0.xx + int2(1,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  }
  return;
}