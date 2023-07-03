// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:32 2023
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
  float4 cb0[152];
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
    r1.xyz = (int3)r0.yyy + int3(1,2,3);
    r2.xyzw = t0.Load(r1.x).xyzw;
    r3.xyzw = t0.Load(r1.y).xyzw;
    r1.xyw = t0.Load(r0.y).xyz;
    r4.xyzw = t0.Load(r1.z).xyzw;
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.w = (int)cb0[23].x;
    r0.y = (int)r0.w + (int)r0.y;
    r0.w = cb0[22].x / r4.x;
    r1.z = saturate(cb0[6].z);
    r1.z = r1.z * 3 + 1;
    r5.x = saturate(r4.z);
    r5.x = 1 + -r5.x;
    r5.x = r5.x * 9 + 1;
    r1.z = r5.x * r1.z;
    r5.w = r2.w + r0.w;
    r0.w = cb0[22].x * r1.z;
    r1.z = dot(-r2.xyz, -r2.xyz);
    r1.z = rsqrt(r1.z);
    r6.xyz = -r2.xyz * r1.zzz;
    r1.xyz = r6.xyz * r0.www + r1.xyw;
    r0.w = saturate(cb0[151].x * 3);
    r0.w = 1 + -r0.w;
    r1.xyz = r1.xyz * r0.www;
    r5.xyz = r1.xyz * cb0[146].xxx + r2.xyz;
    r0.w = cb0[151].x * r3.x;
    r3.y = r0.w * 6.28318548 + r3.y;
    r2.xyz = -cb9[r0.y+32].yzx * r5.zxy;
    r2.xyz = r5.yzx * -cb9[r0.y+32].zxy + -r2.xyz;
    r0.w = dot(r5.xyz, -cb9[r0.y+32].xyz);
    r2.w = -r0.w;
    r6.xyz = cb9[r0.y+32].www * r5.xyz;
    r6.w = 0;
    r2.xyzw = r6.xyzw + r2.xyzw;
    r6.xyz = cb9[r0.y+32].zxy * r2.yzx;
    r6.xyz = cb9[r0.y+32].yzx * r2.zxy + -r6.xyz;
    r2.xyz = cb9[r0.y+32].www * r2.xyz + r6.xyz;
    r2.xyz = r2.www * cb9[r0.y+32].xyz + r2.xyz;
    r2.xyz = cb9[r0.y+0].xyz + r2.xyz;
    r2.xyz = -cb12[7].xyz + r2.xyz;
    r0.y = dot(r2.xyz, r2.xyz);
    r1.w = sqrt(r0.y);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r1.xyzw
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