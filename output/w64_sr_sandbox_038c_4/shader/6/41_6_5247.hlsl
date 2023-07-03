// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:04 2023
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
  float4 cb0[100];
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
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r0.w;
    r3.z = 2.32830644e-010 * r2.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.w = (uint)r0.w;
    r3.yw = float2(2.32830644e-010,2.32830644e-010) * r2.zw;
    r4.xyz = r2.zzz * float3(-5.40499812e-010,-4.11635274e-011,-5.10009923e-010) + float3(1,0.59966898,2.19047594);
    r5.xyzw = cmp(r2.zzzz >= float4(0,801728640,3.39302426e+009,4.2949673e+009));
    r5.xyzw = r5.xyzw ? float4(1,1,1,1) : 0;
    r5.xyz = r5.xyz + r5.yzw;
    r5.xyz = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r5.xyz;
    r5.xyz = float3(0.5,0.5,0.5) * r5.xyz;
    r5.xyz = frac(r5.xyz);
    r4.xyz = r5.xyz * r4.xyz;
    r2.zw = r4.xy + r4.xy;
    r2.z = r2.z + r2.w;
    r2.z = saturate(r4.z * 2 + r2.z);
    r2.z = r2.z * 24 + 10;
    r4.xy = float2(2.32830644e-010,5.97261129e-010) * r2.yy;
    r2.y = r2.y * 6.18427531e-010 + -4.22134399;
    r2.w = r4.x * r4.x;
    r2.y = saturate(r2.y * r2.w + r4.y);
    r2.y = r2.y * 2.4000001 + 0.100000001;
    r1.w = 2.32830644e-010 * r2.x;
    r4.yz = r2.xx * float2(1.32793096e-010,9.43907952e-010) + float2(0,-3.05405402);
    r5.xyz = cmp(r2.xxx >= float3(0,3.76525619e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r2.xw = r5.xy + r5.yz;
    r2.xw = float2(9.99999997e-007,9.99999997e-007) + r2.xw;
    r2.xw = float2(0.5,0.5) * r2.xw;
    r2.xw = frac(r2.xw);
    r2.xw = r2.xw * r4.yz;
    r2.xw = float2(2,2) * r2.xw;
    r2.x = r2.x + r2.w;
    r2.x = saturate(9.99999997e-007 + r2.x);
    r1.z = r2.x * 3 + 1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r5.x = r2.x * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r2.x = (uint)r0.w;
    r5.y = r2.x * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r5.z = r0.w * 4.65661287e-010 + -1;
    r0.w = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.w);
    r4.yzw = r5.xyz * r0.www;
    r2.xyw = r4.yzw * r2.yyy;
    r0.w = dot(r2.xyw, r2.xyw);
    r0.w = rsqrt(r0.w);
    r4.yzw = r2.xyw * r0.www;
    r4.yzw = r4.yzw * r2.zzz;
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
    r7.xyz = cb9[r0.z+32].yzx * cb9[r0.y+0].zxy;
    r7.xyz = cb9[r0.y+0].yzx * cb9[r0.z+32].zxy + -r7.xyz;
    r0.w = dot(cb9[r0.y+0].xyz, cb9[r0.z+32].xyz);
    r7.w = -r0.w;
    r8.xyz = cb9[r0.y+0].xyz;
    r8.w = 0;
    r7.xyzw = cb9[r0.z+32].wwww * r8.xyzw + r7.xyzw;
    r8.xyz = -cb9[r0.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r0.z+32].yzx * r7.zxy + -r8.xyz;
    r7.xyz = cb9[r0.z+32].www * r7.xyz + r8.xyz;
    r0.yzw = r7.www * -cb9[r0.z+32].xyz + r7.xyz;
    r0.yzw = -r5.xyz + r0.yzw;
    r5.xyz = -r6.yzx * r2.wxy;
    r5.xyz = r2.ywx * -r6.zxy + -r5.xyz;
    r2.z = dot(r2.xyw, -r6.xyz);
    r5.w = -r2.z;
    r2.xyz = r6.www * r2.xyw;
    r2.w = 0;
    r2.xyzw = r5.xyzw + r2.xyzw;
    r5.xyz = r6.zxy * r2.yzx;
    r5.xyz = r6.yzx * r2.zxy + -r5.xyz;
    r2.xyz = r6.www * r2.xyz + r5.xyz;
    r2.xyz = r2.www * r6.xyz + r2.xyz;
    r2.xyz = r2.xyz + r0.yzw;
    r0.yzw = -r6.yzx * r4.wyz;
    r5.xyz = r4.zwy * -r6.zxy + -r0.yzw;
    r0.y = dot(r4.yzw, -r6.xyz);
    r5.w = -r0.y;
    r7.xyz = r6.www * r4.yzw;
    r7.w = 0;
    r5.xyzw = r7.xyzw + r5.xyzw;
    r0.yzw = r6.zxy * r5.yzx;
    r0.yzw = r6.yzx * r5.zxy + -r0.yzw;
    r0.yzw = r6.www * r5.xyz + r0.yzw;
    r5.xyz = r5.www * r6.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 2;
    r0.x = (int)r0.y + (int)r0.x;
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r5.xyzw
    r0.yzw = (int3)r0.xxx + int3(1,2,3);
    r2.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r2.xyzw
    r1.x = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r1.xyzw
    r3.x = r4.x;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r3.xyzw
  }
  return;
}