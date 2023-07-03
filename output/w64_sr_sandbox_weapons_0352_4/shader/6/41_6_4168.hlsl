// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:32 2023
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
  float4 cb0[139];
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
    r0.y = cb10[0].x + 0.25;
    r0.y = (int)r0.y;
    r0.z = (int)cb0[23].x;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.z = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.z;
    r0.z = (uint)r0.z;
    r0.w = (int)r0.z ^ 61;
    r0.z = (uint)r0.z >> 16;
    r0.z = (int)r0.z ^ (int)r0.w;
    r0.z = (int)r0.z * 9;
    r0.w = (uint)r0.z >> 4;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = (int)r0.z * 0x27d4eb2d;
    r0.w = (uint)r0.z >> 15;
    r0.z = (int)r0.w ^ (int)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.z;
    r2.z = 2.32830644e-010 * r2.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r3.yz = float2(2.32830644e-010,6.98491959e-011) * r0.ww;
    r0.w = r0.w * 8.73114914e-011 + 0.125;
    r2.yw = float2(3.32614873e-011,2.32830644e-010) * r3.xx;
    r3.x = r3.x * 4.38448028e-011 + 0.668830991;
    r3.w = r2.w * r2.w;
    r3.x = r3.x * r3.w + r2.y;
    r2.x = 1 + r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r4.x = r3.x * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r4.y = r3.x * 4.65661287e-010 + -1;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r4.z = r0.z * 4.65661287e-010 + -1;
    r0.z = dot(r4.xyz, r4.xyz);
    r0.z = rsqrt(r0.z);
    r4.xyz = r4.xyz * r0.zzz;
    r0.z = max(0.00100000005, r3.z);
    r3.xzw = r4.xyz * r0.zzz;
    r4.xyz = float3(1,0,0) * r0.www;
    r5.xyz = -cb9[r0.y+32].zxy * cb9[r0.y+32].yzx;
    r5.xyz = -cb9[r0.y+32].yzx * cb9[r0.y+32].zxy + -r5.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.z;
    r6.xyz = cb9[r0.y+32].www * cb9[r0.y+32].xyz + r5.xyz;
    r5.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r5.xyzw = cb9[r0.y+32].wwww * r5.xyzw + r6.xyzw;
    r6.xyz = -r5.yzx * r3.wxz;
    r6.xyz = r3.zwx * -r5.zxy + -r6.xyz;
    r0.z = dot(r3.xzw, -r5.xyz);
    r6.w = -r0.z;
    r7.xyz = r5.www * r3.xzw;
    r7.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r3.xzw = r6.yzx * r5.zxy;
    r3.xzw = r5.yzx * r6.zxy + -r3.xzw;
    r3.xzw = r5.www * r6.xyz + r3.xzw;
    r6.xyz = r6.www * r5.xyz + r3.xzw;
    r7.xyzw = -r5.zxyx * r4.zzxx;
    r8.xyz = -r4.zxz * -r5.yzx + r7.xyz;
    r8.w = -r7.w;
    r4.xyz = r5.www * r4.xyz;
    r4.w = 0;
    r4.xyzw = r8.xyzw + r4.xyzw;
    r3.xzw = r5.zxy * r4.yzx;
    r3.xzw = r5.yzx * r4.zxy + -r3.xzw;
    r3.xzw = r5.www * r4.xyz + r3.xzw;
    r3.xzw = r4.www * r5.xyz + r3.xzw;
    r4.xyz = cb0[138].xyz * float3(-0.0375000015,-0.0375000015,-0.0375000015) + r3.xzw;
    r3.xzw = -cb9[r0.y+32].yzx * r6.zxy;
    r5.xyz = r6.yzx * -cb9[r0.y+32].zxy + -r3.xzw;
    r0.z = dot(r6.xyz, -cb9[r0.y+32].xyz);
    r5.w = -r0.z;
    r7.xyz = cb9[r0.y+32].www * r6.xyz;
    r7.w = 0;
    r5.xyzw = r7.xyzw + r5.xyzw;
    r3.xzw = cb9[r0.y+32].zxy * r5.yzx;
    r3.xzw = cb9[r0.y+32].yzx * r5.zxy + -r3.xzw;
    r3.xzw = cb9[r0.y+32].www * r5.xyz + r3.xzw;
    r3.xzw = r5.www * cb9[r0.y+32].xyz + r3.xzw;
    r0.yzw = cb9[r0.y+0].xyz + r3.xzw;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r4.w = sqrt(r0.y);
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r6.xyzw
    r1.xyw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r2.y = r3.y;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r2.xyzw
  }
  return;
}