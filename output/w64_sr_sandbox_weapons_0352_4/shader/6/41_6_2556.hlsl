// ---- Created with 3Dmigoto v1.3.16 on Mon Jul 03 19:23:40 2023
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
  float4 r0,r1,r2,r3,r4,r5,r6,r7,r8,r9,r10,r11,r12,r13,r14,r15;
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
    r2.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.z = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r2.w = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r3.x = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r3.y = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r3.z = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.z;
    r5.xy = float2(2.32830644e-010,2.32830644e-010) * r4.xy;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.z = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r6.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r6.y = (uint)r0.z;
    r7.yz = float2(2.32830644e-010,2.32830644e-010) * r6.xy;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r6.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r6.z = (uint)r0.z;
    r8.x = 2.32830644e-010 * r6.z;
    r3.w = 2.32830644e-010 * r0.w;
    r0.w = r0.w * 1.39698386e-009 + 6;
    r4.x = r4.x * 2.32830644e-010 + r5.y;
    r6.z = 0.5 * r4.x;
    r4.x = 3 + -r4.x;
    r6.z = r6.z * r6.z;
    r4.x = r6.z * r4.x;
    r4.x = min(1, r4.x);
    r4.x = r4.x * 9 + 3;
    r5.zw = float2(2.32830644e-010,2.32830644e-010) * r4.yz;
    r6.z = r4.y * 0.000229779413 + -246723.766;
    r9.xyz = cmp(r4.yyy >= float3(1.07374182e+009,1.07374618e+009,4.2949673e+009));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r9.xy = r9.xy + r9.yz;
    r9.xy = float2(9.99999997e-007,9.99999997e-007) + r9.xy;
    r9.xy = float2(0.5,0.5) * r9.xy;
    r9.yz = frac(r9.xy);
    r9.x = r9.y * r6.z;
    r6.zw = r9.xz + r9.xz;
    r4.y = saturate(r6.z + r6.w);
    r4.x = r4.x + -r0.w;
    r0.w = r4.y * r4.x + r0.w;
    r4.x = r4.z * -9.76386957e-011 + 1.41935503;
    r4.z = r5.w * r5.w;
    r4.x = r4.x * r4.z;
    r4.x = min(1, r4.x);
    r4.x = r4.x * 15 + -105;
    r4.x = r4.y * r4.x + 120;
    r1.w = r6.x * 3.49245965e-010 + 2.5;
    r4.y = cb10[0].x + 0.25;
    r4.y = (int)r4.y;
    r6.xz = cb0[4].yz + r5.xy;
    r6.xz = r6.xz * float2(18.9452477,6.99969196) + float2(3.25,0.133332998);
    r6.xz = floor(r6.xz);
    r4.z = dot(r6.xxxx, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r4.z = frac(r4.z);
    r4.z = r4.z * r4.z;
    r4.xz = float2(0.0174529999,251) * r4.xz;
    r4.z = frac(r4.z);
    r4.z = -0.5 + r4.z;
    r7.x = 2.32830644e-010 * r4.w;
    r6.x = r4.w * 0.000229779413 + -246723.766;
    r9.xyz = cmp(r4.www >= float3(1.07374182e+009,1.07374618e+009,4.2949673e+009));
    r9.xyz = r9.xyz ? float3(1,1,1) : 0;
    r9.xy = r9.xy + r9.yz;
    r9.xy = float2(9.99999997e-007,9.99999997e-007) + r9.xy;
    r9.xy = float2(0.5,0.5) * r9.xy;
    r9.yz = frac(r9.xy);
    r9.x = r9.y * r6.x;
    r6.xw = r9.xz + r9.xz;
    r4.w = saturate(r6.x + r6.w);
    r4.z = r4.z * r4.w;
    r4.z = 3.1415925 * r4.z;
    sincos(r4.z, r6.x, r9.x);
    r10.xyz = float3(0,0,1) * r6.xxx;
    r4.z = dot(r6.zzzz, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r4.z = frac(r4.z);
    r4.z = r4.z * r4.z;
    r4.z = 251 * r4.z;
    r4.z = frac(r4.z);
    r4.z = 1 + -r4.z;
    r4.z = r4.z * r4.w;
    r4.z = 3.1415925 * r4.z;
    sincos(r4.z, r6.x, r11.x);
    r12.xyz = float3(1,0,0) * r6.xxx;
    r6.xzw = -cb9[r4.y+32].zxy * cb9[r4.y+32].yzx;
    r6.xzw = -cb9[r4.y+32].yzx * cb9[r4.y+32].zxy + -r6.xzw;
    r4.z = dot(-cb9[r4.y+32].xyz, cb9[r4.y+32].xyz);
    r13.w = -r4.z;
    r13.xyz = cb9[r4.y+32].www * cb9[r4.y+32].xyz + r6.xzw;
    r14.xyzw = cb9[r4.y+32].xyzw * float4(-1,-1,-1,1);
    r13.xyzw = cb9[r4.y+32].wwww * r14.xyzw + r13.xyzw;
    r15.xyzw = r13.zxyz * r10.yzyz;
    r6.xzw = -r10.zyy * r13.yzx + r15.xyz;
    r15.w = -r15.w;
    r15.xyz = r9.xxx * r13.xyz + r6.xzw;
    r10.w = r9.x;
    r9.xyzw = r13.wwww * r10.xyzw + r15.xyzw;
    r6.xzw = cb9[r4.y+32].zxy * r9.yzx;
    r6.xzw = cb9[r4.y+32].yzx * r9.zxy + -r6.xzw;
    r4.z = dot(cb9[r4.y+32].xyz, r9.xyz);
    r10.w = -r4.z;
    r10.xyz = cb9[r4.y+32].www * r9.xyz + r6.xzw;
    r9.xyzw = r9.wwww * cb9[r4.y+32].xyzw + r10.xyzw;
    r6.xzw = -cb9[r4.y+32].zxy * r9.yzx;
    r6.xzw = -cb9[r4.y+32].yzx * r9.zxy + -r6.xzw;
    r4.z = dot(-cb9[r4.y+32].xyz, r9.xyz);
    r10.w = -r4.z;
    r10.xyz = cb9[r4.y+32].www * r9.xyz + r6.xzw;
    r9.xyzw = r9.wwww * r14.xyzw + r10.xyzw;
    r10.xyzw = r12.zzxx * r9.zxyx;
    r6.xzw = -r12.zxz * r9.yzx + r10.xyz;
    r10.w = -r10.w;
    r10.xyz = r11.xxx * r9.xyz + r6.xzw;
    r12.w = r11.x;
    r9.xyzw = r9.wwww * r12.xyzw + r10.xyzw;
    r6.xzw = cb9[r4.y+32].zxy * r9.yzx;
    r6.xzw = cb9[r4.y+32].yzx * r9.zxy + -r6.xzw;
    r4.z = dot(cb9[r4.y+32].xyz, r9.xyz);
    r10.w = -r4.z;
    r10.xyz = cb9[r4.y+32].www * r9.xyz + r6.xzw;
    r9.xyzw = r9.wwww * cb9[r4.y+32].xyzw + r10.xyzw;
    r7.w = 2.32830644e-010 * r6.y;
    r4.z = r6.y * 6.84795887e-010 + -0.941175997;
    r6.xyz = cmp(r6.yyy >= float3(1.3743895e+009,2.83467853e+009,4.2949673e+009));
    r6.xyz = r6.xyz ? float3(1,1,1) : 0;
    r6.xy = r6.xy + r6.yz;
    r6.xy = float2(9.99999997e-007,9.99999997e-007) + r6.xy;
    r6.xy = float2(0.5,0.5) * r6.xy;
    r6.yz = frac(r6.xy);
    r6.x = r6.y * r4.z;
    r4.zw = r6.xz + r6.xz;
    r4.z = saturate(r4.z + r4.w);
    r1.x = r4.z * 30 + -15;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.z = (uint)r0.z;
    r4.z = 1.46291812e-009 * r4.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r4.x;
    r0.z = 2.32830644e-010 * r0.z;
    sincos(r0.z, r4.x, r6.x);
    sincos(r4.z, r10.x, r11.x);
    r6.y = r10.x * r4.x;
    r6.z = r11.x * r4.x;
    r4.xzw = r6.xyz * r0.www;
    r6.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r6.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r6.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r6.w = -r0.z;
    r10.xyz = cb9[r0.y+0].xyz;
    r10.w = 0;
    r6.xyzw = cb9[r0.y+32].wwww * r10.xyzw + r6.xyzw;
    r10.xyz = -cb9[r0.y+32].zxy * r6.yzx;
    r10.xyz = -cb9[r0.y+32].yzx * r6.zxy + -r10.xyz;
    r6.xyz = cb9[r0.y+32].www * r6.xyz + r10.xyz;
    r6.xyz = r6.www * -cb9[r0.y+32].xyz + r6.xyz;
    r10.xyz = -cb9[r0.y+32].zxy * r9.yzx;
    r10.xyz = -cb9[r0.y+32].yzx * r9.zxy + -r10.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r9.xyz);
    r11.w = -r0.z;
    r11.xyz = cb9[r0.y+32].www * r9.xyz + r10.xyz;
    r10.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r9.xyzw = r9.wwww * r10.xyzw + r11.xyzw;
    r10.xyz = cb9[r0.y+32].yzx * cb9[r4.y+0].zxy;
    r10.xyz = cb9[r4.y+0].yzx * cb9[r0.y+32].zxy + -r10.xyz;
    r0.z = dot(cb9[r4.y+0].xyz, cb9[r0.y+32].xyz);
    r10.w = -r0.z;
    r11.xyz = cb9[r4.y+0].xyz;
    r11.w = 0;
    r10.xyzw = cb9[r0.y+32].wwww * r11.xyzw + r10.xyzw;
    r11.xyz = -cb9[r0.y+32].zxy * r10.yzx;
    r11.xyz = -cb9[r0.y+32].yzx * r10.zxy + -r11.xyz;
    r10.xyz = cb9[r0.y+32].www * r10.xyz + r11.xyz;
    r0.yzw = r10.www * -cb9[r0.y+32].xyz + r10.xyz;
    r6.xyz = -r6.xyz + r0.yzw;
    r0.yzw = -r9.yzx * r4.wxz;
    r10.xyz = r4.zwx * -r9.zxy + -r0.yzw;
    r0.y = dot(r4.xzw, -r9.xyz);
    r10.w = -r0.y;
    r4.xyz = r9.www * r4.xzw;
    r4.w = 0;
    r4.xyzw = r10.xyzw + r4.xyzw;
    r0.yzw = r9.zxy * r4.yzx;
    r0.yzw = r9.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r9.www * r4.xyz + r0.yzw;
    r4.xyz = r4.www * r9.xyz + r0.yzw;
    r0.y = (uint)vThreadID.x << 3;
    r0.x = (int)r0.y + (int)r0.x;
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r6.xyzw
    r1.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r3.xyzw
    r0.yzw = (int3)r0.xxx + int3(5,6,7);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r7.xyzw
    r8.yzw = float3(0,0,0);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.wwww, r8.xyzw
  }
  return;
}