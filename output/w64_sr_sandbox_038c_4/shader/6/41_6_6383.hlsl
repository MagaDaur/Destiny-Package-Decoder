// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:00 2023
Buffer<float4> t0 : register(t0);

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
  float4 cb0[102];
}




// 3Dmigoto declarations
#define cmp -


void main)
{
// Needs manual fix for instruction:
// unknown dcl_: dcl_uav_typed_buffer (float,float,float,float) u0
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9;
  uint4 bitmask, uiDest;
  float4 fDest;

// Needs manual fix for instruction:
// unknown dcl_: dcl_thread_group 64, 1, 1
  r0.x = cb0[89].x + 0.5;
  r0.x = (uint)r0.x;
  r0.x = cmp((uint)vThreadID.x < (uint)r0.x);
  if (r0.x != 0) {
    r0.x = (uint)cb0[100].x;
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
    r0.w = cb0[21].x + r1.w;
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
    r2.y = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r4.x = 2.32830644e-010 * r3.z;
    r2.w = 2.32830644e-010 * r3.y;
    r3.y = r3.y * -4.63045213e-010 + 2.98876405;
    r3.w = r2.w * r2.w;
    r3.y = r3.y * r3.w;
    r3.y = min(1, r3.y);
    r3.y = r3.y * 0.400000036 + 0.800000012;
    r3.w = saturate(cb0[3].z);
    r5.x = r3.w * -4.25714302 + 1;
    r3.w = cmp(r3.w >= 0.234898999);
    r3.w = r3.w ? 4.76837158e-007 : 0.500000477;
    r3.w = saturate(dot(r3.ww, r5.xx));
    r2.x = r3.y * r3.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r3.xyz = float3(2.32830644e-010,1.46291812e-009,1.16415319e-012) * r3.xyx;
    sincos(r3.y, r5.x, r6.x);
    r5.y = r5.x * r3.z;
    r5.z = r6.x * r3.z;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r6.x = r3.y * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r6.y = r3.y * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r6.z = r0.w * 4.65661287e-010 + -1;
    r0.w = dot(r6.xyz, r6.xyz);
    r0.w = rsqrt(r0.w);
    r3.yzw = r6.xyz * r0.www;
    r3.yzw = float3(0.00100000005,0.00100000005,0.00100000005) * r3.yzw;
    r6.xyz = cb9[r0.z+32].yzx * cb9[r0.z+0].zxy;
    r6.xyz = cb9[r0.z+0].yzx * cb9[r0.z+32].zxy + -r6.xyz;
    r0.w = dot(cb9[r0.z+0].xyz, cb9[r0.z+32].xyz);
    r6.w = -r0.w;
    r7.xyz = cb9[r0.z+0].xyz;
    r7.w = 0;
    r6.xyzw = cb9[r0.z+32].wwww * r7.xyzw + r6.xyzw;
    r7.xyz = -cb9[r0.z+32].zxy * r6.yzx;
    r7.xyz = -cb9[r0.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * -cb9[r0.z+32].xyz + r6.xyz;
    r7.xyz = -cb9[r0.z+32].zxy * cb9[r0.y+32].yzx;
    r7.xyz = -cb9[r0.z+32].yzx * cb9[r0.y+32].zxy + -r7.xyz;
    r0.w = dot(-cb9[r0.z+32].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.w;
    r8.xyz = cb9[r0.z+32].www * cb9[r0.y+32].xyz + r7.xyz;
    r7.xyzw = cb9[r0.z+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = cb9[r0.y+32].wwww * r7.xyzw + r8.xyzw;
    r8.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r8.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r8.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r8.w = -r0.w;
    r9.xyz = cb9[r0.y+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.z+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.z+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.z+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.z+32].www * r8.xyz + r9.xyz;
    r8.xyz = r8.www * -cb9[r0.z+32].xyz + r8.xyz;
    r6.xyz = r8.xyz + -r6.xyz;
    r5.xw = float2(0,0);
    r8.xyz = -r7.yzx * r5.zwy;
    r8.xyz = r5.yzw * -r7.zxy + -r8.xyz;
    r0.z = dot(r5.yz, -r7.yz);
    r8.w = -r0.z;
    r5.xyzw = r7.wwww * r5.xyzw + r8.xyzw;
    r8.xyz = r7.zxy * r5.yzx;
    r8.xyz = r7.yzx * r5.zxy + -r8.xyz;
    r5.xyz = r7.www * r5.xyz + r8.xyz;
    r5.xyz = r5.www * r7.xyz + r5.xyz;
    r5.xyz = r5.xyz + r6.xyz;
    r6.xyz = -r7.yzx * r3.wyz;
    r6.xyz = r3.zwy * -r7.zxy + -r6.xyz;
    r0.z = dot(r3.yzw, -r7.xyz);
    r6.w = -r0.z;
    r8.xyz = r7.www * r3.yzw;
    r8.w = 0;
    r6.xyzw = r8.xyzw + r6.xyzw;
    r3.yzw = r7.zxy * r6.yzx;
    r3.yzw = r7.yzx * r6.zxy + -r3.yzw;
    r3.yzw = r7.www * r6.xyz + r3.yzw;
    r6.xyz = r6.www * r7.xyz + r3.yzw;
    r0.z = cb0[90].x + -1;
    r0.w = (int)r0.z;
    r0.w = cmp((int)r0.w >= 0);
    if (r0.w != 0) {
      r0.z = trunc(r0.z);
      r0.z = r0.z * cb0[101].x + cb0[91].x;
      r0.w = 1 + r0.z;
      r0.zw = (uint2)r0.zw;
      r3.yzw = t0.Load(r0.w).xyz;
      r0.z = t0.Load(r0.z).w;
      r3.yzw = r5.xyz + -r3.yzw;
      r0.w = dot(r3.yzw, r3.yzw);
      r0.w = sqrt(r0.w);
      r6.w = r0.z + r0.w;
    } else {
      r6.w = 0;
    }
    r7.z = cb9[r0.y+32].w * cb9[r0.y+32].w + -0.5;
    r7.xy = float2(0,0);
    r3.yzw = cb9[r0.y+32].zzz * cb9[r0.y+32].xyz + r7.xyz;
    r7.xy = cb9[r0.y+32].yx * float2(1,-1);
    r7.z = 0;
    r0.yzw = cb9[r0.y+32].www * r7.xyz + r3.yzw;
    r3.yzw = r0.yzw + r0.yzw;
    r0.yz = cmp(r0.yz >= float2(0,0));
    r0.yz = r0.yz ? float2(1,1) : float2(-1,-1);
    r0.w = abs(r3.y) + abs(r3.z);
    r7.x = abs(r3.y) + -abs(r3.z);
    r7.x = r7.x / r0.w;
    r7.x = r7.x * 0.125 + 0.125;
    r0.y = r7.x * r0.y + 0.25;
    r0.y = r0.y * r0.z;
    r0.y = frac(r0.y);
    r0.y = 1 + -r0.y;
    r0.z = cmp(9.99999975e-006 < r0.w);
    r0.y = r0.y * 6.28318548 + -3.14159274;
    r1.x = r0.z ? r0.y : 0;
    r0.y = dot(r3.yz, r3.yz);
    r0.y = sqrt(r0.y);
    r0.z = cmp(r0.y >= 0);
    r0.w = cmp(-r3.w >= 0);
    r0.zw = r0.zw ? float2(1,1) : float2(-1,-1);
    r3.y = r0.y + abs(r3.w);
    r0.y = r0.y + -abs(r3.w);
    r0.y = r0.y / r3.y;
    r0.y = r0.y * 0.125 + 0.125;
    r0.y = r0.y * r0.z + 0.25;
    r0.y = r0.y * r0.w;
    r0.y = frac(r0.y);
    r0.y = 1 + -r0.y;
    r0.z = cmp(9.99999975e-006 < r3.y);
    r0.y = r0.y * 6.28318548 + -3.14159274;
    r1.y = r0.z ? r0.y : 0;
    r0.x = mad(6, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r6.xyzw
    r6.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.xxxx, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.yyyy, l(0,0,0,0)
    r1.z = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.zzzz, r1.xyzw
    r2.z = r3.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r6.wwww, r2.xyzw
    r0.y = (int)r0.x + 5;
    r4.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r4.xyzw
  }
  return;
}