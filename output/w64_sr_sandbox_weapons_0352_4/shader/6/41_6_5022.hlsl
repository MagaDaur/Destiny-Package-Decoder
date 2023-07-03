// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:29 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb0 : register(b0)
{
  float4 cb0[141];
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
    r0.y = mad(5, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r2.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r3.xyzw = t0.Load(r2.x).xyzw;
    r4.xyzw = t0.Load(r2.y).xyzw;
    r5.xyzw = t0.Load(r2.z).xyzw;
    r2.x = t0.Load(r2.w).x;
    r0.y = cb0[22].x / r4.w;
    r6.w = r3.w + r0.y;
    r0.yzw = r3.xyz * float3(0.100000001,0.100000001,0.100000001) + float3(0.5,0.5,0.5);
    r0.yzw = t1.SampleLevel(s1_s, r0.yzw, 0).xyz;
    r0.yzw = r0.yzw * float3(2,2,2) + float3(-1,-1,-1);
    r0.yzw = cb0[22].xxx * r0.yzw;
    r0.yzw = r0.yzw * float3(5,5,5) + r1.xyz;
    r3.w = saturate(cb0[140].x * 3);
    r3.w = 1 + -r3.w;
    r1.xyz = r3.www * r0.yzw;
    r6.xyz = r1.xyz * cb0[132].xxx + r3.xyz;
    r0.y = cb0[140].x * r4.x;
    r4.y = r0.y * 6.28318548 + r4.y;
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
    r1.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.xxxx, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.yyyy, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.zzzz, r5.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r1.wwww, r2.xyzw
  }
  return;
}