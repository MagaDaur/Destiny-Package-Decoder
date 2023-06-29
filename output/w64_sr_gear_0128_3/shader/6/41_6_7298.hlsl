// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:36 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[2];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[100];
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
    r0.y = cb10[1].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb10[0].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.zw = (int2)r0.zw;
    r0.z = (int)r0.w + (int)r0.z;
    r0.w = (uint)vThreadID.x;
    r1.y = cb0[19].x + r0.w;
    r2.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r2.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r2.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r2.w = -r0.w;
    r3.xyz = cb9[r0.z+0].xyz;
    r3.w = 0;
    r2.xyzw = cb9[r0.z+32].wwww * r3.xyzw + r2.xyzw;
    r3.xyz = -cb9[r0.z+32].zxy * r2.yzx;
    r3.xyz = -cb9[r0.z+32].yzx * r2.zxy + -r3.xyz;
    r2.xyz = cb9[r0.z+32].www * r2.xyz + r3.xyz;
    r2.xyz = r2.www * -cb9[r0.z+32].xyz + r2.xyz;
    r3.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r3.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r3.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r4.w = -r0.w;
    r4.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r3.xyz;
    r3.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r3.xyzw = cb9[r0.y+32].wwww * r3.xyzw + r4.xyzw;
    r4.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r4.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r4.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r4.w = -r0.w;
    r5.xyz = cb9[r0.y+0].xyz;
    r5.w = 0;
    r4.xyzw = cb9[r0.z+32].wwww * r5.xyzw + r4.xyzw;
    r5.xyz = -cb9[r0.z+32].zxy * r4.yzx;
    r5.xyz = -cb9[r0.z+32].yzx * r4.zxy + -r5.xyz;
    r4.xyz = cb9[r0.z+32].www * r4.xyz + r5.xyz;
    r0.yzw = r4.www * -cb9[r0.z+32].xyz + r4.xyz;
    r2.xyz = -r2.xyz + r0.yzw;
    r4.xyzw = float4(0.00100000005,0,0,0) * r3.wwww;
    r4.xyzw = r3.zzyx * float4(-0,0.00100000005,-0.00100000005,0.00100000005) + r4.xyzw;
    r0.yzw = r4.yzx * r3.zxy;
    r0.yzw = r3.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r3.www * r4.xyz + r0.yzw;
    r3.xyz = r4.www * r3.xyz + r0.yzw;
    r0.x = mad(3, (int)vThreadID.x, (int)r0.x);
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r0.yz = (int2)r0.xx + int2(1,2);
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r1.xzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
  }
  return;
}