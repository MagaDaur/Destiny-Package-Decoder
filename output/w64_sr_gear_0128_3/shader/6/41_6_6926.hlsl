// ---- Created with 3Dmigoto v1.3.16 on Fri Jun 30 00:18:38 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[3];
}

cbuffer cb9 : register(b9)
{
  float4 cb9[64];
}

cbuffer cb0 : register(b0)
{
  float4 cb0[137];
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
    r0.y = cb10[2].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = cb10[1].x + 0.25;
    r0.w = cmp(cb0[23].x < cb0[24].x);
    r0.w = r0.w ? cb0[23].x : 0;
    r0.zw = (int2)r0.zw;
    r0.z = (int)r0.w + (int)r0.z;
    r0.w = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.w;
    r2.x = cb0[21].x + r1.z;
    r2.x = (uint)r2.x;
    r2.y = (int)r2.x ^ 61;
    r2.x = (uint)r2.x >> 16;
    r2.x = (int)r2.x ^ (int)r2.y;
    r2.x = (int)r2.x * 9;
    r2.y = (uint)r2.x >> 4;
    r2.x = (int)r2.y ^ (int)r2.x;
    r2.x = (int)r2.x * 0x27d4eb2d;
    r2.y = (uint)r2.x >> 15;
    r2.x = (int)r2.y ^ (int)r2.x;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r2.x;
    r1.w = 2.32830644e-010 * r2.y;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r2.x;
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = 1 + r0.w;
    r0.w = r0.w / cb0[89].x;
    r3.x = 1 + -r0.w;
    r3.x = cb0[22].x * r3.x;
    r3.yzw = cb0[6].zzz * float3(0,1,0);
    r4.x = cmp(cb0[134].x < 0.5);
    r4.yzw = cb9[r0.y+0].xyz + -cb0[136].xyz;
    r4.yzw = r0.www * r4.yzw + cb0[136].xyz;
    r5.xyzw = cb9[r0.y+32].xyzw + -cb0[135].xyzw;
    r5.xyzw = r0.wwww * r5.xyzw + cb0[135].xyzw;
    r0.w = dot(r5.xyzw, r5.xyzw);
    r0.w = rsqrt(r0.w);
    r5.xyzw = r5.xyzw * r0.wwww;
    r5.xyzw = r4.xxxx ? cb9[r0.y+32].xyzw : r5.xyzw;
    r4.xyz = r4.xxx ? cb9[r0.y+0].xyz : r4.yzw;
    r6.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r6.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r6.xyz;
    r0.y = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r6.w = -r0.y;
    r7.xyz = cb9[r0.z+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.z+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r0.z+32].xyz + r6.xyz;
    r7.xyz = -cb9[r0.z+32].zxy * r5.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r5.zxy + -r7.xyz;
    r0.y = dot(-cb9[r0.z+32].xyz, r5.xyz);
    r8.w = -r0.y;
    r8.xyz = cb9[r0.z+32].www * r5.xyz + r7.xyz;
    r7.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = r5.wwww * r7.xyzw + r8.xyzw;
    r7.xyz = cb9[r0.z+32].yzx * r4.zxy;
    r7.xyz = r4.yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.y = dot(r4.xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.y;
    r4.xyz = cb9[r0.z+32].www * r4.xyz;
    r4.w = 0;
    r4.xyzw = r7.xyzw + r4.xyzw;
    r7.xyz = -cb9[r0.z+32].zxy * r4.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r4.zxy + -r7.xyz;
    r4.xyz = cb9[r0.z+32].www * r4.xyz + r7.xyz;
    r0.yzw = r4.www * -cb9[r0.z+32].xyz + r4.xyz;
    r4.xyz = -r6.xyz + r0.yzw;
    r6.xyzw = -r5.zxyx * r3.wwzz;
    r7.xyz = -r3.yzw * -r5.yzx + r6.xyz;
    r7.w = -r6.w;
    r6.xyz = cb0[6].zzz * float3(1,0,0);
    r6.w = 0;
    r6.xyzw = r5.wwww * r6.xyzw + r7.xyzw;
    r0.yzw = r6.yzx * r5.zxy;
    r0.yzw = r5.yzx * r6.zxy + -r0.yzw;
    r0.yzw = r5.www * r6.xyz + r0.yzw;
    r5.xyz = r6.www * r5.xyz + r0.yzw;
    r0.yz = float2(5,1) * r3.xx;
    r0.z = r0.z / cb0[34].x;
    r5.w = cb0[5].z + -r0.z;
    r0.z = (uint)vThreadID.x << 2;
    r0.x = (int)r0.z + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r3.xyz = (int3)r0.xxx + int3(1,2,3);
    r4.w = r0.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r4.xyzw
    r1.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r1.xyzw
    r2.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r2.xyzw
  }
  return;
}