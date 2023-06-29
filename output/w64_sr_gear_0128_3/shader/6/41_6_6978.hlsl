// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb0 : register(b0)
{
  float4 cb0[142];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7;
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
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.xyz = t0.Load(r2.w).xyz;
    r0.y = cb0[22].x / r4.z;
    r0.z = saturate(r2.y);
    r6.xy = r0.zz * float2(0.293388009,3.94827604) + float2(0,-2.94827604);
    r7.xyz = cmp(r0.zzz >= float3(0,0.80666697,1));
    r7.xyw = r7.xyz ? float3(1,1,1) : 0;
    r7.xyz = r7.xyw + r7.yww;
    r7.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r7.xyz;
    r7.xyz = float3(0.5,0.5,0.5) * r7.xyz;
    r7.xyz = frac(r7.xyz);
    r0.zw = r7.xy * r6.xy;
    r0.zw = float2(2,2) * r0.zw;
    r0.z = r0.z + r0.w;
    r0.z = r7.z * 2 + r0.z;
    r0.z = saturate(r7.w * 1 + r0.z);
    r0.z = r0.z * 1.5 + 0.5;
    r6.w = r1.w + r0.y;
    r7.xyz = cb0[140].xyz * cb0[138].xxx;
    r1.xyz = r7.xyz * cb0[139].xxx + r1.xyz;
    r0.y = saturate(cb0[141].x * r0.z);
    r0.y = 1 + -r0.y;
    r6.xyz = r1.xyz * r0.yyy;
    r3.xyz = r6.xyz * cb0[136].xxx + r3.xyz;
    r0.y = cb0[141].x * r3.w;
    r4.x = r0.y * 6.28318548 + r4.x;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}