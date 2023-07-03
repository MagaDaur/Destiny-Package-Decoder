// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:30 2023
Buffer<float4> t0 : register(t0);

cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb12 : register(b12)
{
  float4 cb12[8];
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8;
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
    r1.xyzw = (int4)r0.yyyy + int4(1,2,3,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r0.yzw = t0.Load(r0.y).xyz;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r1.xyz = t0.Load(r1.w).xyz;
    r5.x = cb10[2].x + 0.25;
    r5.y = cmp(cb0[23].x < cb0[24].x);
    r5.y = r5.y ? cb0[23].x : 0;
    r5.xy = (int2)r5.xy;
    r5.x = (int)r5.y + (int)r5.x;
    r5.y = cb0[22].x / r4.x;
    r6.w = r5.y + r2.w;
    r2.w = saturate(cb0[160].x * 3);
    r2.w = 1 + -r2.w;
    r7.xyz = r2.www * r0.yzw;
    r6.xyz = r7.xyz * cb0[156].xxx + r2.xyz;
    r0.y = cb0[160].x * r3.x;
    r3.y = r0.y * 6.28318548 + r3.y;
    r0.yzw = -cb9[r5.x+32].yzx * r6.zxy;
    r2.xyz = r6.yzx * -cb9[r5.x+32].zxy + -r0.yzw;
    r0.y = dot(r6.xyz, -cb9[r5.x+32].xyz);
    r2.w = -r0.y;
    r8.xyz = cb9[r5.x+32].www * r6.xyz;
    r8.w = 0;
    r2.xyzw = r8.xyzw + r2.xyzw;
    r0.yzw = cb9[r5.x+32].zxy * r2.yzx;
    r0.yzw = cb9[r5.x+32].yzx * r2.zxy + -r0.yzw;
    r0.yzw = cb9[r5.x+32].www * r2.xyz + r0.yzw;
    r0.yzw = r2.www * cb9[r5.x+32].xyz + r0.yzw;
    r0.yzw = cb9[r5.x+0].xyz + r0.yzw;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r7.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r7.xyzw
    r2.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.xxxx, r6.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.yyyy, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.zzzz, r4.xyzw
    r1.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r2.wwww, r1.xyzw
  }
  return;
}