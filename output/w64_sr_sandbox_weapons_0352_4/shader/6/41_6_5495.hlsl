// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:27 2023
Buffer<float4> t0 : register(t0);

cbuffer cb10 : register(b10)
{
  float4 cb10[2];
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
    r0.z = (uint)vThreadID.x << 2;
    r0.xy = (int2)r0.zz + (int2)r0.xy;
    r1.xyz = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r1.xyw = t0.Load(r0.y).xyz;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r0.y = cb10[1].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.yw = (int2)r0.yw;
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = cb0[22].x / r3.w;
    r5.w = r2.w + r0.w;
    r6.w = r5.w * r3.w;
    r7.xyz = cb9[r0.y+0].yyy * cb0[26].xyz;
    r7.xyz = cb0[25].xyz * cb9[r0.y+0].xxx + r7.xyz;
    r7.xyz = cb0[27].xyz * cb9[r0.y+0].zzz + r7.xyz;
    r7.xyz = cb0[28].xyz + r7.xyz;
    r7.xyz = r7.xyz + -r2.xyz;
    r0.y = cb0[22].x * 50;
    r0.w = dot(r7.xyz, r7.xyz);
    r0.w = rsqrt(r0.w);
    r7.xyz = r7.xyz * r0.www;
    r1.xyz = r7.xyz * r0.yyy + r1.xyw;
    r0.y = saturate(cb0[160].x * 1.5);
    r0.y = 1 + -r0.y;
    r6.xyz = r1.xyz * r0.yyy;
    r5.xyz = r6.xyz * cb0[155].xxx + r2.xyz;
    r0.y = cb0[160].x * r3.x;
    r3.y = r0.y * 6.28318548 + r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r3.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r4.xyzw
  }
  return;
}