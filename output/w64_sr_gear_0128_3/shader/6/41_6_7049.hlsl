// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
Buffer<float4> t0 : register(t0);

cbuffer cb10 : register(b10)
{
  float4 cb10[1];
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
  float4 cb0[156];
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
    r0.y = mad(6, (int)vThreadID.x, (int)r0.y);
    r1.xyzw = (int4)r0.yyyy + int4(2,1,3,4);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyz = t0.Load(r0.y).xyz;
    r4.xyz = t0.Load(r1.y).xyz;
    r5.xyzw = t0.Load(r1.z).xyzw;
    r1.xyzw = t0.Load(r1.w).xyzw;
    r0.y = (int)r0.y + 5;
    r6.xy = t0.Load(r0.y).xy;
    r0.y = cb10[0].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb0[22].x / r5.x;
    r2.x = r2.x + r0.z;
    r3.w = r2.x * r5.x;
    r4.xyz = r3.xyz * cb0[153].xxx + r4.xyz;
    r0.z = cb0[155].x * r2.y;
    r2.z = r0.z * 6.28318548 + r2.z;
    r7.xyz = -cb9[r0.y+32].yzx * r4.zxy;
    r7.xyz = r4.yzx * -cb9[r0.y+32].zxy + -r7.xyz;
    r0.z = dot(r4.xyz, -cb9[r0.y+32].xyz);
    r7.w = -r0.z;
    r8.xyz = cb9[r0.y+32].www * r4.xyz;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r8.xyz = cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * cb9[r0.y+32].xyz + r7.xyz;
    r0.yzw = cb9[r0.y+0].xyz + r7.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r4.w = sqrt(r0.y);
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r4.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r1.xyzw
    r0.y = (int)r0.x + 5;
    r6.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
  }
  return;
}