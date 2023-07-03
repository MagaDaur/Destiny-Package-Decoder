// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:03 2023
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
  float4 cb0[100];
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
    r2.y = 2.32830644e-010 * r2.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r2.z = 2.32830644e-010 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.y = (uint)r0.w;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.z = (uint)r0.w;
    r4.xy = float2(2.32830644e-010,2.32830644e-010) * r3.yz;
    r5.xyz = r3.yyy * float3(6.2088179e-010,5.74383874e-011,1.03110753e-009) + float3(0,0.362996012,-3.42857289);
    r6.xyzw = cmp(r3.yyyy >= float4(0,644245120,3.89410509e+009,4.2949673e+009));
    r6.xyzw = r6.xyzw ? float4(1,1,1,1) : 0;
    r3.yzw = r6.xyz + r6.yzw;
    r3.yzw = float3(9.99999997e-007,9.99999997e-007,9.99999997e-007) + r3.yzw;
    r3.yzw = float3(0.5,0.5,0.5) * r3.yzw;
    r3.yzw = frac(r3.yzw);
    r3.yzw = r3.yzw * r5.xyz;
    r3.yz = r3.yz + r3.yz;
    r3.y = r3.y + r3.z;
    r3.y = saturate(r3.w * 2 + r3.y);
    r3.y = r3.y * 0.0900000036 + 0.00999999978;
    r2.w = 2.32830644e-010 * r3.x;
    r3.zw = r3.xx * float2(4.2913878e-010,1.31702288e-010) + float2(0,0.43434301);
    r5.xyz = cmp(r3.xxx >= float3(0,1.4602889e+009,4.2949673e+009));
    r5.xyz = r5.xyz ? float3(1,1,1) : 0;
    r5.xy = r5.xy + r5.yz;
    r5.xy = float2(9.99999997e-007,9.99999997e-007) + r5.xy;
    r5.xy = float2(0.5,0.5) * r5.xy;
    r5.xy = frac(r5.xy);
    r3.zw = r5.xy * r3.zw;
    r3.zw = float2(2,2) * r3.zw;
    r3.z = r3.z + r3.w;
    r3.z = 9.99999997e-007 + r3.z;
    r3.z = min(1, r3.z);
    r3.z = r3.z * -120 + 120;
    r5.xy = r3.xx * float2(1.1292286e-009,1.33230815e-010) + float2(0,0.427778006);
    r6.xyz = cmp(r3.xxx >= float3(0,429496736,4.2949673e+009));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r3.xw = r6.xy + r6.yz;
    r3.xw = float2(9.99999997e-007,9.99999997e-007) + r3.xw;
    r3.xzw = float3(0.5,0.0174529999,0.5) * r3.xzw;
    r3.xw = frac(r3.xw);
    r3.xw = r3.xw * r5.xy;
    r3.xw = float2(2,2) * r3.xw;
    r3.x = r3.x + r3.w;
    r3.x = 9.99999997e-007 + r3.x;
    r3.x = min(1, r3.x);
    r3.x = r3.x * 0.5 + 1.5;
    r2.x = 0.600000024 * r3.x;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r5.x = r3.x * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r3.x = (uint)r0.w;
    r5.y = r3.x * 4.65661287e-010 + -1;
    r0.w = mad((int)r0.w, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.w;
    r5.z = r0.w * 4.65661287e-010 + -1;
    r0.w = dot(r5.xyz, r5.xyz);
    r0.w = rsqrt(r0.w);
    r5.xyz = r5.xyz * r0.www;
    r5.xyz = float3(0.100000001,0.100000001,0.100000001) * r5.xyz;
    sincos(r3.z, r3.x, r6.x);
    r0.w = dot(r5.yz, r5.yz);
    r0.w = sqrt(r0.w);
    r0.w = max(9.99999975e-005, r0.w);
    r3.zw = r5.yz / r0.ww;
    r6.yz = r3.zw * r3.xx;
    r3.xyz = r6.xyz * r3.yyy;
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
    r8.xyz = -r7.yzx * r5.zxy;
    r8.xyz = r5.yzx * -r7.zxy + -r8.xyz;
    r0.y = dot(r5.xyz, -r7.xyz);
    r8.w = -r0.y;
    r5.xyz = r7.www * r5.xyz;
    r5.w = 0;
    r5.xyzw = r8.xyzw + r5.xyzw;
    r8.xyz = r7.zxy * r5.yzx;
    r8.xyz = r7.yzx * r5.zxy + -r8.xyz;
    r5.xyz = r7.www * r5.xyz + r8.xyz;
    r5.xyz = r5.www * r7.xyz + r5.xyz;
    r5.xyz = r5.xyz + r6.xyz;
    r6.xyz = -r7.yzx * r3.zxy;
    r6.xyz = r3.yzx * -r7.zxy + -r6.xyz;
    r0.y = dot(r3.xyz, -r7.xyz);
    r6.w = -r0.y;
    r3.xyz = r7.www * r3.xyz;
    r3.w = 0;
    r3.xyzw = r6.xyzw + r3.xyzw;
    r6.xyz = r7.zxy * r3.yzx;
    r6.xyz = r7.yzx * r3.zxy + -r6.xyz;
    r3.xyz = r7.www * r3.xyz + r6.xyz;
    r3.xyz = r3.www * r7.xyz + r3.xyz;
    r6.xyz = -cb9[r0.z+32].yzx * r5.zxy;
    r6.xyz = r5.yzx * -cb9[r0.z+32].zxy + -r6.xyz;
    r0.y = dot(r5.xyz, -cb9[r0.z+32].xyz);
    r6.w = -r0.y;
    r7.xyz = cb9[r0.z+32].www * r5.xyz;
    r7.w = 0;
    r6.xyzw = r7.xyzw + r6.xyzw;
    r7.xyz = cb9[r0.z+32].zxy * r6.yzx;
    r7.xyz = cb9[r0.z+32].yzx * r6.zxy + -r7.xyz;
    r6.xyz = cb9[r0.z+32].www * r6.xyz + r7.xyz;
    r6.xyz = r6.www * cb9[r0.z+32].xyz + r6.xyz;
    r0.yzw = cb9[r0.z+0].xyz + r6.xyz;
    r0.yzw = -cb12[7].xyz + r0.yzw;
    r0.y = dot(r0.yzw, r0.yzw);
    r3.w = sqrt(r0.y);
    r0.x = mad(5, (int)vThreadID.x, (int)r0.x);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r3.xyzw
    r3.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r5.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.xxxx, r5.xyzw
    r1.xyw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.zzzz, r2.xyzw
    r4.zw = float2(0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r3.wwww, r4.xyzw
  }
  return;
}