// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:41 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13;
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
    r0.z = cmp(cb0[23].x < cb0[24].x);
    r0.z = r0.z ? cb0[23].x : 0;
    r0.yz = (int2)r0.yz;
    r0.y = (int)r0.z + (int)r0.y;
    r0.z = (uint)vThreadID.x;
    r1.w = cb0[19].x + r0.z;
    r0.z = cb0[21].x + r1.w;
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
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r2.w = 2.32830644e-010 * r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r4.x = 2.32830644e-010 * r3.y;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.z;
    r4.yzw = float3(2.32830644e-010,2.32830644e-010,2.32830644e-010) * r3.yzw;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.w = (uint)r0.z;
    r5.x = 2.32830644e-010 * r3.w;
    r6.xy = float2(2.32830644e-010,4.27905017e-010) * r0.ww;
    r6.zw = r0.ww * float2(3.6692549e-010,2.73918499e-010) + float2(-2.41377091,-3.35294104);
    r3.w = r6.x * r6.x;
    r6.w = r6.w * r3.w;
    r3.w = saturate(r6.z * r3.w + r6.y);
    r3.w = 17 * r3.w;
    r0.w = saturate(r0.w * 7.39579786e-010 + r6.w);
    r0.w = r0.w * -710 + 720;
    r0.w = 0.0174529999 * r0.w;
    r2.x = r3.z * 4.65661287e-010 + 0.5;
    r3.z = cb10[0].x + 0.25;
    r3.z = (int)r3.z;
    r3.x = r3.x * 2.32830644e-010 + cb0[4].x;
    r3.x = r3.x * 18.9452477 + 3.25;
    r3.x = floor(r3.x);
    r3.x = dot(r3.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.x = frac(r3.x);
    r3.x = r3.x * r3.x;
    r3.x = 251 * r3.x;
    r3.x = frac(r3.x);
    r3.x = r3.x * 0.400000006 + -0.200000003;
    r3.x = r3.x * r4.x;
    r3.x = 3.1415925 * r3.x;
    sincos(r3.x, r3.x, r7.x);
    r8.xyz = float3(0,0,1) * r3.xxx;
    r3.x = r3.y * 2.32830644e-010 + cb0[4].y;
    r3.x = r3.x * 6 + 2;
    r3.x = floor(r3.x);
    r3.x = dot(r3.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r3.x = frac(r3.x);
    r3.x = r3.x * r3.x;
    r3.x = 251 * r3.x;
    r3.x = frac(r3.x);
    r3.x = r3.x * 0.200000003 + -0.100000001;
    r3.x = 3.1415925 * r3.x;
    sincos(r3.x, r3.x, r9.x);
    r10.xyz = float3(1,0,0) * r3.xxx;
    r6.yzw = -cb9[r3.z+32].zxy * cb9[r3.z+32].yzx;
    r6.yzw = -cb9[r3.z+32].yzx * cb9[r3.z+32].zxy + -r6.yzw;
    r3.x = dot(-cb9[r3.z+32].xyz, cb9[r3.z+32].xyz);
    r11.w = -r3.x;
    r11.xyz = cb9[r3.z+32].www * cb9[r3.z+32].xyz + r6.yzw;
    r12.xyzw = cb9[r3.z+32].xyzw * float4(-1,-1,-1,1);
    r11.xyzw = cb9[r3.z+32].wwww * r12.xyzw + r11.xyzw;
    r13.xyzw = r11.zxyz * r8.yzyz;
    r6.yzw = -r8.zyy * r11.yzx + r13.xyz;
    r13.w = -r13.w;
    r13.xyz = r7.xxx * r11.xyz + r6.yzw;
    r8.w = r7.x;
    r7.xyzw = r11.wwww * r8.xyzw + r13.xyzw;
    r6.yzw = cb9[r3.z+32].zxy * r7.yzx;
    r6.yzw = cb9[r3.z+32].yzx * r7.zxy + -r6.yzw;
    r3.x = dot(cb9[r3.z+32].xyz, r7.xyz);
    r8.w = -r3.x;
    r8.xyz = cb9[r3.z+32].www * r7.xyz + r6.yzw;
    r7.xyzw = r7.wwww * cb9[r3.z+32].xyzw + r8.xyzw;
    r6.yzw = -cb9[r3.z+32].zxy * r7.yzx;
    r6.yzw = -cb9[r3.z+32].yzx * r7.zxy + -r6.yzw;
    r3.x = dot(-cb9[r3.z+32].xyz, r7.xyz);
    r8.w = -r3.x;
    r8.xyz = cb9[r3.z+32].www * r7.xyz + r6.yzw;
    r7.xyzw = r7.wwww * r12.xyzw + r8.xyzw;
    r8.xyzw = r10.zzxx * r7.zxyx;
    r6.yzw = -r10.zxz * r7.yzx + r8.xyz;
    r8.w = -r8.w;
    r8.xyz = r9.xxx * r7.xyz + r6.yzw;
    r10.w = r9.x;
    r7.xyzw = r7.wwww * r10.xyzw + r8.xyzw;
    r6.yzw = cb9[r3.z+32].zxy * r7.yzx;
    r6.yzw = cb9[r3.z+32].yzx * r7.zxy + -r6.yzw;
    r3.x = dot(cb9[r3.z+32].xyz, r7.xyz);
    r8.w = -r3.x;
    r8.xyz = cb9[r3.z+32].www * r7.xyz + r6.yzw;
    r7.xyzw = r7.wwww * cb9[r3.z+32].xyzw + r8.xyzw;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.z;
    r3.x = 1.46291812e-009 * r3.x;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r0.w;
    r0.z = 2.32830644e-010 * r0.z;
    sincos(r0.z, r8.x, r9.x);
    sincos(r3.x, r3.x, r10.x);
    r9.y = r3.x * r8.x;
    r9.z = r10.x * r8.x;
    r3.xyw = r9.xyz * r3.www;
    r6.yzw = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r8.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r6.yzw;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r9.xyz = cb9[r0.y+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.y+32].wwww * r9.xyzw + r8.xyzw;
    r6.yzw = -cb9[r0.y+32].zxy * r8.yzx;
    r6.yzw = -cb9[r0.y+32].yzx * r8.zxy + -r6.yzw;
    r6.yzw = cb9[r0.y+32].www * r8.xyz + r6.yzw;
    r6.yzw = r8.www * -cb9[r0.y+32].xyz + r6.yzw;
    r8.xyz = -cb9[r0.y+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.y+32].yzx * r7.zxy + -r8.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r7.xyz);
    r9.w = -r0.z;
    r9.xyz = cb9[r0.y+32].www * r7.xyz + r8.xyz;
    r8.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = r7.wwww * r8.xyzw + r9.xyzw;
    r8.xyz = cb9[r0.y+32].yzx * cb9[r3.z+0].zxy;
    r8.xyz = cb9[r3.z+0].yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(cb9[r3.z+0].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r9.xyz = cb9[r3.z+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.y+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.y+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.y+32].www * r8.xyz + r9.xyz;
    r0.yzw = r8.www * -cb9[r0.y+32].xyz + r8.xyz;
    r8.xyz = -r6.yzw + r0.yzw;
    r0.yzw = -r7.yzx * r3.wxy;
    r9.xyz = r3.ywx * -r7.zxy + -r0.yzw;
    r0.y = dot(r3.xyw, -r7.xyz);
    r9.w = -r0.y;
    r3.xyz = r7.www * r3.xyw;
    r3.w = 0;
    r3.xyzw = r9.xyzw + r3.xyzw;
    r0.yzw = r7.zxy * r3.yzx;
    r0.yzw = r7.yzx * r3.zxy + -r0.yzw;
    r0.yzw = r7.www * r3.xyz + r0.yzw;
    r3.xyz = r3.www * r7.xyz + r0.yzw;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
    r3.w = 100000;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r8.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r8.xyzw
    r1.xyz = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r1.xyzw
    r2.z = r6.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r4.xyzw
    r0.y = (int)r0.x + 5;
    r5.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
  }
  return;
}