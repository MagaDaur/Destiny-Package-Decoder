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
    r3.w = 2.32830644e-010 * r0.w;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.x = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.y = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.z = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.w = (uint)r0.z;
    r5.xyzw = float4(2.32830644e-010,2.32830644e-010,2.32830644e-010,2.32830644e-010) * r4.xyzw;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r4.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r6.x = (uint)r0.z;
    r6.z = 2.32830644e-010 * r6.x;
    r6.y = r0.w * 2.32830644e-010 + r5.x;
    r6.y = r6.y * 8.5 + 3;
    r4.y = r4.y * -9.76386957e-011 + 1.41935503;
    r7.x = r5.y * r5.y;
    r4.y = r7.x * r4.y;
    r4.y = min(1, r4.y);
    r4.y = r4.y * 5 + 5;
    r1.w = r4.z * 8.14907253e-010 + 0.5;
    r4.z = cb10[0].x + 0.25;
    r4.z = (int)r4.z;
    r0.w = r0.w * 2.32830644e-010 + cb0[4].y;
    r0.w = r0.w * 18.9452477 + 3.25;
    r0.w = floor(r0.w);
    r0.w = dot(r0.wwww, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r0.w = frac(r0.w);
    r0.w = r0.w * r0.w;
    r0.w = 251 * r0.w;
    r0.w = frac(r0.w);
    r0.w = r0.w * 0.150000006 + -0.075000003;
    r0.w = 3.1415925 * r0.w;
    sincos(r0.w, r7.x, r8.x);
    r7.xyz = float3(0,0,1) * r7.xxx;
    r0.w = r4.x * 2.32830644e-010 + cb0[4].z;
    r0.w = r0.w * 6.99969196 + 0.133332998;
    r0.w = floor(r0.w);
    r0.w = dot(r0.wwww, float4(0.958312452,1.25869918,8.78912258,66.2207794));
    r0.w = frac(r0.w);
    r0.w = r0.w * r0.w;
    r0.w = 251 * r0.w;
    r0.w = frac(r0.w);
    r0.w = r0.w * 0.100000001 + -0.0500000007;
    r0.w = 3.1415925 * r0.w;
    sincos(r0.w, r4.x, r9.x);
    r10.xyz = float3(1,0,0) * r4.xxx;
    r8.yzw = -cb9[r4.z+32].zxy * cb9[r4.z+32].yzx;
    r8.yzw = -cb9[r4.z+32].yzx * cb9[r4.z+32].zxy + -r8.yzw;
    r0.w = dot(-cb9[r4.z+32].xyz, cb9[r4.z+32].xyz);
    r11.w = -r0.w;
    r11.xyz = cb9[r4.z+32].www * cb9[r4.z+32].xyz + r8.yzw;
    r12.xyzw = cb9[r4.z+32].xyzw * float4(-1,-1,-1,1);
    r11.xyzw = cb9[r4.z+32].wwww * r12.xyzw + r11.xyzw;
    r13.xyzw = r11.zxyz * r7.yzyz;
    r8.yzw = -r7.zyy * r11.yzx + r13.xyz;
    r13.w = -r13.w;
    r13.xyz = r8.xxx * r11.xyz + r8.yzw;
    r7.w = r8.x;
    r7.xyzw = r11.wwww * r7.xyzw + r13.xyzw;
    r8.xyz = cb9[r4.z+32].zxy * r7.yzx;
    r8.xyz = cb9[r4.z+32].yzx * r7.zxy + -r8.xyz;
    r0.w = dot(cb9[r4.z+32].xyz, r7.xyz);
    r11.w = -r0.w;
    r11.xyz = cb9[r4.z+32].www * r7.xyz + r8.xyz;
    r7.xyzw = r7.wwww * cb9[r4.z+32].xyzw + r11.xyzw;
    r8.xyz = -cb9[r4.z+32].zxy * r7.yzx;
    r8.xyz = -cb9[r4.z+32].yzx * r7.zxy + -r8.xyz;
    r0.w = dot(-cb9[r4.z+32].xyz, r7.xyz);
    r11.w = -r0.w;
    r11.xyz = cb9[r4.z+32].www * r7.xyz + r8.xyz;
    r7.xyzw = r7.wwww * r12.xyzw + r11.xyzw;
    r8.xyzw = r10.zzxx * r7.zxyx;
    r8.xyz = -r10.zxz * r7.yzx + r8.xyz;
    r11.w = -r8.w;
    r11.xyz = r9.xxx * r7.xyz + r8.xyz;
    r10.w = r9.x;
    r7.xyzw = r7.wwww * r10.xyzw + r11.xyzw;
    r8.xyz = cb9[r4.z+32].zxy * r7.yzx;
    r8.xyz = cb9[r4.z+32].yzx * r7.zxy + -r8.xyz;
    r0.w = dot(cb9[r4.z+32].xyz, r7.xyz);
    r9.w = -r0.w;
    r9.xyz = cb9[r4.z+32].www * r7.xyz + r8.xyz;
    r7.xyzw = r7.wwww * cb9[r4.z+32].xyzw + r9.xyzw;
    r6.x = 2.32830644e-010 * r4.w;
    r0.w = r4.w * 6.84795887e-010 + -0.941175997;
    r8.xyz = cmp(r4.www >= float3(1.3743895e+009,2.83467853e+009,4.2949673e+009));
    r8.xyz = r8.xyz ? float3(1,1,1) : 0;
    r4.xw = r8.xy + r8.yz;
    r4.xw = float2(9.99999997e-007,9.99999997e-007) + r4.xw;
    r4.xyw = float3(0.5,0.0174529999,0.5) * r4.xyw;
    r8.yz = frac(r4.xw);
    r8.x = r8.y * r0.w;
    r4.xw = r8.xz + r8.xz;
    r0.w = saturate(r4.x + r4.w);
    r1.x = r0.w * 30 + -15;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.w = (uint)r0.z;
    r0.z = mad((int)r0.z, 0x0019660d, 0x3c6ef35f);
    r0.z = (uint)r0.z;
    r0.z = r0.z * r4.y;
    r0.zw = float2(2.32830644e-010,1.46291812e-009) * r0.zw;
    sincos(r0.z, r4.x, r8.x);
    sincos(r0.w, r9.x, r10.x);
    r8.y = r9.x * r4.x;
    r8.z = r10.x * r4.x;
    r4.xyw = r8.xyz * r6.yyy;
    r8.xyz = cb9[r0.y+32].yzx * cb9[r0.y+0].zxy;
    r8.xyz = cb9[r0.y+0].yzx * cb9[r0.y+32].zxy + -r8.xyz;
    r0.z = dot(cb9[r0.y+0].xyz, cb9[r0.y+32].xyz);
    r8.w = -r0.z;
    r9.xyz = cb9[r0.y+0].xyz;
    r9.w = 0;
    r8.xyzw = cb9[r0.y+32].wwww * r9.xyzw + r8.xyzw;
    r9.xyz = -cb9[r0.y+32].zxy * r8.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r8.zxy + -r9.xyz;
    r8.xyz = cb9[r0.y+32].www * r8.xyz + r9.xyz;
    r8.xyz = r8.www * -cb9[r0.y+32].xyz + r8.xyz;
    r9.xyz = -cb9[r0.y+32].zxy * r7.yzx;
    r9.xyz = -cb9[r0.y+32].yzx * r7.zxy + -r9.xyz;
    r0.z = dot(-cb9[r0.y+32].xyz, r7.xyz);
    r10.w = -r0.z;
    r10.xyz = cb9[r0.y+32].www * r7.xyz + r9.xyz;
    r9.xyzw = cb9[r0.y+32].xyzw * float4(-1,-1,-1,1);
    r7.xyzw = r7.wwww * r9.xyzw + r10.xyzw;
    r9.xyz = cb9[r0.y+32].yzx * cb9[r4.z+0].zxy;
    r9.xyz = cb9[r4.z+0].yzx * cb9[r0.y+32].zxy + -r9.xyz;
    r0.z = dot(cb9[r4.z+0].xyz, cb9[r0.y+32].xyz);
    r9.w = -r0.z;
    r10.xyz = cb9[r4.z+0].xyz;
    r10.w = 0;
    r9.xyzw = cb9[r0.y+32].wwww * r10.xyzw + r9.xyzw;
    r10.xyz = -cb9[r0.y+32].zxy * r9.yzx;
    r10.xyz = -cb9[r0.y+32].yzx * r9.zxy + -r10.xyz;
    r9.xyz = cb9[r0.y+32].www * r9.xyz + r10.xyz;
    r0.yzw = r9.www * -cb9[r0.y+32].xyz + r9.xyz;
    r8.xyz = -r8.xyz + r0.yzw;
    r0.yzw = -r7.yzx * r4.wxy;
    r9.xyz = r4.ywx * -r7.zxy + -r0.yzw;
    r0.y = dot(r4.xyw, -r7.xyz);
    r9.w = -r0.y;
    r4.xyz = r7.www * r4.xyw;
    r4.w = 0;
    r4.xyzw = r9.xyzw + r4.xyzw;
    r0.yzw = r7.zxy * r4.yzx;
    r0.yzw = r7.yzx * r4.zxy + -r0.yzw;
    r0.yzw = r7.www * r4.xyz + r0.yzw;
    r4.xyz = r4.www * r7.xyz + r0.yzw;
    r0.x = mad(7, (int)vThreadID.x, (int)r0.x);
    r4.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.xxxx, r4.xyzw
    r4.xyzw = (int4)r0.xxxx + int4(1,2,3,4);
    r8.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.xxxx, r8.xyzw
    r1.y = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.yyyy, r1.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.zzzz, r2.xyzw
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r4.wwww, r3.xyzw
    r0.yz = (int2)r0.xx + int2(5,6);
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.yyyy, r5.xyzw
    r6.w = 0;
  // No code for instruction (needs manual fix):
    store_uav_typed u0.xyzw, r0.zzzz, r6.xzww
  }
  return;
}