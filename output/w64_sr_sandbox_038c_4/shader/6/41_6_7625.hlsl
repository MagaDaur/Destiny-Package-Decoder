// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:54 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[170];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6;
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
    r0.z = (uint)vThreadID.x << 2;
    r0.xy = (int2)r0.zz + (int2)r0.xy;
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyz = (int3)r0.yyy + int3(1,2,3);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.zw = t0.Load(r2.y).zw;
    r2.xy = t0.Load(r2.z).xy;
    r0.y = cb0[22].x / r2.x;
    r0.w = saturate(r1.w);
    r5.x = r0.w * 1.89873397 + -0.898733974;
    r5.yz = cmp(r0.ww >= float2(0.473333001,1));
    r5.yw = r5.yz ? float2(1,1) : 0;
    r5.yz = r5.yw + r5.ww;
    r5.yz = float2(9.99999997e-007,9.99999997e-007) + r5.yz;
    r5.yz = float2(0.5,0.5) * r5.yz;
    r6.yz = frac(r5.yz);
    r6.x = r6.y * r5.x;
    r5.xy = float2(2,2) * r6.xz;
    r0.w = r5.x + r5.y;
    r0.w = saturate(r5.w * 1 + r0.w);
    r0.w = 5 * r0.w;
    r5.w = r1.w + r0.y;
    r6.xyz = r3.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    r6.xyz = t1.SampleLevel(s1_s, r6.xyz, 0).xyz;
    r6.xyz = r6.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r6.xyz = r6.xyz * r0.www;
    r1.xyz = r6.xyz * cb0[22].xxx + r1.xyz;
    r0.y = saturate(cb0[169].x * 3);
    r0.y = 1 + -r0.y;
    r5.xyz = r1.xyz * r0.yyy;
    r1.xyz = r5.xyz * cb0[158].xxx + r3.xyz;
    r1.w = r3.w * r0.y;
    r0.y = cb0[169].x * r1.w;
    r4.z = r0.y * 6.28318548 + r4.z;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r1.xyzw
    r4.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r4.xyzw
    r2.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}