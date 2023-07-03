// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:31 2023
cbuffer cb10 : register(b10)
{
  float4 cb10[1];
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
    r0.y = cb10[0].x + 0.25;
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.z = (int)r0.z + (int)r0.y;
    r0.w = (uint)vThreadID.x;
    r1.y = cb0[19].x + r0.w;
    r0.w = cb0[21].x + r1.y;
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
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.z = (uint)r0.w;
    r1.w = 2.32830644e-010 * r2.x;
    r2.x = r2.x * 3.25962901e-009 + 6;
    r3.xz = float2(2.32830644e-010,2.32830644e-010) * r2.zy;
    r2.z = r2.z * 4.65661287e-010 + -3;
    r2.w = r3.x * r3.x;
    r2.z = r2.z * r2.w + 1;
    r2.z = max(0, r2.z);
    r1.z = r2.z * 0.150000006 + 0.349999994;
    r2.yzw = r2.yyy * float3(1.16415322e-010,1.16415324e-011,-1.16415324e-011) + float3(-0.699999988,-0.0500000007,0.0500000007);
    r4.xyz = -cb9[r0.y+32].yzx * r2.wyz;
    r4.xyz = r2.zwy * -cb9[r0.y+32].zxy + -r4.xyz;
    r3.y = dot(r2.yzw, -cb9[r0.y+32].xyz);
    r4.w = -r3.y;
    r5.xyz = cb9[r0.y+32].www * r2.yzw;
    r5.w = 0;
    r4.xyzw = r5.xyzw + r4.xyzw;
    r2.yzw = cb9[r0.y+32].zxy * r4.yzx;
    r2.yzw = cb9[r0.y+32].yzx * r4.zxy + -r2.yzw;
    r2.yzw = cb9[r0.y+32].www * r4.xyz + r2.yzw;
    r2.yzw = r4.www * cb9[r0.y+32].xyz + r2.yzw;
    r2.yzw = cb9[r0.y+0].xyz + r2.yzw;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r3.y = 1.46291812e-009 * r3.y;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r0.w = 2.03181985e-011 * r0.w;
    sincos(r0.w, r4.x, r5.x);
    sincos(r3.y, r6.x, r7.x);
    r5.y = r6.x * r4.x;
    r5.z = r7.x * r4.x;
    r4.xyz = r5.xyz * r2.xxx;
    r5.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r5.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r5.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r5.w = -r0.w;
    r6.xyz = cb9[r0.z+0].xyz;
    r6.w = 0;
    r5.xyzw = cb9[r0.z+32].wwww * r6.xyzw + r5.xyzw;
    r6.xyz = -cb9[r0.z+32].zxy * r5.yzx;
    r6.xyz = -cb9[r0.z+32].yzx * r5.zxy + -r6.xyz;
    r5.xyz = cb9[r0.z+32].www * r5.xyz + r6.xyz;
    r5.xyz = r5.www * -cb9[r0.z+32].xyz + r5.xyz;
    r6.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r6.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r7.w = -r0.w;
    r7.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r6.xyz;
    r6.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r6.xyzw = cb9[r0.y+32].wwww * r6.xyzw + r7.xyzw;
    r7.xyz = cb9[r0.z+32].yzx * r2.wyz;
    r7.xyz = r2.zwy * cb9[r0.z+32].zxy + -r7.xyz;
    r0.y = dot(r2.yzw, cb9[r0.z+32].xyz);
    r7.w = -r0.y;
    r2.xyz = cb9[r0.z+32].www * r2.yzw;
    r2.w = 0;
    r2.xyzw = r7.xyzw + r2.xyzw;
    r7.xyz = -cb9[r0.z+32].zxy * r2.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r2.zxy + -r7.xyz;
    r2.xyz = cb9[r0.z+32].www * r2.xyz + r7.xyz;
    r0.yzw = r2.www * -cb9[r0.z+32].xyz + r2.xyz;
    r2.xyz = -r5.xyz + r0.yzw;
    r0.yzw = -r6.yzx * r4.zxy;
    r5.xyz = r4.yzx * -r6.zxy + -r0.yzw;
    r0.y = dot(r4.xyz, -r6.xyz);
    r5.w = -r0.y;
    r4.xyz = r6.www * r4.xyz;
    r4.w = 0;
    r4.xyzw = r5.xyzw + r4.xyzw;
    r0.yzw = r6.zxy * r4.yzx;
    r0.yzw = r6.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r6.www * r4.xyz + r0.yzw;
    r4.xyz = r4.www * r6.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r3.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.zxww
  }
  return;
}