// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:37 2023
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
    r4.yzw = t0.Load(r0.w).xyz;
    r0.y = saturate(r3.w);
    r5.xyzw = r0.yyyy * float4(9.10222054,8.67555428,0,21.4577751) + float4(-2.60444403,-23.742218,0,-5.39110994);
    r0.z = r0.y * r0.y;
    r0.zw = r5.xy * r0.zz + r5.zw;
    r5.xyz = cmp(r0.yyy >= float3(0,0.5,1));
    r5.xyw = r5.xyz ? float3(1,1,1) : 0;
    r5.xyz = r5.xyw + r5.yww;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r0.yz = r5.xy * r0.zw;
    r0.yz = float2(2,2) * r0.yz;
    r0.y = r0.y + r0.z;
    r0.y = r5.z * 2 + r0.y;
    r0.y = saturate(r5.w * 1 + r0.y);
    r0.y = r0.y * 0.0150000006 + 0.00999999978;
    r0.z = saturate(r1.w);
    r5.xyz = r0.zzz * float3(-3.09278393,-16,16) + float3(3.09278393,12,-36);
    r6.xyz = cmp(r0.zzz >= float3(0,0.676666975,1));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.xy = frac(r6.xy);
    r6.z = r6.y * r5.x;
    r5.xw = r6.xz + r6.xz;
    r0.w = r5.x + r5.w;
    r0.w = min(1, r0.w);
    r6.z = r0.y * r0.w;
    r7.xyzw = r0.zzzz * float4(0,24,-9.10222054,-8.67555428) + float4(0,-4,2.60444403,23.742218);
    r0.y = r0.z * r0.z;
    r5.xy = r5.yz * r0.yy + r7.xy;
    r8.xyz = cmp(r0.zzz >= float3(0,0.5,1));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r5.zw = r8.xy + r8.yz;
    r5.zw = float2(9.99999997e-007,9.99999997e-007) + r5.zw;
    r5.zw = float2(0.5,0.5) * r5.zw;
    r5.zw = frac(r5.zw);
    r5.zw = r5.zw + r5.zw;
    r5.xy = r5.xy * r5.zw;
    r0.w = saturate(r5.x + r5.y);
    r8.x = 0.699999988 * r0.w;
    r5.xy = saturate(r4.yw);
    r0.w = r5.x * 2 + 1;
    r7.xy = r0.zz * float2(0,-21.4577751) + float2(1,6.39110994);
    r0.yz = r7.zw * r0.yy + r7.xy;
    r0.yz = r0.yz * r5.zw;
    r0.y = saturate(r0.y + r0.z);
    r0.y = 1 + r0.y;
    r8.y = r0.w * r0.y;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r2.xyzw
    r6.xy = r3.xy;
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r6.xyzw
    r8.z = r3.z;
    r8.w = r5.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r8.xyzw
    r4.x = r3.w;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r4.xyzw
  }
  return;
}