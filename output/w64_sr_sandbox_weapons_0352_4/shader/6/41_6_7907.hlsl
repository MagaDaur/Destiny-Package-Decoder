// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:17 2023
Texture3D<float4> t1 : register(t1);

Buffer<float4> t0 : register(t0);

SamplerState s1_s : register(s1);

cbuffer cb10 : register(b10)
{
  float4 cb10[1];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[32];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[161];
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
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[99].x;
    r0.y = (uint)cb0[90].x;
    r0.y = mad(3, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = t0.Load(r0.y).xyzw;
    r0.yz = (int2)r0.yy + int2(1,2);
    r2.xyzw = t0.Load(r0.y).xyzw;
    r3.xyzw = t0.Load(r0.z).xyzw;
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = cb0[22].x / r3.z;
    r4.w = r1.w + r0.z;
    r5.xyz = cb9[r0.y+0].yyy * cb0[26].xyz;
    r5.xyz = cb0[25].xyz * cb9[r0.y+0].xxx + r5.xyz;
    r0.yzw = cb0[27].xyz * cb9[r0.y+0].zzz + r5.xyz;
    r0.yzw = cb0[28].xyz + r0.yzw;
    r0.yzw = r0.yzw + -r2.xyz;
    r1.w = dot(r0.yzw, r0.yzw);
    r5.x = sqrt(r1.w);
    r5.x = -0.119999997 + r5.x;
    r5.y = cb0[22].x * cb0[6].x;
    r1.w = rsqrt(r1.w);
    r0.yzw = r1.www * r0.yzw;
    r1.w = cmp(0 < r5.x);
    r5.x = cmp(r5.x < 0);
    r1.w = (int)-r1.w + (int)r5.x;
    r1.w = (int)r1.w;
    r0.yzw = r1.www * r0.yzw;
    r0.yzw = r0.yzw * r5.yyy + r1.xyz;
    r1.xyz = r2.xyz * float3(0.5,0.5,0.5) + float3(0.5,0.5,0.5);
    r1.xyz = t1.SampleLevel(s1_s, r1.xyz, 0).xyz;
    r1.xyz = r1.xyz * float3(2,2,2) + float3(-1,-1,-1);
    r1.xyz = cb0[22].xxx * r1.xyz;
    r0.yzw = r1.xyz * float3(5,5,5) + r0.yzw;
    r1.x = saturate(cb0[160].x * 5);
    r1.x = 1 + -r1.x;
    r4.xyz = r1.xxx * r0.yzw;
    r2.xyz = r4.xyz * cb0[148].xxx + r2.xyz;
    r0.y = cb0[160].x * r2.w;
    r3.x = r0.y * 6.28318548 + r3.x;
    r0.x = mad(3, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r0.yz = (int2)r0.xx + int2(1,2);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  }
  return;
}