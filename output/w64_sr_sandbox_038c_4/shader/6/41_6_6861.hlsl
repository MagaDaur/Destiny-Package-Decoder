// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:22:58 2023
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
  float4 cb0[154];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11;
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
    r1.w = cb0[19].x + r0.w;
    r2.x = cb0[21].x + r1.w;
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
    r3.x = 2.32830644e-010 * r2.y;
    r2.z = r2.y * 1.16415322e-010 + 0.5;
    r0.w = 1 + r0.w;
    r0.w = r0.w / cb0[89].x;
    r2.w = 1 + -r0.w;
    r2.w = cb0[22].x * r2.w;
    r4.w = r2.w / r2.z;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r2.x;
    r5.x = r2.z * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r2.x;
    r5.y = r2.z * 4.65661287e-010 + -1;
    r2.x = mad((int)r2.x, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r2.x;
    r5.z = r2.x * 4.65661287e-010 + -1;
    r2.x = dot(r5.xyz, r5.xyz);
    r2.x = rsqrt(r2.x);
    r2.xzw = r5.xyz * r2.xxx;
    r2.xzw = float3(0.0500000007,0.0500000007,0.0500000007) * r2.xzw;
    r3.y = dot(r2.xzw, r2.xzw);
    r3.y = rsqrt(r3.y);
    r5.xyz = r3.yyy * r2.xzw;
    r5.xyz = float3(0.100000001,0.100000001,0.100000001) * r5.xyz;
    r3.y = cmp(cb0[148].x < 0.5);
    if (r3.y != 0) {
      r6.xyzw = cb9[r0.y+32].xyzw;
      r7.xyz = cb9[r0.y+0].xyz;
    } else {
      r3.y = cmp(cb0[148].x < 1.5);
      if (r3.y != 0) {
        r8.xyz = cb9[r0.y+0].xyz + -cb0[151].xyz;
        r7.xyz = r0.www * r8.xyz + cb0[151].xyz;
        r8.xyzw = cb9[r0.y+32].xyzw + -cb0[150].xyzw;
        r8.xyzw = r0.wwww * r8.xyzw + cb0[150].xyzw;
        r3.y = dot(r8.xyzw, r8.xyzw);
        r3.y = rsqrt(r3.y);
        r6.xyzw = r8.xyzw * r3.yyyy;
      } else {
        r8.xyz = cb9[r0.y+0].xyz + -cb0[151].xyz;
        r9.xyz = -cb0[152].xyz + cb0[151].xyz;
        r3.y = dot(r8.xyz, r8.xyz);
        r3.y = sqrt(r3.y);
        r3.y = max(9.99999975e-006, r3.y);
        r8.xyz = r8.xyz / r3.yyy;
        r5.w = dot(r9.xyz, r8.xyz);
        r5.w = r5.w + r5.w;
        r8.xyz = r5.www * r8.xyz + -r9.xyz;
        r5.w = dot(r8.xyz, r8.xyz);
        r5.w = sqrt(r5.w);
        r5.w = max(9.99999975e-006, r5.w);
        r8.xyz = r8.xyz / r5.www;
        r8.xyz = r8.xyz * r3.yyy + cb9[r0.y+0].xyz;
        r8.xyz = -cb0[151].xyz + r8.xyz;
        r8.xyz = float3(0.5,0.5,0.5) * r8.xyz;
        r3.y = cmp(2.5 < cb0[148].x);
        if (r3.y != 0) {
          r3.y = dot(r9.xyz, r9.xyz);
          r3.y = sqrt(r3.y);
          r3.y = max(9.99999975e-006, r3.y);
          r10.xyz = -cb0[153].xyz + cb0[152].xyz;
          r11.xyz = r9.xyz / r3.yyy;
          r5.w = dot(r10.xyz, r11.xyz);
          r5.w = r5.w + r5.w;
          r10.xyz = r5.www * r11.xyz + -r10.xyz;
          r5.w = dot(r10.xyz, r10.xyz);
          r5.w = sqrt(r5.w);
          r5.w = max(9.99999975e-006, r5.w);
          r10.xyz = r10.xyz / r5.www;
          r10.xyz = r10.xyz * r3.yyy + cb0[151].xyz;
          r10.xyz = -cb0[152].xyz + r10.xyz;
          r9.xyz = float3(0.5,0.5,0.5) * r10.xyz;
        }
        r3.y = r0.w * r0.w;
        r5.w = r3.y * r0.w;
        r7.w = 3 * r3.y;
        r8.w = r5.w * 2 + -r7.w;
        r8.w = 1 + r8.w;
        r7.w = r5.w * -2 + r7.w;
        r5.w = -r3.y * 2 + r5.w;
        r5.w = r5.w + r0.w;
        r3.y = r3.y * r0.w + -r3.y;
        r10.xyz = cb9[r0.y+0].xyz * r7.www;
        r10.xyz = r8.www * cb0[151].xyz + r10.xyz;
        r9.xyz = r5.www * r9.xyz + r10.xyz;
        r7.xyz = r3.yyy * r8.xyz + r9.xyz;
        r8.xyzw = cb9[r0.y+32].xyzw + -cb0[150].xyzw;
        r8.xyzw = r0.wwww * r8.xyzw + cb0[150].xyzw;
        r0.y = dot(r8.xyzw, r8.xyzw);
        r0.y = rsqrt(r0.y);
        r6.xyzw = r8.xyzw * r0.yyyy;
      }
    }
    r8.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r8.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r8.xyz;
    r0.y = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r8.w = -r0.y;
    r9.xyz = cb9[r0.z+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.z+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.z+32].www * r8.xyz + r9.xyz;
    r8.xyz = r8.www * -cb9[r0.z+32].xyz + r8.xyz;
    r9.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r9.xyz;
    r0.y = dot(-cb9[r0.z+32].xyz, r6.xyz);
    r10.w = -r0.y;
    r10.xyz = cb9[r0.z+32].www * r6.xyz + r9.xyz;
    r9.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = r6.wwww * r9.xyzw + r10.xyzw;
    r9.xyz = cb9[r0.z+32].yzx * r7.zxy;
    r9.xyz = r7.yzx * cb9[r0.z+32].zxy + -r9.xyz;
    r0.y = dot(r7.xyz, cb9[r0.z+32].xyz);
    r9.w = -r0.y;
    r7.xyz = cb9[r0.z+32].www * r7.xyz;
    r7.w = 0;
    r7.xyzw = r9.xyzw + r7.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r9.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r9.xyz;
    r0.yzw = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r0.yzw = -r8.xyz + r0.yzw;
    r7.xyz = -r6.yzx * r2.wxz;
    r7.xyz = r2.zwx * -r6.zxy + -r7.xyz;
    r3.y = dot(r2.xzw, -r6.xyz);
    r7.w = -r3.y;
    r8.xyz = r6.www * r2.xzw;
    r8.w = 0;
    r7.xyzw = r8.xyzw + r7.xyzw;
    r2.xzw = r7.yzx * r6.zxy;
    r2.xzw = r6.yzx * r7.zxy + -r2.xzw;
    r2.xzw = r6.www * r7.xyz + r2.xzw;
    r2.xzw = r7.www * r6.xyz + r2.xzw;
    r7.xyz = r2.xzw + r0.yzw;
    r0.yzw = -r6.yzx * r5.zxy;
    r8.xyz = r5.yzx * -r6.zxy + -r0.yzw;
    r0.y = dot(r5.xyz, -r6.xyz);
    r8.w = -r0.y;
    r5.xyz = r6.www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r8.xyzw + r5.xyzw;
    r0.yzw = r6.zxy * r5.yzx;
    r0.yzw = r6.yzx * r5.zxy + -r0.yzw;
    r0.yzw = r6.www * r5.xyz + r0.yzw;
    r4.xyz = r5.www * r6.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r7.w = 0.100000001;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r7.xyzw
    r1.xyz = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r3.z = r2.y * 1.16415322e-010 + 0.5;
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.zxww
  }
  return;
}