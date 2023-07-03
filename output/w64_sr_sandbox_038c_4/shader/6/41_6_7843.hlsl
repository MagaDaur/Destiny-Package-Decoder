// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:53 2023
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
  float4 cb0[149];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10;
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
    r0.w = cb0[21].x + r1.z;
    r0.w = (uint)r0.w;
    r2.x = (int)r0.w ^ 61;
    r0.w = (uint)r0.w >> 16;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 9;
    r2.x = (uint)r0.w >> 4;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = (int)r0.w * 0x27d4eb2d;
    r2.x = (uint)r0.w >> 15;
    r0.w = (int)r0.w ^ (int)r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r2.x = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.y = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.z = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.w = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r4.yz = float2(2.32830644e-010,2.32830644e-010) * r3.yz;
    r1.w = r3.y * 6.98491931e-010 + 3;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r5.x = r3.y * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r5.y = r3.y * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r5.z = r3.y * 4.65661287e-010 + -1;
    r3.y = dot(r5.xyz, r5.xyz);
    r3.y = rsqrt(r3.y);
    r5.xyz = r5.xyz * r3.yyy;
    r5.xyz = float3(0.0500000007,0.0500000007,0.0500000007) * r5.xyz;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r3.xyzw = float4(2.32830644e-010,1.46291812e-009,4.65661287e-010,1.16415322e-010) * r3.xyxx;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = 2.03181985e-011 * r0.w;
    sincos(r0.w, r6.x, r7.x);
    sincos(r3.y, r8.x, r9.x);
    r7.y = r8.x * r6.x;
    r7.z = r9.x * r6.x;
    r6.xyz = r7.xyz * r3.www;
    r7.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r7.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.w;
    r8.xyz = cb9[r0.z+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r7.xyz = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r8.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r8.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.w;
    r9.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r8.xyz;
    r8.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r8.xyzw = cb9[r0.y+32].wwww * r8.xyzw + r9.xyzw;
    r9.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r9.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r9.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r9.w = -r0.w;
    r10.xyz = cb9[r0.y+0].xyz;
    r10.w = 0;
    r9.xyzw = cb9[r0.z+32].wwww * r10.xyzw + r9.xyzw;
    r10.xyz = -cb9[r0.z+32].zxy * r9.yzx;
    r10.xyz = -cb9[r0.z+32].yzx * r9.zxy + -r10.xyz;
    r9.xyz = cb9[r0.z+32].www * r9.xyz + r10.xyz;
    r9.xyz = r9.www * -cb9[r0.z+32].xyz + r9.xyz;
    r7.xyz = r9.xyz + -r7.xyz;
    r9.xyz = -r8.yzx * r5.zxy;
    r9.xyz = r5.yzx * -r8.zxy + -r9.xyz;
    r0.y = dot(r5.xyz, -r8.xyz);
    r9.w = -r0.y;
    r5.xyz = r8.www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r9.xyzw + r5.xyzw;
    r9.xyz = r8.zxy * r5.yzx;
    r9.xyz = r8.yzx * r5.zxy + -r9.xyz;
    r5.xyz = r8.www * r5.xyz + r9.xyz;
    r5.xyz = r5.www * r8.xyz + r5.xyz;
    r5.xyz = r5.xyz + r7.xyz;
    r7.xyz = -r8.yzx * r6.zxy;
    r7.xyz = r6.yzx * -r8.zxy + -r7.xyz;
    r0.y = dot(r6.xyz, -r8.xyz);
    r7.w = -r0.y;
    r6.xyz = r8.www * r6.xyz;
    r6.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = r8.zxy * r6.yzx;
    r7.xyz = r8.yzx * r6.zxy + -r7.xyz;
    r6.xyz = r8.www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * r8.xyz + r6.xyz;
    r6.xyz = cb0[148].xyz * r3.zzz + r6.xyz;
    r3.yzw = -cb9[r0.z+32].yzx * r5.zxy;
    r7.xyz = r5.yzx * -cb9[r0.z+32].zxy + -r3.yzw;
    r0.y = dot(r5.xyz, -cb9[r0.z+32].xyz);
    r7.w = -r0.y;
    r8.xyz = cb9[r0.z+32].www * r5.xyz;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r3.yzw = cb9[r0.z+32].zxy * r7.yzx;
    r3.yzw = cb9[r0.z+32].yzx * r7.zxy + -r3.yzw;
    r3.yzw = cb9[r0.z+32].www * r7.xyz + r3.yzw;
    r3.yzw = r7.www * cb9[r0.z+32].xyz + r3.yzw;
    r0.yzw = cb9[r0.z+0].xyz + r3.yzw;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r6.w = dot(-cb12[6].xyz, r0.yzw);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r5.xyzw
    r1.xy = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r2.xyzw
    r4.x = r3.x;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r4.xyzw
  }
  return;
}